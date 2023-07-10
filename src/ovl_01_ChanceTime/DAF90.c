#include "ChanceTime.h"

void func_800FC390_DAF90(void) {
    D_80101760 = func_800174F4(0x130001, 0x289);
    func_800258EC(D_80101760, 4, 4);
}

INCLUDE_ASM(const s32, "ovl_01_ChanceTime/DAF90", func_800FC3D0_DAFD0);

INCLUDE_ASM(const s32, "ovl_01_ChanceTime/DAF90", func_800FCC18_DB818);

INCLUDE_ASM(const s32, "ovl_01_ChanceTime/DAF90", func_800FD0AC_DBCAC);

INCLUDE_ASM(const s32, "ovl_01_ChanceTime/DAF90", func_800FD7DC_DC3DC);

INCLUDE_ASM(const s32, "ovl_01_ChanceTime/DAF90", func_800FDDD4_DC9D4);

INCLUDE_ASM(const s32, "ovl_01_ChanceTime/DAF90", func_800FE554_DD154);

void func_800FE97C_DD57C(s32 arg0) {
    if (((func_800FEC4C_DD84C(arg0, 80.0f, D_800F3FB0)) != 0) && (D_8010131A == 0)) {
        D_8010131A = 1;
    }

    D_801012B4 = 1;
    D_801012E1 = 0;
}

void func_800FE9D8_DD5D8(unkObjectStruct* arg0) {
    unkGlobalStruct_02* temp_s1;

    arg0->unk_40[0] = func_80023FC8(D_80101760);
    func_800258EC(arg0->unk_40[0], 4, 4);
    arg0->unk_40[1] = func_800174F4(0x130002, 0x699);
    arg0->unk_18 = 140.0f;
    arg0->unk_1C = 230.0f;
    arg0->unk_20 = 1400.0f;
    arg0->unk_30 = arg0->unk_34 = arg0->unk_38 = 1.5f;
    arg0->unk_24 = arg0->unk_28 = arg0->unk_2C = 0.0f;
    func_80025798(arg0->unk_40[1], arg0->unk_18, arg0->unk_1C, arg0->unk_20);
    func_80025830(arg0->unk_40[1], 0.8f, 0.8f, 0.8f);
    func_800257E4(arg0->unk_40[1], 0.0f, 0.0f, 0.0f);
    temp_s1 = func_80023684(sizeof(unkGlobalStruct_02), 0x7918);
    arg0->unk_50 = temp_s1;
    func_8009B770(temp_s1, 0, sizeof(unkGlobalStruct_02));
    temp_s1->unk_04 = 1;
    temp_s1->unk_05 = 3;
    temp_s1->unk_28 = func_80023684(sizeof(unkGlobalStruct_01), 0x7918);
    func_8009B770(temp_s1->unk_28, 0, sizeof(unkGlobalStruct_01));
    arg0->func_ptr = &func_800FE97C_DD57C;
}
