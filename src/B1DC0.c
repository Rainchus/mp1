#include "common.h"

extern f64 D_800C7EB0;
extern f64 D_800C7ED0;
extern f64 D_800C8330_C8F30[];
extern f64 D_800CCE10;
extern f64 D_800CCE18;
extern f64 D_800CCE20;
extern f64 D_800CCE28;
extern f64 D_800CCE30;
extern f64 D_800CCE38;

// Needs rodata
f64 func_800B11C0(f64 arg0) {
    f64 sp10;
    f64 sp18;
    f64 sp20;
    s32 sp28;
    s32 sp2C;

    sp10 = D_800C7ED0;
    sp28 = 0;
    if (arg0 == 0.0) {
        return D_800CCE10;
    }
    if (arg0 < 0.0) {
        return D_800CCE18 / func_800B11C0(-arg0);
    }

    while (arg0 > D_800C7EB0) {
        arg0 *= D_800CCE20;
        sp28++;
        sp10 *= D_800CCE28;
    }
    sp20 = D_800CCE30;
    sp2C = 1;
    sp18 = D_800CCE38;

    for (; sp2C < 100; sp2C++) {
        sp18 = sp18 * (arg0 * D_800C8330_C8F30[sp2C]);
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
