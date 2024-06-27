#include "common.h"

INCLUDE_ASM("asm/nonmatchings/AD5D0", func_800AC9D0_AD5D0);

// Works but need to know what the other functions are for consistency

// #define USHRT_MAX 0x10000
// #define USHRT_MINV (f32)(1.0 / 0x10000)
// #define PACK_MTX(mtx, i, j) (((((u16*)mtx)[4 * i + j] << 0x10) | ((u16*)mtx)[16 + 4 * i + j]) * USHRT_MINV)
// #define PACK_MTX4(mtx, i, j) (((((u16(*)[4])mtx)[i][j] << 0x10) | (((u16(*)[4])mtx)[4 + i][j])) * USHRT_MINV)


// void func_800AC9D0_AD5D0(s32 arg0, s32 arg1, s32 arg2) {
//     s32 sp10;
//     s32 sp14;
//     Matrix4f sp18;
//     Matrix4f sp58;

//     func_800A0B90(&sp18, arg0);

//     for(sp10 = 0; sp10 < 3; sp10++) {
//         for(sp14 = 0; sp14 < 3; sp14++) {
//             sp58[sp10][sp14] = PACK_MTX4(arg1, sp10, sp14);
//         }
//     }

//     func_800AC780(&sp18, &sp58, &sp18);
//     func_800A0A20(&sp18, arg2);
// }