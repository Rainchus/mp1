#include "common.h"
#include "28CFF0.h"

void func_800F65E0_BowserVisitYoshiBoard(void) {
    D_800F7620_BowserVisitYoshiBoard = D_800ED5DC;
    omInitObjMan(0x32, 0xA);
    func_800F744C_BowserVisitYoshiBoard();
    func_800F7264_BowserVisitYoshiBoard();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(func_800F67F0_BowserVisitYoshiBoard, 0x300U, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F7218_BowserVisitYoshiBoard);
    func_80060128(0x12);
    SetFadeInTypeAndTime(3, 0x10);
}

void func_800F66BC_BowserVisitYoshiBoard(Object* arg0) {
    D_800C34A4 = D_800F75F4_BowserVisitYoshiBoard;
    
    func_80025930(*D_800F7628_BowserVisitYoshiBoard->unk_3C->unk_40, 0x22000, 0x20000);
    func_80026B8C(*D_800F7628_BowserVisitYoshiBoard->unk_3C->unk_40, D_800F75F8_BowserVisitYoshiBoard, D_800F75FC_BowserVisitYoshiBoard, 2);
    
    if (D_800F384E == 0) {
        D_800F75F4_BowserVisitYoshiBoard += 39.0f;
        D_800F75F8_BowserVisitYoshiBoard = D_800F75F8_BowserVisitYoshiBoard + 0.05f;
        D_800F75FC_BowserVisitYoshiBoard = ((10.0f - D_800F75FC_BowserVisitYoshiBoard) / 30.0f) + D_800F75FC_BowserVisitYoshiBoard;
        if (D_800F75F8_BowserVisitYoshiBoard > 1.0f) {
            func_8003E664(D_800F7628_BowserVisitYoshiBoard);
            omDelObj(arg0);
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F67F0_BowserVisitYoshiBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F705C_BowserVisitYoshiBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F71CC_BowserVisitYoshiBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F7218_BowserVisitYoshiBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F7264_BowserVisitYoshiBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F7400_BowserVisitYoshiBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F744C_BowserVisitYoshiBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_4F_BowserVisitYoshiBoard/28CFF0", func_800F7500_BowserVisitYoshiBoard);
