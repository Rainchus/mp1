#include "common.h"

extern f64 D_800C7EE0[];
extern s32 D_800F3964;
// sin
f64 func_800AE850(f64 angle) {
    f64 result;
    f64 angleDegrees;
    f64 angleError;
    f64 angleErrorSq;
    s32 inputInQuadrants34 = FALSE;

    angle -= (s32) (angle * 0.00277777777777777788) * 360;
    if (angle < 0.0) {
        angle += 360.0;
    }
    D_800F3964 = ((angle < 90.0) || (angle > 270.0)) ? 1 : -1;

    if (angle > 180.0) {
        inputInQuadrants34 = TRUE;
        angle -= 180.0;
    }
    if (angle > 90.0) {
        angle = 180.0 - angle;
    }

    angleDegrees = (s32) (angle + 0.5);
    angleError = (angle - angleDegrees) * 0.0174532925199432955;
    angleErrorSq = angleError * angleError;
    result = D_800C7EE0[(s32) angleDegrees] * (1.0 - (angleErrorSq * 0.125 * (angleErrorSq + 4.0))) + (angleError * D_800C7EE0[90 - (s32) angleDegrees]);
    
    return inputInQuadrants34 ? -result : result;
}
