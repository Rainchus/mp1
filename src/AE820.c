#include "common.h"

#define USHRT_MAX 0x10000
#define USHRT_MINV (f32)(1.0 / 0x10000)

void func_800ADC20(u16* arg0, Vec4f* arg1, Vec4f* arg2) {
    f32 sp0 = arg1->x;
    f32 sp4 = arg1->y;
    f32 sp8 = arg1->z;
    f32 spC = arg1->w;

    arg2->x = ((((arg0[0] << 0x10) | arg0[16]) * USHRT_MINV * sp0) 
        + (((arg0[4] << 0x10) | arg0[20]) * USHRT_MINV * sp4) 
        + (((arg0[8] << 0x10) | arg0[24]) * USHRT_MINV * sp8) 
        + (((arg0[12] << 0x10) | arg0[28]) * USHRT_MINV * spC));
    arg2->y = ((((arg0[1] << 0x10) | arg0[17]) * USHRT_MINV * sp0) 
        + (((arg0[5] << 0x10) | arg0[21]) * USHRT_MINV * sp4) 
        + (((arg0[9] << 0x10) | arg0[25]) * USHRT_MINV * sp8) 
        + (((arg0[13] << 0x10) | arg0[29]) * USHRT_MINV * spC));
    arg2->z = ((((arg0[2] << 0x10) | arg0[18]) * USHRT_MINV * sp0) 
        + (((arg0[6] << 0x10) | arg0[22]) * USHRT_MINV * sp4) 
        + (((arg0[10] << 0x10) | arg0[26]) * USHRT_MINV * sp8) 
        + (((arg0[14] << 0x10) | arg0[30]) * USHRT_MINV * spC));
    arg2->w = ((((arg0[3] << 0x10) | arg0[19]) * USHRT_MINV * sp0) 
        + (((arg0[7] << 0x10) | arg0[23]) * USHRT_MINV * sp4) 
        + (((arg0[11] << 0x10) | arg0[27]) * USHRT_MINV * sp8) 
        + (((arg0[15] << 0x10) | arg0[31]) * USHRT_MINV * spC));
}

#if IDEA
typedef long int Mtx_t[4][4];
typedef union {
    Mtx_t m;
    struct {
        u16 intPart[4][4];
        u16 fracPart[4][4];
    };
    long long int force_structure_alignment;
} Mtx;
#define USHRT_MAX 0x10000
#define USHRT_MINV (f32)(1.0 / 0x10000)
#define PACK_MTX(mtx, i, j) (((((u16*)mtx)[4 * i + j] << 0x10) | ((u16*)mtx)[16 + 4 * i + j]) * USHRT_MINV)

void func_800AE330(Mtx* arg0, Vec4f* arg1, Vec4f* arg2) {
    f32 sp0 = arg1->x;
    f32 sp4 = arg1->y;
    f32 sp8 = arg1->z;
    f32 spC = arg1->w;

    arg2->x = ((PACK_MTX(arg0, 0, 0) * sp0) 
        + (PACK_MTX(arg0, 1, 0) * sp4) 
        + (PACK_MTX(arg0, 2, 0) * sp8) 
        + (PACK_MTX(arg0, 3, 0) * spC));
    arg2->y = ((PACK_MTX(arg0, 0, 1) * sp0) 
        + (PACK_MTX(arg0, 1, 1) * sp4) 
        + (PACK_MTX(arg0, 2, 1) * sp8) 
        + (PACK_MTX(arg0, 3, 1) * spC));
    arg2->z = ((PACK_MTX(arg0, 0, 2) * sp0) 
        + (PACK_MTX(arg0, 1, 2) * sp4) 
        + (PACK_MTX(arg0, 2, 2) * sp8) 
        + (PACK_MTX(arg0, 3, 2) * spC));
    arg2->w = ((PACK_MTX(arg0, 0, 3) * sp0) 
        + (PACK_MTX(arg0, 1, 3) * sp4) 
        + (PACK_MTX(arg0, 2, 3) * sp8) 
        + (PACK_MTX(arg0, 3, 3) * spC));
}
#endif
