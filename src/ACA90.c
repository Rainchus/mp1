#include "common.h"

void func_800ABE90_ACA90(Matrix4f arg0, Vec3f* arg1, Matrix4f arg2) {
    s32 i;

    for (i = 0; i < 4; i++) {
        arg2[i][0] = arg0[i][0] + arg0[i][3] * arg1->x;
        arg2[i][1] = arg0[i][1] + arg0[i][3] * arg1->y;
        arg2[i][2] = arg0[i][2] + arg0[i][3] * arg1->z;
        arg2[i][3] = arg0[i][3];
    }
}
