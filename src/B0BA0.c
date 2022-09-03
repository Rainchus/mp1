#include "common.h"

f32 func_800B1750(f32);
extern f32 D_800C8650[];
extern f32 D_800C81C0[];
extern f32 D_800C7E40[];
extern f32 D_800C7E90[];
extern s32 D_800F2CD8;

f32 func_800AFFA0(f32 angle) {
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
    angle -= (s32) (angle * (1/360.0f)) * 360.0f;
    if (angle < 0.0f) {
        angle += 360.0f;
    }
    if ((angle > 90.0f) && (angle < 270.0f)) {
        sp38 = 1;
    }
    if (angle > 180.0f) {
        angle -= 180.0f;
    }
    if (angle > 90.0f) {
        angle = 180.0f - angle;
    }

    sp28 = (s32) (angle + 0.5f);
    sp24 = (angle - sp28) * 0.017453292f;
    sp18 = D_800C81C0[(s32) sp28];
    sp10 = sp1C = func_800B1750(1.0f - (sp18 * sp18));

    for (sp30 = 1, sp34 = 2; sp30 < 100; sp34++, sp30++) {
        sp14 = sp14 * sp24 * D_800C8650[sp30];
        if ((sp14 >= -1e-7f) && (sp14 <= 1e-7f)) {
            break;
        }

        if (sp34 == 5) {
            sp34 = 1;
        }

        if (sp2C == 1) {
            sp10 += (D_800C7E90[sp34] > 0.0f) ? (sp14 * sp18) : (-sp14 * sp18);
            sp2C = 0;
        } else {
            sp10 += (D_800C7E90[sp34] > 0.0f) ? (sp14 * sp1C) : (-sp14 * sp1C) ;
            sp2C = 1;
        }
    }
    
    return (sp38 ? -sp10 : sp10);
}
