#include "common.h"

f64 func_800AE850_AF450(f64);
f64 func_800B1740_B2340(f64);
f32 func_800AEAC0_AF6C0(f32); // sin
f32 func_800B1750_B2350(f32); // sqrt

extern s32 D_800F2CD8_F2D68; // D_800F2CD8_F2D68 (sign of root to use for _cosf)
extern s32 D_800F3964_F39F4;

void func_800AF260_AFE60(f64 arg0, f64* arg1, f64* arg2) {
    f64 sp10 = *arg1 = func_800AE850_AF450(arg0);

    *arg2 = func_800B1740_B2340(1.0 - (sp10 * sp10)) * D_800F3964_F39F4;
}

/* Returns both sin (arg1) and _cosf (arg2) based on angle (arg0) in degrees. */
void func_800AF2E0_AFEE0(f32 arg0, f32* arg1, f32* arg2) {
    f32 sp10;

    sp10 = *arg1 = func_800AEAC0_AF6C0(arg0);
    *arg2 = func_800B1750_B2350(1.0f - (sp10 * sp10)) * D_800F2CD8_F2D68; //
}