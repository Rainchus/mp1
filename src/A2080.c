#include "common.h"

f32 func_800A1480_A2080(Vec3f* arg0, Vec3f* arg1) {
    return (arg0->x * arg1->x) + (arg0->y * arg1->y) + (arg0->z * arg1->z);
}

void func_800A14F0_A20F0(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2) {
    arg0->x = (arg1->y * arg2->z) - (arg1->z * arg2->y);
    arg0->y = (arg1->z * arg2->x) - (arg1->x * arg2->z);
    arg0->z = (arg1->x * arg2->y) - (arg1->y * arg2->x);
}