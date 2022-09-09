#include "common.h"
#include "2D6FC0.h"

void func_800F65E0_2D6FC0(void) {
    InitCameras(1);
    func_8001DE70(1);
    func_8005CF30(0x20, 4);
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, func_80059EBC), 0xA0);
    D_800F384C = 0;
    func_8006CEA0();
    func_8004F8DC();
    D_800F8B90 = func_8004F954(0x26, 0x20);
    
    if (IsBoardFeatureFlagSet(4) != 0) {
        D_800F89B8 = 1;
    }
    
    ClearBoardFeatureFlag(4);
    func_800F7528_2D7F08();
    func_800F7754_2D8134();
    
    if (D_800F89B8 != 0) {
        D_800F8B98 = InitProcess(func_800F6E38_2D7818, 0xAU, 0, 0);
    } else {
        D_800F8B98 = InitProcess(func_800F67B0_2D7190, 0xAU, 0, 0);
    }
    
    func_80072644(0xFF, 8);
    func_8005AF60();
}

void func_800F66DC_2D70BC(s32 arg0) {
    D_800ED610 = &D_800F88C0[arg0];
    D_800ED72C = &D_800F8914[arg0];
}

void func_800F6714_2D70F4(u16* arg0, s8* arg1, s16 arg2) {
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

INCLUDE_ASM(s32, "ovl_6D_MushroomBank/2D6FC0", func_800F67B0_2D7190);

INCLUDE_ASM(s32, "ovl_6D_MushroomBank/2D6FC0", func_800F6E38_2D7818);

void func_800F722C_2D7C0C(Object* arg0) {
    if ((D_800F5144 != 0) || (D_800F89BC != 0)) {
        if (D_800F89B8 == 0) {
            func_800601D4(0x1E);
        }
        func_80072724(255, 255, 255);
        func_800726AC(0, 4);
        arg0->func_ptr = &func_800F72A8_2D7C88;
    }
}

void func_800F72A8_2D7C88(void) {
    if (func_80072718() == 0) {
        func_80070ED4();
        func_8005B244();
        if (D_800F89BC != 0) {
            func_8005DF44(0x63, 0, 0x91);
            return;
        }
        func_8005DFB8(1);
    }
}

void func_800F7308_2D7CE8(Object* arg0) {
    unk_ovl_2D_struct* temp_s0;
    void* file;

    arg0->unk_40->unk_00.unsigned16[0] = func_800174C0(0x90035, 0x2A9);
    func_80025EB4(arg0->unk_40->unk_00.unsigned16[0], 1, 1);
    temp_s0 = &D_800F2B7C[arg0->unk_40->unk_00.signed16[0]];
    file = ReadMainFS(0x90042);
    func_80038A9C(temp_s0->unk_6C, file, 0, D_800F8B58);
    FreeMainFS(file);
    func_80025AD4(arg0->unk_40->unk_00.unsigned16[0]);
    arg0->func_ptr = &func_800F722C_2D7C0C;
    if (D_800F89B8 != 0) {
        arg0->unk_40->unk_00.unsigned16[1] = func_800174C0(0x9003A, 0x2B9);
        func_80025798(arg0->unk_40->unk_00.unsigned16[1], 0.0f, 1.0f, 0.0f);
        arg0->unk_40->unk_04.unsigned16[0] = func_800174C0(0x90039, 0x2B9);
        func_80025798(arg0->unk_40->unk_04.unsigned16[0], 0.0f, 0.0f, -100.0f);
        func_800257E4(arg0->unk_40->unk_04.unsigned16[0], 10.0f, 0.0f, 4.0f);
        arg0->unk_40->unk_04.unsigned16[1] = func_800174C0(0x90037, 0x2B9);
        func_80025798(arg0->unk_40->unk_04.unsigned16[1], 150.0f, 0.0f, 220.0f);
        arg0->unk_40->unk_08.unsigned16[0] = func_800174C0(0x90038, 0x2B9);
        func_80025798(arg0->unk_40->unk_08.unsigned16[0], -50.0f, 0.0f, 230.0f);
        arg0->unk_40->unk_08.unsigned16[1] = func_800174C0(0x9003B, 0x2B9);
        func_80025798(arg0->unk_40->unk_08.unsigned16[1], -70.0f, 0.0f, 200.0f);
        func_800257E4(arg0->unk_40->unk_08.unsigned16[1], 0.0f, 90.0f, 0.0f);
        arg0->unk_40->unk_0C.signed16[0] = func_800174C0(0x9003B, 0x2B9);
        func_80025798(arg0->unk_40->unk_0C.signed16[0], -280.0f, 0.0f, 30.0f);
    }
}

void func_800F7528_2D7F08(void) {
    D_800F33EC.y = 0.0f;
    D_800F33EC.x = 180.0f;
    D_800F33EC.z = 0.0f;
    D_800F6524.x = 0.0f;
    D_800F6524.y = 225.0f;
    D_800F6524.z = 480.0f;
    func_800F66DC_2D70BC(0);
    func_8002890C(255, 255, 255);
    D_800F8B9C = func_8005D384(1, 7, 0, -1, &func_800F7308_2D7CE8);
}


void func_800F75C8_2D7FA8(s32 arg0) {
    if (arg0 < 0) {
        if (arg0 >= -3) {
            D_800ED147 = arg0 + 3;
        }
    } else {
        SetBoardFeatureFlag(arg0);
    }
}

void func_800F7600_2D7FE0(s32 arg0) {
    if (arg0 >= 0) {
        ClearBoardFeatureFlag(arg0);
    }
}


INCLUDE_ASM(s32, "ovl_6D_MushroomBank/2D6FC0", func_800F7620_2D8000);

INCLUDE_ASM(s32, "ovl_6D_MushroomBank/2D6FC0", func_800F7754_2D8134);

INCLUDE_ASM(s32, "ovl_6D_MushroomBank/2D6FC0", func_800F7B98_2D8578);

INCLUDE_ASM(s32, "ovl_6D_MushroomBank/2D6FC0", func_800F7BC0_2D85A0);

INCLUDE_ASM(s32, "ovl_6D_MushroomBank/2D6FC0", func_800F85D8_2D8FB8);
