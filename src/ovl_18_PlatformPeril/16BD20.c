#include "common.h"
#include "PlatformPeril.h"

void func_800F65E0_16BD20(void) {
    func_8001DE70(0x20);
    InitObjSystem(0x32, 0);
    func_80060088();
    func_8000942C();
    func_8007B168(&D_800FDF60_1736A0, 1);
    func_8007B168(&D_800FDF6C_1736AC, 1);
    func_8007B168(&D_800FDF78_1736B8, 1);
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, func_8005EB1C), 0xA0);
    D_800EE984 = 0;
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    func_8005D384(4, 0, 0, -1, &func_800F66E8_16BE28);
    func_8005D384(1, 0, 0, 1, &func_800F6720_16BE60);
    D_800B895C = 10.0f;
    SetFadeInTypeAndTime(0, 0x10);
}


void func_800F66E8_16BE28(void) {
    if (D_800F5144 == 1) {
        func_800601D4(0x28);
        func_8005DFB8(1);
    }
}

void func_800F6720_16BE60(unkObjectStruct* arg0) {
    D_800FE2F8 = 0;
    D_800FCD90_1724D0 = 0;
    func_800FC1DC_17191C();
    func_80009468();
    func_800F6F68_16C6A8();
    func_800F90C0_16E800();
    func_800F76E4_16CE24();
    func_800F8B7C_16E2BC();
    func_800FC8E4_172024();
    arg0->func_ptr = &func_800F6790_16BED0;
}

INCLUDE_RODATA("asm/nonmatchings/ovl_18_PlatformPeril/16BD20", D_800FDF60_1736A0);

INCLUDE_RODATA("asm/nonmatchings/ovl_18_PlatformPeril/16BD20", D_800FDF6C_1736AC);

INCLUDE_RODATA("asm/nonmatchings/ovl_18_PlatformPeril/16BD20", D_800FDF78_1736B8);

INCLUDE_ASM("asm/nonmatchings/ovl_18_PlatformPeril/16BD20", func_800F6790_16BED0);

s32 func_800F6DF4_16C534(void) {
    if (func_800FC95C_17209C()) {
        return 1;
    } else {
        return 0;
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_18_PlatformPeril/16BD20", func_800F6E14_16C554);

INCLUDE_RODATA("asm/nonmatchings/ovl_18_PlatformPeril/16BD20", D_800FDFB8_1736F8);

INCLUDE_RODATA("asm/nonmatchings/ovl_18_PlatformPeril/16BD20", D_800FDFD0_173710);
