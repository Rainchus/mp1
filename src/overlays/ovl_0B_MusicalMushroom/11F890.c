#include "MusicalMushroom.h"

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800F9660_MusicalMushroom);

void func_800F9D70_MusicalMushroom(omObjData* arg0) {
    s32 temp_v1_2;
    u32 temp_v1;
    u8 temp_s0;
    unkGlobalStruct_02* temp_v0;
    u32 phi_s2;
    u32 phi_s1;
    f64 phi_f2;
    s32 zero = 0;

    arg0->model[0] = func_800174C0(0x1D0000, 0x299);
    arg0->trans.z = zero;
    arg0->trans.y = zero;
    arg0->trans.x = zero;
    arg0->unk_50 = func_80023684(sizeof(unkGlobalStruct_02), 31000);
    temp_v0 = arg0->unk_50;
    func_8009B770(temp_v0, 0, sizeof(unkGlobalStruct_02));
    arg0->func_ptr = &func_800F9660_MusicalMushroom;
    temp_v1 = rand8() % 100;
    phi_s2 = 140;
    
    if (temp_v1 < 20) {
        phi_s1 = 200;
    } else {
        phi_s2 = 200;
        if (temp_v1 < 80) {
            phi_s1 = 270;
        } else {
            phi_s2 = 270;
            phi_s1 = 360;
        }
    }
    
    temp_s0 = rand8();
    temp_v1_2 = (temp_s0 << 8) | rand8();
    temp_v1_2 = phi_s2 + (temp_v1_2 % (phi_s1 - phi_s2)); //phi_s1 - phi_s2 will always be 60, 70, or 90
    phi_f2 = temp_v1_2;
    //TODO: this should be implicit by the compiler
    if (temp_v1_2 < 0) {
        phi_f2 += 4294967296.0;
    }
    
    D_800FB678_MusicalMushroom = phi_f2;
    temp_v0->unk_04 = 1;
    func_80008FB8(arg0, 0.5f);
    func_80008FC4(arg0, 20.0f);
    temp_v0->unk_05 = 0;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800F9EFC_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800F9FE0_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FA0A0_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FA0B0_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FA170_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FA2F4_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FA7C8_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FA914_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FAAA0_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FABE8_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FAC38_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FAC58_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FACA4_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FACF4_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FAD50_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FADAC_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FAE08_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FAE74_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FAEE0_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FAF4C_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FAFB8_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FB028_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FB098_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FB108_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FB180_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FB1F0_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FB240_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FB290_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FB2E4_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FB338_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FB384_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FB3D0_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FB41C_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", func_800FB468_MusicalMushroom);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11F890", D_800FB588_MusicalMushroom);
