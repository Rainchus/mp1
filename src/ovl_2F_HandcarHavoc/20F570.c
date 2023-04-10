#include "HandcarHavoc.h"

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800F65E0_20F570);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800F6BBC_20FB4C);

void func_800F72B0_210240(unkObjectStruct* arg0) {
    D_80101C8A = 0;
    D_800FF628 = 0;
    D_800FF624 = 0;
    D_800FF400 = 0;
    D_80101C90 = -1;
    D_80101CA0 = 0;
    D_80101CA8 = 0;
    D_800FF5D2 = 30;
    D_800FF5D4 = 300;
    arg0->func_ptr = &func_800F7314_2102A4;
}

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800F7314_2102A4);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800F757C_21050C);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800F7998_210928);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800F7DD8_210D68);

void func_800F7E8C_210E1C(s32 arg0) {
    func_800F7F04_210E94(arg0, 0, 9870.0f, 0, 12375.0f);
}

void func_800F7EC8_210E58(s32 arg0) {
    func_800F7F04_210E94(arg0, 1, 9870.0f, 0, 12375.0f);
}

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800F7F04_210E94);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800F8730_2116C0);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800F8E00_211D90);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800F917C_21210C);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800F93DC_21236C);

f32 func_800F9774_212704(s8 arg0) {
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

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800F9844_2127D4);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800F9B54_212AE4);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800F9DD8_212D68);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FA210_2131A0);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FA318_2132A8);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FA3B8_213348);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FA8C0_213850);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FAE64_213DF4);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FAEE4_213E74);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FAF64_213EF4);

void func_800FAF80_213F10 (s32 arg0) {
    func_800FAF9C_213F2C(arg0, 1);
}

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FAF9C_213F2C);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FB0EC_21407C);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FB5DC_21456C);

void func_800FB7DC_21476C(void) {
}

void func_800FB7E4_214774(unkObjectStruct* arg0) {
    unkObjectStruct* temp_a0;

    temp_a0 = D_800FF61C[arg0->unk_50->unk_B0];
    temp_a0->unk_50->unk_00.unsigned16[1] = 30;
    temp_a0->func_ptr = &func_800FB81C_2147AC;
}

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FB81C_2147AC);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FB994_214924);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FBA80_214A10);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FBB78_214B08);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FBF5C_214EEC);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FBFA0_214F30);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FC058_214FE8);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FC0C8_215058);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FC124_2150B4);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FC1B4_215144);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FC22C_2151BC);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FC2A0_215230);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FC338_2152C8);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FC4B0_215440);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FC7E0_215770);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FC85C_2157EC);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FCA58_2159E8);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FCBA4_215B34);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FCCA4_215C34);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FCE3C_215DCC);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FCFB4_215F44);

INCLUDE_ASM(s32, "ovl_2F_HandcarHavoc/20F570", func_800FCFFC_215F8C);
