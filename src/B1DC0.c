#include "common.h"

extern f64 D_800C7EB0;
extern f64 D_800C7ED0;
extern f64 D_800C8330[];

f64 func_800B11C0(f64 arg0) {
    f64 sp10;
    f64 sp18;
    f64 sp20;
    s32 sp28;
    s32 sp2C;

    sp10 = D_800C7ED0;
    sp28 = 0;
    if (arg0 == 0.0) {
        return 1.0;
    }
    if (arg0 < 0.0) {
        return 1.0 / func_800B11C0(-arg0);
    }

    while (arg0 > D_800C7EB0) {
        arg0 *= 0.5;
        sp28++;
        sp10 *= 0.5;
    }
    sp20 = 1.0;
    sp2C = 1;
    sp18 = 1.0;

    for (; sp2C < 100; sp2C++) {
        sp18 = sp18 * (arg0 * D_800C8330[sp2C]);
        sp20 += sp18;
        if (sp18 <= sp10) {
            break;
        }
    }

    for (sp2C = 0; sp2C < sp28; sp2C++) {
        sp20 *= sp20;
    }
    return sp20;
}