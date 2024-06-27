#include "common.h"
#include "common.h"

extern f32 D_800C81C0_C8DC0[];
extern s32 D_800F2CD8_F2D68;

// sin
f32 func_800AEAC0_AF6C0(f32 angle) {
    f32 result;
    f32 angleDegrees;
    f32 angleError;
    f32 angleErrorSq;
    s32 inputInQuadrants34 = FALSE;

    // angle % 360
    angle -= (s32) (angle * (1 / 360.0f)) * 360.0f;
    if (angle < 0.0f) {
        angle += 360.0f;
    }

    D_800F2CD8_F2D68 = ((angle < 90.0f) || (angle > 270.0f)) ? 1 : -1;
    
    if (angle > 180.0f) {
        inputInQuadrants34 = TRUE;
        angle -= 180.0f;
    }
    if (angle > 90.0f) {
        angle = 180.0f - angle;
    }

    // Angle converted to the closest integer degree
    angleDegrees = (s32) (angle + 0.5f);
    // Difference (in radians) between the real angle and the angle rounded to the closest degree
    angleError = (angle - angleDegrees) * (f32)(M_PI / 180.0f);
    angleErrorSq = angleError * angleError;
    result = D_800C81C0_C8DC0[(s32)angleDegrees] * (1.0f - (angleErrorSq * 0.125f * (angleErrorSq + 4.0f))) + (angleError * D_800C81C0_C8DC0[90 - (s32) angleDegrees]);

    return inputInQuadrants34 ? -result : result;
}
