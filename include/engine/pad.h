#ifndef __PAD_H
#define __PAD_H

#include "PR/os.h"
#include "common.h"
#include "siman.h"

#define PAD_COUNT (4)

typedef struct {
    /* 0x00 */ s16 unk0;
    /* 0x02 */ s8 unk2;
    /* 0x03 */ s8 unk3;
    /* 0x04 */ u8 unk4;
} pad_unk_substruct; /* sizeof = 0x05 */

typedef struct {
    /* 0x00 */ OSContPad pad;
    /* 0x06 */ pad_unk_substruct unk6;
    /* 0x0B */ u8 unkB[0xB];
} pad_unk;

extern pad_unk D_800D1170_D1200[8];
extern s16 D_800D12B0_D1340;
extern s16 D_800D12B2_D1342;
extern s16 D_800D12B4_D1344;
extern s16 D_800D12B6_D1346[];
extern u8 D_800D12BA_D134A[];
extern s8 D_800D12BE_D134E;
extern s8 D_800D12BF_D134F;
extern u32 D_800D12C0_D1350; // unknown type
extern s16 D_800D12CC_D135C;
extern unkMesg D_800D1230_D12C0[];
extern OSMesgQueue D_800D12D0_D1360;
extern OSMesgQueue D_800EE960_EE9F0;
extern OSMesg D_800D12E8_D1378;
extern u16 D_800ECE08_ECE98[4];
extern s8 D_800ECE14_ECEA4[4];
extern u16 D_800EDEB4_EDF44[4];
extern u16 D_800F2CE2_F2D72[4];
extern u16 D_800F338C_F341C[4];
extern s16 D_800F33CC_F345C[4];
extern s16 D_800F3778_F3808;
extern s8 D_800F3843_F38D3[4];
extern u16 D_800F5460_F54F0[4];

extern s32 func_80013770_14370(u16* arg0);
extern s16 func_800138DC_144DC(s16 arg0, s32 arg1);
extern s32 func_80013974_14574(s32 arg0);
extern void func_80013A74_14674(void);
extern void func_80013AEC_146EC(s8 arg0, s8 arg1);
extern void func_80014158_14D58(void);
extern void func_80014174_14D74(void);
extern void func_800141C4_14DC4(void);

#endif

