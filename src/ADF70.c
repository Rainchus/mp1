#include "common.h"

void func_800AD370(f32 arg0[4][4], Vec3f* arg1, Vec3f* arg2) {
    f32 sp0 = arg1->x;
    f32 sp4 = arg1->y;
    f32 sp8 = arg1->z;
    f32 spC =  1.0f / ((arg0[0][3] * sp0) + (arg0[1][3] * sp4) + (arg0[2][3] * sp8) + (arg0[3][3]));

    arg2->x = ((arg0[0][0] * sp0) + (arg0[1][0] * sp4) + (arg0[2][0] * sp8) + (arg0[3][0])) * spC;
    arg2->y = ((arg0[0][1] * sp0) + (arg0[1][1] * sp4) + (arg0[2][1] * sp8) + (arg0[3][1])) * spC;
    arg2->z = ((arg0[0][2] * sp0) + (arg0[1][2] * sp4) + (arg0[2][2] * sp8) + (arg0[3][2])) * spC;
}
