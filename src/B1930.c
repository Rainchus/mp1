#include "common.h"

extern f64 D_800C7ED0;
extern f64 D_800C8330[];

f64 func_800B0D30(f64 arg0) {
    f64 sp10;
    f64 sp18;
    f64 sp20;
    f64 sp28;
    f64 sp30;
    f64 sp38;
    f64 sp40;
    s32 sp48;

    if (arg0 == 1.0) {
        return 0.0;
    }
    if (arg0 < 0.5) {
        return -func_800B0D30(1.0 / arg0);
    }
    sp30 = 1.0;
    sp48 = 3;
    sp10 = 0;
    sp18 = sp20 = sp28 = 1.0;

    while (arg0 > 2.71828182845904509) {
        arg0 *= 0.367879441171442334;
        sp10 += 1.0;
    }
    sp38 = (arg0 - 1.0) / (arg0 + 1.0);
    sp40 = sp38 * sp38;

    for (;sp48 < 100; sp48 += 2) {
        sp18 *= sp40;
        sp28 = D_800C8330[sp48] * sp18;
        sp30 += sp28;

        if ((-D_800C7ED0 <= sp28) && (sp28 <= D_800C7ED0)) {
            break;
        }
    }

    return (2.0 * sp38 * sp30) + sp10;
}