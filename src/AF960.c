#include "common.h"

extern f64 D_800C7ED0_C8AD0;
extern f64 D_800C7EE0_C8AE0[];

f64 func_800AED60_AF960(f64 arg0) {
    f64 sp0;
    f64 sp8;
    f64 sp10;
    f64 sp18;
    s32 sp20;

    sp20 = 0;
    arg0 = (arg0 > 0.0) ? arg0 : -arg0;
    arg0 -= ((s32) (arg0 * 0.00277777777777777788) * 0x168);
    if (arg0 > 270.0) {
        arg0 -= 270.0;
    } else if (arg0 > 90.0) {
        sp20 = 1;
        if (arg0 > 180.0) {
            arg0 = 270.0 - arg0;
        } else {
            arg0 -= 90.0;
        }
    } else {
        arg0 = 90.0 - arg0;
    }

    sp8 =  (s32) (arg0 + 0.5);
    sp10 = (arg0 - sp8) * 0.0174532925199432955;
    sp18 =  sp10 * sp10;
    sp0 = (D_800C7EE0_C8AE0[(s32) sp8] * (1.0 - (sp18 * 0.125 * (sp18 + 4.0)))) + (sp10 * D_800C7EE0_C8AE0[90 - (s32) sp8]);

    
    return sp20 ? -sp0 : sp0;
}