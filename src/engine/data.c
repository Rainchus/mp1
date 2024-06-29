#include "engine/data.h"


extern u16 D_800EC6EA_EC77A[4];
extern u16 D_800EDEB4_EDF44[4];

extern u16 D_800F2CF0_F2D80[4];
extern u16 D_800F32A4_F3334[4];
extern u16 D_800F3396_F3426[4];
extern u8 *D_800F3843_F38D3;
extern u16 D_800F544C_F54DC[4];

typedef struct mainfsTableHeader {
    s32 dir;
    s32 offsets[3];
} mainfsTableHeader;
typedef struct mainfsEntryInfo {
    u8 *file_bytes;
    s32 size;
    s32 compression_type;
} mainfsEntryInfo;

typedef struct unkMallocPermStruct {
    u16 unk0;
    u16 unk2;
    s32 unk4;
    void* unk8;
    s16 unkC;
    s16 unkE;
    u8* unk10;
    u8* unk14;
} unkMallocPermStruct;

void func_80014220_14E20(void) {
    s16 i;

    u16 *D_800F544C_ptr;
    u16 *D_800F32A4_ptr;
    u16 *D_800F2CF0_ptr;
    u16 *D_800EC6EA_ptr;
    u16 *D_800F3396_ptr;

    for (i = 0; i < 4; i++) {
        D_800F544C_ptr = (D_800F544C_F54DC + i);
        D_800F3396_ptr = (D_800F3396_F3426 + i);
        D_800EC6EA_ptr = (D_800EC6EA_EC77A + i);
        D_800F2CF0_ptr = (D_800F2CF0_F2D80 + i);
        D_800F32A4_ptr = (D_800F32A4_F3334 + i);

        *(D_800F32A4_ptr) = 0;
        *(D_800F2CF0_ptr) = 0;
        *(D_800EC6EA_ptr) = 0;
        *(D_800F3396_ptr) = 0;
        *(D_800F544C_ptr) = 0;
    }
}

INCLUDE_ASM("asm/nonmatchings/engine/data", func_8001429C_14E9C);

extern void *D_800D12F0_D1380; // FS ROM location
extern u32 D_800D12F4_D1384; // Directory count
extern s32 *D_800D12F8_D1388; // Directory offset table pointer.

extern void *D_800D12FC_D138C; // FS ROM location (copy)
extern u32 D_800D1300_D1390; // Directory count (copy)
extern s32 *D_800D1304_D1394; // Directory offset table pointer (copy)

extern HuArchive D_800D1310_D13A0;

extern void *func_80014678_15278(s32, s32);
extern void *func_800146D4_152D4(s32, s32);
extern void func_80014770_15370(u32, u32);
extern void func_80014504_15104(s32 type, s32 index, HuFileInfo* info);

// Initialize file system from ROM.
void func_80014460_15060(void* fs_rom_loc) {
    s32 dir_table_size;
    HuArchive* archiveHeader;

    D_800D12F0_D1380 = fs_rom_loc;
    archiveHeader = &D_800D1310_D13A0;
    func_80061FE8_62BE8(fs_rom_loc, archiveHeader, 16); // ExecRomCopy
    D_800D12F4_D1384 = archiveHeader->dir;
    dir_table_size = archiveHeader->dir * 4;
    D_800D12F8_D1388 = (s32 *)HuMemDirectMalloc(dir_table_size);
    func_80061FE8_62BE8(fs_rom_loc + 4, D_800D12F8_D1388, dir_table_size);
    D_800D12FC_D138C = D_800D12F0_D1380;
    D_800D1300_D1390 = D_800D12F4_D1384;
    D_800D1304_D1394 = D_800D12F8_D1388;
}

void func_80014504_15104(s32 type, s32 index, HuFileInfo* info) {
    HuArchive* archiveHeader;

    archiveHeader = &D_800D1310_D13A0;

    switch (type) {
        case 0x2F:
            info->bytes = (u8 *)D_800D12F0_D1380 + D_800D12F8_D1388[index];
            break;
        case 0x2E:
            info->bytes = (u8 *)D_800D12FC_D138C + D_800D1304_D1394[index];
            break;
    }

    func_80061FE8_62BE8(info->bytes, archiveHeader, 16); // ExecRomCopy
    info->bytes += 8;
    info->size = archiveHeader->dir;
    info->compType = archiveHeader->offsets[0];
}

/*
 * Reads a file from the main filesystem and decodes it.
 * File is in the permanent heap.
*/
void* ReadMainFS(s32 dirAndFile) {
    u32 dir;
    u32 file;

    dir = dirAndFile >> 16;
    file = dirAndFile & 0xFFFF;

    if (dir < D_800D12F4_D1384) {
        func_80014770_15370(0x2F, dir);

        if (file < D_800D1300_D1390) {
            return func_80014678_15278(0x2E, file);
        }
    }

    return NULL;
}

/*
 * Reads a file from the main filesystem and decodes it.
 * Files is in the temporary heap.
*/
void* func_80014614_15214(s32 dirAndFile) {
    u32 dir;
    u32 file;

    dir = dirAndFile >> 16;
    file = dirAndFile & 0xFFFF;

    if (dir < D_800D12F4_D1384) {
        func_80014770_15370(0x2F, dir);

        if (file < D_800D1300_D1390) {
            return func_800146D4_152D4(0x2E, file);
        }
    }

    return NULL;
}

/*
 * Read file, allocate space in perm heap, decode it.
*/
void *func_80014678_15278(s32 type, s32 index) {
    HuFileInfo info;
    void* ret;

    func_80014504_15104(type, index, &info);
    ret = HuMemDirectMalloc((info.size + 1) & -2);
    if (ret != NULL) {
        DecodeFile(info.bytes, ret, info.size, info.compType);
    }
    return ret;
}

/*
 * Read file, allocate space in temp heap, decode it.
*/
void* func_800146D4_152D4(s32 type, s32 index) {
    HuFileInfo info;
    void* ret;

    func_80014504_15104(type, index, &info);
    ret = MallocTemp((info.size + 1) & -2);
    if (ret != NULL) {
        DecodeFile(info.bytes, ret, info.size, info.compType);
    }
    return ret;
}

/*
 * HuMemMemoryFree file previously obtained through ReadMainFS.
 * 80014730
*/
void FreeMainFS(void *file) {
    if (file != NULL) {
        HuMemDirectFree(file);
    }
}

/*
 * HuMemMemoryFree file previously obtained through func_80014614_15214.
*/
void func_80014750_15350(void *file) {
    if (file != NULL) {
        HuMemDirectFree(file); //! Should be FreeTemp, but not functionally problematic.
    }
}

void func_80014770_15370(u32 arg0, u32 arg1) {
    HuArchive* test;
    HuFileInfo sp10; //rom addr point to directory
    s32 tableSize;
    s32 dir;
    
    sp10.bytes = D_800D12F0_D1380 + D_800D12F8_D1388[arg1];
    if (D_800D12FC_D138C != sp10.bytes) {
        if (D_800D12FC_D138C != D_800D12F0_D1380) {
            HuMemDirectFree(D_800D1304_D1394);
        }
        
        D_800D12FC_D138C = sp10.bytes;
        test = &D_800D1310_D13A0;
        
        func_80061FE8_62BE8(sp10.bytes, test, 0x10);
        dir = test->dir;
        
        D_800D1300_D1390 = dir;
        tableSize = dir * 4;
        D_800D1304_D1394 = HuMemDirectMalloc(tableSize);
        func_80061FE8_62BE8(sp10.bytes + 4, D_800D1304_D1394, tableSize);
    }
}

void* func_80014828_15428(s32 arg0, s32 arg1) {
    HuFileInfo sp10;
    unkMallocPermStruct* temp_s0;

    temp_s0 = HuMemDirectMalloc(sizeof(unkMallocPermStruct));
    if (temp_s0 == NULL) {
        return NULL;
    } else {
        func_80014504_15104(arg0, arg1, &sp10);
        temp_s0->unk4 = sp10.size;
        temp_s0->unk0 = (u16)sp10.compType;
        temp_s0->unk8 = HuMemDirectMalloc(0x400);
        temp_s0->unkC = 1;
        temp_s0->unkE = 0;
        temp_s0->unk10 = temp_s0->unk14 = sp10.bytes;
        return temp_s0;
    }
}

void func_800148BC_154BC(void *param_1) {
    HuMemDirectFree((void *)(((s32 *)param_1)[2]));
    HuMemDirectFree(param_1);
}

INCLUDE_ASM("asm/nonmatchings/engine/data", func_800148EC_154EC);

INCLUDE_ASM("asm/nonmatchings/engine/data", func_80014998_15598);

INCLUDE_ASM("asm/nonmatchings/engine/data", func_80014A14_15614);
