#include "common.h"
#include "2D4830.h"

void func_800F65E0_2D4830(void) {
    InitCameras(1);
    func_8005CF30(0x20, 4);
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, &func_80059EBC), 0xA0);
    D_800F384C = 0;
    func_8006CEA0();
    func_800F6C58_2D4EA8();
    func_800F73C8_2D5618();
    D_800F8D74 = InitProcess(func_800F688C_2D4ADC, 0xA, 0, 0);
    func_8007B168(D_800F8D10, 0);
    D_800F8DE2 = InitSprite(0xA0013);
    D_800F8DE4 = func_80019060(D_800F8DE2, 0, 1);
    SetBasicSpriteSize(D_800F8DE4, 0.5f, 0.5f);
    SetBasicSpritePos(D_800F8DE4, 0x20, 0x18);
    D_800F8DE0 = func_800767B4(D_800F8D78, D_800F8D18, 0, -1, -1);
    func_8005D384(1, 0, 0, -1, &func_800F67B0_2D4A00);
    func_80066DC4(D_800F8D8C[D_800F8DE0], 0, 0x4C, 0x18);
    SetFadeInTypeAndTime(0xFF, 8);
    func_8005AF60();
    D_800F8D70 = func_80059C28();
    func_80060128(6);
}

void func_800F6778_2D49C8(s32 arg0) {
    D_800ED610 = &D_800F89A0[arg0];
    D_800ED72C = &D_800F89C4[arg0];
}

void func_800F67B0_2D4A00(void) {
    s32 i;
    s32 var_s0;
    s32 var_s1;

    var_s1 = 0x2710;
    var_s0 = D_800ED140;
    
    for (i = 1; i < 6; i++) {
        func_80067208(D_800F8D8C[D_800F8DE0], i, D_800F3B74, var_s0 / var_s1);
        var_s0 = var_s0 % var_s1;
        var_s1 /= 0xA;
    }
}

INCLUDE_ASM(s32, "ovl_6C_MushroomShop/2D4830", func_800F688C_2D4ADC);

void func_800F6B68_2D4DB8(Object* arg0) {
    if (D_800F5144 != 0) {
        func_800601D4(0x1E);
        func_80072724(0xFF, 0xFF, 0xFF);
        func_800726AC(0, 4);
        arg0->func_ptr = &func_800F6BC4_2D4E14;
    }
}

void func_800F6BC4_2D4E14(void) {
    if (func_80072718() == 0) {
        func_80070ED4();
        func_8005B244();
        func_8005DFB8(1);
    }
}

void func_800F6C00_2D4E50(Object* arg0) {
    arg0->unk_40->unk_00.unsigned16[0] = func_800174C0(0x90051, 0x2B9);
    func_80025EB4(arg0->unk_40->unk_00.unsigned16[0], 1, 1);
    arg0->func_ptr = &func_800F6B68_2D4DB8;
}

void func_800F6C58_2D4EA8(void) {
    D_800F33EC.y = 0.0f;
    D_800F33EC.x = 180.0f;
    D_800F33EC.z = 0.0f;
    D_800F6524.x = 0.0f;
    D_800F6524.y = 130.0f;
    D_800F6524.z = 800.0f;
    func_800F6778_2D49C8(0);
    func_8002890C(0xFF, 0xFF, 0xFF);
    D_800F8DE8 = func_8005D384(1, 1, 0, -1, &func_800F6C00_2D4E50);
}

INCLUDE_ASM(s32, "ovl_6C_MushroomShop/2D4830", func_800F6CF8_2D4F48);

INCLUDE_ASM(s32, "ovl_6C_MushroomShop/2D4830", func_800F6E94_2D50E4);

s32 func_800F6F48_2D5198(void) {
    s32 i;
    
    for (i = 0; i < 8; i++) {
        if (IsBoardFeatureFlagSet(D_800F8A30[i]) == 0) {
            return 1;
        }  
    }

    return 0;
}

s32 func_800F6FA8_2D51F8(void) {
    s32 i;
    
    for (i = 0; i < 6; i++) {
        if (IsBoardFeatureFlagSet(D_800F8A30[i]) == 0) {
            return 1;
        }  
    }
    return 0;
}

s32 func_800F7008_2D5258(s32 arg0) {
    if (D_800F8A50[arg0].unk_28 != NULL && D_800F8A50[arg0].unk_28() ) {
        return 0;
    }
    return IsBoardFeatureFlagSet(D_800F8A50[arg0].unk_00) == 0;
}

INCLUDE_ASM(s32, "ovl_6C_MushroomShop/2D4830", func_800F7088_2D52D8);

INCLUDE_ASM(s32, "ovl_6C_MushroomShop/2D4830", func_800F718C_2D53DC);

INCLUDE_ASM(s32, "ovl_6C_MushroomShop/2D4830", func_800F73C8_2D5618);

INCLUDE_ASM(s32, "ovl_6C_MushroomShop/2D4830", func_800F7500_2D5750);

INCLUDE_ASM(s32, "ovl_6C_MushroomShop/2D4830", func_800F76A0_2D58F0);
