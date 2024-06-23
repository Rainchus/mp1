#ifndef __MALLOCBLOCK_H
#define __MALLOCBLOCK_H

#include "common.h"

typedef struct unkMallocBlockStruct {
    /* 0x00 */ void* unk_00;
    /* 0x04 */ s8 unk_04;
    /* 0x05 */ char unk_05;
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ s32 unk_08;
    /* 0x0C */ s32 unk_0C;
    /* 0x10 */ struct unkMallocBlockStruct* unk_10;
    /* 0x14 */ struct unkMallocBlockStruct* unk_14;
} unkMallocBlockStruct; //sizeof 0x18

void func_800235F0(void* (*)(s32), void (*)(void*));
void* HuMemAlloc(s32);
void* func_800236A4(s32, s16);
void func_80023728(void*);
void func_80023780(unkMallocBlockStruct*);
void HuMemTempDirectFree(s16);
void func_80023888(void*);
void func_80023974();
void func_80023A38(void*, void*, s32);
void func_80023AF0(void*, s16);

extern s16 D_800C32A0;
extern s16 D_800ECB10;
extern unkMallocBlockStruct* D_800F2B78;
extern void (*D_800F33A4)(void*);
extern u8 D_800F37DA;
extern s32 D_800F3848;
extern void* (*D_800F546C)(s32);
extern unkMallocBlockStruct* D_800F65DC;

#endif
