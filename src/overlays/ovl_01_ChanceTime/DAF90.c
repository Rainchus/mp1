#include "ChanceTime.h"

void func_800FC390_ChanceTime(void) {
    D_80101760_ChanceTime = func_800174F4(0x130001, 0x289);
    func_800258EC(D_80101760_ChanceTime, 4, 4);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_01_ChanceTime/DAF90", func_800FC3D0_ChanceTime);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_01_ChanceTime/DAF90", func_800FCC18_ChanceTime);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_01_ChanceTime/DAF90", func_800FD0AC_ChanceTime);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_01_ChanceTime/DAF90", func_800FD7DC_ChanceTime);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_01_ChanceTime/DAF90", func_800FDDD4_ChanceTime);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_01_ChanceTime/DAF90", func_800FE554_ChanceTime);

void func_800FE97C_ChanceTime(s32 arg0) {
    if (((func_800FEC4C_ChanceTime(arg0, 80.0f, D_800F3FB0[0])) != 0) && (D_8010131A_ChanceTime == 0)) {
        D_8010131A_ChanceTime = 1;
    }

    D_801012B4_ChanceTime = 1;
    D_801012E1_ChanceTime = 0;
}

void func_800FE9D8_ChanceTime(omObjData* arg0) {
    unkGlobalStruct_02* temp_s1;

    arg0->model[0] = func_80023FC8(D_80101760_ChanceTime);
    func_800258EC(arg0->model[0], 4, 4);
    arg0->model[1] = func_800174F4(0x130002, 0x699);
    arg0->trans.x = 140.0f;
    arg0->trans.y = 230.0f;
    arg0->trans.z = 1400.0f;
    arg0->scale.x = arg0->scale.y = arg0->scale.z = 1.5f;
    arg0->rot.x = arg0->rot.y = arg0->rot.z = 0.0f;
    func_80025798(arg0->model[1], arg0->trans.x, arg0->trans.y, arg0->trans.z);
    func_80025830(arg0->model[1], 0.8f, 0.8f, 0.8f);
    func_800257E4(arg0->model[1], 0.0f, 0.0f, 0.0f);
    temp_s1 = func_80023684(sizeof(unkGlobalStruct_02), 0x7918);
    arg0->unk_50 = temp_s1;
    func_8009B770(temp_s1, 0, sizeof(unkGlobalStruct_02));
    temp_s1->unk_04 = 1;
    temp_s1->unk_05 = 3;
    temp_s1->unk_28 = func_80023684(sizeof(unkGlobalStruct_01), 0x7918);
    func_8009B770(temp_s1->unk_28, 0, sizeof(unkGlobalStruct_01));
    arg0->func_ptr = &func_800FE97C_ChanceTime;
}
