#include "common.h"

typedef struct box {
    u16 activeBool;
    s16 unk_02;
    s32 xPosStart;
    s32 yPosStart;
    s32 width;
    s32 height;
    u32 rgba;
} box;

extern box D_800ED448[];
extern u16 D_800F64E4;

INCLUDE_ASM(s32, "62140", func_80061540);

INCLUDE_ASM(s32, "62140", func_80061638);

INCLUDE_ASM(s32, "62140", func_80061714);

INCLUDE_ASM(s32, "62140", func_80061758);

INCLUDE_ASM(s32, "62140", func_80061784);

INCLUDE_ASM(s32, "62140", func_80061808);

INCLUDE_ASM(s32, "62140", func_80061838);

INCLUDE_ASM(s32, "62140", func_80061874);

INCLUDE_ASM(s32, "62140", func_800618A4);

INCLUDE_ASM(s32, "62140", func_80061930);

INCLUDE_ASM(s32, "62140", func_800619A0);

INCLUDE_ASM(s32, "62140", func_800619E8);

INCLUDE_ASM(s32, "62140", func_80061A3C);

INCLUDE_ASM(s32, "62140", func_80061A98);

INCLUDE_ASM(s32, "62140", func_80061B3C);

INCLUDE_ASM(s32, "62140", func_80061C00);

INCLUDE_ASM(s32, "62140", func_80061CB4);

INCLUDE_ASM(s32, "62140", func_80061D30);

INCLUDE_ASM(s32, "62140", func_80061D64);

INCLUDE_ASM(s32, "62140", func_80061DD4);

INCLUDE_ASM(s32, "62140", func_80061E10);

INCLUDE_ASM(s32, "62140", func_80061F24);

INCLUDE_ASM(s32, "62140", func_80061F60);

INCLUDE_ASM(s32, "62140", func_80061FA0);

INCLUDE_ASM(s32, "62140", func_80061FE8);

INCLUDE_ASM(s32, "62140", func_80062088);

INCLUDE_ASM(s32, "62140", func_80062140);

INCLUDE_ASM(s32, "62140", func_800621D8);

INCLUDE_ASM(s32, "62140", func_8006223C);

INCLUDE_ASM(s32, "62140", func_800622BC);

s16 func_80062364(s32 xPosStart, s32 yPosStart, s32 width, s32 height, s32 rgba) {
    box* boxPtr;
    s32 i;

    if (D_800F64E4 >= 4) {
        return -1;
    }

    for (i = 0; i < 4; i++) {
       if (D_800ED448[i].activeBool == 0) {
            break;
        }
    }

    boxPtr = &D_800ED448[i];
    boxPtr->activeBool = 1;
    boxPtr->xPosStart = xPosStart;
    boxPtr->yPosStart = yPosStart;
    boxPtr->width = width;
    boxPtr->height = height;
    boxPtr->rgba = rgba;
    D_800F64E4++;
    return i;
}

INCLUDE_ASM(s32, "62140", func_80062408);

INCLUDE_ASM(s32, "62140", func_80062450);

INCLUDE_ASM(s32, "62140", func_8006248C);

INCLUDE_ASM(s32, "62140", func_800624BC);

INCLUDE_ASM(s32, "62140", func_80062500);

INCLUDE_ASM(s32, "62140", func_80062518);

INCLUDE_ASM(s32, "62140", func_80062524);

INCLUDE_ASM(s32, "62140", func_8006257C);

INCLUDE_ASM(s32, "62140", func_80063060);

INCLUDE_ASM(s32, "62140", func_80063074);

INCLUDE_ASM(s32, "62140", func_80063108);

INCLUDE_ASM(s32, "62140", func_80063144);

INCLUDE_ASM(s32, "62140", func_80063270);

INCLUDE_ASM(s32, "62140", func_800632C4);

INCLUDE_ASM(s32, "62140", func_80063314);

INCLUDE_ASM(s32, "62140", func_80063358);

INCLUDE_ASM(s32, "62140", func_800633A8);

INCLUDE_ASM(s32, "62140", func_800633B4);

INCLUDE_ASM(s32, "62140", func_800633D4);

INCLUDE_ASM(s32, "62140", func_80063418);

INCLUDE_ASM(s32, "62140", func_8006344C);

INCLUDE_ASM(s32, "62140", func_800634AC);

INCLUDE_ASM(s32, "62140", func_80063514);

INCLUDE_ASM(s32, "62140", func_80063550);

INCLUDE_ASM(s32, "62140", func_800635B4);

INCLUDE_ASM(s32, "62140", func_800635D0);

INCLUDE_ASM(s32, "62140", func_800635D8);

INCLUDE_ASM(s32, "62140", func_800635E0);

INCLUDE_ASM(s32, "62140", func_80063610);

INCLUDE_ASM(s32, "62140", func_8006376C);

INCLUDE_ASM(s32, "62140", func_8006379C);
