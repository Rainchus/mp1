#include "common.h"

//800FD9C4 game state?
//800FD9A8 turns

typedef struct unkStructShyGuySays_03 {
/* 0x00 */ s16 unk_00;
/* 0x02 */ s16 unk_02;
} unkStructShyGuySays_03; //sizeof 4

typedef struct unkStruct_ShyGuySays_01 {
/* 0x00 */ s16 unk_00;
/* 0x02 */ s16 unk_02;
/* 0x04 */ s32 unk_04;
/* 0x08 */ s16 unk_08;
/* 0x0A */ s16 unk_0A;
/* 0x0C */ s16 unk_0C;
/* 0x0E */ s16 unk_0E;
/* 0x10 */ s32 unk_10;
/* 0x14 */ s32 unk_14;
/* 0x18 */ u32 unk_18;
/* 0x1C */ unkStructShyGuySays_03 unk_1C;
/* 0x20 */ unkStructShyGuySays_03 unk_20;
/* 0x24 */ unkStructShyGuySays_03 unk_24;
/* 0x28 */ unkStructShyGuySays_03 unk_28;
/* 0x2C */ Vec3f unk_2C;
/* 0x38 */ Vec3f unk_38;
/* 0x44 */ Vec3f unk_44;
/* 0x50 */ Vec3f unk_50;
/* 0x5C */ Vec3f unk_5C;
/* 0x68 */ Vec3f unk_68;
/* 0x74 */ Vec3f unk_74;
/* 0x80 */ u32 unk_80;
/* 0x84 */ f32 unk_84;
/* 0x88 */ s16 unk_88;
/* 0x8A */ s16 unk_8A;
/* 0x8C */ s16 unk_8C;
/* 0x8E */ s16 unk_8E;
/* 0x90 */ s16 unk_90;
/* 0x92 */ s16 unk_92;
} unkStruct_ShyGuySays_01; //0x94 in size

typedef struct unkStruct_ShyGuySays_05 {
/* 0x00 */ f32 unk_00[100];
} unkStruct_ShyGuySays_05;

typedef struct UnknownBlock8 {
    /* 0x00 */ char unk_00[8];
} UnknownBlock8;

typedef struct UnknownBlock24 {
    /* 0x00 */ char unk_00[24];
} UnknownBlock24;

typedef struct UnknownBlock36 {
    /* 0x00 */ char unk_00[36];
} UnknownBlock36;

extern u8 D_800F64F8;
extern unkStruct_ShyGuySays_05* D_800FDC64;
extern unkStruct_ShyGuySays_01 D_800FD9CE[];
extern u16 D_800F5144;
extern u16 D_800F5460[];
// extern s16 D_800FD5CE;
extern unkStructShyGuySays_03 D_800FDCE8[];
extern f64 D_800FD710;
extern f64 D_800FD718;
extern f64 D_800FD720;
extern unkStruct_ShyGuySays_01 D_800FD9C0[];
extern s32 D_800FDC4C;
extern f32 D_800FDC54;
extern s16 D_800EE984;
extern u32 D_800FD5E0;
extern u32 D_800FD5E4;
extern s16 D_800FD5E8;
extern u16 D_800FD5EA;
extern f32 D_800FD5EC;
extern s32 D_800FD5F0;
extern unkObjectStruct* D_800FD998;
extern s32 D_800FD99C;
extern s32 D_800FD9A0;
extern u16 D_800FD9A4;
extern s16 D_800FD9A6;
extern s16 D_800FD9A8;
extern s16 D_800FDC10[];
extern s16 D_800FDC1A;
extern s16 D_800FDC1C;
extern s16 D_800FDC1E;
extern unkObjectStruct* D_800F2AF8[]; //object ptr array
extern s32 D_800FD9A0;
extern s16 D_800FDD10;
extern u16 D_800F2BC0;
extern u32 D_800FD5C0;
extern f64 D_800FD630;
extern f64 D_800FD638;
extern f64 D_800FD640;
extern f64 D_800FD648;
extern f64 D_800FD650;
extern UnknownBlock24 D_800FD6C8;
extern Vec3f D_800FD980;
extern Vec3f D_800FD98C;
extern unkObjectStruct* D_800FDC20;
extern s32 D_800FDC30;
extern s16 D_800FDC50;
extern s16 D_800FDC52;
extern u16 D_800FD5DC[2];
extern f64 D_800FD818; //BSS
extern f64 D_800FD820; //BSS
extern UnknownBlock8 D_800FD850;
extern UnknownBlock8 D_800FD858;
extern UnknownBlock36 D_800FD860;
extern f64 func_800FD658_1C8F28; //BSS

void func_800FB424_1DE4D4(void);
extern u16 D_800FD5C4;

void func_800607C4(s16, s16);
f64 func_8009B618(f64, f64);
void func_800F69F8_1D9AA8(void);
void func_800F6A38_1D9AE8(void*);
void func_800F6E50_1D9F00(void*);
void func_800F6F98_1DA048(unkObjectStruct*);
void func_800F72A4_1DA354(void);
f32 func_800F7720_1DA7D0(f32, f32, f32, f32);
f32 func_800F781C_1DA8CC(f32, f32, f32, f32);
f32 func_800F7AF8_1DABA8(f32, f32, f32);
void func_800F8D58_1DBE08(unkObjectStruct*);
void func_800F69F8_1D9AA8(void);
void func_80060268(s16);
void func_800F73EC_1DA49C(void);
void func_800FA308_1DD3B8(unkObjectStruct*, s16*, s16);
void func_800FA8D4_1DD984(void);
void func_800F9118_1DC1C8(unkObjectStruct*, s32);
void func_800F94A8_1DC558(void);
void func_800F95BC_1DC66C(void);
void func_800F96D4_1DC784(void);
s16 func_800F97A8_1DC858(void);
s16 func_800F9828_1DC8D8(void);
void func_800F98EC_1DC99C(void);
s16 func_800F9A7C_1DCB2C(u16, s16);
void func_800F9AFC_1DCBAC(u16);
void func_800F9F60_1DD010(unkObjectStruct*, s16*, u16);
f32 func_800FD1D0_1E0280(void);
s16 func_800FD200_1E02B0(void);
u16 func_800F740C_1DA4BC(u16 arg0);
void func_800F6930_1D99E0(unkObjectStruct*);
void func_800FA77C_1DD82C(void);
void func_800FB6E0_1DE790(void);
void func_800FBAE4_1DEB94(void);
void func_800FCA8C_1DFB3C(void*, u16);
s16 func_800FD124_1E01D4(unkObjectStruct*);
void func_800FD274_1E0324(s16, s16, f32, u16*, u16*);
void func_800F71F4_1DA2A4(void);
void func_800F736C_1DA41C(void);
void func_800F8068_1DB118(void);
void func_800F81A4_1DB254(void);
f32 func_800FB190_1DE240(f32, f32);
void func_800FB30C_1DE3BC(void);
void func_800F67F8_1D98A8(unkObjectStruct* arg0);
void func_800F747C_1DA52C(u16 arg0);
void func_800F6FC0_1DA070(void);
