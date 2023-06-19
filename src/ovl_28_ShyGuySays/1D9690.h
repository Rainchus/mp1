#include "common.h"

//800FD9C4 game state?
//800FD9A8 turns

typedef struct anotherStruct {
/* 0x00 */ f32 unk_00[64];
} anotherStruct;

typedef struct unkStruct_ShyGuySays_01 {
/* 0x00 */ s16 unk_00;
/* 0x02 */ s16 unk_02;
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

typedef struct unkStructShyGuySays_02 {
/* 0x00 */ char unk_00[0x08];
/* 0x08 */ u16 unk_08;
/* 0x0A */ u16 unk_0A;
/* 0x0C */ char unk_0C[0x3C];
/* 0x48 */ f32 unk_48;
/* 0x4C */ f32 unk_4C;
/* 0x50 */ f32 unk_50;
/* 0x54 */ char unk_54[0x6C];
} unkStructShyGuySays_02; //sizeof 0xC0

typedef struct unkStructShyGuySays_03 {
/* 0x00 */ s16 unk_00;
/* 0x02 */ s16 unk_02;
} unkStructShyGuySays_03;

typedef struct unkStruct_ShyGuySays_05 {
/* 0x00 */ f32 unk_00[64];
} unkStruct_ShyGuySays_05;

typedef struct unkStruct_ShyGuySays_04 {
/* 0x00 */ unkStruct_ShyGuySays_05* unk_00;
/* 0x04 */ f32 unk_04;
/* 0x08 */ f32 unk_08;
/* 0x0C */ char unk_0C[0x184];
} unkStruct_ShyGuySays_04;

extern unkStruct_ShyGuySays_05* D_800FDC64;
//extern unkStructShyGuySays_02* D_800F2B7C;
extern unkStruct_ShyGuySays_01 D_800FD9CE_ovl28_bss[];
extern u16 D_800F5144;
// extern s16 D_800FD5CE;
extern unkStructShyGuySays_03 D_800FDCE8_ovl28_bss[];
extern f64 D_800FD710_1E07C0;
extern f64 D_800FD718_1E07C8;
extern f64 D_800FD720_1E07D0;
extern unkStruct_ShyGuySays_01 D_800FD9C0_ovl28_bss[];
extern s32 D_800FDC4C_ovl28_bss;
extern f32 D_800FDC54;
extern s16 D_800EE984;
extern s32 D_800FD5F0_1E06A0;
extern unkObjectStruct* D_800FD998;
extern s32 D_800FD99C;
extern s32 D_800FD9A0;
extern s16 D_800FD9A4;
extern s16 D_800FD9A6;
extern s16 D_800FD9A8;
extern s16 D_800FDC1A;
extern s16 D_800FDC1C;
extern s16 D_800FDC1E;
extern unkObjectStruct* D_800F2AF8[]; //object ptr array
extern s32 D_800FD9A0;
extern s16 D_800FDC1C;
extern s16 D_800FDD10;
extern u16 D_800F2BC0;
extern u32 D_800FD5C0_1E0670; //rng seed
extern f64 D_800FD630_1E06E0;
extern f64 D_800FD638_1E06E8;
extern f64 D_800FD640_1E06F0;
extern f64 D_800FD648_1E06F8;
extern f64 D_800FD650_1E0700;
extern Vec3f D_800FD980_ovl28_bss; //BSS
extern Vec3f D_800FD98C_ovl28_bss; //BSS
extern unkObjectStruct* D_800FDC20;
extern u16 D_800FD5DC_1E068C[2];
extern f64 D_800FD818_1E08C8;
extern f64 D_800FD820_1E08D0;
extern f64 func_800FD658_1C8F28; //BSS


void func_800FB424_1DE4D4(void);
extern u16 D_800FD5C4;

void func_800F69F8_1D9AA8(void);
void func_800F6F98_1DA048(unkObjectStruct*);
void func_800F72A4_1DA354(void);
void func_800F69F8_1D9AA8(void);
void func_80060268(s16);
void func_800F73EC_1DA49C(void);
void func_800FA8D4_1DD984(void);
void func_800F9118_1DC1C8(unkObjectStruct*, s32);
f32 func_800FD1D0_1E0280(void);
s16 func_800FD200_1E02B0(void);
u16 func_800F740C_1DA4BC(u16 arg0);
void func_800F6930_1D99E0(unkObjectStruct*);
void func_800FA77C_1DD82C(void);
void func_800FB6E0_1DE790(void);
void func_800FBAE4_1DEB94(void);
void func_800F71F4_1DA2A4(void);
void func_800F736C_1DA41C(void);
void func_800F8068_1DB118(void);
void func_800F81A4_1DB254(void);
void func_800FB30C_1DE3BC(void);
void func_800F67F8_1D98A8(unkObjectStruct* arg0);
void func_800F747C_1DA52C(u16 arg0);
void func_800F6FC0_1DA070(void);
