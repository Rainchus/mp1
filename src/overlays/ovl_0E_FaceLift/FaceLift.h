#include "common.h"

typedef struct unk_FaceLift_00 {
/* 0x00 */ f32 unk_00;
/* 0x04 */ char unk_04[0x24];
/* 0x28 */ f32 unk_28;
/* 0x2C */ char unk_2C[0x24];
/* 0x50 */ f32 unk_50;
} unk_FaceLift_00;

typedef struct unk_FaceLift_01 {
/* 0x00 */ f32 unk_00;
/* 0x04 */ f32 unk_04;
/* 0x08 */ char unk_08[0x20];
} unk_FaceLift_01;

void func_800F9B38_FaceLift(void);
s16 func_8002451C(s32, void*, s32);
void func_80025830(s16, f32, f32, f32);
void func_800258EC(s16, s32, s32);
void func_80025F10(s16, s32);
void func_800F80A4_FaceLift(omObjData*, s32);
void func_800FA374_FaceLift(s16, s16);
void func_800F8FCC_FaceLift(void);
void func_800F9988_FaceLift(void);
void func_800FAA38_FaceLift(void);
void func_800FACD8_FaceLift(omObjData*, s32);

extern s32 D_800FCA18_FaceLift;
extern u16 D_800FC3D0_FaceLift;
extern u16 D_800F5144;
extern s16 D_800FC960_FaceLift;
extern unk_FaceLift_01 D_800FC4B0_FaceLift[];
extern unk_FaceLift_00 D_800FC500_FaceLift;
extern Vec3f D_800FC980_FaceLift[6];
extern Vec2f D_800FC9F0_FaceLift;
extern s16 D_800FCA1E_FaceLift;
extern s16 D_800FCA28_FaceLift;
extern s16 D_800FCA2A_FaceLift;
