#include "common.h"

typedef struct unkfloatStruct {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
    char unk18[4];
} unkfloatStruct;

typedef struct heapThing {
    u16 unk_00;
    s16 unk_02;
    s32 unk_04;
    omObjData* unk_08;
} heapThing;

extern u16 D_800FE39C_RunningOfTheBulb;
void func_800FA78C_RunningOfTheBulb(void);
void func_800FAE18_RunningOfTheBulb(void);
extern omObjData* D_800FE478_RunningOfTheBulb;

f32 func_800FCEA0_RunningOfTheBulb(omObjData*, omObjData*, f32, f32, f32, f32);
void func_800F6E80_RunningOfTheBulb(omObjData*);
void func_800F8EA0_RunningOfTheBulb(omObjData*);
void func_800FA2B8_RunningOfTheBulb(omObjData*);
f32 func_800FDB84_RunningOfTheBulb(f32, f32);
void func_800FE178_RunningOfTheBulb(s32);
void func_800F9094_RunningOfTheBulb(omObjData*);

extern s16 D_800EDEB4[];
extern s8 D_800F3843[];
extern s16 D_800F5460[];
extern omObjData* D_800FE478_ovl2D;
extern omObjData* D_800FE4A0_RunningOfTheBulb;
extern s16 D_800FE4A4_RunningOfTheBulb;
extern f32 D_800FE364_RunningOfTheBulb[][2];
extern u16 D_800FE3A0_RunningOfTheBulb;
extern unkfloatStruct D_800EE738;
extern Vec3f D_800FE484_RunningOfTheBulb;
extern Vec3f D_800FE4B8_RunningOfTheBulb;
extern Vec2f D_800FE468_RunningOfTheBulb;
extern s16 D_800F3778;
extern s16 D_800FE458_RunningOfTheBulb;
extern s16 D_800FE45A_RunningOfTheBulb;
extern omObjData** D_800FE460_RunningOfTheBulb;
extern omObjData* D_800FE470_RunningOfTheBulb[];
extern omObjData* D_800FE47C_RunningOfTheBulb;
extern omObjData** D_800FE480_RunningOfTheBulb;
extern omObjData* D_800FE494_RunningOfTheBulb;
extern omObjData** D_800FE49C_RunningOfTheBulb;
extern omObjData* D_800FE4A8_RunningOfTheBulb;
extern omObjData* D_800FE4AC_RunningOfTheBulb;
extern omObjData* D_800FE4C0_RunningOfTheBulb;
extern omObjData* D_800FE4C4_RunningOfTheBulb;
extern omObjData* D_800FE478_RunningOfTheBulb;
extern s16 D_800EE984;
extern s16 D_800FE44A_RunningOfTheBulb;
extern s16 D_800FE44C_RunningOfTheBulb[];
extern u16 D_800FE4B4_RunningOfTheBulb;
extern u16 D_800FE464_RunningOfTheBulb;
extern omObjData* D_800FE490_RunningOfTheBulb;
extern omObjData* D_800FE498_RunningOfTheBulb;
extern omObjData* D_800F2AF8[];
extern char D_800FE3B0_RunningOfTheBulb[];
extern Vec3f D_800F652C;
extern u16 D_800FE464_RunningOfTheBulb;
extern omObjData* D_800FE478_RunningOfTheBulb;
extern s16 D_800EDEB4[];
extern s8 D_800F3843[];
extern s16 D_800F5460[];
extern u16 D_800FE464_RunningOfTheBulb;
extern omObjData* D_800FE4A0_RunningOfTheBulb;
extern omObjData* D_800FE4AC_RunningOfTheBulb;

void func_800F7B5C_RunningOfTheBulb(s32 arg0, s32 arg1);
void func_800F6FF4_RunningOfTheBulb(omObjData*);
void func_800F6DF4_RunningOfTheBulb(omObjData*);
void func_800FBAA4_RunningOfTheBulb(omObjData*);
void func_800FBB5C_RunningOfTheBulb(void);
void func_800F6B28_RunningOfTheBulb(void);
void func_800F6AC0_RunningOfTheBulb(omObjData*);
void func_800F6BE4_RunningOfTheBulb(omObjData*);
void func_800F6F04_RunningOfTheBulb(omObjData*);
void func_800F7034_RunningOfTheBulb(void);
void func_800F7AEC_RunningOfTheBulb(s32 arg0);
void func_800F7B08_RunningOfTheBulb(s32 arg0);
void func_800F7B24_RunningOfTheBulb(s32 arg0);
void func_800F7B40_RunningOfTheBulb(s32 arg0);
void func_800F9724_RunningOfTheBulb(void);
void func_800FAB8C_RunningOfTheBulb(void);
void func_800FB180_RunningOfTheBulb(void);
void func_800FB28C_RunningOfTheBulb(void);
void func_800FBF30_RunningOfTheBulb(void);
void func_800FE140_RunningOfTheBulb(void);
void func_800FE090_RunningOfTheBulb(f32, f32, f32, f32, f32, f32, f32, f32);
void func_800F82F4_RunningOfTheBulb(void);
