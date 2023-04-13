#include "ResultsEternalStar.h"

void func_800F65E0_259EB0(void) {
    s32 i;

    InitObjSystem(0x64, 0x50);
    D_800FC440 = 0;
    for (i = 0; i < 4; i++) {
        D_800FC430[D_800ED154[i]] = gPlayers[D_800ED154[i]].coinAmount;
        if (!(gPlayers[D_800ED154[i]].unk_06 & 1)) {
            D_800FC440 += D_800FC430[D_800ED154[i]];
        }
    }

    D_800FC448 = 0;
    
    for (i = 0; i < 4; i++) {
        if (!(gPlayers[D_800ED154[i]].unk_06 & 1)) {
            D_800FC448 += gPlayers[D_800ED154[i]].starAmount + D_800ED168[D_800ED154[i]];
        }
            
    }

    func_800FBF10_25F7E0();
    func_8006CEA0();
    func_800532E0();
    func_8003DAA8();
    func_8004F548();
    func_800F7F1C_25B7EC();
    InitProcess(func_800FB054_25E924, 0x300, 0x2000, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800FB87C_25F14C);
}

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800F678C_25A05C);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800F6988_25A258);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800F6C70_25A540);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800F7324_25ABF4);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800F7C28_25B4F8);

void func_800F7D94_25B664(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        func_80067704(D_800FC598[i]);
        func_80067704(D_800FC580[i]);
    }

    func_80064D38(D_800FC57A);
    func_80064D38(D_800FC592);
    func_80067704(D_800FC5AE);
    func_80064D38(D_800FC5AA);
    func_80067704(D_800FC5BE);
    func_80064D38(D_800FC5BA);
    func_80067704(D_800FC5B6);
    func_80064D38(D_800FC5B2);
    func_8005D718(D_800FC790);
    
    for (i = 0; i < 2; i++) {
        func_80067704(D_800FC5C4[i]);
    }

    func_80064D38(D_800FC5C2);

    for (i = 0; i < 11; i++) {
        func_80067704(D_800FC5D0[i]);
    }

    func_80064D38(D_800FC5CE);

    for (i = 0; i < 11; i++) {
        func_80070D90(D_800FC600[i]);
    }
    
    func_8004847C(D_800FC5FC);
}

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800F7F1C_25B7EC);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800F8990_25C260);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800F8CFC_25C5CC);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800F8EB8_25C788);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800F9250_25CB20);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800F95F8_25CEC8);

void func_800F972C_25CFFC(void) {
    u8 sp10[5];
    s32 i;
    s32 var_s2;

    while (1) {
        var_s2 = 0;
        sprintf(&sp10, &D_800FC364, D_800ED144);
        for (i = 0; i < 5; i++) {
            func_800672B0(D_800FC45E, i, 1);
             if (var_s2 == 0 && sp10[i] == ' ' & (i != 4)) {
                func_800672DC(D_800FC45E, i, 0, 0);
                func_800674BC(D_800FC45E, i, 0x8000);             
             } else {
                var_s2 = 1;
                func_800672DC(D_800FC45E, i, sp10[i] - 0x30, 0);
                func_80067480(D_800FC45E, i, 0x8000);
             }
        }
        SleepVProcess();        
    }
}

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800F9860_25D130);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800F9C74_25D544);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800FA08C_25D95C);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800FA200_25DAD0);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800FA3A4_25DC74);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800FA5E0_25DEB0);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800FA61C_25DEEC);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800FB054_25E924);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800FB71C_25EFEC);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800FB87C_25F14C);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800FB8C8_25F198);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800FBDF0_25F6C0);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800FBF10_25F7E0);

INCLUDE_ASM(s32, "ovl_40_ResultsEternalStar/259EB0", func_800FC028_25F8F8);
