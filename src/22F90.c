#include "common.h"

typedef f32 Mat4[4][4];


/* Translate Matrix. */
void func_80022390(Mat4 mtx, f32 x, f32 y, f32 z) {
     mtx[3][0] = (x * mtx[0][0]) + (y * mtx[1][0]) + (z * mtx[2][0]) + mtx[3][0];
     mtx[3][1] = (x * mtx[0][1]) + (y * mtx[1][1]) + (z * mtx[2][1]) + mtx[3][1];
     mtx[3][2] = (x * mtx[0][2]) + (y * mtx[1][2]) + (z * mtx[2][2]) + mtx[3][2];
     mtx[3][3] = (x * mtx[0][3]) + (y * mtx[1][3]) + (z * mtx[2][3]) + mtx[3][3];
}


/* Scale Matrix */
void func_80022450(Mat4 mtx, f32 sx, f32 sy, f32 sz) {
    s32 i;
    for (i = 0; i < 3; i++) {
        mtx[0][i] *= sx;
        mtx[1][i] *= sy;
        mtx[2][i] *= sz;
    }
}

/* Rotate Matrix */
void func_800224A4(float* mtx, f32 pitch, f32 yaw, f32 row); // Mat4 mtx
INCLUDE_ASM(s32, "22F90", func_800224A4);

INCLUDE_ASM(s32, "22F90", func_800227C4);

INCLUDE_ASM(s32, "22F90", func_8002292C);

INCLUDE_ASM(s32, "22F90", func_80022AD0);

INCLUDE_ASM(s32, "22F90", func_80022B30);

INCLUDE_ASM(s32, "22F90", func_80022C00);

INCLUDE_ASM(s32, "22F90", func_80022CCC);

INCLUDE_ASM(s32, "22F90", func_80022D9C);
