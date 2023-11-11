#include "common.h"
#include "gu.h"
#include "os.h"

#define NUM_OF_TILES 9

// data
u32 D_800FD7E0_D4C50 = 0x19971204;
Vec3f D_800FD7E4_D4C54 = { 296.0f, 0.0f, 296.0f };
Vec3f D_800FD7F0_D4C60[NUM_OF_TILES] = {
    {-1,  0, -1},
    {-1,  0,  0},
    {-1,  0,  1},
    { 0,  0, -1},
    { 0,  0,  0},
    { 0,  0,  1},
    { 1,  0, -1},
    { 1,  0,  0},
    { 1,  0,  1},
};


const u8 D_800FD85C_D4CCC[9] = {
    0, 1, 0, 2, 0, 3, 0, 4, 0
};

extern Object* D_800F2AF8[];
extern s32 D_800ED430;
extern s32 D_800FD8D0_D4D40;
extern s32 D_800FD8DC_D4D4C;
extern s32 D_800FD8EC_D4D5C;
extern f64 D_800FD900;
extern s32 D_800FDDDC;
extern f32 D_800FDDE8;
extern f32 D_800FDE28;
extern s16 D_800FDE2C;
extern s16 D_800FDE40;
extern Vec2s D_800FDE42;
extern Vec2s D_800FDE46;
extern s16 D_800FE180;
extern s16 D_800FE2C0;
extern u16 D_800FE2C2;
extern s16 D_800FE2C4;
extern unkObjectStruct* D_800F3FB0;
extern Vec3f D_800FDDC0;
extern Vec3f D_800FDDCC;
extern unkObjectStruct* D_800FDDE0;
extern unkObjectStruct* D_800FE2E8[];

void func_800F65E0_CDA50(void);
void func_800F6858_CDCC8(unkObjectStruct*);
void func_800F71C4_CE634(unkObjectStruct*);
void func_800F68CC_CDD3C(s32);
void func_800F7EDC_CF34C(void);
void func_800F8C38_D00A8(void);
void func_800F8E38_D02A8(void);
void func_800F90CC_D053C(void);
void func_800F963C_D0AAC(void);
void func_800FB360_D27D0(void);
void func_800F7B6C_CEFDC(u16);
void func_800F7C08_CF078(void);
void func_800F7D74_CF1E4(void);
void func_800F8FEC_D045C(void);
void func_800F9178_D05E8(void);
void func_800F7350_CE7C0(void);
void func_800F73A4_CE814(void);
void func_800F7874_CECE4(unkObjectStruct*);
void func_800F7E20_CF290(void);
void func_800F8F58_D03C8(void);
u16 func_800F901C_D048C(void);
s16 func_800F9BC8_D1038(unkObjectStruct*);
void func_800F830C_CF77C(void);
void func_800F94E0_D0950(void);
void func_800F89A8_CFE18(void);
void func_800FB0A8_D2518(void);
void func_800F8130_CF5A0(void);
void func_800F87DC_CFC4C(unkObjectStruct*);
void func_800F796C_CEDDC(unkObjectStruct*);