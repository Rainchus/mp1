#include "common.h"

extern u16 D_800EC6EA[4];
extern u8 *D_800ECE14;
extern u16 D_800EDEB4[4];

extern u16 D_800F2CF0[4];
extern u16 D_800F32A4[4];
extern u16 D_800F3396[4];
extern u8 *D_800F3843;
extern u16 D_800F544C[4];

void func_80014220() {
    s16 i;

    u16 *D_800F544C_ptr;
    u16 *D_800F32A4_ptr;
    u16 *D_800F2CF0_ptr;
    u16 *D_800EC6EA_ptr;
    u16 *D_800F3396_ptr;

    for (i = 0; i < 4; i++) {
        D_800F544C_ptr = (D_800F544C + i);
        D_800F3396_ptr = (D_800F3396 + i);
        D_800EC6EA_ptr = (D_800EC6EA + i);
        D_800F2CF0_ptr = (D_800F2CF0 + i);
        D_800F32A4_ptr = (D_800F32A4 + i);

        *(D_800F32A4_ptr) = 0;
        *(D_800F2CF0_ptr) = 0;
        *(D_800EC6EA_ptr) = 0;
        *(D_800F3396_ptr) = 0;
        *(D_800F544C_ptr) = 0;
    }
}

INCLUDE_ASM(s32, "14E20", func_8001429C);

INCLUDE_ASM(s32, "14E20", func_80014460);

INCLUDE_ASM(s32, "14E20", func_80014504);

INCLUDE_ASM(s32, "14E20", ReadMainFS);

INCLUDE_ASM(s32, "14E20", func_80014614);

INCLUDE_ASM(s32, "14E20", func_80014678);

INCLUDE_ASM(s32, "14E20", func_800146D4);

INCLUDE_ASM(s32, "14E20", FreeMainFS);

INCLUDE_ASM(s32, "14E20", func_80014750);

INCLUDE_ASM(s32, "14E20", func_80014770);

INCLUDE_ASM(s32, "14E20", func_80014828);

INCLUDE_ASM(s32, "14E20", func_800148BC);

INCLUDE_ASM(s32, "14E20", func_800148EC);

INCLUDE_ASM(s32, "14E20", func_80014998);

INCLUDE_ASM(s32, "14E20", func_80014A14);
