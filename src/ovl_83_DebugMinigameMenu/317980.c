#include "common.h"
#include "317980.h"

INCLUDE_ASM(s32, "ovl_83_DebugMinigameMenu/317980", func_800F65E0_317980);

void func_800F6B14_317EB4(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    func_800178A0(1);
    D_800EE98C = arg0;
    D_800F33EC.y = arg1;
    D_800F33EC.x = arg2;
    D_800F33EC.z = arg3;
    D_800F6524.x = arg4;
    D_800F6524.y = arg5;
    D_800F6524.z = arg6;
}

INCLUDE_ASM(s32, "ovl_83_DebugMinigameMenu/317980", func_800F6BAC_317F4C);

INCLUDE_ASM(s32, "ovl_83_DebugMinigameMenu/317980", func_800F7350_3186F0);

INCLUDE_ASM(s32, "ovl_83_DebugMinigameMenu/317980", func_800F75CC_31896C);

INCLUDE_ASM(s32, "ovl_83_DebugMinigameMenu/317980", func_800F79E0_318D80);

INCLUDE_ASM(s32, "ovl_83_DebugMinigameMenu/317980", func_800F7BD4_318F74);

INCLUDE_ASM(s32, "ovl_83_DebugMinigameMenu/317980", func_800F855C_3198FC);

void func_800F8A24_319DC4(unkObjectStruct* arg0) {
    arg0->func_ptr = &func_800F8A34_319DD4;
}

INCLUDE_ASM(s32, "ovl_83_DebugMinigameMenu/317980", func_800F8A34_319DD4);

INCLUDE_ASM(s32, "ovl_83_DebugMinigameMenu/317980", func_800F9400_31A7A0);

INCLUDE_ASM(s32, "ovl_83_DebugMinigameMenu/317980", func_800F944C_31A7EC);

INCLUDE_ASM(s32, "ovl_83_DebugMinigameMenu/317980", func_800F94C8_31A868);

void func_800F95F8_31A998(u16 arg0, u16 arg1, s32 arg2, u16 arg3, u16 arg4) {
    D_800ECB24 = arg4;
    func_800622BC(arg0 + 1, arg1 + 1, arg2);
    D_800ECB24 = arg3;
    func_800622BC(arg0, arg1, arg2);
}

INCLUDE_ASM(s32, "ovl_83_DebugMinigameMenu/317980", func_800F9678_31AA18);

INCLUDE_ASM(s32, "ovl_83_DebugMinigameMenu/317980", func_800F96DC_31AA7C);

INCLUDE_ASM(s32, "ovl_83_DebugMinigameMenu/317980", func_800F9744_31AAE4);

void func_800F9810_31ABB0(void) {
    u8 sp10[4];
    s32 randByte;
    s32 i;

    for (i = 0; i < 4; i++) {
        sp10[i] = 0;
    }

    for (i = 0; i < 4; i++) {
        while (1) {
            randByte = GetRandomByte() & 3;
            if (!(sp10[randByte] == 1)) {
                break;
            }
        }
        sp10[randByte] = 1;
        D_800FAC60[i].flags = randByte;
    }
}
