#include "common.h"

// INCLUDE_ASM(s32, "AE150", func_800AD550);

typedef long int Mtx_t[4][4];
typedef union {
    Mtx_t m;
    // struct {
    //     u16 intPart[4][4];
    //     u16 fracPart[4][4];
    // };
    long long int force_structure_alignment;
} Mtx;
#define USHRT_MAX 0x10000
#define USHRT_MINV (f32)(1.0 / 0x10000)
#define PACK_MTX(mtx, i, j) (((((u16*)mtx)[4 * i + j] << 0x10) | ((u16*)mtx)[16 + 4 * i + j]) * USHRT_MINV)

void func_800AD550(Mtx* arg0, Vec3f* arg1, Vec3f* arg2) {
    f32 sp0 = arg1->x;
    f32 sp4 = arg1->y;
    f32 sp8 = arg1->z;
    f32 spC = 1.0f / ((PACK_MTX(arg0, 0, 3) * sp0) 
        + (PACK_MTX(arg0, 1, 3) * sp4) 
        + (PACK_MTX(arg0, 2, 3) * sp8) 
        + (PACK_MTX(arg0, 3, 3) ));

    arg2->x = ((PACK_MTX(arg0, 0, 0) * sp0) 
        + (PACK_MTX(arg0, 1, 0) * sp4) 
        + (PACK_MTX(arg0, 2, 0) * sp8)
        + (PACK_MTX(arg0, 3, 0))) * spC;
    arg2->y = ((PACK_MTX(arg0, 0, 1) * sp0) 
        + (PACK_MTX(arg0, 1, 1) * sp4) 
        + (PACK_MTX(arg0, 2, 1) * sp8) 
        + (PACK_MTX(arg0, 3, 1))) * spC;
    arg2->z = ((PACK_MTX(arg0, 0, 2) * sp0) 
        + (PACK_MTX(arg0, 1, 2) * sp4) 
        + (PACK_MTX(arg0, 2, 2) * sp8) 
        + (PACK_MTX(arg0, 3, 2))) * spC;
}
