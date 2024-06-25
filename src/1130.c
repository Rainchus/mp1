#include "common.h"

extern Vec3f D_800CD9B0_CDA50;
extern f32 D_800B8984_B9584;
extern f32 D_800B8988_B9588;
extern f32 D_800B898C_B958C;
extern f32 D_800B8990_B9590;

void func_8000A534_B134(void*, f32);
void func_8001E268_1EE68(u8, s32, s32);
void func_8001E3B4_1EFB4(u8);
f32 func_80025D18_26918(s16);
f32 func_80025E70_26A70(s16);

INCLUDE_ASM("asm/nonmatchings/1130", func_80000530_1130);

INCLUDE_ASM("asm/nonmatchings/1130", func_800006E4_12E4);

INCLUDE_ASM("asm/nonmatchings/1130", func_80000710_1310);

INCLUDE_ASM("asm/nonmatchings/1130", func_80000828_1428);

INCLUDE_ASM("asm/nonmatchings/1130", func_800009D8_15D8);

INCLUDE_ASM("asm/nonmatchings/1130", func_80000AB4_16B4);

INCLUDE_ASM("asm/nonmatchings/1130", func_80000D14_1914);

INCLUDE_ASM("asm/nonmatchings/1130", func_80000F3C_1B3C);

INCLUDE_ASM("asm/nonmatchings/1130", func_80001F84_2B84);

INCLUDE_ASM("asm/nonmatchings/1130", func_80002060_2C60);

INCLUDE_ASM("asm/nonmatchings/1130", func_80002080_2C80);

INCLUDE_ASM("asm/nonmatchings/1130", func_8000261C_321C);

INCLUDE_ASM("asm/nonmatchings/1130", func_80002C48_3848);

INCLUDE_ASM("asm/nonmatchings/1130", func_80003460_4060);

INCLUDE_ASM("asm/nonmatchings/1130", func_8000396C_456C);

INCLUDE_ASM("asm/nonmatchings/1130", func_80003C08_4808);

INCLUDE_ASM("asm/nonmatchings/1130", func_8000423C_4E3C);

INCLUDE_ASM("asm/nonmatchings/1130", func_80004578_5178);

INCLUDE_ASM("asm/nonmatchings/1130", func_80004D1C_591C);

INCLUDE_ASM("asm/nonmatchings/1130", func_800051D4_5DD4);

INCLUDE_ASM("asm/nonmatchings/1130", func_800057F4_63F4);

void func_80005A04_6604(Object* arg0) {
    D_800CD9B0_CDA50.x = arg0->unk_18.x;
    D_800CD9B0_CDA50.y = arg0->unk_18.y;
    D_800CD9B0_CDA50.z = arg0->unk_18.z;
}

INCLUDE_ASM("asm/nonmatchings/1130", func_80005A28_6628);

INCLUDE_ASM("asm/nonmatchings/1130", func_800078E8_84E8);

f32 func_80007954_8554(f32 arg0) {
    if (arg0 < D_800B898C_B958C)
        return D_800B898C_B958C;

    if (!(arg0 < D_800B8988_B9588)) {
        if (!(arg0 < D_800B8984_B9584)) {
            return arg0;
        } else {
            return D_800B8984_B9584;
        }
    } else {
        return D_800B8988_B9588;
    }
}

void func_800079A8_85A8(omObjData* arg0, f32 arg1, f32 arg2, f32 arg3) {
    u8 temp_s0;
    unkGlobalStruct_00* temp_s2;

    temp_s2 = arg0->unk_50;
    func_800184BC_190BC(arg0, 0x10);
    temp_s0 = temp_s2->unk_20.b[3];
    func_8001E3B4_1EFB4(temp_s0);
    func_8001E268_1EE68(temp_s0, 4, 4);
    func_80025798_26398(arg0->model[2], arg1, arg2, arg3);
    temp_s2->unk_40 = D_800B8990_B9590;
    func_80009438_A038();
}

void func_80007A50_8650(omObjData* arg0) {
    unkGlobalStruct_00* temp_s1 = arg0->unk_50;
    f32 var_f2 = func_80025E70_26A70(arg0->model[0]);
    s32 var_v0, var_v1;

    if (var_f2 == -1.0f) {
        var_f2 = func_80025D18_26918(arg0->model[0]);
    }
    
    var_v0 = !(var_f2 >= 28.0f) ? 0 : 1;
    var_v1 = !(var_f2 <= 29.0f) ? 0 : 1;
    
    if (var_v0 & var_v1) {
        func_8000A534_B134(arg0, (temp_s1->unk_40 + D_800B8988_B9588) * temp_s1->unk_BC);
    }
}

INCLUDE_ASM("asm/nonmatchings/1130", func_80007B34_8734);

INCLUDE_ASM("asm/nonmatchings/1130", func_800081C0_8DC0);
