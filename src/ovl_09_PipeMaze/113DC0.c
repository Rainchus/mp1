#include "common.h"
#include "PipeMaze.h"

void func_800F65E0_113DC0(void) {
    func_80029090(32);
    func_8001DE70(32);
    InitObjSystem(50, 0);
    func_80060088();
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, func_8005EB1C), 160);
    D_800F9A34 = 0;
    func_800F6678_113E58();
    D_800F9902_1170E2 = 0;
    func_800F7EA4_115684();
    func_800F7100_1148E0();
    func_800F68BC_11409C();
    SetFadeInTypeAndTime(0, 16);
}

void func_800F6678_113E58(void) {
    s16 temp_s0;
    
    func_800178A0(1);
    temp_s0 = func_800178E8();
    func_80017660(temp_s0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(temp_s0, 36.0f, 80.0f, 8000.0f);
}

void func_800F673C_113F1C(void) {
}

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F6744_113F24);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F68BC_11409C);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F6A38_114218);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F6B04_1142E4);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F6C34_114414);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F9900_1170E0);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F9904_1170E4);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F9908_1170E8);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F990C_1170EC);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F9910_1170F0);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F9914_1170F4);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F9918_1170F8);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F991C_1170FC);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F9920_117100);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F6DD8_1145B8);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F7100_1148E0);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F7194_114974);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F7368_114B48);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F9928_117108);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F9978_117158);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F997C_11715C);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F7AC8_1152A8);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F7C78_115458);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F7CD8_1154B8);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F7E2C_11560C);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F7E78_115658);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F7EA4_115684);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F9984_117164);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F9988_117168);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F80CC_1158AC);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F99A0_117180);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F99C8_1171A8);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F8414_115BF4);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F8F24_116704);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F9000_1167E0);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F99D4_1171B4);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F99D8_1171B8);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F99DC_1171BC);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F99E0_1171C0);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F99E4_1171C4);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F99E8_1171C8);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F99EC_1171CC);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F99F0_1171D0);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F9A00_1171E0);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F9A10_1171F0);

INCLUDE_RODATA("asm/nonmatchings/ovl_09_PipeMaze/113DC0", D_800F9A18_1171F8);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F9134_116914);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F9590_116D70);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F9678_116E58);

INCLUDE_ASM("asm/nonmatchings/ovl_09_PipeMaze/113DC0", func_800F97C4_116FA4);
