#include "common.h"

void func_800ACE70(Matrix4f mf, Vec3f* src, Vec3f* dest) {
    f32 sp0 = src->x;
    f32 sp4 = src->y;
    f32 sp8 = src->z;

    dest->x = (mf[0][0] * sp0) + (mf[1][0] * sp4) + (mf[2][0] * sp8) + mf[3][0];
    dest->y = (mf[0][1] * sp0) + (mf[1][1] * sp4) + (mf[2][1] * sp8) + mf[3][1];
    dest->z = (mf[0][2] * sp0) + (mf[1][2] * sp4) + (mf[2][2] * sp8) + mf[3][2];
}
