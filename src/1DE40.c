#include "common.h"

INCLUDE_ASM(s32, "1DE40", InitCameras);

void func_8001D40C(void) {
    D_800F3FA8 = D_800F37F0;
}

INCLUDE_ASM(s32, "1DE40", func_8001D420);

INCLUDE_ASM(s32, "1DE40", func_8001D494);

INCLUDE_ASM(s32, "1DE40", func_8001D4D4);

INCLUDE_ASM(s32, "1DE40", func_8001D520);

INCLUDE_ASM(s32, "1DE40", func_8001D57C);

INCLUDE_ASM(s32, "1DE40", func_8001D658);

INCLUDE_ASM(s32, "1DE40", func_8001D7DC);

INCLUDE_ASM(s32, "1DE40", func_8001D8A0);

INCLUDE_ASM(s32, "1DE40", func_8001D8D4);

void func_8001D904(s16 arg0, s32 arg1) {
    D_800C3110[arg0].unkF4 = arg1;
}

void HuGuLookAtF(f32 mf[4][4], f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 xUp, f32 yUp, f32 zUp);

void Convert3DTo2D(s16 index, Vec3f* arg1, Vec2f* arg2) {
    Matrix4f sp28;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f28;
    f32 temp_f2;
    f32 temp_f30;
    unk_Struct00 *temp_s0;
    
    temp_s0 = &D_800C3110[index];
    HuGuLookAtF(sp28, temp_s0->pos.x, temp_s0->pos.y, temp_s0->pos.z, temp_s0->unkC, temp_s0->unk10, temp_s0->unk14, temp_s0->unk18, temp_s0->unk1C, temp_s0->unk20);
    temp_f30 = arg1->x;
    temp_f28 = arg1->y;
    temp_f2 = arg1->z;
    temp_f30 -= temp_s0->pos.x;
    temp_f28 -= temp_s0->pos.y;
    temp_f2 -= temp_s0->pos.z;
    temp_f24 = ((temp_f30 * sp28[0][0]) + (temp_f28 * sp28[1][0])) + (temp_f2 * sp28[2][0]);
    temp_f22 = ((temp_f30 * sp28[0][1]) + (temp_f28 * sp28[1][1])) + (temp_f2 * sp28[2][1]);
    temp_f20 = ((temp_f30 * sp28[0][2]) + (temp_f28 * sp28[1][2])) + (temp_f2 * sp28[2][2]);
    temp_f30 = func_800AEAC0(temp_s0->unk_40 / 2.0f) / func_800AEFD0(temp_s0->unk_40 / 2.0f) * temp_f20 * (4.0f / 3.0f);
    temp_f28 =  (func_800AEAC0(temp_s0->unk_40 / 2.0f) / func_800AEFD0(temp_s0->unk_40 / 2.0f)) * temp_f20;
    arg2->x = (temp_f24 * (160.0f / (-temp_f30))) + 160.0f;
    arg2->y = ((temp_f22 * (120.0f / temp_f28)) + 120.0f);
}

INCLUDE_ASM(s32, "1DE40", func_8001DB2C);

INCLUDE_ASM(s32, "1DE40", func_8001DD24);
