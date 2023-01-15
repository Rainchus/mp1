#include "common.h"

f64 func_800AE850(f64);
f64 func_800B1740(f64);
extern s32 D_800F3964;

// Needs rodata
extern f64 D_800CCC40;

void func_800AF260(f64 arg0, f64* arg1, f64* arg2) {
    f64 sp10 = *arg1 = func_800AE850(arg0);

    *arg2 = func_800B1740(D_800CCC40 - (sp10 * sp10)) * D_800F3964;
}

f32 func_800AEAC0(f32); // sin
f32 func_800B1750(f32); // sqrt
extern s32 D_800F2CD8; // D_800F2CD8 (sign of root to use for cos)

/* Returns both sin (arg1) and cos (arg2) based on angle (arg0) in degrees. */
void func_800AF2E0(f32 arg0, f32* arg1, f32* arg2) {
    f32 sp10;

    sp10 = *arg1 = func_800AEAC0(arg0);
    *arg2 = func_800B1750(1.0f - (sp10 * sp10)) * D_800F2CD8; //
}

