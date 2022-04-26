#include "common.h"

typedef struct viewAngle {
/* 0x00 */ f32 y;
/* 0x04 */ f32 x;
/* 0x08 */ f32 z;
} viewAngle;

typedef struct cameraPosition {
/* 0x00 */ f32 x;
/* 0x04 */ f32 y;
/* 0x08 */ f32 z;
} cameraPosition;

extern f32 D_800EE98C;
extern viewAngle D_800F33EC;
extern cameraPosition D_800F6524;