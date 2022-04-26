#include "common.h"

typedef struct viewAngle {
/* 0x00 */ f32 y;
/* 0x04 */ f32 x;
/* 0x08 */ f32 z;
} viewAngle;

typedef struct cameraPosition {
/* 0x00 */ f32 x;
/* 0x04 */ f32 y;
/* 0x08 */ f32 z;
} cameraPosition;

typedef struct unk_Struct00 {
/* 0x00 */ char unk_00[0x40];
/* 0x40 */ f32 unk_40;
/* 0x44 */ char unk_44[0xF4];
} unk_Struct00; //sizeof 0x138

extern f32 D_800EE98C;
extern viewAngle D_800F33EC;
extern cameraPosition D_800F6524;

typedef struct unk_801DEC9C {
/* 0x00 */ u16 unk_00;
/* 0x02 */ u16 unk_02;
/* 0x04 */ u16 unk_04;
/* 0x06 */ u16 unk_06;
/* 0x08 */ u16 unk_08;
/* 0x0A */ u16 unk_0A;
/* 0x0C */ s32 unk_0C;
/* 0x10 */ s32 unk_10;
/* 0x14 */ void* unk_14;
/* 0x18 */ s32 unk_18;
/* 0x1C */ s32 unk_1C;
/* 0x20 */ char unk_20[0x10];
/* 0x30 */ f32 unk_30;
/* 0x34 */ f32 unk_34;
/* 0x38 */ f32 unk_38;
/* 0x3C */ s32 unk_3C;
/* 0x40 */ s32 unk_40;
/* 0x44 */ s32 unk_44;
/* 0x48 */ s32 unk_48;
/* 0x4C */ u8 unk_4C;
/* 0x4D */ u8 unk_4D;
/* 0x4E */ u8 unk_4E;
/* 0x4F */ u8 unk_4F;
} unk_801DEC9C;

void func_800F6858_CDCC8(unk_801DEC9C*);
void func_800F796C_CEDDC(unk_801DEC9C*);
void func_800F71C4_CE634(unk_801DEC9C*);
void func_800F68CC_CDD3C(s32);
void func_800F7EDC_CF34C(void);
void func_800F8C38_D00A8(void);
void func_800F8E38_D02A8(void);
void func_800F90CC_D053C(void);
void func_800F963C_D0AAC(void);
void func_800FB360_D27D0(void);
void func_800F7B6C_CEFDC(u8);
void func_800F7C08_CF078(void);
void func_800F7D74_CF1E4(void);
void func_800F8FEC_D045C(void);
void func_800F9178_D05E8(void);
void func_800F7350_CE7C0(void);
void func_800F73A4_CE814(void);
void func_800F7874_CECE4(unk_801DEC9C* arg0);
void func_800F7E20_CF290(void);
void func_800F8F58_D03C8(void);
s32 func_800F901C_D048C(void);
s32 func_800F9BC8_D1038(s32);
void func_800F830C_CF77C(void);
void func_800F94E0_D0950(void);

extern unk_Struct00* D_800C3110;
extern s32 D_800ED430;
extern s16 D_800ED440;
extern s16 D_800F2BC0;
extern s32 D_800FD8D0;
extern s32 D_800FD8DC;
extern s32 D_800FD8EC;
extern f64 D_800FD900;
extern s32 D_800FDDDC;
extern f32 D_800FDDE8;
extern f32 D_800FDE28;
extern s16 D_800FDE2C;
extern s16 D_800FE180;
extern s16 D_800FE2C0;
extern u16 D_800FE2C2;
extern u16 D_800FE2C4;
extern u16 D_800F5144;