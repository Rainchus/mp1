#include "common.h"
#include "28ECA0.h"

void func_800F65E0_FlyGuyWarioBoard(void) {
    D_800F8230_FlyGuyWarioBoard = D_800ED5DC;
    omInitObjMan(50, 10);
    func_800F7FA4_FlyGuyWarioBoard();
    func_800F7DF0_FlyGuyWarioBoard();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(func_800F742C_FlyGuyWarioBoard, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F7D90_FlyGuyWarioBoard);
    if (D_800C597A != 0) {
        SetFadeInTypeAndTime(6, 8);
    } else {
        SetFadeInTypeAndTime(1, 16);
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", func_800F66D0_FlyGuyWarioBoard);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", D_800F8120_FlyGuyWarioBoard);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", D_800F8188_FlyGuyWarioBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", func_800F6834_FlyGuyWarioBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", func_800F6B54_FlyGuyWarioBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", func_800F6DE0_FlyGuyWarioBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", func_800F7070_FlyGuyWarioBoard);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", D_800F820C_FlyGuyWarioBoard);

void func_800F72DC_FlyGuyWarioBoard(omObjData* arg0) {
    Object* temp_s0 = D_800F8234_FlyGuyWarioBoard;

    temp_s0->unk_30 = ((sinf((arg0->rot.y * 0.0174532925199432955)) * arg0->work[0]) + arg0->trans.y);
    arg0->rot.y += 10.0f;
    if (arg0->rot.y >= 360.0f) {
        arg0->rot.y -= 360.0f;
    }
}

void func_800F7384_FlyGuyWarioBoard(omObjData* arg0) {
    Object* temp_s0 = D_800F8070_FlyGuyWarioBoard;

    temp_s0->unk_30 = ((sinf((arg0->rot.y * 0.0174532925199432955)) * arg0->work[0]) + arg0->trans.y);
    arg0->rot.y += 10.0f;
    if (arg0->rot.y >= 360.0f) {
        arg0->rot.y -= 360.0f;
    }
}

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", D_800F8220_FlyGuyWarioBoard);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", D_800F8224_FlyGuyWarioBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", func_800F742C_FlyGuyWarioBoard);

void func_800F7D14_FlyGuyWarioBoard(void) {
    if (func_80072718() == 0) {
        func_800F8044_FlyGuyWarioBoard();
        func_800F7F30_FlyGuyWarioBoard();
        func_80054654();
        func_80070ED4();
        if (D_800F807C_FlyGuyWarioBoard == 0) {
            omOvlReturnEx(1);
            return;
        }
        func_8004F284();
        func_8004F28C(0x52, D_800F807E_FlyGuyWarioBoard);
    }
}

void func_800F7D90_FlyGuyWarioBoard(omObjData* arg0) {
    if (D_800F5144 != 0) {
        if (D_800F807C_FlyGuyWarioBoard != 0) {
            func_800726AC(6, 8);
        } else {
            func_800726AC(1, 16);
        }
        arg0->func_ptr = &func_800F7D14_FlyGuyWarioBoard;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", func_800F7DF0_FlyGuyWarioBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", func_800F7F30_FlyGuyWarioBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", func_800F7FA4_FlyGuyWarioBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_52_FlyGuyWarioBoard/28ECA0", func_800F8044_FlyGuyWarioBoard);
