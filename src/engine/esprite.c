#include "common.h"
#include "engine/esprite.h"

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018870_19470);

s32 InitSprite(s32 arg0) {
    s16 temp_s0;
    void* temp_s1;

    temp_s1 = ReadMainFS(arg0);
    temp_s0 = func_800678A4_684A4(temp_s1);
    D_800ED198_ED228[D_800F6530_F65C0++] = temp_s0;
    HuMemDirectFree(temp_s1);
    return temp_s0;
}

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_8001897C_1957C);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018AFC_196FC);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018B2C_1972C);

void ShowBasicSprite(s32 arg0) {
    func_80067480_68080(D_800ED60C_ED69C[arg0 & 0xFFFF].unk_04, 0, 0x8000);
        //[arg0 & 0xFFFF] required to match for other calls to this function
        //perhaps an implicit declaration
}

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018C90_19890);

void SetBasicSpritePos(s32 arg0, s16 arg1, s16 arg2) {
    unkSpriteStruct* spriteInstance = &D_800ED60C_ED69C[arg0 & 0xFFFF];
        //[arg0 & 0xFFFF] required to match for other calls to this function
        //perhaps an implicit declaration

    spriteInstance->unk_0A = arg1;
    spriteInstance->unk_0C = arg2;
}

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018CF8_198F8);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018D44_19944);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018D84_19984);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018DC4_199C4);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018E0C_19A0C);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018E50_19A50);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018E98_19A98);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018ED8_19AD8);

void SetBasicSpriteSize(u16 arg0, f32 arg1, f32 arg2) {
    unkSpriteStruct* spriteInstance = &D_800ED60C_ED69C[arg0];
    
    func_80067354_67F54(spriteInstance->unk_04, 0, arg1, arg2);
}

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018F68_19B68);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018FBC_19BBC);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80019000_19C00);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80019060_19C60);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_800191F8_19DF8);
