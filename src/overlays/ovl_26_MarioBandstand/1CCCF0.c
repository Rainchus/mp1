#include "common.h"
#include "1CCCF0.h"

void func_800F65E0_MarioBandstand(void) {
    s32 i;

    func_80029090(4);
    func_8001DE70(0x48);
    omInitObjMan(0x10, 0);
    D_800FD286_MarioBandstand = D_800C597C;
    D_800C597C &= ~0x10;
    func_80060088();
    func_800FC930_MarioBandstand(1150.0f, -10.0f, 0, 0, 0, 50.0f, 445.0f);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 25.0f, 80.0f, 8000.0f);
    func_8002890C(0, 0, 0);
    omSetStatBit(omAddObj(0x7FDA, 0, 0, -1, func_8005EB1C), 0xA0);
    omAddObj(0, 0, 0, -1, &func_800F6808_MarioBandstand);
    omSetStatBit(omAddObj(6, 0, 0, -1, &func_800FB4D8_MarioBandstand), 0xA0);

    for (i = 0; i < 16; i++) {
        D_800FD6E0_MarioBandstand[i] = -1;
    }
    
    D_800FD714_MarioBandstand = -1;
    func_800F6F70_MarioBandstand();
    func_800F97D0_MarioBandstand();
    func_800FB1D0_MarioBandstand();
    omAddObj(0x2710, 0, 0, -1, &func_800F6F10_MarioBandstand);
    SetFadeInTypeAndTime(0, 0x10);
    D_800FD282_MarioBandstand = 1;
}

void func_800F6808_MarioBandstand(omObjData* arg0) {
    D_800FD280_MarioBandstand = 0;
    D_800ED430 = 0;
    arg0->func_ptr = &func_800F6828_MarioBandstand;
}

void func_800F6828_MarioBandstand(void) {
    if (D_800C5982 != 1) {
        switch (D_800FD280_MarioBandstand) {
        case 0:
            func_800F68D4_MarioBandstand();
            return;
        case 1:
            if (func_800FC8A8_MarioBandstand(0x4000) != 0) {
                D_800FD280_MarioBandstand = 2;
                D_800FD284_MarioBandstand = 1;
                D_800ED430 = 2;
                return;
            }
            break;
        case 2:
            func_800F6B04_MarioBandstand();
            break;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_26_MarioBandstand/1CCCF0", func_800F68D4_MarioBandstand);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_26_MarioBandstand/1CCCF0", func_800F6B04_MarioBandstand);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_26_MarioBandstand/1CCCF0", func_800F6F10_MarioBandstand);
