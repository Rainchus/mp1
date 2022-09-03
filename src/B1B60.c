#include "common.h"

extern f32 D_800C8650[];

f32 func_800B0F60(f32 arg0) {
    f32 sp10;
    f32 sp14;
    f32 sp18;
    f32 sp1C;
    f32 sp20;
    f32 sp24;
    f32 sp28;
    s32 sp2C;

    if (arg0 == 1.0f) {
        return 0.0f;
    }
    if (arg0 < 0.5f) {
        return -func_800B0F60(1.0f / arg0);
    }
    sp20 = 1.0f;
    sp2C = 3;
    sp10 = 0.0f;
    sp14 = sp18 = sp1C = 1.0f;

    while (arg0 > 2.7182817f) {
        arg0 *= 0.36787945f;
        sp10 += 1.0f;
    }

    sp24 = (arg0 - 1.0f) / (arg0 + 1.0f);
    sp28 = sp24 * sp24;

    for (; sp2C < 100; sp2C += 2) {
        sp14 *= sp28;
        sp1C = D_800C8650[sp2C] * sp14;
        sp20 += sp1C;
        if ((-1e-7f <= sp1C) && (sp1C <= 1e-7f)) {
            break;
        }
    }

    return (2.0f * sp24 * sp20) + sp10;
}
