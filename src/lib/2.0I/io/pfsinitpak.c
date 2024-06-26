#include "PR/os_internal.h"
#include "PR/rcp.h"
#include "controller.h"
#include "siint.h"


/* Definition for bank */
#define PFS_ID_BANK_256K    0
#define PFS_ID_BANK_1M      4
#define PFS_BANKS_256K      1

#define PFS_WRITTEN             2
#define DEF_DIR_PAGES           2

#define PFS_ID_0AREA            1
#define PFS_ID_1AREA            3
#define PFS_ID_2AREA            4
#define PFS_ID_3AREA            6
#define PFS_LABEL_AREA          7
#define PFS_ID_PAGE             PFS_ONE_PAGE * 0

/* File System status */
#define PFS_INITIALIZED         0x1
#define PFS_CORRUPTED           0x2
#define PFS_ID_BROKEN           0x4
#define PFS_MOTOR_INITIALIZED   0x8
#define PFS_GBPAK_INITIALIZED   0x10

static s32 __osPfsCheckRamArea(OSPfs* pfs);

s32 osPfsInitPak(OSMesgQueue* queue, OSPfs* pfs, int channel) {
    s32 ret;
    u16 sum;
    u16 isum;
    u8 temp[BLOCKSIZE];
    __OSPackId* id;
    __OSPackId newid;

    __osSiGetAccess();

    ret = __osPfsGetStatus(queue, channel);

    __osSiRelAccess();

    if (ret != 0) {
        return ret;
    }

    pfs->queue = queue;
    pfs->channel = channel;
    pfs->status = 0;

    ERRCK(__osPfsCheckRamArea(pfs));
    ERRCK(__osPfsSelectBank(pfs, 0));
    ERRCK(__osContRamRead(pfs->queue, pfs->channel, PFS_ID_0AREA, temp));

    __osIdCheckSum((u16*)temp, &sum, &isum);
    id = (__OSPackId*)temp;

    if ((id->checksum != sum) || (id->inverted_checksum != isum)) {
        ret = __osCheckPackId(pfs, id);

        if (ret != 0) {
            pfs->status |= PFS_ID_BROKEN;
            return ret;
        }
    }

    if (!(id->deviceid & 1)) {
        ret = __osRepairPackId(pfs, id, &newid);

        if (ret != 0) {
            if (ret == PFS_ERR_ID_FATAL) {
                pfs->status |= PFS_ID_BROKEN;
            }
            return ret;
        }

        id = &newid;

        if (!(id->deviceid & 1)) {
            return PFS_ERR_DEVICE;
        }
    }

    bcopy(id, pfs->id, BLOCKSIZE);

    pfs->version = id->version;
    pfs->banks = id->banks;
    pfs->inode_start_page = 1 + DEF_DIR_PAGES + (2 * pfs->banks);
    pfs->dir_size = DEF_DIR_PAGES * PFS_ONE_PAGE;
    pfs->inode_table = 1 * PFS_ONE_PAGE;
    pfs->minode_table = (1 + pfs->banks) * PFS_ONE_PAGE;
    pfs->dir_table = pfs->minode_table + (pfs->banks * PFS_ONE_PAGE);

    ERRCK(__osContRamRead(pfs->queue, pfs->channel, PFS_LABEL_AREA, pfs->label));

    ret = osPfsChecker(pfs);
    pfs->status |= PFS_INITIALIZED;

    return ret;
}

static s32 __osPfsCheckRamArea(OSPfs* pfs) {
    s32 i = 0;
    s32 ret = 0;
    u8 temp1[BLOCKSIZE];
    u8 temp2[BLOCKSIZE];
    u8 save[BLOCKSIZE];

    ERRCK(__osPfsSelectBank(pfs, 0));
    ERRCK(__osContRamRead(pfs->queue, pfs->channel, 0, save));

    for (i = 0; i < BLOCKSIZE; i++) {
        temp1[i] = i;
    }

    ERRCK(__osContRamWrite(pfs->queue, pfs->channel, 0, temp1, FALSE));
    ERRCK(__osContRamRead(pfs->queue, pfs->channel, 0, temp2));

    if (bcmp(temp1, temp2, BLOCKSIZE) != 0) {
        return PFS_ERR_DEVICE;
    }

    return __osContRamWrite(pfs->queue, pfs->channel, 0, save, FALSE);
}
