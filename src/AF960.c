#include "common.h"

extern f64 D_800C7ED0;
extern f64 D_800C7EE0[];

// INCLUDE_ASM(s32, "AF960", func_800AED60);
// Needs rodata
extern f64 D_800CCBD0;
extern f64 D_800CCBD8;
extern f64 D_800CCBE0;
extern f64 D_800CCBE8;
extern f64 D_800CCBF0;
extern f64 D_800CCBF8;
extern f64 D_800CCC00;
extern f64 D_800CCC08;
extern f64 D_800CCC10;
extern f64 D_800CCC18;
extern f64 D_800CCC20;
extern f64 D_800CCC28;
extern f64 D_800CCC30;

f64 func_800AED60(f64 arg0) {
    f64 sp0;
    f64 sp8;
    f64 sp10;
    f64 sp18;
    s32 sp20;

    sp20 = 0;
    arg0 = (arg0 > 0.0) ? arg0 : -arg0;
    arg0 -= ((s32) (arg0 * D_800CCBD0) * 0x168);
    if (arg0 > D_800CCBD8) {
        arg0 -= D_800CCBE0;
    } else if (arg0 > D_800CCBE8) {
        sp20 = 1;
        if (arg0 > D_800CCBF0) {
            arg0 = D_800CCBF8 - arg0;
        } else {
            arg0 -= D_800CCC00;
        }
    } else {
        arg0 = D_800CCC08 - arg0;
    }

    sp8 =  (s32) (arg0 + D_800CCC10);
    sp10 = (arg0 - sp8) * D_800CCC18;
    sp18 =  sp10 * sp10;
    sp0 = (D_800C7EE0[(s32) sp8] * (D_800CCC30 - (sp18 * D_800CCC20 * (sp18 + D_800CCC28)))) + (sp10 * D_800C7EE0[90 - (s32) sp8]);

    
    return sp20 ? -sp0 : sp0;
}
