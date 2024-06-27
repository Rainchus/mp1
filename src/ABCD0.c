#include "common.h"

void func_800AB0D0_ABCD0(Matrix4f arg0, Vec2f* arg1, Matrix4f arg2) {
    arg2[0][0] = arg0[0][0] * arg1->y + arg0[1][0] * arg1->x;
    arg2[0][1] = arg0[0][1] * arg1->y + arg0[1][1] * arg1->x;
    arg2[0][2] = arg0[0][2] * arg1->y + arg0[1][2] * arg1->x;
    arg2[0][3] = arg0[0][3] * arg1->y + arg0[1][3] * arg1->x;
    arg2[1][0] = arg0[1][0] * arg1->y - arg0[0][0] * arg1->x;
    arg2[1][1] = arg0[1][1] * arg1->y - arg0[0][1] * arg1->x;
    arg2[1][2] = arg0[1][2] * arg1->y - arg0[0][2] * arg1->x;
    arg2[1][3] = arg0[1][3] * arg1->y - arg0[0][3] * arg1->x;
    arg2[2][0] = arg0[2][0];
    arg2[2][1] = arg0[2][1];
    arg2[2][2] = arg0[2][2];
    arg2[2][3] = arg0[2][3];
    arg2[3][0] = arg0[3][0];
    arg2[3][1] = arg0[3][1];
    arg2[3][2] = arg0[3][2];
    arg2[3][3] = arg0[3][3];
}
