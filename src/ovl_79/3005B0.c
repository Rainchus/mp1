#include "common.h"
#include "3005B0.h"

void func_8007155C(s16, s32);
extern u8 D_800F32B3;

INCLUDE_ASM(s32, "ovl_79/3005B0", func_800F65E0_3005B0);

INCLUDE_ASM(s32, "ovl_79/3005B0", func_800F6800_3007D0);

INCLUDE_ASM(s32, "ovl_79/3005B0", func_800F6844_300814);

void func_800F6A7C_300A4C(void) {
    if (D_800F74D0 != 0) {
        func_80042B10(D_800F74D0);
        func_80070D90(D_800F74CE);
    }
}


s32 func_800F6AB4_300A84(void) {
    s32 i;
    s32 var_s1 = 0;
    
    for (i = 7; i < 57; i++) {
        var_s1 += func_8005CE48(i) != 0;   
    }
    
    return var_s1;
}


INCLUDE_ASM(s32, "ovl_79/3005B0", func_800F6B00_300AD0);

void func_800F6D18_300CE8(s16 arg0) {
  s32 var = (0x10000 << D_800F32B3) >> 0x10; //TODO: Fake match
  func_8007155C(arg0, (0x10000 << D_800F32B3) >> 0x10);
}

INCLUDE_ASM(s32, "ovl_79/3005B0", func_800F6D4C_300D1C);

INCLUDE_ASM(s32, "ovl_79/3005B0", func_800F7174_301144);

INCLUDE_ASM(s32, "ovl_79/3005B0", func_800F71F4_3011C4);

INCLUDE_ASM(s32, "ovl_79/3005B0", func_800F7238_301208);

INCLUDE_ASM(s32, "ovl_79/3005B0", func_800F7318_3012E8);

INCLUDE_ASM(s32, "ovl_79/3005B0", func_800F735C_30132C);

INCLUDE_ASM(s32, "ovl_79/3005B0", func_800F7410_3013E0);
