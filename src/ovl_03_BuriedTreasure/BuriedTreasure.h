#include "common.h"

typedef struct unkStructSize4 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
} unkStructSize4; //sizeof 4

typedef struct unkStructSize4_2 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
} unkStructSize4_2; //sizeof 4

typedef struct unkStructSize6 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s16 unk_04;
} unkStructSize6; //sizeof 6

typedef struct unkStructSize0xC {
    /* 0x00 */ u8* unk_00;
    /* 0x04 */ u16 unk_04;
    /* 0x06 */ char unk_06[2];
    /* 0x08 */ s16 unk_08;
    /* 0x0A */ s16 unk_0A;
} unkStructSize0xC; //sizeof 0xC

typedef struct unkStructSize0x20 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ s16 unk_10;
    /* 0x12 */ s16 unk_12;
    /* 0x14 */ s16 unk_14;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ s16 unk_18;
    /* 0x1A */ s16 unk_1A;
    /* 0x1C */ s16 unk_1C;
    /* 0x1E */ s16 unk_1E;
} unkStructSize0x20; //sizeof 0x20

typedef struct unkStructSize0x28 {
    /* 0x00 */ u16* unk_00;
    /* 0x04 */ u16 unk_04; // counts how many elements are in unk_00
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ s8 unk_08;
    /* 0x09 */ s8 unk_09;
    /* 0x0A */ u8 unk_0A;
    /* 0x0B */ char unk_0B[1];
    /* 0x0C */ s16 unk_0C;
    /* 0x0E */ s16 unk_0E;
    /* 0x10 */ u16 unk_10;
    /* 0x12 */ u16 unk_12;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ unkObjectStruct* unk_1C;
    /* 0x20 */ unkObjectStruct* unk_20;
    /* 0x24 */ u8 unk_24;
    /* 0x25 */ u8 unk_25;
    /* 0x26 */ char unk_26[2];
} unkStructSize0x28; //sizeof 0x28

typedef struct unkStructSize0x5C {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ s16 unk_08;
    /* 0x0A */ s16 unk_0A;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ f32 unk_20;
    /* 0x24 */ f32 unk_24;
    /* 0x28 */ f32 unk_28;
    /* 0x2C */ f32 unk_2C;
    /* 0x30 */ char unk_30[0xC];
    /* 0x3C */ s16 unk_3C;
    /* 0x3E */ s16 unk_3E;
    /* 0x40 */ s16 unk_40;
    /* 0x42 */ s16 unk_42;
    /* 0x44 */ s16 unk_44;
    /* 0x46 */ s16 unk_46;
    /* 0x48 */ s16 unk_48;
    /* 0x4A */ s16 unk_4A;
    /* 0x4C */ s16 unk_4C;
    /* 0x4E */ s16 unk_4E;
    /* 0x50 */ s16 unk_50;
    /* 0x52 */ s16 unk_52;
    /* 0x54 */ s16 unk_54;
    /* 0x56 */ s16 unk_56;
    /* 0x58 */ s16 unk_58;
    /* 0x5A */ s16 unk_5A;
} unkStructSize0x5C; //sizeof 0x5C

typedef struct unk72D90Struct3 {
    /* 0x00 */ char unk_00[1];
    /* 0x01 */ u8 unk_01;
    /* 0x02 */ char unk_02[1];
    /* 0x03 */ u8 unk_03;
    /* 0x04 */ u8 unk_04;
    /* 0x05 */ char unk_05[1];
    /* 0x06 */ u16 unk_06;
    /* 0x08 */ char unk_08[2];
    /* 0x0A */ s16 unk_0A;
    /* 0x0C */ char unk_0C[0x24];
} unk72D90Struct3; //sizeof 0x30

typedef struct unkStructSizeUnknown {
    /* 0x00 */ unkStructSize0xC* unk_00;
    /* 0x04 */ char unk_04[0xC];
    /* 0x10 */ u16 unk_10;
} unkStructSizeUnknown; //sizeof unknown

void func_800F692C_E92AC(unkObjectStruct*);
void func_800F6958_E92D8(void);
void func_800F6D6C_E96EC(void);
void func_800F6DCC_E974C(unkObjectStruct*);
void func_800F6E44_E97C4(unkObjectStruct*);
void func_800F6EC4_E9844(unkObjectStruct*);
void func_800F7164_E9AE4(unkObjectStruct*);
void func_800F7D50_EA6D0(s16);
void func_800F7E48_EA7C8(s16);
void func_800F815C_EAADC(s16);
s32 func_800F85B4_EAF34(unkObjectStruct*);
void func_800F8760_EB0E0(void);
unkStructSize0x5C* func_800F87A8_EB128(unkObjectStruct*);
void func_800F8894_EB214(void);
unkStructSize0x5C* func_800F8914_EB294(unkObjectStruct*);
u32 func_800F8940_EB2C0(void);
void func_800F8978_EB2F8(Matrix4f);
void func_800F8BB8_EB538(f32, f32, f32, Vec3f*);
void func_800F8C84_EB604(s16, f32*, f32*, f32*);
void func_800F8D1C_EB69C(unkStructSize0x5C*);
s16 func_800F8EF0_EB870(f32*, f32*, s16);
s16 func_800F9260_EBBE0(f32*, f32*, s16);
void func_800F9990_EC310(void);
u16 func_800F92D4_EBC54(f32, f32, s16, void*, s16*);
s16 func_800F9C40_EC5C0(s16, f32, f32, s16);
void func_800F9DCC_EC74C(s16);
void func_800F9E10_EC790(void);
void func_800F9F90_EC910(void);
void func_800FA090_ECA10(unkObjectStruct*);
void func_800FA0B4_ECA34(void);
void func_800FA138_ECAB8(void);
void func_800FA90C_ED28C(void);
s16 func_800FB520_EDEA0(u16, u16);
s16 func_800FB780_EE100(void);
void func_800FB918_EE298(s32);
void func_800FB920_EE2A0(s32);
u16 func_800FB928_EE2A8(u16);
void func_800FB998_EE318(u16);
void func_800FB9E8_EE368(void);

void guMtxCatF(Matrix4f, Matrix4f, Matrix4f);
void guMtxL2F(Matrix4f, Mtx*);
void guTranslateF(Matrix4f, f32, f32, f32);
u32 func_80009C90(unkObjectStruct*, s8, s8);
void func_80017A60(unkObjectStruct*);
void func_80024198(s32, void*, s32);
void func_80060440(s16, s16);
void func_80060F04(s16, s32, s32, s32);
void func_80067284(s16, s32, f32);
s32 func_80067328(s16, s16);
f64 func_8009B618(f64, f64);

extern unkStructSize14 D_800C59AC[];
extern unkStructSizeUnknown* D_800EC700[];
extern s16 D_800EDEB4[];
extern unk72D90Struct3 D_800F32B0[];
extern s8 D_800F3843[];
extern unkObjectStruct* D_800F3FB0[];
extern s16 D_800FBA70_EE3F0;
extern s16 D_800FBA72_EE3F2;
extern s16 D_800FBA74_EE3F4[];
extern unkStructSize6 D_800FBA7C_EE3FC[];
extern f32 D_800FBA94_EE414[];
extern u16 D_800FBAB8_EE438[];
extern u8 D_800FBD00_EE680[];
extern u8 D_800FBE20_EE7A0[];
extern s8 D_800FBE24_EE7A4[];
extern unkStructSize4 D_800FBE30_EE7B0[];
extern u32 D_800FBE54_EE7D4; //rng sub seed
extern s16 D_800FBE58_EE7D8;
extern s16 D_800FC020;
extern s16 D_800FC022;
extern s16 D_800FC024;
extern s16 D_800FC026;
extern s16 D_800FC028;
extern s16 D_800FC02A;
extern s16 D_800FC02C;
extern unkObjectStruct* D_800FC030;
extern s16 D_800FC034;
extern s16 D_800FC040[1];
extern unkStructSize4_2 D_800FC050[];
extern unkObjectStruct* D_800FC05C;
extern unkObjectStruct* D_800FC060;
extern unkStructSize0x28 D_800FC068[2];
extern u16 D_800FC0B8[];
extern s16 D_800FC0BE;
extern Matrix4f D_800FC0C0;
extern s32 D_800FC100[16];
extern s16 D_800FC140;
extern unkObjectStruct* D_800FC144;
extern Matrix4f D_800FC148;
extern unkStructSize0x5C* D_800FC188[4];
extern s16 D_800FC198[6]; // length >= 6
extern unkStructSize0x20 D_800FC1C0[32];
extern unkStructSize0x28 D_800FC5C0[1];
extern Gfx* D_800FC5E8;
extern s16 D_800FC5EC;
extern f32 D_800FC5F0;