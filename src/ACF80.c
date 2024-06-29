#include "common.h"

// Multiplies matrix arg0 by arg1, stores in arg2 and copies the bottom row of arg0 to arg2
void func_800AC380(Matrix4f arg0, Matrix4f arg1, Matrix4f dest) {
    s32 i;
    s32 j;
    Matrix4f temp;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 3; j++) {
            temp[i][j] = arg0[i][0] * arg1[0][j] + arg0[i][1] * arg1[1][j] + arg0[i][2] * arg1[2][j] + arg0[i][3] * arg1[3][j];
        }
    }
        
    for (i = 0; i < 4; i++) {
        for (j = 0; j < 3; j++) {
            dest[i][j] = temp[i][j];
        }

        dest[i][3] = arg0[i][3];
    }
}
