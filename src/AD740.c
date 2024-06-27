#include "common.h"

void func_800ACB40_AD740(Matrix4f arg0, Matrix4f arg1, Matrix4f arg2) {
    s32 i;
    s32 j;
    Matrix4f temp;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 3; j++) {
            temp[i][j] = arg0[i][j] + arg0[i][3] * arg1[3][j];
        }
    }
        
    for (i = 0; i < 4; i++) {
        for (j = 0; j < 3; j++) {
            arg2[i][j] = temp[i][j];
        }

        arg2[i][3] = arg0[i][3];
    }
}
