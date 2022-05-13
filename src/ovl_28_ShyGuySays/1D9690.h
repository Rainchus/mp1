#include "common.h"

//800FD9C4 game state?
//800FD9A8 turns

typedef struct temp2 {
    s16 unk0;
    s16 unk2;
} temp2;

typedef struct unkStruct_ShyGuySays_01 {
/* 0x00 */ char unk_00[4];
/* 0x04 */ s32 unk_04;
/* 0x08 */ char unk_08[2];
/* 0x0A */ s16 unk_0A;
/* 0x0C */ s16 unk_0C;
/* 0x0E */ char unk_0E[2];
/* 0x10 */ char unk_10[8];
/* 0x18 */ u32 unk_18;
/* 0x1A */ char unk_1C[0x6E];
/* 0x8A */ s16 unk_8A;
/* 0x8C */ s16 unk_8C;
/* 0x8E */ char unk_8E[6];
} unkStruct_ShyGuySays_01; //0x94 in size

extern temp2 D_800FDCE8[];
extern f64 D_800FD710;
extern f64 D_800FD718;
extern f64 D_800FD720;
extern unkStruct_ShyGuySays_01 D_800FD9C0[];
extern s32 D_800FDC4C;
extern f32 D_800FDC54;
extern s16 D_800EE984;
extern s32 D_800FD5F0;
extern Object* D_800FD998;
extern s32 D_800FD99C;
extern s32 D_800FD9A0;
extern s16 D_800FD9A4;
extern s16 D_800FD9A6;
extern s16 D_800FD9A8;
extern s16 D_800FDC1A;
extern s16 D_800FDC1C;
extern s16 D_800FDC1E;
extern Object* D_800F2AF8[]; //object ptr array
extern s32 D_800FD9A0;
extern s16 D_800FDC1C;
extern s16 D_800FDD10;
extern u16 D_800F2BC0;
extern u32 D_800FD5C0;
extern f64 D_800FD630;
extern f64 D_800FD638;
extern f64 D_800FD640;
extern f64 D_800FD648;
extern f64 D_800FD650;
extern Vec3f D_800FD980;
extern Vec3f D_800FD98C;
extern Vec3f* D_800FDC64;
extern Object* D_800FDC20;
extern u16 D_800FD5DC[2];
extern f64 D_800FD818; //BSS
extern f64 D_800FD820; //BSS

void func_800F9118_1DC1C8(Object*, s32);
f32 func_800FD1D0_1E0280(void);
s16 func_800FD200_1E02B0(void);
u16 func_800F740C_1DA4BC(u16 arg0);
void func_800F6930_1D99E0(void);
void func_800FA77C_1DD82C(void);
void func_800FB6E0_1DE790(void);
void func_800FBAE4_1DEB94(void);
void func_800F71F4_1DA2A4(void);
void func_800F736C_1DA41C(void);
void func_800F8068_1DB118(void);
void func_800F81A4_1DB254(void);
void func_800FB30C_1DE3BC(void);
void func_800F67F8_1D98A8(Object* arg0);
void func_800F747C_1DA52C(u16 arg0);
void func_800F6FC0_1DA070(void);
