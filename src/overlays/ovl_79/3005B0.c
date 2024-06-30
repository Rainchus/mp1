#include "common.h"
#include "3005B0.h"

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_79/3005B0", func_800F65E0_name_79);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_79/3005B0", func_800F6800_name_79);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_79/3005B0", func_800F6844_name_79);

void func_800F6A7C_name_79(void) {
    if (D_800F74D0_name_79 != 0) {
        func_80042B10(D_800F74D0_name_79);
        func_80070D90(D_800F74CE_name_79);
    }
}

s32 func_800F6AB4_name_79(void) {
    s32 i;
    s32 var_s1 = 0;
    
    for (i = 7; i < 57; i++) {
        var_s1 += func_8005CE48(i) != 0;   
    }
    
    return var_s1;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_79/3005B0", func_800F6B00_name_79);

void func_800F6D18_name_79(s16 arg0) {
    s16 thing = 1 << gPlayers[0].flags;
    func_8007155C(arg0, thing);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_79/3005B0", func_800F6D4C_name_79);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_79/3005B0", func_800F7174_name_79);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_79/3005B0", func_800F71F4_name_79);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_79/3005B0", func_800F7238_name_79);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_79/3005B0", func_800F7318_name_79);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_79/3005B0", func_800F735C_name_79);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_79/3005B0", func_800F7410_name_79);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_79/3005B0", D_800F74E0_name_79);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_79/3005B0", D_800F74E4_name_79);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_79/3005B0", D_800F74E8_name_79);
