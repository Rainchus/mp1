#include "common.h"
#include "1CCCF0.h"

void func_800F65E0_1CCCF0(void) {
    s32 i;

    func_80029090(4);
    func_8001DE70(0x48);
    InitObjSystem(0x10, 0);
    D_800FD286 = D_800C597C;
    D_800C597C &= ~0x10;
    func_80060088();
    func_800FC930_1D3040(1150.0f, -10.0f, 0, 0, 0, 50.0f, 445.0f);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 25.0f, 80.0f, 8000.0f);
    func_8002890C(0, 0, 0);
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, func_8005EB1C), 0xA0);
    func_8005D384(0, 0, 0, -1, &func_800F6808_1CCF18);
    func_8005D8B8(func_8005D384(6, 0, 0, -1, &func_800FB4D8_1D1BE8), 0xA0);

    for (i = 0; i < 16; i++) {
        D_800FD6E0_1D3DF0[i] = -1;
    }
    
    D_800FD714 = -1;
    func_800F6F70_1CD680();
    func_800F97D0_1CFEE0();
    func_800FB1D0_1D18E0();
    func_8005D384(0x2710, 0, 0, -1, &func_800F6F10_1CD620);
    SetFadeInTypeAndTime(0, 0x10);
    D_800FD282 = 1;
}

void func_800F6808_1CCF18(unkObjectStruct* arg0) {
    D_800FD280 = 0;
    D_800ED430 = 0;
    arg0->func_ptr = &func_800F6828_1CCF38;
}

void func_800F6828_1CCF38(void) {
    if (D_800C5982 != 1) {
        switch (D_800FD280) {
        case 0:
            func_800F68D4_1CCFE4();
            return;
        case 1:
            if (func_800FC8A8_1D2FB8(0x4000) != 0) {
                D_800FD280 = 2;
                D_800FD284 = 1;
                D_800ED430 = 2;
                return;
            }
            break;
        case 2:
            func_800F6B04_1CD214();
            break;
        }
    }
}

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F68D4_1CCFE4);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F6B04_1CD214);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F6F10_1CD620);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F6F70_1CD680);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F7000_1CD710);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F7090_1CD7A0);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F73E8_1CDAF8);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F7458_1CDB68);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F74C8_1CDBD8);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F7760_1CDE70);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F7B88_1CE298);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F7C1C_1CE32C);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F7D58_1CE468);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F7F7C_1CE68C);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F80B0_1CE7C0);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F81C0_1CE8D0);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F853C_1CEC4C);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F87EC_1CEEFC);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F8940_1CF050);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F8C14_1CF324);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F8FCC_1CF6DC);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F92B4_1CF9C4);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F93A4_1CFAB4);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F9430_1CFB40);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F97D0_1CFEE0);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800F98C4_1CFFD4);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FA028_1D0738);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FA448_1D0B58);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FA4F8_1D0C08);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FA790_1D0EA0);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FA7EC_1D0EFC);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FAA58_1D1168);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FAC2C_1D133C);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FAFEC_1D16FC);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FB0D8_1D17E8);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FB1D0_1D18E0);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FB214_1D1924);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FB4D8_1D1BE8);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FB8EC_1D1FFC);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FB99C_1D20AC);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FBB14_1D2224);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FBD1C_1D242C);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FBD8C_1D249C);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FBF68_1D2678);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FC4E0_1D2BF0);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FC744_1D2E54);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FC854_1D2F64);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FC870_1D2F80);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FC880_1D2F90);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FC8A8_1D2FB8);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FC8B8_1D2FC8);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FC930_1D3040);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FC9D8_1D30E8);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FCAAC_1D31BC);

INCLUDE_ASM(s32, "ovl_26_MarioBandstand/1CCCF0", func_800FCAD4_1D31E4);
