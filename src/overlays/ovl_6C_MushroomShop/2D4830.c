#include "common.h"
#include "2D4830.h"

void func_800F65E0_MushroomShop(void) {
    InitCameras(1);
    omInitObjMan(0x20, 4);
    omSetStatBit(omAddObj(0x7FDA, 0, 0, -1, &func_80059EBC), 0xA0);
    D_800F384C = 0;
    func_8006CEA0();
    func_800F6C58_MushroomShop();
    func_800F73C8_MushroomShop();
    D_800F8D74_MushroomShop = omAddPrcObj(func_800F688C_MushroomShop, 0xA, 0, 0);
    func_8007B168("\x82\xA0\x83\x41\x81\x49\x00", 0);
    D_800F8DE2_MushroomShop = InitSprite(0xA0013);
    D_800F8DE4_MushroomShop = func_80019060(D_800F8DE2_MushroomShop, 0, 1);
    SetBasicSpriteSize(D_800F8DE4_MushroomShop, 0.5f, 0.5f);
    SetBasicSpritePos(D_800F8DE4_MushroomShop, 0x20, 0x18);
    D_800F8DE0_MushroomShop = func_800767B4(D_800F8D78_MushroomShop, "00000", 0, -1, -1);
    omAddObj(1, 0, 0, -1, &func_800F67B0_MushroomShop);
    func_80066DC4(D_800F8D8C_MushroomShop[D_800F8DE0_MushroomShop], 0, 0x4C, 0x18);
    SetFadeInTypeAndTime(0xFF, 8);
    func_8005AF60();
    D_800F8D70_MushroomShop = func_80059C28();
    func_80060128(6);
}

void func_800F6778_MushroomShop(s32 arg0) {
    D_800ED610 = &D_800F89A0_MushroomShop[arg0];
    D_800ED72C = &D_800F89C4_MushroomShop[arg0];
}

void func_800F67B0_MushroomShop(void) {
    s32 i;
    s32 var_s0;
    s32 var_s1;

    var_s1 = 0x2710;
    var_s0 = D_800ED100.unk_40;
    
    for (i = 1; i < 6; i++) {
        func_80067208(D_800F8D8C_MushroomShop[D_800F8DE0_MushroomShop], i, D_800F3B74, var_s0 / var_s1);
        var_s0 = var_s0 % var_s1;
        var_s1 /= 0xA;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6C_MushroomShop/2D4830", func_800F688C_MushroomShop);

void func_800F6B68_MushroomShop(omObjData* arg0) {
    if (D_800F5144 != 0) {
        func_800601D4(0x1E);
        func_80072724(0xFF, 0xFF, 0xFF);
        func_800726AC(0, 4);
        arg0->func_ptr = &func_800F6BC4_MushroomShop;
    }
}

void func_800F6BC4_MushroomShop(void) {
    if (func_80072718() == 0) {
        func_80070ED4();
        func_8005B244();
        omOvlReturnEx(1);
    }
}

void func_800F6C00_MushroomShop(omObjData* arg0) {
    arg0->model[0] = func_800174C0(0x90051, 0x2B9);
    func_80025EB4(arg0->model[0], 1, 1);
    arg0->func_ptr = &func_800F6B68_MushroomShop;
}

void func_800F6C58_MushroomShop(void) {
    D_800F33EC.y = 0.0f;
    D_800F33EC.x = 180.0f;
    D_800F33EC.z = 0.0f;
    D_800F6524.x = 0.0f;
    D_800F6524.y = 130.0f;
    D_800F6524.z = 800.0f;
    func_800F6778_MushroomShop(0);
    func_8002890C(0xFF, 0xFF, 0xFF);
    D_800F8DE8_MushroomShop = omAddObj(1, 1, 0, -1, &func_800F6C00_MushroomShop);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6C_MushroomShop/2D4830", func_800F6CF8_MushroomShop);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6C_MushroomShop/2D4830", func_800F6E94_MushroomShop);

s32 func_800F6F48_MushroomShop(void) {
    s32 i;
    
    for (i = 0; i < 8; i++) {
        if (IsFlagSet(D_800F8A30_MushroomShop[i]) == 0) {
            return 1;
        }  
    }

    return 0;
}

s32 func_800F6FA8_MushroomShop(void) {
    s32 i;
    
    for (i = 0; i < 6; i++) {
        if (IsFlagSet(D_800F8A30_MushroomShop[i]) == 0) {
            return 1;
        }  
    }
    return 0;
}

s32 func_800F7008_MushroomShop(s32 arg0) {
    if (D_800F8A50_MushroomShop[arg0].unk_28 != NULL && D_800F8A50_MushroomShop[arg0].unk_28() ) {
        return 0;
    }
    return IsFlagSet(D_800F8A50_MushroomShop[arg0].unk_00) == 0;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6C_MushroomShop/2D4830", func_800F7088_MushroomShop);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6C_MushroomShop/2D4830", func_800F718C_MushroomShop);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6C_MushroomShop/2D4830", func_800F73C8_MushroomShop);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6C_MushroomShop/2D4830", func_800F7500_MushroomShop);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6C_MushroomShop/2D4830", func_800F76A0_MushroomShop);
