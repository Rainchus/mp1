#include "common.h"

void func_800AE110_AED10(f32* arg0, Vec4f* arg1, Vec4f* arg2) {
    f32 sp0 = arg1->x;
    f32 sp4 = arg1->y;
    f32 sp8 = arg1->z;
    f32 spC = arg1->w;
    f32 sp10 = 1.0f / ((arg0[3] * sp0) + (arg0[7] * sp4) + (arg0[11] * sp8) + (arg0[15] * spC));

    arg2->x = ((arg0[0] * sp0) + (arg0[4] * sp4) + (arg0[8] * sp8) + (arg0[12] * spC)) * sp10;
    arg2->y = ((arg0[1] * sp0) + (arg0[5] * sp4) + (arg0[9] * sp8) + (arg0[13] * spC)) * sp10;
    arg2->z = ((arg0[2] * sp0) + (arg0[6] * sp4) + (arg0[10] * sp8) + (arg0[14] * spC)) * sp10;
    arg2->w = 1.0f;
}
