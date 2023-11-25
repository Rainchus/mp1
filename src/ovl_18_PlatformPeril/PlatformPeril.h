#include "common.h"

typedef struct unkPPStruct {
/* 0x00 */ union {
        f32 float32;
        s32 signed32;
    } unk_00;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    s32 unk1C;
    s32 unk20;
} unkPPStruct;

typedef struct unk_800FE2B0 {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
} unk_800FE2B0;

//extern s32 D_800F2B7C;
extern s32 D_800FE1B0[][2];
extern s32 D_800FE2A0[];
void func_800F979C_16EEDC(void);
void func_800FAD64_1704A4(unkObjectStruct*);
void func_800F66E8_16BE28(void);
void func_800F6720_16BE60(unkObjectStruct*);
s32 func_800FC95C_17209C(void);
void func_800F7070_16C7B0(unkPPStruct*);
void func_800F8C2C_16E36C(void);
void func_800F94EC_16EC2C(void);
void func_800F9598_16ECD8(void);
void func_800F9644_16ED84(void);
void func_800F96F0_16EE30(void);
void func_800F6F68_16C6A8(void);
void func_800F76E4_16CE24(void);
void func_800F8B7C_16E2BC(void);
void func_800F90C0_16E800(void);
void func_800FC1DC_17191C(void);
void func_800FC8E4_172024(void);
void func_800F7868_16CFA8(void);
void func_800F6790_16BED0(void);

extern s8 D_800B8955; // true extern data
extern f32 D_800B895C; // true extern data
extern unkObjectStruct* D_800EDE70[]; // true extern data
extern u16 D_800EE984; // true extern data
extern unkObjectStruct* D_800F3FB0[]; // true extern data

extern f32 D_800FCDA0_1724E0;
extern unkPPStruct D_800FD8F4_173034[];
extern s32 D_800FCD90_1724D0;
extern char D_800FDF60_1736A0[];
extern char D_800FDF6C_1736AC[];
extern char D_800FDF78_1736B8[];
extern unkPPStruct D_800FD2A0_1729E0[];
extern s32 D_800FE1D0_173910;
extern s32 D_800FE1D4_173914;
extern s32 D_800FE258_173998[];

typedef struct unk_800FDD60_1734A0 {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
} unk_800FDD60_1734A0;

extern unkPPStruct D_800FDD74; // data splits look wrong?

/* BSS DATA */
extern unkObjectStruct* D_800FE1D8_1738E0[];
extern s32 D_800FE250_1738E0;
extern unk_800FE2B0 D_800FE2B0_1738E0;
extern s32 D_800FE2F8_1738E0;