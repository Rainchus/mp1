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

extern OSMesg D_800D8C88;
extern s32 D_800D8CA8;
extern s32 D_800D8CB0;
extern s32 D_800D8CB4;
extern s32 D_800D8CC0;
extern Gfx D_800D8CD0;
extern s32 D_800ECB34;
extern OSMesgQueue D_800ED3C8;
extern s32 D_800F09F0;
extern s32 D_800F2CBC;
extern s32 gThread3Stack;
extern s32 osJamMesg(OSMesgQueue *, OSMesg, s32);
extern s32 D_800D8B84;
extern s16 D_800D8B88;
extern s32 D_800D8C5C;
extern unk_Struct_func_800611A4 D_800D89D0;
extern unk_Struct_func_800611A4 D_800D8AA8;
extern unk_Struct_func_800611A4 D_800D8B80;
extern unk_Struct_func_800611A4 D_800D8C58;
extern OSMesgQueue D_800D8C60;