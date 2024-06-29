#include "common.h"
INCLUDE_ASM("asm/nonmatchings/AD940", func_800ACD40);

// Not clear what the various args are

// void func_800ACB40(Matrix4f, Matrix4f, Matrix4f);
// #define USHRT_MAX 0x10000
// #define USHRT_MINV (f32)(1.0 / 0x10000)
// #define PACK_MTX(mtx, i, j) (((((u16*)mtx)[4 * i + j] << 0x10) | ((u16*)mtx)[16 + 4 * i + j]) * USHRT_MINV)

// void func_800ACD40(s32 arg0, u16* arg1, s32 arg2) {
//     s32 pad;
//     Matrix4f sp18;
//     Matrix4f sp58;

//     func_800A0B90(sp18, arg0);
//     sp58[3][0] = PACK_MTX(arg1, 3, 0);
//     sp58[3][1] = PACK_MTX(arg1, 3, 1);
//     sp58[3][2] = PACK_MTX(arg1, 3, 2);
//     func_800ACB40(sp18, sp58, sp18);
//     func_800A0A20(sp18, arg2);
// }