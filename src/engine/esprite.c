#include "common.h"
#include "engine/esprite.h"

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018870);

s32 InitSprite(s32 arg0) {
    s16 temp_s0;
    void* temp_s1;

    temp_s1 = ReadMainFS(arg0);
    temp_s0 = func_800678A4(temp_s1);
    D_800ED198[D_800F6530++] = temp_s0;
    HuMemDirectFree(temp_s1);
    return temp_s0;
}

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_8001897C);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018AFC);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018B2C);

void ShowBasicSprite(s32 arg0) {
    func_80067480(D_800ED60C[arg0 & 0xFFFF].unk_04, 0, 0x8000);
        //[arg0 & 0xFFFF] required to match for other calls to this function
        //perhaps an implicit declaration
}

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018C90);

void SetBasicSpritePos(s32 arg0, s16 arg1, s16 arg2) {
    unkSpriteStruct* spriteInstance = &D_800ED60C[arg0 & 0xFFFF];
        //[arg0 & 0xFFFF] required to match for other calls to this function
        //perhaps an implicit declaration

    spriteInstance->unk_0A = arg1;
    spriteInstance->unk_0C = arg2;
}

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018CF8);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018D44);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018D84);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018DC4);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018E0C);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018E50);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018E98);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018ED8);

void SetBasicSpriteSize(u16 arg0, f32 arg1, f32 arg2) {
    unkSpriteStruct* spriteInstance = &D_800ED60C[arg0];
    
    func_80067354(spriteInstance->unk_04, 0, arg1, arg2);
}

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018F68);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80018FBC);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80019000);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_80019060);

INCLUDE_ASM("asm/nonmatchings/engine/esprite", func_800191F8);
