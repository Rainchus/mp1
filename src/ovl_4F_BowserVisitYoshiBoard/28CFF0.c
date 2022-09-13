#include "common.h"
#include "28CFF0.h"

void func_800F65E0_28CFF0(void) {
    D_800F7620 = D_800ED5DD;
    func_8005CF30(0x32, 0xA);
    func_800F744C_28DE5C();
    func_800F7264_28DC74();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(func_800F67F0_28D200, 0x300U, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F7218_28DC28);
    func_80060128(0x12);
    SetFadeInTypeAndTime(3, 0x10);
}

void func_800F66BC_28D0CC(unk_Struct03* arg0) {
    D_800C34A4 = D_800F75F4;
    
    func_80025930(*D_800F7628->unk_3C->unk_40, 0x22000, 0x20000);
    func_80026B8C(*D_800F7628->unk_3C->unk_40, D_800F75F8, D_800F75FC, 2);
    
    if (D_800F384E == 0) {
        D_800F75F4 += 39.0f;
        D_800F75F8 = D_800F75F8 + 0.05f;
        D_800F75FC = ((10.0f - D_800F75FC) / 30.0f) + D_800F75FC;
        if (D_800F75F8 > 1.0f) {
            func_8003E664(D_800F7628);
            func_8005D718(arg0);
        }
    }
}

INCLUDE_ASM(s32, "ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F67F0_28D200);

INCLUDE_ASM(s32, "ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F705C_28DA6C);

INCLUDE_ASM(s32, "ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F71CC_28DBDC);

INCLUDE_ASM(s32, "ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F7218_28DC28);

INCLUDE_ASM(s32, "ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F7264_28DC74);

INCLUDE_ASM(s32, "ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F7400_28DE10);

INCLUDE_ASM(s32, "ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F744C_28DE5C);

INCLUDE_ASM(s32, "ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F7500_28DF10);
