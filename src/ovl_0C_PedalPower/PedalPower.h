#include "common.h"

typedef struct UnkPedalPowerStruct {
    /* 0x00 */ char unk_00[0x22];
    /* 0x22 */ u8 unk_22;
    /* 0x23 */ char unk_23[0x49];
} UnkPedalPowerStruct; //sizeof 0x6C

void func_800F7DD4_122FC4(void);
void func_800F6944_121B34(void);
void func_800F6ED0_1220C0(void);
void func_800F6D2C_121F1C(unkObjectStruct*);
void func_800F67AC_12199C(void);
void func_800F6870_121A60(void);
void func_800F6CF8_121EE8(void);
void func_800F79B0_122BA0(void);
void func_800F8EE0_1240D0(void);


/* BSS DATA */
extern u8 D_800F9E20_1250D0;
extern f32 D_800F9E38_1250D0[];
extern u16 D_800F9EF6_1250D0;
extern u16 D_800F9EF8_1250D0;
extern u16 D_800F9EFA_1250D0;
extern u16 D_800F9EFC_1250D0;
extern s16 D_800F9EFE_1250D0;
extern s32 D_800F9F04_1250D0;
extern s32 D_800FA720_1250D0;
extern s8 D_800FA72C_1250D0;
extern s8 D_800FA72D_1250D0;
extern s8 D_800FA738_1250D0;
extern Vec3f D_800FA73C_1250D0;