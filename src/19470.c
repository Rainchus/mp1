#include "common.h"
#include "19470.h"

INCLUDE_ASM(s32, "19470", func_80018870);

s32 InitSprite(s32 arg0) {
    s16 temp_s0;
    void* temp_s1;

    temp_s1 = ReadMainFS(arg0);
    temp_s0 = func_800678A4(temp_s1);
    D_800ED198[D_800F6530++] = temp_s0;
    FreePerm(temp_s1);
    return temp_s0;
}

INCLUDE_ASM(s32, "19470", func_8001897C);

INCLUDE_ASM(s32, "19470", func_80018AFC);

INCLUDE_ASM(s32, "19470", func_80018B2C);

INCLUDE_ASM(s32, "19470", ShowBasicSprite);

INCLUDE_ASM(s32, "19470", func_80018C90);

INCLUDE_ASM(s32, "19470", SetBasicSpritePos);

INCLUDE_ASM(s32, "19470", func_80018CF8);

INCLUDE_ASM(s32, "19470", func_80018D44);

INCLUDE_ASM(s32, "19470", func_80018D84);

INCLUDE_ASM(s32, "19470", func_80018DC4);

INCLUDE_ASM(s32, "19470", func_80018E0C);

INCLUDE_ASM(s32, "19470", func_80018E50);

INCLUDE_ASM(s32, "19470", func_80018E98);

INCLUDE_ASM(s32, "19470", func_80018ED8);

INCLUDE_ASM(s32, "19470", SetBasicSpriteSize);

INCLUDE_ASM(s32, "19470", func_80018F68);

INCLUDE_ASM(s32, "19470", func_80018FBC);

INCLUDE_ASM(s32, "19470", func_80019000);

INCLUDE_ASM(s32, "19470", func_80019060);

INCLUDE_ASM(s32, "19470", func_800191F8);
