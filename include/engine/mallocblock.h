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

void func_800235F0_241F0(void* (*)(s32), void (*)(void*));
void* func_800236A4_242A4(s32, s16);
void func_80023728_24328(void*);
void func_80023780_24380(unkMallocBlockStruct*);
void func_80023888_24488(void*);
void func_80023974_24574();
void func_80023A38_24638(void*, void*, s32);
void func_80023AF0_246F0(void*, s16);

extern s16 D_800C32A0_C3EA0;
extern s16 D_800ECB10_ECBA0;
extern unkMallocBlockStruct* D_800F2B78_F2C08;
extern void (*D_800F33A4_F3434)(void*);
extern u8 D_800F37DA_F386A;
extern s32 D_800F3848_F38D8;
extern void* (*D_800F546C_F54FC)(s32);
extern unkMallocBlockStruct* D_800F65DC_F666C;

#endif
