#include "common.h"
#include "PR/os.h"

typedef struct unk_Struct_func_800611A4 {
    OSTime unk_00;
    s16 unk_08;
    Vec2s unk_0A;
    char unk_0E[2]; // likely padding or Vec3s unk_0A;
    s32 unk_10[10];
    u64 unk_38[10];
    u64 unk_88[10];
} unk_Struct_func_800611A4;

extern OSMesg D_800D8C88_D8D18;
extern s32 D_800D8CA8_D8D38;
extern s32 D_800D8CB0_D8D40;
extern s32 D_800D8CB4_D8D44;
extern s32 D_800D8CC0_D8D50;
extern Gfx D_800D8CD0_D8D60;
extern s32 D_800ECB34_ECBC4;
extern OSMesgQueue D_800ED3C8_ED458;
extern s32 D_800F09F0_F0A80;
extern s32 D_800F2CBC_F2D4C;
extern s32 gThread3Stack;
extern s32 osJamMesg(OSMesgQueue *, OSMesg, s32);
extern s32 D_800D8B84;
extern s16 D_800D8B88;
extern s32 D_800D8C5C;
extern unk_Struct_func_800611A4 D_800D89D0_D8A60;
extern unk_Struct_func_800611A4 D_800D8AA8_D8B38;
extern unk_Struct_func_800611A4 D_800D8B80_D8C10;
extern unk_Struct_func_800611A4 D_800D8C58_D8CE8;
extern OSMesgQueue D_800D8C60_D8CF0;

INCLUDE_ASM("asm/nonmatchings/61B70", func_80060F70_61B70);

void func_80061094_61C94(void) {
    D_800D8C58_D8CE8.unk_00 = osGetTime();
    while (!osRecvMesg(&D_800D8C60_D8CF0, NULL, 0)) {

    } 
}

s16 func_800610DC_61CDC(unk_Struct_func_800611A4* arg0, u8 arg1, u8 arg2, u8 arg3) {
    if (arg0->unk_08 >= 10) {
        return -1;
    }
    arg0->unk_38[arg0->unk_08] = osGetTime();
    arg0->unk_10[arg0->unk_08] = (GPACK_RGBA5551(arg1, arg2, arg3, 1) << 16) | GPACK_RGBA5551(arg1, arg2, arg3, 1);
    return arg0->unk_08++;
}

u64 func_800611A4_61DA4(unk_Struct_func_800611A4* arg0, s16 arg1) {
    if (arg1 >= 0) {
        arg0->unk_88[arg1] = osGetTime();
    }
    return arg0->unk_88[arg1] - arg0->unk_38[arg1];
}

s16 func_80061228_61E28(u8 arg0, u8 arg1, u8 arg2) {
    return func_800610DC_61CDC(&D_800D8AA8_D8B38, arg0, arg1, arg2);
}

void func_80061264_61E64(s16 arg0) {
    func_800611A4_61DA4(&D_800D8AA8_D8B38, arg0);
}

s16 func_8006128C_61E8C(u8 arg0, u8 arg1, u8 arg2) {
    s16 temp_s0;
    OSIntMask temp_s3;

    temp_s3 = osSetIntMask(OS_IM_NONE);
    temp_s0 = func_800610DC_61CDC(&D_800D8B80_D8C10, arg0, arg1, arg2);
    osSetIntMask(temp_s3);
    return temp_s0;
}

void func_80061304_61F04(s16 arg0) {
    OSIntMask temp_s1;

    temp_s1 = osSetIntMask(OS_IM_NONE);
    func_800611A4_61DA4(&D_800D8B80_D8C10, arg0);
    osSetIntMask(temp_s1);
}

void func_80061354_61F54(void) {
    unk_Struct_func_800611A4* temp = &D_800D8AA8_D8B38;
    unk_Struct_func_800611A4* temp2 = &D_800D8C58_D8CE8;
    u32 temp_v0;
    
    temp->unk_08 = 0;
    temp_v0 = osSetIntMask(1U);
    temp->unk_00 = temp2->unk_00;
    osSetIntMask(temp_v0);
}

void func_800613A0_61FA0(void) {
    OSIntMask temp_s0;

    temp_s0 = osSetIntMask(OS_IM_NONE);
    bcopy(&D_800D8AA8_D8B38, &D_800D89D0_D8A60, sizeof(unk_Struct_func_800611A4));
    osSetIntMask(temp_s0);
}

void func_800613E8_61FE8(void) {
    unk_Struct_func_800611A4* temp = &D_800D8B80_D8C10;
    unk_Struct_func_800611A4* temp2 = &D_800D8C58_D8CE8;
    
    temp->unk_08 = 0;
    temp->unk_00 = temp2->unk_00;
}

void func_80061414_62014(void) {
}

Gfx* func_8006141C_6201C(void * arg0, Gfx* arg1, s32 arg2) {
    return arg1;
}

void func_80061424_62024(void) {
    Gfx* gfx = &D_800D8CD0_D8D60;
    D_800D8CA8_D8D38 = gThread3Stack;
    D_800D8CC0_D8D50 = D_800F09F0_F0A80;
    D_800D8CB0_D8D40 = D_800F2CBC_F2D4C;
    D_800D8CB4_D8D44 = D_800ECB34_ECBC4;
    gDPPipeSync(gfx++);
    gDPSetCycleType(gfx++, G_CYC_FILL);
    gDPSetRenderMode(gfx++, G_RM_NOOP, G_RM_NOOP2);
    gfx = func_8006141C_6201C(&D_800D89D0_D8A60, gfx, 0);
    gfx = func_8006141C_6201C(&D_800D8B80_D8C10, gfx, 2);
    gDPFullSync(gfx++);
    gSPEndDisplayList(gfx++);
    osJamMesg(&D_800ED3C8_ED458, &D_800D8C88_D8D18, 0);
}