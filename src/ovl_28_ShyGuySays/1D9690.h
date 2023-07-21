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

typedef struct unkShyGuySaysStruct {
    /* 0x000 */ s16 unk0;
    /* 0x004 */ s32 unk4;                           /* inferred */
    /* 0x008 */ s16 unk8;                           /* inferred */
    /* 0x00A */ s16 unkA;                           /* inferred */
    /* 0x00C */ s16 unkC;                           /* inferred */
    /* 0x00E */ s16 unkE;                           /* inferred */
    /* 0x010 */ s32 unk10;                          /* inferred */
    /* 0x014 */ s32 unk14;                          /* inferred */
    /* 0x018 */ s32 unk18;                          /* inferred */
    /* 0x01C */ char pad1C[0x10];                   /* maybe part of unk18[5]? */
    /* 0x02C */ f32 unk2C;                          /* inferred */
    /* 0x030 */ f32 unk30;                          /* inferred */
    /* 0x034 */ f32 unk34;                          /* inferred */
    /* 0x038 */ char pad38[0xC];                    /* maybe part of unk34[4]? */
    /* 0x044 */ f32 unk44;                          /* inferred */
    /* 0x048 */ f32 unk48;                          /* inferred */
    /* 0x04C */ f32 unk4C;                          /* inferred */
    /* 0x050 */ char pad50[0x30];                   /* maybe part of unk4C[0xD]? */
    /* 0x080 */ s32 unk80;                          /* inferred */
    /* 0x084 */ s32 unk84;                          /* inferred */
    /* 0x088 */ u16 unk88;                          /* inferred */
    /* 0x08A */ s16 unk8A;                          /* inferred */
    /* 0x08C */ s16 unk8C;                          /* inferred */
    /* 0x08E */ s16 unk8E;                          /* inferred */
    /* 0x090 */ s16 unk90;                          /* inferred */
    /* 0x092 */ s16 unk92;                          /* inferred */
    /* 0x094 */ char pad94[0x70];                   /* maybe part of unk92[0x39]? */
} unkShyGuySaysStruct;                                /* size = 0x104 */

extern unkStruct_ShyGuySays_05* D_800FDC64;
//extern unkStructShyGuySays_02* D_800F2B7C;
extern unkStruct_ShyGuySays_01 D_800FD9CE[];
extern u16 D_800F5144;
extern s16 D_800FD5CE_1E067E;
extern unkStructShyGuySays_03 D_800FDCE8[];
extern f64 D_800FD710;
extern f64 D_800FD718;
extern f64 D_800FD720;
extern unkStruct_ShyGuySays_01 D_800FD9C0[];
extern s32 D_800FDC4C;
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
extern u32 D_800FD5C0;
extern u16 D_800FD5DC_1E068C[2];
extern f64 D_800FD630_1E06E0;
extern f64 D_800FD638_1E06E8;
extern f64 D_800FD640_1E06F0;
extern f64 D_800FD648_1E06F8;
extern f64 D_800FD650_1E0700;
extern Vec3f D_800FD980;
extern Vec3f D_800FD98C;
extern unkObjectStruct* D_800FDC20;
extern u16 D_800FD5DC[2];
extern f64 D_800FD818; //BSS
extern f64 D_800FD820; //BSS
extern f64 func_800FD658_1C8F28; //BSS


typedef struct UnknownBlock8 {
    /* 0x00 */ s16 unk_00[4];
} UnknownBlock8;

typedef struct UnknownBlock36 {
    /* 0x00 */ char unk_00[36];
} UnknownBlock36;

f32 func_800F74A0_1DA550(f32, f32, f32);
void func_800F7A8C_1DAB3C(s16, void*);
void func_800F94A8_1DC558(void);
void func_800F95BC_1DC66C(void);
void func_800F96D4_1DC784(void);
s16 func_800F97A8_1DC858(void);
s16 func_800F9828_1DC8D8(void);
void func_800F98EC_1DC99C(void);
s16 func_800F99C0_1DCA70(void);
s16 func_800F9A7C_1DCB2C(u16, s16);
void func_800F9AFC_1DCBAC(u16);
void func_800FCA8C_1DFB3C(void*, u16);
s16 func_800FD124_1E01D4(unkObjectStruct*);
void func_800FD274_1E0324(s16, s16, f32, UnknownBlock8*, UnknownBlock8*);

extern u8 D_800F64F8;
extern s32 D_800FD5E0;
extern s32 D_800FD5E4_1E0694;
extern s16 D_800FD5E8_1E0698;
extern u16 D_800FD5EA;
extern f32 D_800FD5EC_1E069C;
extern UnknownBlock8 D_800FD850;
extern UnknownBlock8 D_800FD858;
extern UnknownBlock36 D_800FD860;
extern f64 D_800FD888;
extern f64 D_800FD890;
extern f64 D_800FD8C0_1E0970;
extern f64 D_800FD8C8_1E0978;
extern f64 D_800FD8D0_1E0980;
extern f64 D_800FD8D8_1E0988;
extern f64 D_800FD8E0_1E0990;
extern const f64 D_800FD8E8_1E0998;
extern f64 D_800FD8F0_1E09A0;
extern f64 D_800FD8F8_1E09A8;
extern f64 D_800FD900;
extern f64 D_800FD908;
extern s32 D_800FDC30;
extern s16 D_800FDC50;
extern s16 D_800FDC52;
void func_800F6A38_1D9AE8(void*);
void func_800F6E50_1D9F00(unkObjectStruct*);


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