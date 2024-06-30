#include "HandcarHavoc.h"

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800F65E0_HandcarHavoc);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", D_800FF450_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800F6BBC_HandcarHavoc);

void func_800F72B0_HandcarHavoc(omObjData* arg0) {
    D_80101C8A_HandcarHavoc = 0;
    D_800FF628_HandcarHavoc = 0;
    D_800FF624_HandcarHavoc = 0;
    D_800FF400_HandcarHavoc = 0;
    D_80101C90_HandcarHavoc = -1;
    D_80101CA0_HandcarHavoc = 0;
    D_80101CA8_HandcarHavoc = 0;
    D_800FF5D2_HandcarHavoc = 30;
    D_800FF5D4_HandcarHavoc = 300;
    arg0->func_ptr = &func_800F7314_HandcarHavoc;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800F7314_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800F757C_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800F7998_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800F7DD8_HandcarHavoc);

void func_800F7E8C_HandcarHavoc(s32 arg0) {
    func_800F7F04_HandcarHavoc(arg0, 0, 9870.0f, 0, 12375.0f);
}

void func_800F7EC8_HandcarHavoc(s32 arg0) {
    func_800F7F04_HandcarHavoc(arg0, 1, 9870.0f, 0, 12375.0f);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800F7F04_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800F8730_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800F8E00_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800F917C_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800F93DC_HandcarHavoc);

f32 func_800F9774_HandcarHavoc(s8 arg0) {
    s8 temp_f2 = arg0;
    f32 phi_f4_2;

    if (arg0 < 0.0f) {
        phi_f4_2 = 1.0f;
    } else {
        phi_f4_2 = -1.0f;
    }
    
    temp_f2 = fabs(temp_f2);
    
    if (temp_f2 == 0.0f) {
        phi_f4_2 = phi_f4_2 * 0.0f;
    } else {
        if (temp_f2 >= 0x46) {
            phi_f4_2 =  phi_f4_2* 9.0f;
        } else {
            phi_f4_2 = phi_f4_2 * 4.5f;
        }
    }
    return phi_f4_2;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800F9844_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800F9B54_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800F9DD8_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FA210_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FA318_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FA3B8_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FA8C0_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FAE64_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FAEE4_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FAF64_HandcarHavoc);

void func_800FAF80_HandcarHavoc (s32 arg0) {
    func_800FAF9C_HandcarHavoc(arg0, 1);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FAF9C_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FB0EC_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FB5DC_HandcarHavoc);

void func_800FB7DC_HandcarHavoc(void) {
}

void func_800FB7E4_HandcarHavoc(omObjData* arg0) {
    omObjData* temp_a0;

    temp_a0 = D_800FF61C_HandcarHavoc[((unkGlobalStruct_00*) arg0->unk_50)->unk_B0];
    ((unkGlobalStruct_00*) temp_a0->unk_50)->unk_02 = 30;
    temp_a0->func_ptr = &func_800FB81C_HandcarHavoc;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FB81C_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FB994_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FBA80_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FBB78_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FBF5C_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FBFA0_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FC058_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FC0C8_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FC124_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FC1B4_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FC22C_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FC2A0_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FC338_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FC4B0_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FC7E0_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FC85C_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FCA58_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FCBA4_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FCCA4_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FCE3C_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FCFB4_HandcarHavoc);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2F_HandcarHavoc/20F570", func_800FCFFC_HandcarHavoc);
