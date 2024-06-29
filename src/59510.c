#include "common.h"

INCLUDE_ASM("asm/nonmatchings/59510", func_80058910);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058A0C);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058A4C);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058AD0);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058B10);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058C28);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058C44);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058CC4);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058DB0);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058E14);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058E38);

INCLUDE_ASM("asm/nonmatchings/59510", func_80058E64);

//TODO: typing of arg is strange
void func_800591E0(void* arg0) { 
    Process* process;
    Process* process_child;

    D_800ECC22 = 1;
    func_8005FD7C();
    process = HuPrcCurrentGet();
    process_child = omAddPrcObj(func_80058E64, 0x1005U, 0, 0);
    process_child->user_data = arg0;
    omPrcSetStatBit(process_child, 0x80);
    HuPrcChildLink(process, process_child);
    HuPrcChildWatch();
    func_8005FECC();
    D_800ECC22 = 0;
}

