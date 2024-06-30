#include "common.h"
#include "PlatformPeril.h"

void func_800F65E0_PlatformPeril(void) {
    func_8001DE70(0x20);
    omInitObjMan(0x32, 0);
    func_80060088();
    func_8000942C();
    func_8007B168(&D_800FDF60_PlatformPeril, 1);
    func_8007B168(&D_800FDF6C_PlatformPeril, 1);
    func_8007B168(&D_800FDF78_PlatformPeril, 1);
    omSetStatBit(omAddObj(0x7FDA, 0, 0, -1, func_8005EB1C), 0xA0);
    D_800EE984 = 0;
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    omAddObj(4, 0, 0, -1, &func_800F66E8_PlatformPeril);
    omAddObj(1, 0, 0, 1, &func_800F6720_PlatformPeril);
    D_800B895C = 10.0f;
    SetFadeInTypeAndTime(0, 0x10);
}


void func_800F66E8_PlatformPeril(void) {
    if (D_800F5144 == 1) {
        func_800601D4(0x28);
        omOvlReturnEx(1);
    }
}

void func_800F6720_PlatformPeril(omObjData* arg0) {
    D_800FE2F8_PlatformPeril = 0;
    D_800FCD90_PlatformPeril = 0;
    func_800FC1DC_PlatformPeril();
    func_80009468();
    func_800F6F68_PlatformPeril();
    func_800F90C0_PlatformPeril();
    func_800F76E4_PlatformPeril();
    func_800F8B7C_PlatformPeril();
    func_800FC8E4_PlatformPeril();
    arg0->func_ptr = &func_800F6790_PlatformPeril;
}

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_18_PlatformPeril/16BD20", D_800FDF60_PlatformPeril);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_18_PlatformPeril/16BD20", D_800FDF6C_PlatformPeril);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_18_PlatformPeril/16BD20", D_800FDF78_PlatformPeril);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_18_PlatformPeril/16BD20", func_800F6790_PlatformPeril);

s32 func_800F6DF4_PlatformPeril(void) {
    if (func_800FC95C_PlatformPeril()) {
        return 1;
    } else {
        return 0;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_18_PlatformPeril/16BD20", func_800F6E14_PlatformPeril);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_18_PlatformPeril/16BD20", D_800FDFB8_PlatformPeril);
