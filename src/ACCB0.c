#include "common.h"

void func_800AC0B0_ACCB0(Matrix4f arg0, Matrix4f arg1, Matrix4f arg2) {
    s32 i;
    s32 j;
    Matrix4f temp;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            temp[i][j] = arg0[i][0] * arg1[0][j] + arg0[i][1] * arg1[1][j] + arg0[i][2] * arg1[2][j] + arg0[i][3] * arg1[3][j];
        }
    }
        
    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            arg2[i][j] = temp[i][j];
        }
    }
}
