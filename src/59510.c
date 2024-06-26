#include "common.h"

INCLUDE_ASM("asm/nonmatchings/59510", func_80058910_59510);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058A0C_5960C);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058A4C_5964C);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058AD0_596D0);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058B10_59710);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058C28_59828);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058C44_59844);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058CC4_598C4);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058DB0_599B0);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058E14_59A14);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058E38_59A38);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058E64_59A64);

//TODO: typing of arg is strange
void func_800591E0_59DE0(void* arg0) { 
    Process* process;
    Process* process_child;

    D_800ECC22_ECCB2 = 1;
    func_8005FD7C_6097C();
    process = HuPrcCurrentGet();
    process_child = omAddPrcObj(func_80058E64_59A64, 0x1005U, 0, 0);
    process_child->user_data = arg0;
    omPrcSetStatBit(process_child, 0x80);
    HuPrcChildLink(process, process_child);
    HuPrcChildWatch();
    func_8005FECC_60ACC();
    D_800ECC22_ECCB2 = 0;
}

