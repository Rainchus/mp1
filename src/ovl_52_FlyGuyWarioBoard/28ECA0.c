#include "common.h"
#include "28ECA0.h"

void func_800F65E0_28ECA0(void) {
    D_800F8230 = D_800ED5DD;
    InitObjSystem(50, 10);
    func_800F7FA4_290664();
    func_800F7DF0_2904B0();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(func_800F742C_28FAEC, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F7D90_290450);
    if (D_800C597A != 0) {
        SetFadeInTypeAndTime(6, 8);
    } else {
        SetFadeInTypeAndTime(1, 16);
    }
}

INCLUDE_ASM(s32, "ovl_52_FlyGuyWarioBoard/28ECA0", func_800F66D0_28ED90);

INCLUDE_ASM(s32, "ovl_52_FlyGuyWarioBoard/28ECA0", func_800F6834_28EEF4);

INCLUDE_ASM(s32, "ovl_52_FlyGuyWarioBoard/28ECA0", func_800F6B54_28F214);

INCLUDE_ASM(s32, "ovl_52_FlyGuyWarioBoard/28ECA0", func_800F6DE0_28F4A0);

INCLUDE_ASM(s32, "ovl_52_FlyGuyWarioBoard/28ECA0", func_800F7070_28F730);

void func_800F72DC_28F99C(unkObjectStruct* arg0) {
    Object* temp_s0 = D_800F8234;

    temp_s0->unk_30 = ((__sinf((arg0->unk_28 * D_800F8210)) * arg0->unk_4C) + arg0->unk_1C);
    arg0->unk_28 += 10.0f;
    if (arg0->unk_28 >= 360.0f) {
        arg0->unk_28 -= 360.0f;
    }
}

void func_800F7384_28FA44(unkObjectStruct* arg0) {
    Object* temp_s0 = D_800F8070;

    temp_s0->unk_30 = ((__sinf((arg0->unk_28 * D_800F8218)) * arg0->unk_4C) + arg0->unk_1C);
    arg0->unk_28 += 10.0f;
    if (arg0->unk_28 >= 360.0f) {
        arg0->unk_28 -= 360.0f;
    }
}

INCLUDE_ASM(s32, "ovl_52_FlyGuyWarioBoard/28ECA0", func_800F742C_28FAEC);

void func_800F7D14_2903D4(void) {
    if (func_80072718() == 0) {
        func_800F8044_290704();
        func_800F7F30_2905F0();
        func_80054654();
        func_80070ED4();
        if (D_800F807C == 0) {
            func_8005DFB8(1);
            return;
        }
        func_8004F284();
        func_8004F28C(0x52, D_800F807E);
    }
}

void func_800F7D90_290450(unkObjectStruct* arg0) {
    if (D_800F5144 != 0) {
        if (D_800F807C != 0) {
            func_800726AC(6, 8);
        } else {
            func_800726AC(1, 16);
        }
        arg0->func_ptr = &func_800F7D14_2903D4;
    }
}

INCLUDE_ASM(s32, "ovl_52_FlyGuyWarioBoard/28ECA0", func_800F7DF0_2904B0);

INCLUDE_ASM(s32, "ovl_52_FlyGuyWarioBoard/28ECA0", func_800F7F30_2905F0);

INCLUDE_ASM(s32, "ovl_52_FlyGuyWarioBoard/28ECA0", func_800F7FA4_290664);

INCLUDE_ASM(s32, "ovl_52_FlyGuyWarioBoard/28ECA0", func_800F8044_290704);
