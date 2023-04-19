#include "common.h"
#include "PR/gbi.h"
#include "PR/mbi.h"
#include "PR/os.h"

typedef struct unk_Struct_D_800D8AA8 {
    OSTime unk_00;
    s32 unk_08;
    s32 unk_0C;
    s32 unk_10;
} unk_Struct_D_800D8AA8;

typedef struct unk_Struct_func_800611A4 {
    char unk_00[0x38];
    u64 unk_38[0x50 / 8];
    u64 unk_88[0x50 / 8];
} unk_Struct_func_800611A4;

extern Gfx* D_800D89D0;
extern u64 D_800D8B80;
extern OSMesg D_800D8C88;
extern s32 D_800D8CA8;
extern s32 D_800D8CB0;
extern s32 D_800D8CB4;
extern s32 D_800D8CC0;
extern Gfx* D_800D8CD0;
extern s32 D_800ECB34;
extern OSMesgQueue D_800ED3C8;
extern s32 D_800F09F0;
extern s32 D_800F2CBC;
extern s32 gThread3Stack;
extern s32 osJamMesg(OSMesgQueue *, OSMesg, s32);
extern s32 D_800D8B84;
extern s16 D_800D8B88;
extern u64 D_800D8C58;
extern s32 D_800D8C5C;
extern u64 D_800D8AA8;
extern s32 D_800D8AAC;
extern s16 D_800D8AB0;
extern OSMesgQueue D_800D8C60;