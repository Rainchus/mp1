#include "ResultsScene.h"

void func_800F65E0_ResultsScene(void) {
    s32 i;

    omInitObjMan(0x64, 0x50);
    D_800FC440_ResultsScene = 0;
    for (i = 0; i < 4; i++) {
        D_800FC430_ResultsScene[D_800ED100.boardRam[i]] = gPlayers[D_800ED100.boardRam[i]].coinAmount;
        if (!(gPlayers[D_800ED100.boardRam[i]].unk_06 & 1)) {
            D_800FC440_ResultsScene += D_800FC430_ResultsScene[D_800ED100.boardRam[i]];
        }
    }

    D_800FC448_ResultsScene = 0;
    
    for (i = 0; i < 4; i++) {
        if (!(gPlayers[D_800ED100.boardRam[i]].unk_06 & 1)) {
            D_800FC448_ResultsScene += gPlayers[D_800ED100.boardRam[i]].starAmount + D_800ED100.boardRam[D_800ED100.boardRam[i] + 10];
        }    
    }

    func_800FBF10_ResultsScene();
    func_8006CEA0();
    func_800532E0();
    func_8003DAA8();
    func_8004F548();
    func_800F7F1C_ResultsScene();
    omAddPrcObj(func_800FB054_ResultsScene, 0x300, 0x2000, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800FB87C_ResultsScene);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800F678C_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800F6988_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800F6C70_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800F7324_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800F7C28_ResultsScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", D_800FC34C_ResultsScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", D_800FC354_ResultsScene);

void func_800F7D94_ResultsScene(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        func_80067704(D_800FC598_ResultsScene[i]);
        func_80067704(D_800FC580_ResultsScene[i]);
    }

    func_80064D38(D_800FC57A_ResultsScene);
    func_80064D38(D_800FC592_ResultsScene);
    func_80067704(D_800FC5AE_ResultsScene);
    func_80064D38(D_800FC5AA_ResultsScene);
    func_80067704(D_800FC5BE_ResultsScene);
    func_80064D38(D_800FC5BA_ResultsScene);
    func_80067704(D_800FC5B6_ResultsScene);
    func_80064D38(D_800FC5B2_ResultsScene);
    omDelObj(D_800FC790_ResultsScene);
    
    for (i = 0; i < 2; i++) {
        func_80067704(D_800FC5C4_ResultsScene[i]);
    }

    func_80064D38(D_800FC5C2_ResultsScene);

    for (i = 0; i < 11; i++) {
        func_80067704(D_800FC5D0_ResultsScene[i]);
    }

    func_80064D38(D_800FC5CE_ResultsScene);

    for (i = 0; i < 11; i++) {
        func_80070D90(D_800FC600_ResultsScene[i]);
    }
    
    func_8004847C(D_800FC5FC_ResultsScene);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800F7F1C_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800F8990_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800F8CFC_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800F8EB8_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800F9250_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800F95F8_ResultsScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", D_800FC364_ResultsScene);

extern const char D_800FC364_ResultsScene[];

void func_800F972C_ResultsScene(void) {
    u8 sp10[5];
    s32 i;
    s32 var_s2;

    while (1) {
        var_s2 = 0;
        sprintf((char*)&sp10, D_800FC364_ResultsScene, D_800ED100.unk_44);
        for (i = 0; i < 5; i++) {
            func_800672B0(D_800FC45E_ResultsScene, i, 1);
             if (var_s2 == 0 && (sp10[i] == ' ') & (i != 4)) {
                func_800672DC(D_800FC45E_ResultsScene, i, 0, 0);
                func_800674BC(D_800FC45E_ResultsScene, i, 0x8000);             
             } else {
                var_s2 = 1;
                func_800672DC(D_800FC45E_ResultsScene, i, sp10[i] - 0x30, 0);
                func_80067480(D_800FC45E_ResultsScene, i, 0x8000);
             }
        }
        HuPrcVSleep();        
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800F9860_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800F9C74_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800FA08C_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800FA200_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800FA3A4_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800FA5E0_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800FA61C_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800FB054_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800FB71C_ResultsScene);

void func_800FB87C_ResultsScene(omObjData* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(0, 0x4B);
        func_800601D4(0x96);
        arg0->func_ptr = &func_800FB71C_ResultsScene;
    }
}

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", D_800FC388_ResultsScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_40_ResultsScene/259EB0", func_800FB8C8_ResultsScene);

void func_800FBDF0_ResultsScene(void) {
    s32 i;

    DestroyObject(D_800FC3A0_ResultsScene);

    for (i = 0; i < ARRAY_COUNT(D_800FC3A8_ResultsScene); i++) {
        DestroyObject(D_800FC3A8_ResultsScene[i]);
    }
    for (i = 0; i < ARRAY_COUNT(D_800FC3F8_ResultsScene); i++) {
        DestroyObject(D_800FC3F8_ResultsScene[i]);
    }
    for (i = 0; i < ARRAY_COUNT(D_800FC418_ResultsScene); i++) {
        EndProcess(D_800FC418_ResultsScene[i]);
    }
    for (i = 0; i < ARRAY_COUNT(D_800FC458_ResultsScene); i++) {
        func_80064D38(D_800FC458_ResultsScene[i]);
    }
    for (i = 0; i < ARRAY_COUNT(D_800FC470_ResultsScene); i++) {
        func_80067704(D_800FC470_ResultsScene[i]);
    }

    func_80077044(D_800FC4A8_ResultsScene);
    func_80077044(D_800FC510_ResultsScene);
}

void func_800FBF10_ResultsScene(void) {
    func_800178A0(2);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_80017660(1, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(1, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(FE2310_ROM_START);
    LoadBackgroundIndex(D_800FC09C_ResultsScene[D_800ED5C2[0]]);
    func_8004B7F8(0x80);
}

void func_800FC028_ResultsScene(void) {
    func_8004A140();
    func_80049F0C();
}
