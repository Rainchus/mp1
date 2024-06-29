#include "common.h"

extern f32 D_800C7EC0;
extern f32 D_800C8650[];
extern f64 D_800C7ED0;

f64 func_800B15F0(f64, f64);
f64 func_800B0D30(f64);
f64 func_800B11C0(f64);
f32 func_800B0F60(f32);
f32 func_800B13D0(f32);

f32 func_800B13D0(f32 arg0) {
    f32 sp10;
    f32 sp14;
    f32 sp18;
    s32 sp1C;
    s32 sp20;

    sp10 = 1e-7f;
    sp1C = 0;
    if (arg0 == 0.0f) {
        return 1.0f;
    }
    if (arg0 < 0.0f) {
        return 1.0f / func_800B13D0(-arg0);
    }

    while (arg0 > D_800C7EC0) {
        arg0 *= 0.5f;
        sp1C++;
        sp10 *= 0.5f;
    }

    sp18 = 1.0f;
    for (sp20 = 1, sp14 = 1.0f; sp20 < 100; sp20++) {
        
        sp14 *= arg0 * D_800C8650[sp20];
        sp18 += sp14;
        if (sp14 <= sp10) {
            break;
        }
    }

    for (sp20 = 0; sp20 < sp1C; sp20++) {
        sp18 *= sp18;
    }
    return sp18;
}

// general power function?
f64 func_800B15F0(f64 arg0, f64 arg1) {
    return func_800B11C0(func_800B0D30(arg0) * arg1);
}

// general power function?
f32 func_800B1640(f32 arg0, f32 arg1) {
    return func_800B13D0(func_800B0F60(arg0) * arg1);
}

void func_800B1690(s32 arg0) {
    D_800C7ED0 = func_800B15F0(10.0, -(f64) arg0);
}