#include "common.h"
typedef struct box {
    u16 activeBool;
    s16 unk_02;
    s32 xPosStart;
    s32 yPosStart;
    s32 width;
    s32 height;
    u32 rgba;
} box;

typedef struct unk62140 {
/* 0x00 */ s16 unk_00;
/* 0x02 */ s16 unk_02;
/* 0x04 */ s32 unk_04;
/* 0x08 */ s32 unk_08;
/* 0x0C */ s32 unk_0C;
/* 0x10 */char unk_10[0x58];
} unk62140;

typedef struct unk62140_2 {
/* 0x00 */ s16 unk_00;
/* 0x04 */ s32 unk_04;
/* 0x08 */ s32 unk_08;
/* 0x0C */ s32 unk_0C;
} unk62140_2;

typedef struct unk62140_3 {
/* 0x00 */ s8 unk_00;
/* 0x01 */ s8 unk_01;
/* 0x02 */ s8 unk_02;
/* 0x03 */ s8 unk_03; //D_800F09E7
/* 0x04 */ s8 unk_04;
/* 0x05 */ s8 unk_05;
/* 0x06 */ s8 unk_06;
/* 0x06 */ s8 unk_07;
/* 0x06 */ s8 unk_08;
/* 0x06 */ s8 unk_09;
/* 0x06 */ s8 unk_0A;
/* 0x06 */ s8 unk_0B;
/* 0x06 */ s8 unk_0C;
} unk62140_3;


void func_800642FC(Vec3s*, void*, void*, s32); //maybe incorrect
void func_800618A4(unk62140* arg0);
s32 func_80061714(void);
s32 func_80061784(s16* arg0);
s32 func_8008BA70(s32*, u8*);
s32 func_80091230(s32*, unk62140*, s16);
void func_80091120(unk62140*, void*);
s32 func_80091500(unk62140*, void*, void*);
void func_80091A40(unk62140*);
void func_80090F90(unk62140*, s32, void*);

extern s16 D_800EE310;
extern unk62140_3 D_800F09E4;
extern s32 D_800EE960;
extern box D_800ED448[];
extern u16 D_800F64E4;
extern unk62140 D_800D90D0[];
