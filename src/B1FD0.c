#include "common.h"

extern f32 D_800C7EC0_C8AC0;
extern f32 D_800C8650_C9250[];
extern f64 D_800C7ED0_C8AD0;

f64 func_800B15F0_B21F0(f64, f64);
f64 func_800B0D30_B1930(f64);
f64 func_800B11C0_B1DC0(f64);
f32 func_800B0F60_B1B60(f32);
f32 func_800B13D0_B1FD0(f32);

f32 func_800B13D0_B1FD0(f32 arg0) {
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
        return 1.0f / func_800B13D0_B1FD0(-arg0);
    }

    while (arg0 > D_800C7EC0_C8AC0) {
        arg0 *= 0.5f;
        sp1C++;
        sp10 *= 0.5f;
    }

    sp18 = 1.0f;
    for (sp20 = 1, sp14 = 1.0f; sp20 < 100; sp20++) {
        
        sp14 *= arg0 * D_800C8650_C9250[sp20];
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
f64 func_800B15F0_B21F0(f64 arg0, f64 arg1) {
    return func_800B11C0_B1DC0(func_800B0D30_B1930(arg0) * arg1);
}

// general power function?
f32 func_800B1640_B2240(f32 arg0, f32 arg1) {
    return func_800B13D0_B1FD0(func_800B0F60_B1B60(arg0) * arg1);
}

void func_800B1690_B2290(s32 arg0) {
    D_800C7ED0_C8AD0 = func_800B15F0_B21F0(10.0, -(f64) arg0);
}