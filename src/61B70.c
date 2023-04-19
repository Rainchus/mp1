#include "61B70.h"

INCLUDE_ASM(s32, "61B70", func_80060F70);

void func_80061094(void) {
    D_800D8C58 = osGetTime();
    while (!osRecvMesg(&D_800D8C60, NULL, 0)) {

    } 
}

INCLUDE_ASM(s32, "61B70", func_800610DC);

u64 func_800611A4(unk_Struct_func_800611A4* arg0, s16 arg1) {

    if (arg1 >= 0) {
        arg0->unk_88[arg1] = osGetTime();
    }
    return arg0->unk_88[arg1] - arg0->unk_38[arg1];
}

s16 func_80061228(s32 arg0, s32 arg1, s32 arg2) {
    return func_800610DC(&D_800D8AA8, arg0 & 0xFF, arg1 & 0xFF, arg2 & 0xFF);
}

void func_80061264(s16 arg0) {
    func_800611A4(&D_800D8AA8, arg0);
}


s16 func_8006128C(s32 arg0, s32 arg1, s32 arg2) {
    s16 temp_s0;
    OSIntMask temp_s3;

    temp_s3 = osSetIntMask(OS_IM_NONE);
    temp_s0 = func_800610DC(&D_800D8B80, arg0 & 0xFF, arg1 & 0xFF, arg2 & 0xFF);
    osSetIntMask(temp_s3);
    return temp_s0;
}

void func_80061304(s16 arg0) {
    OSIntMask temp_s1;

    temp_s1 = osSetIntMask(OS_IM_NONE);
    func_800611A4(&D_800D8B80, arg0);
    osSetIntMask(temp_s1);
}

void func_80061354(void) {
    OSIntMask temp_v0;

    D_800D8AB0 = 0;
    temp_v0 = osSetIntMask(OS_IM_NONE);
    D_800D8AA8 = D_800D8C58;
    osSetIntMask(temp_v0);
}

void func_800613A0(void) {
    OSIntMask temp_s0;

    temp_s0 = osSetIntMask(OS_IM_NONE);
    bcopy(&D_800D8AA8, &D_800D89D0, 0xD8);
    osSetIntMask(temp_s0);
}

void func_800613E8(void) {
    s32 temp;
    s32 temp2;
    D_800D8B88 = 0;
    temp2 = D_800D8C58;
    temp = D_800D8C5C;
    D_800D8B80 = temp2;
    D_800D8B84 = temp;
}

void func_80061414(void) {
}

Gfx* func_8006141C(s32* arg0, Gfx* arg1, s32 arg2) {
    return arg1;
}

void func_80061424(void) {
    Gfx* gfx = &D_800D8CD0;
    D_800D8CA8 = gThread3Stack;
    D_800D8CC0 = D_800F09F0;
    D_800D8CB0 = D_800F2CBC;
    D_800D8CB4 = D_800ECB34;
    gDPPipeSync(gfx++);
    gDPSetCycleType(gfx++, G_CYC_FILL);
    gDPSetRenderMode(gfx++, G_RM_NOOP, G_RM_NOOP2);
    gfx = func_8006141C(&D_800D89D0, gfx, 0);
    gfx = func_8006141C(&D_800D8B80, gfx, 2);
    gDPFullSync(gfx++);
    gSPEndDisplayList(gfx++);
    osJamMesg(&D_800ED3C8, &D_800D8C88, 0);
}

