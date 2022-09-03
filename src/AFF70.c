#include "common.h"

extern f32 D_800C7E40[];
extern f32 D_800C8650[];
extern f32 D_800C81C0[];
extern s32 D_800F2CD8;

INCLUDE_ASM(s32, "AFF70", func_800AF370);
// Needs the right rodata
#if 0
f64 func_800B1740(f64);
extern f64 D_800C7E10[];
extern f64 D_800C7ED0;
extern f64 D_800C7EE0[];
extern f64 D_800C8330[];
f64 func_800AF370(f64 arg0) {
    f64 sp10;
    f64 sp14;
    f64 sp18;
    f64 sp1C;
    s32 pad;
    f64 sp24;
    f64 sp28;
    s32 sp2C;
    s32 sp30;
    s32 sp34;
    s32 sp38;

    sp14 = 1.0;
    sp2C = 1;
    sp38 = 0;
    arg0 -= (s32) (arg0 * (1 / 360.0)) * 360;

    if (arg0 < 0) {
        arg0 += 360.0;
    }
    D_800F2CD8 = ((arg0 < 90.0) || (arg0 > 270.0)) ? 1 : -1;

        if (arg0 > 180.0) {
        sp38 = 1;
        arg0 -= 180.0;
    }
    if (arg0 > 90.0) {
        arg0 = 180.0 - arg0;
    }
    sp28 = (s32) (arg0 + 0.5);
    sp24 = (arg0 - sp28) * (M_PI / 180.0);
    sp10 = sp18 =  D_800C7EE0[(s32) sp28];
    sp1C = func_800B1740(1 - (sp18 * sp18));

    
    for (sp34 = 1, sp30 = 1; sp30 < 100; sp34++, sp30++) {
        sp14 = sp14 * sp24 * D_800C8330[sp30];
        if ((sp14 >= -D_800C7ED0) && (sp14 <= D_800C7ED0)) {
            break;
        }
        if (sp34 == 4) {
            sp34 = 0;
        }
        if (sp2C == 1) {
            sp10 += (D_800C7E10[sp34] > 0) ? (sp14 * sp1C) : (-sp14 * sp1C);
            sp2C = 0;
        } else {
            sp10 += (D_800C7E10[sp34] > 0) ? (sp14 * sp18) : (-sp14 * sp18);
            sp2C = 1;
        }
    }

    return (sp38 ? -sp10 : sp10);
}
#endif

f32 func_800AF770(f32 arg0) {
    f32 sp10;
    f32 sp14;
    f32 sp18;
    f32 sp1C;
    s32 pad;
    f32 sp24;
    f32 sp28;
    s32 sp2C;
    s32 sp30;
    s32 sp34;
    s32 sp38;

    sp14 = 1.0f;
    sp2C = 1;
    sp38 = 0;
    arg0 -= (s32) (arg0 * (1 / 360.0f)) * 360.0f;

    if (arg0 < 0.0f) {
        arg0 += 360.0f;
    }
    D_800F2CD8 = ((arg0 < 90.0f) || (arg0 > 270.0f)) ? 1 : -1;

        if (arg0 > 180.0f) {
        sp38 = !sp38;
        arg0 -= 180.0f;
    }
    if (arg0 > 90.0f) {
        arg0 = 180.0f - arg0;
    }
    sp28 = (s32) (arg0 + 0.5f);
    sp24 = (arg0 - sp28) * (f32)(M_PI / 180.0f);
    sp10 = sp18 =  D_800C81C0[(s32) sp28];
    sp1C = func_800B1750(1.0f - (sp18 * sp18));

    
    for (sp34 = 1, sp30 = 1; sp30 < 100; sp34++, sp30++) {
        sp14 = sp14 * sp24 * D_800C8650[sp30];
        if ((sp14 >= -1e-7f) && (sp14 <= 1e-7f)) {
            break;
        }
        if (sp34 == 4) {
            sp34 = 0;
        }
        if (sp2C == 1) {
            sp10 += (D_800C7E40[sp34] > 0.0f) ? (sp14 * sp1C) : (-sp14 * sp1C);
            sp2C = 0;
        } else {
            sp10 += (D_800C7E40[sp34] > 0.0f) ? (sp14 * sp18) : (-sp14 * sp18);
            sp2C = 1;
        }
    }

    return (sp38 ? -sp10 : sp10);
}

