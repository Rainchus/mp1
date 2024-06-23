#include "MusicalMushroom.h"

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800F9660_11F890);

void func_800F9D70_11FFA0(omObjData* arg0) {
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
    arg0->unk_50 = HuMemTempDirectMalloc(sizeof(unkGlobalStruct_02), 31000);
    temp_v0 = arg0->unk_50;
    func_8009B770(temp_v0, 0, sizeof(unkGlobalStruct_02));
    arg0->func_ptr = &func_800F9660_11F890;
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
    
    if (temp_v1_2 < 0) {
        phi_f2 += D_800FB580;
    }
    
    D_800FB678 = phi_f2;
    temp_v0->unk_04 = 1;
    func_80008FB8(arg0, 0.5f);
    func_80008FC4(arg0, 20.0f);
    temp_v0->unk_05 = 0;
}

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800F9EFC_12012C);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800F9FE0_120210);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FA0A0_1202D0);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FA0B0_1202E0);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FA170_1203A0);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FA2F4_120524);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FA7C8_1209F8);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FA914_120B44);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FAAA0_120CD0);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FABE8_120E18);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FAC38_120E68);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FAC58_120E88);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FACA4_120ED4);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FACF4_120F24);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FAD50_120F80);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FADAC_120FDC);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FAE08_121038);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FAE74_1210A4);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FAEE0_121110);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FAF4C_12117C);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FAFB8_1211E8);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FB028_121258);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FB098_1212C8);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FB108_121338);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FB180_1213B0);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FB1F0_121420);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FB240_121470);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FB290_1214C0);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FB2E4_121514);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FB338_121568);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FB384_1215B4);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FB3D0_121600);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FB41C_12164C);

INCLUDE_ASM(const s32, "overlays/ovl_0B_MusicalMushroom/11F890", func_800FB468_121698);
