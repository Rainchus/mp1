#include "common.h"

f64 func_800B1740(f64);

extern f64 D_800C7E60[];
extern f64 D_800C7ED0;
extern f64 D_800C7EE0[];
extern f64 D_800C8330[];

f64 func_800AFBB0(f64 arg0) {
    f64 sp10;
    f64 sp18;
    f64 sp20;
    f64 sp28;
    f64 pad;
    f64 sp38;
    f64 sp40;
    s32 sp48;
    s32 sp4C;
    s32 sp50;
    s32 sp54;

    sp18 = 1.0;
    sp48 = 1;
    sp54 = 0;
    arg0 -= ((s32) (arg0 * (1.0/360.0)) * 360);
    if (arg0 < 0.0) {
        arg0 += 360.0;
    }

    if ((arg0 > 90.0) && (arg0 < 270.0)) {
        sp54 = 1;
    }
    if (arg0 > 180.0) {
        arg0 -= 180.0;
    }
    if (arg0 > 90.0) {
        arg0 = 180.0 - arg0;
    }
    sp40 = (s32) (arg0 + 0.5);
    sp38 = (arg0 - sp40) * (M_PI/180);
    sp20 = D_800C7EE0[(s32) sp40];
    sp10 = sp28 = func_800B1740(1.0 - (sp20 * sp20));

    for (sp4C = 1, sp50 = 2; sp4C < 100; sp50++, sp4C++) {
        sp18 = sp18 * sp38 * D_800C8330[sp4C];
        
        if ((-D_800C7ED0 <= sp18) && (sp18 <= D_800C7ED0)) {
            break;
        } 

        if (sp50 == 5) {
            sp50 = 1;
        }

        if (sp48 == 1) {
            sp10 += (D_800C7E60[sp50] > 0.0) ? (sp18 * sp20) : (-sp18 * sp28);
            sp48 = 0;
        } else {
            sp10 += (D_800C7E60[sp50] > 0.0) ? (sp18 * sp28) : (-sp18 * sp20);
            sp48 = 1;
        }
    }

    return sp54 ? -sp10 : sp10;
}