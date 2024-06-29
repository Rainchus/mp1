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
