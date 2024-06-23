#include "common.h"

extern Vec3f D_800CD9B0;
extern f32 D_800B8984;
extern f32 D_800B8988;
extern f32 D_800B898C;
void func_8001E268(u8, s32, s32);
void func_8001E3B4(u8);
extern f32 D_800B8990;
void func_8000A534(void*, f32);
f32 func_80025D18(s16);
f32 func_80025E70(s16);
extern f32 D_800B8988;

INCLUDE_ASM(s32, "1130", func_80000530);

INCLUDE_ASM(s32, "1130", func_800006E4);

INCLUDE_ASM(s32, "1130", func_80000710);

INCLUDE_ASM(s32, "1130", func_80000828);

INCLUDE_ASM(s32, "1130", func_800009D8);

INCLUDE_ASM(s32, "1130", func_80000AB4);

INCLUDE_ASM(s32, "1130", func_80000D14);

INCLUDE_ASM(s32, "1130", func_80000F3C);

INCLUDE_ASM(s32, "1130", func_80001F84);

INCLUDE_ASM(s32, "1130", func_80002060);

INCLUDE_ASM(s32, "1130", func_80002080);

INCLUDE_ASM(s32, "1130", func_8000261C);

INCLUDE_ASM(s32, "1130", func_80002C48);

INCLUDE_ASM(s32, "1130", func_80003460);

INCLUDE_ASM(s32, "1130", func_8000396C);

INCLUDE_ASM(s32, "1130", func_80003C08);

INCLUDE_ASM(s32, "1130", func_8000423C);

INCLUDE_ASM(s32, "1130", func_80004578);

INCLUDE_ASM(s32, "1130", func_80004D1C);

INCLUDE_ASM(s32, "1130", func_800051D4);

INCLUDE_ASM(s32, "1130", func_800057F4);

void func_80005A04(Object* arg0) {
    D_800CD9B0.x = arg0->unk_18.x;
    D_800CD9B0.y = arg0->unk_18.y;
    D_800CD9B0.z = arg0->unk_18.z;
}

INCLUDE_ASM(s32, "1130", func_80005A28);

INCLUDE_ASM(s32, "1130", func_800078E8);

f32 func_80007954(f32 arg0) {
    if (arg0 < D_800B898C)
        return D_800B898C;

    if (!(arg0 < D_800B8988)) {
        if (!(arg0 < D_800B8984)) {
            return arg0;
        } else {
            return D_800B8984;
        }
    } else {
        return D_800B8988;
    }
}

void func_800079A8(omObjData* arg0, f32 arg1, f32 arg2, f32 arg3) {
    u8 temp_s0;
    unkGlobalStruct_00* temp_s2;

    temp_s2 = arg0->unk_50;
    func_800184BC(arg0, 0x10);
    temp_s0 = temp_s2->unk_20.b[3];
    func_8001E3B4(temp_s0);
    func_8001E268(temp_s0, 4, 4);
    func_80025798(arg0->model[2], arg1, arg2, arg3);
    temp_s2->unk_40 = D_800B8990;
    func_80009438();
}

void func_80007A50(omObjData* arg0) {
    unkGlobalStruct_00* temp_s1 = arg0->unk_50;
    f32 var_f2 = func_80025E70(arg0->model[0]);
    s32 var_v0, var_v1;

    if (var_f2 == -1.0f) {
        var_f2 = func_80025D18(arg0->model[0]);
    }
    
    var_v0 = !(var_f2 >= 28.0f) ? 0 : 1;
    var_v1 = !(var_f2 <= 29.0f) ? 0 : 1;
    
    if (var_v0 & var_v1) {
        func_8000A534(arg0, (temp_s1->unk_40 + D_800B8988) * temp_s1->unk_BC);
    }
}

INCLUDE_ASM(s32, "1130", func_80007B34);

INCLUDE_ASM(s32, "1130", func_800081C0);
