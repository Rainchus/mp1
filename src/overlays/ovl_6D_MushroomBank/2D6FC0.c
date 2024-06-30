#include "common.h"
#include "2D6FC0.h"

void func_800F65E0_MushroomBank(void) {
    InitCameras(1);
    func_8001DE70(1);
    omInitObjMan(0x20, 4);
    omSetStatBit(omAddObj(0x7FDA, 0, 0, -1, func_80059EBC), 0xA0);
    D_800F384C = 0;
    func_8006CEA0();
    func_8004F8DC();
    D_800F8B90_MushroomBank = func_8004F954(0x26, 0x20);
    
    if (IsFlagSet(4) != 0) {
        D_800F89B8_MushroomBank = 1;
    }
    
    ClearBoardFeatureFlag(4);
    func_800F7528_MushroomBank();
    func_800F7754_MushroomBank();
    
    if (D_800F89B8_MushroomBank != 0) {
        D_800F8B98_MushroomBank = omAddPrcObj(func_800F6E38_MushroomBank, 0xAU, 0, 0);
    } else {
        D_800F8B98_MushroomBank = omAddPrcObj(func_800F67B0_MushroomBank, 0xAU, 0, 0);
    }
    
    SetFadeInTypeAndTime(0xFF, 8);
    func_8005AF60();
}

void func_800F66DC_MushroomBank(s32 arg0) {
    D_800ED610 = &D_800F88C0_MushroomBank[arg0];
    D_800ED72C = &D_800F8914_MushroomBank[arg0];
}

void func_800F6714_MushroomBank(u16* arg0, s8* arg1, s16 arg2) {
    s32 var_a1;
    s32 i;

    for (i = 0; i < 6; i++) {
        var_a1 = arg1[i] - 0x30;
        if (var_a1 < 0) {
            var_a1 = 0xA;
        }
        
        arg0[i] = func_80019060(arg2, var_a1, 1);
        ShowBasicSprite(arg0[i]);
        func_80018D84(arg0[i], 0xFFFF);
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6D_MushroomBank/2D6FC0", func_800F67B0_MushroomBank);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6D_MushroomBank/2D6FC0", func_800F6E38_MushroomBank);

void func_800F722C_MushroomBank(omObjData* arg0) {
    if ((D_800F5144 != 0) || (D_800F89BC_MushroomBank != 0)) {
        if (D_800F89B8_MushroomBank == 0) {
            func_800601D4(0x1E);
        }
        func_80072724(255, 255, 255);
        func_800726AC(0, 4);
        arg0->func_ptr = &func_800F72A8_MushroomBank;
    }
}

void func_800F72A8_MushroomBank(void) {
    if (func_80072718() == 0) {
        func_80070ED4();
        func_8005B244();
        if (D_800F89BC_MushroomBank != 0) {
            omOvlCallEx(0x63, 0, 0x91);
            return;
        }
        omOvlReturnEx(1);
    }
}

void func_800F7308_MushroomBank(omObjData* arg0) {
    unk_ovl_2D_struct* temp_s0;
    void* file;

    arg0->model[0] = func_800174C0(0x90035, 0x2A9);
    func_80025EB4(arg0->model[0], 1, 1);
    temp_s0 = &D_800F2B7C[arg0->model[0]];
    file = ReadMainFS(0x90042);
    func_80038A9C(temp_s0->unk_6C, file, 0, "41tt000o_DEF");
    FreeMainFS(file);
    func_80025AD4(arg0->model[0]);
    arg0->func_ptr = &func_800F722C_MushroomBank;
    if (D_800F89B8_MushroomBank != 0) {
        arg0->model[1] = func_800174C0(0x9003A, 0x2B9);
        func_80025798(arg0->model[1], 0.0f, 1.0f, 0.0f);
        arg0->model[2] = func_800174C0(0x90039, 0x2B9);
        func_80025798(arg0->model[2], 0.0f, 0.0f, -100.0f);
        func_800257E4(arg0->model[2], 10.0f, 0.0f, 4.0f);
        arg0->model[3] = func_800174C0(0x90037, 0x2B9);
        func_80025798(arg0->model[3], 150.0f, 0.0f, 220.0f);
        arg0->model[4] = func_800174C0(0x90038, 0x2B9);
        func_80025798(arg0->model[4], -50.0f, 0.0f, 230.0f);
        arg0->model[5] = func_800174C0(0x9003B, 0x2B9);
        func_80025798(arg0->model[5], -70.0f, 0.0f, 200.0f);
        func_800257E4(arg0->model[5], 0.0f, 90.0f, 0.0f);
        arg0->model[6] = func_800174C0(0x9003B, 0x2B9);
        func_80025798(arg0->model[6], -280.0f, 0.0f, 30.0f);
    }
}

void func_800F7528_MushroomBank(void) {
    D_800F33EC.y = 0.0f;
    D_800F33EC.x = 180.0f;
    D_800F33EC.z = 0.0f;
    D_800F6524.x = 0.0f;
    D_800F6524.y = 225.0f;
    D_800F6524.z = 480.0f;
    func_800F66DC_MushroomBank(0);
    func_8002890C(255, 255, 255);
    D_800F8B9C_MushroomBank = omAddObj(1, 7, 0, -1, &func_800F7308_MushroomBank);
}


void func_800F75C8_MushroomBank(s32 arg0) {
    if (arg0 < 0) {
        if (arg0 >= -3) {
            D_800ED100.unk_47 = arg0 + 3;
        }
    } else {
        SetBoardFeatureFlag(arg0);
    }
}

void func_800F7600_MushroomBank(s32 arg0) {
    if (arg0 >= 0) {
        ClearBoardFeatureFlag(arg0);
    }
}


INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6D_MushroomBank/2D6FC0", func_800F7620_MushroomBank);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6D_MushroomBank/2D6FC0", func_800F7754_MushroomBank);

void func_800F7B98_MushroomBank(s32 arg0) {
    unkStructTemp* temp = &D_800F89C0_MushroomBank[arg0];
    func_80059B48(temp->unk_00);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6D_MushroomBank/2D6FC0", func_800F7BC0_MushroomBank);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6D_MushroomBank/2D6FC0", func_800F85D8_MushroomBank);
