#include "PR/gu.h"

#include "include_asm.h"
#include "graphics.h"


typedef struct {
    s32 unk00;
    u16 unk04;
    s32 unk08;
    OSMesgQueue *unk0C;
    s32 unk10; // OSMesg to send to unk0C
} graphicsMessage; // OSMesg

typedef struct combinedStruct {
    OSTask task;
    OSMesgQueue mesgQueue;
} swapChainTask;

extern swapChainTask D_800D5ED0;
extern OSThread D_800D1D20; // OSThread
extern u8 D_800D26D0[]; // thread stack pointer

extern graphicsMessage D_800ECE20[0x20]; // OSMesg ring buffer
extern s16 D_800ECB2E; // ring buffer index

extern void **D_800D5FE8; // Current frame buffer pool
extern u16 D_800D5FEC; // Frame buffer pool size
extern u16 D_800D5FEE; // unknown

/* gThread stacks? */
extern u64 *D_800ECB34;
extern u64 *D_800F09F0;
extern u64 *D_800F2CBC;
extern u64 *gThread3Stack;

extern s32 D_800D5F10[]; // OSMesgQueue address?
extern u8 D_800B1760; // rspboot address
extern u8 D_800B1830; // rspboot address end
extern Gfx D_800ED398[]; // yield data pointer

extern s32 D_800ED0C4; // graphics state?
extern void *D_800F3838; // next frameBuffer
extern void *D_800ECB1C; // current frameBuffer

extern s32 *D_800F317C; // graphics state?
extern u32 D_800D5FF0; // graphics state?


extern OSMesgQueue D_800D5F18;
extern void* D_800D5F30; // Initial Mesg
extern s16 D_800ED3C2; // Amount of total messages D_800D5F18 currently has

extern OSMesgQueue D_800D5FB0;
extern void* D_800D5FC8; // Initial Mesg

/* NEW */
typedef struct {
    s32 unk00;
    OSMesgQueue *unk04;
    s32 unk08;
} unkSchedStruct;

typedef struct {
    u8 unk00[0x20];
} unkGraphicsMessage2; // OSMesg

void func_800639F8(unkSchedStruct*, OSMesgQueue*, s32);
void func_80061414();
void func_800613E8();

extern u32 D_800F383C;
extern u32 D_800ED3A0;
extern u32 D_800ED3A4;

extern void *D_800ED39C; // frameBuffer pointer
extern OSMesgQueue D_800ED3C8;
/* NEW */


/* Initialize Graphics SwapChain */
void func_8001A600(void **arg1, s32 arg2, s32 arg3, u64 **arg4, s32 *arg5) {
    func_8001AB84(arg1, arg2, arg3);
    func_8001ABAC(arg4);
    func_8001ABE8(arg5);
    func_8001ABF4(0);

    D_800D5ED0.mesgQueue.mtqueue = (OSThread*) &D_800D5FB0;
    D_800D5ED0.task.t.type = 1;
    D_800D5ED0.task.t.flags = 2;
    D_800D5ED0.task.t.ucode_boot = (u64*) &D_800B1760;
    D_800D5ED0.task.t.ucode_boot_size = (s32) (&D_800B1830 - &D_800B1760);
    D_800D5ED0.task.t.ucode_size = 0x1000;
    D_800D5ED0.task.t.ucode_data_size = 0x800;
    D_800D5ED0.task.t.dram_stack_size = 0x400;
    D_800D5ED0.task.t.data_ptr = (u64*) &D_800ED398;
    D_800D5ED0.task.t.data_size = 2;
    D_800D5ED0.task.t.yield_data_size = 0xC00;

    D_800ED3C2 = 0;
    D_800ECB2E = 0;
    D_800ED0C4 = 0;
    D_800F3838 = 0;
    D_800ECB1C = 0;
    osCreateMesgQueue(&D_800D5F18, &D_800D5F30, 0x20);
    osCreateMesgQueue(&D_800D5FB0, &D_800D5FC8, 8);
    osCreateThread(&D_800D1D20, 0x10, &func_8001A7DC, NULL, &D_800D26D0, 0x64);
    osStartThread(&D_800D1D20);
}

/* Retrieve available frame buffer (triple buffering?) */
void *func_8001A750(void) {
    void *current;
    void *next;
    void *fBuffer;
    s16 i;

    current = osViGetCurrentFramebuffer();
    next = osViGetNextFramebuffer();
    
    for (i = 0; i < D_800D5FEC; i++) {
        fBuffer = D_800D5FE8[i];
        if (fBuffer != current) {
            if (fBuffer != next) {
                return fBuffer;
            }
        }
    }
    return NULL;
}

// INCLUDE_ASM(s32, "../src/engine/graphics", func_8001A7DC);
/* Swap chain thread func? */
void func_8001A7DC(void* arg0) {
    unkSchedStruct sp10;
    OSMesgQueue sp20;
    unkGraphicsMessage2 sp38;
    graphicsMessage* recvdMesg;
    void* temp_v0; // available frameBuffer
    s32 var_s4;
    u32 i;

    /* Why use temps? */
    swapChainTask *pSwapChain;
    OSTask        *pTask;

    recvdMesg = NULL;
    pTask = &D_800D5ED0.task;
    pSwapChain = &D_800D5ED0;
    var_s4 = 0;

    osCreateMesgQueue(&sp20, (OSMesg*) &sp38, 8);
    func_800639F8(&sp10, &sp20, 1);

    while (TRUE) {
        do {
            recvmesg:
            osRecvMesg(&sp20, NULL, 1);
            if ((D_800F383C - var_s4) < D_800D5FF0) {
                goto recvmesg;
            }
    
            var_s4 = D_800F383C;
            func_800613E8();
            temp_v0 = func_8001A750();
        } while (temp_v0 == NULL);
    
        D_800ECB1C = D_800F3838;
        D_800F3838 = temp_v0;

        /* WHY EXTRA DO? */
        do { do {
            u32 intMask;
            Gfx *dl = D_800ED398;
            osRecvMesg(&D_800D5F18, (OSMesg) &recvdMesg, 1);
            gSPSegment(dl++, D_800D5FEE, temp_v0);
            gSPBranchList(dl++, recvdMesg->unk00);
            pSwapChain->mesgQueue.fullqueue = (void *) recvdMesg->unk08;
            pTask->t.dram_stack = gThread3Stack;
            pTask->t.output_buff = D_800F2CBC;
            pTask->t.output_buff_size = D_800ECB34;
            pTask->t.yield_data_ptr = D_800F09F0;
            pTask->t.ucode =      (u64 *) *(   (recvdMesg->unk04 * 2)      + D_800F317C); // offset     (data pairs?)
            pTask->t.ucode_data = (u64 *) *( ( (recvdMesg->unk04 * 2) | 1) + D_800F317C); // offset + 1

            osSendMesg(&D_800ED3C8, (OSMesg) pSwapChain, 1);
            osRecvMesg(&D_800D5FB0, NULL, 1);

            intMask = osSetIntMask(1);
            D_800ED3C2 -= 1;
            osSetIntMask(intMask);

            if (recvdMesg->unk0C != NULL) {
                osSendMesg(recvdMesg->unk0C, (OSMesg) recvdMesg->unk10, 1);
            }
        } while (!((s32) recvdMesg->unk08 & 1));
    
        for (i = 1; i < D_800D5FF0; i++) {
            osRecvMesg(&sp20, NULL, 1);
        }
    
        osViSwapBuffer(temp_v0);
        if (D_800ED0C4 == 0) {
            osViBlack(0);
        } } while (FALSE);
        D_800ED0C4++;
        func_80061414(); // empty function
    }
}

/* Retrieve graphics OSMesg from ring buffer */
graphicsMessage* func_8001AA70(void) {
    if (D_800ECB2E >= 0x20) {
        D_800ECB2E = NULL;
    }
    return &D_800ECE20[D_800ECB2E++];
}

/* Send graphics OSMesg */
u8 func_8001AAC4(s32 arg0, u16 arg1, s32 arg2, OSMesgQueue *arg3, s32 arg4) {
    graphicsMessage* mesg;
    u32 temp_v0;

    if (D_800ED3C2 >= 0x20) {
        return FALSE;
    }

    temp_v0 = osSetIntMask(1);
    D_800ED3C2++;
    osSetIntMask(temp_v0);
    mesg = func_8001AA70(); // Get OSMesg from ring buffer

    /* Initialize message. */
    mesg->unk00 = arg0;
    mesg->unk04 = arg1;
    mesg->unk08 = arg2;
    mesg->unk0C = arg3;
    mesg->unk10 = arg4;

    osSendMesg(&D_800D5F18, mesg, 1);
    return TRUE;
}

/* Init graphics frame buffer pool */
void func_8001AB84(void **frameBufferPool, u16 size, u16 arg2) {
    D_800D5FE8 = frameBufferPool;
    D_800D5FEC = size;
    D_800D5FEE = arg2;
}

/* Reset frame buffer pool size. (Switch between double and triple buffering) */
void func_8001ABA0(u16 size) {
    D_800D5FEC = size;
}

/* Initialize gThreadStacks */
void func_8001ABAC(u64 **arg0) {
    gThread3Stack = *arg0++;
    D_800F2CBC = *arg0++;
    D_800ECB34 = *arg0++;
    D_800F09F0 = *arg0;
}

/* Graphics state init? */
void func_8001ABE8(s32 *arg0) {
    D_800F317C = arg0;
}

/* Graphics state init? */
void func_8001ABF4(u32 arg0) {
    D_800D5FF0 = arg0;
}
