#include "common.h"

extern f32 D_800C81C0[];

// _cosf
f32 func_800AEFD0(f32 angle) {
    f32 result;
    f32 angleDegrees;
    f32 angleError;
    f32 angleErrorSq;
    s32 inputInQuadrants23;

    inputInQuadrants23 = FALSE;

    angle = (angle > 0.0f) ? angle : -angle;

    // angle % 360
    angle -= (s32) (angle * (1 / 360.0f)) * 360.0f;
    if (angle > 270.0f) {
        angle -= 270.0f;
    } else if (angle > 90.0f) {
        inputInQuadrants23 = TRUE;
        if (angle > 180.0f) {
            angle = 270.0f - angle;
        } else {
            angle -= 90.0f;
        }
    } else {
        angle = 90.0f - angle;
    }

    // Angle converted to the closest integer degree
    angleDegrees = (s32) (angle + 0.5f);
    // Difference (in radians) between the real angle and the angle rounded to the closest degree
    angleError = (angle - angleDegrees) * (f32)M_DTOR;
    angleErrorSq = angleError * angleError;
    result = D_800C81C0[(s32)angleDegrees] * (1.0f - (angleErrorSq * 0.125f * (angleErrorSq + 4.0f))) + (angleError * D_800C81C0[90 - (s32) angleDegrees]);
    
    return inputInQuadrants23 ? -result : result;
}