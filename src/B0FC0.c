#include "common.h"

extern f64 D_800C7ED0;
extern f64 D_800C8338[];

// atan2_rad
f64 func_800B03C0(f64 y, f64 x) {
    f64 ratio;
    f64 ratioSq;
    f64 sp20;
    f64 sp28;
    f64 sp30;
    f64 sp38;
    f64 sp40;
    s32 sp48;

    if (y == 0.0) {
        return (x > 0.0) ? 0.0 : M_PI;
    }

    if (x == 0.0) {
        return (y > 0.0) ? (M_PI/2) : -(M_PI/2);
    }
    ratio = y / x;
    if (ratio == 1.0) {
        return (y > 0.0) ? (M_PI/4) : -((M_PI*3)/4);
    }

    if (ratio == -1.0) {
        return (x > 0.0) ? -(M_PI/4) : ((M_PI*3)/4);
    }

    if ((ratio > 1.0) || (ratio < -1.0)) {
        sp38 = func_800B03C0(x, y);
        if (x > 0.0) {
            return (M_PI/2) - sp38;
        } else {
            return (y > 0.0) ? ((M_PI/2) - sp38) : (-((M_PI*3)/2) - sp38);
        }
    }

    ratioSq = ratio * ratio;
    sp20 = 1.0 / (ratioSq + 1.0);
    sp40 = ratioSq * sp20;

    sp38 = 1.0;
    sp48 = 4;
    sp28 = (2.0 * sp40) / 3.0;

    for (; sp48 < 99; sp48 += 2) {
        sp30 = sp28;
        sp38 += sp30;

        if ((sp30 >= -D_800C7ED0) && (sp30 <= D_800C7ED0)) {
            break;
        }

        sp28 *= sp48 * sp40 * D_800C8338[sp48];
    }

        sp38 *= ratio * sp20;
        return (x > 0.0) ? sp38 : ((y > 0.0) ? (sp38 + M_PI) : (sp38 + -M_PI));    
}

// atan2d_deg
f64 func_800B0804(f64 y, f64 x) {
    return func_800B03C0(y, x) * (180/M_PI);
}

extern f32 D_800C8654[];

// atan2f_rad
f32 func_800B0850(f32 y, f32 x) {
    f32 ratio;
    f32 ratioSq;
    f32 sp18;
    f32 sp1C;
    f32 sp20;
    f32 sp24;
    f32 sp28;
    s32 sp2C;

    // vertical
    if (y == 0.0f) {
        return (x > 0.0f) ? 0.0f : PI_L;
    }

    // horizontal
    if (x == 0.0f) {
        return (y > 0.0f) ? PI_L/2 : -(PI_L/2);
    }

    ratio = y / x;

    // y == x
    if (ratio == 1.0f) {
        return (y > 0.0f) ? PI_L/4 : -(PI_L*3/4);
    }

    // y == -x
    if (ratio == -1.0f) {
        return (x > 0.0f) ? -(PI_L/4) : (PI_L*3/4);
    }

    // outside first/fourth double octants
    if ((ratio > 1.0f) || (ratio < -1.0f)) {
            sp24 = func_800B0850(x, y);
        if (x > 0.0f) {
            return (PI_L/2) - sp24;
        } else {        
            return (y > 0.0f) ? (PI_L/2 - sp24): (-(PI_L*3/2) - sp24);
        }
    }

    ratioSq = ratio * ratio;
    sp18 = 1.0f / (ratioSq + 1.0f);
    sp28 = ratioSq * sp18;

    sp24 = 1.0f;
    sp2C = 4;
    sp1C = (2.0f * sp28) / 3.0f;

    for (; sp2C < 99; sp2C += 2) {
        sp20 = sp1C;
        sp24 += sp20;

        if ((sp20 >= -1e-7f) && (sp20 <= 1e-7f)) {
            break;
        }

        sp1C *= sp2C * sp28 * D_800C8654[sp2C];
    }

    sp24 *= ratio * sp18;

    return (x > 0.0f) ? sp24 : ((y > 0.0f) ? (sp24 + PI_L) : (sp24 + -PI_L));
}

// atan2f_deg
f32 func_800B0CD8(f32 y, f32 x) {
    return func_800B0850(y, x) * (f32)(1.0f / M_DTOR);
}