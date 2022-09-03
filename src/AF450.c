#include "common.h"

extern f64 D_800C7EE0[];

// Needs rodata
extern f64 D_800CCB60;
extern f64 D_800CCB68;
extern f64 D_800CCB70;
extern f64 D_800CCB78;
extern f64 D_800CCB80;
extern f64 D_800CCB88;
extern f64 D_800CCB90;
extern f64 D_800CCB98;
extern f64 D_800CCBA0;
extern f64 D_800CCBA8;
extern f64 D_800CCBB0;
extern f64 D_800CCBB8;
extern f64 D_800CCBC0;
extern s32 D_800F3964;

// sin
f64 func_800AE850(f64 angle) {
    f64 result;
    f64 angleDegrees;
    f64 angleError;
    f64 angleErrorSq;
    s32 inputInQuadrants34 = FALSE;

    angle -= (s32) (angle * D_800CCB60) * 360;
    if (angle < 0.0) {
        angle += D_800CCB68;
    }
    D_800F3964 = ((angle < D_800CCB70) || (angle > D_800CCB78)) ? 1 : -1;

    if (angle > D_800CCB80) {
        inputInQuadrants34 = TRUE;
        angle -= D_800CCB88;
    }
    if (angle > D_800CCB90) {
        angle = D_800CCB98 - angle;
    }

    angleDegrees = (s32) (angle + D_800CCBA0);
    angleError = (angle - angleDegrees) * D_800CCBA8;
    angleErrorSq = angleError * angleError;
    result = D_800C7EE0[(s32) angleDegrees] * (D_800CCBC0 - (angleErrorSq * D_800CCBB0 * (angleErrorSq + D_800CCBB8))) + (angleError * D_800C7EE0[90 - (s32) angleDegrees]);
    
    return inputInQuadrants34 ? -result : result;
}
