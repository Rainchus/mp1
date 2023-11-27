#include "common.h"

typedef struct unkHammerDropStruct {
    char unk_00[0x38];
    s32 unk_38;
    f32 unk_3C;
} unkHammerDropStruct;

void func_8000A534(unkObjectStruct*, s32);
void func_80017C0C(unkObjectStruct*, s32, f32, f32, f32, s32, f32);
void func_80018450(unkObjectStruct*, s32);
void func_80060F04(s16, s32, s32, s32);

void func_800F67BC_17E8EC(void);
void func_800F7D28_17FE58(void);
void func_800F8508_180638(void);
void func_800F9350_181480(void);
void func_800F7488_17F5B8(unkObjectStruct* arg0);
void func_800F74A4_17F5D4(unkObjectStruct* arg0);
void func_800F74C0_17F5F0(unkObjectStruct* arg0);
void func_800F74DC_17F60C(unkObjectStruct* arg0);
void func_800FA2D8_182408(void);
void func_800FA2E0_182410(void);
void func_800F6ADC_17EC0C(void);
void func_800FB050_183180(void);
void func_800F6848_17E978(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6);
void func_800F6814_17E944(void);
void func_800F690C_17EA3C(unkObjectStruct* arg0);
void func_800F6A54_17EB84(unkObjectStruct* arg0);
void func_800F6AF8_17EC28(unkObjectStruct* arg0, s32 arg1);

// External to overlay
extern f32 D_800B8964;
extern f32 D_800B8980;
extern s32 D_800B8988;
//extern s8 D_800ECE14[];
extern f32 D_800ED6B8; // true extern data
extern s16 D_800EDEB4[]; // true extern data
extern s32 D_800EDEC0; // true extern data
extern s16 D_800EE984; // true extern data
extern unkObjectStruct* D_800F2AF8[]; // true extern data
extern u16 D_800F370C; // true extern data
extern s8 D_800F3843[]; // true extern data
extern u16 D_800F5144; // true extern data
extern f32 D_800F5254; // true extern data
extern s16 D_800F5460[]; // true extern data

// Local to overlay
extern s32 D_800FB5C0;

/* BSS DATA*/
extern s32 D_800FB6A0_1837D0;
extern s32 D_800FB6A4_1837D0;
extern s32 D_800FB6C4_1837D0;
extern s32 D_800FB6C8_1837D0;
extern f32 D_800FB6CC_1837D0;
extern s32 D_800FB988_1837D0;
extern s32 D_800FB98C_1837D0;
extern unkObjectStruct* D_800FB998_1837D0[];