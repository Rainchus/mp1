#include "common.h"
#include "2872A0.h"

void func_800F65E0_GoombaCoinStealPeachBoard(void) {
    D_800F7BE0_GoombaCoinStealPeachBoard = D_800ED5DC;
    omInitObjMan(0x32, 0xA);
    func_800F7A00_GoombaCoinStealPeachBoard();
    func_800F77D0_GoombaCoinStealPeachBoard();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(&func_800F6CB0_GoombaCoinStealPeachBoard, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F7688_GoombaCoinStealPeachBoard);
    if (D_800C597A != 0) {
        SetFadeInTypeAndTime(6, 8);
    } else {
        SetFadeInTypeAndTime(1, 16);
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_4A_GoombaCoinStealPeachBoard/2872A0", func_800F66D0_GoombaCoinStealPeachBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_4A_GoombaCoinStealPeachBoard/2872A0", func_800F68B8_GoombaCoinStealPeachBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_4A_GoombaCoinStealPeachBoard/2872A0", func_800F6AE0_GoombaCoinStealPeachBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_4A_GoombaCoinStealPeachBoard/2872A0", func_800F6BC4_GoombaCoinStealPeachBoard);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_4A_GoombaCoinStealPeachBoard/2872A0", D_800F7BD0_GoombaCoinStealPeachBoard);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_4A_GoombaCoinStealPeachBoard/2872A0", func_800F6CB0_GoombaCoinStealPeachBoard); //large

void func_800F7610_GoombaCoinStealPeachBoard(void) {
    if (func_80072718() == 0) {
        func_800F7AA8_GoombaCoinStealPeachBoard();
        func_800F7928_GoombaCoinStealPeachBoard();
        func_80054654();
        func_80070ED4();
        if (D_800F7B00_GoombaCoinStealPeachBoard == 0) {
            omOvlReturnEx(1);
            return;
        }
        func_8004F284();
        func_8004F28C(0x4A, 1);
    }
}

void func_800F7688_GoombaCoinStealPeachBoard(omObjData* arg0) {
    if (D_800F5144 != 0) {
        if (D_800F7B00_GoombaCoinStealPeachBoard != 0) {
            func_800726AC(6, 8);
        } else {
            func_800726AC(1, 16);
        }
        arg0->func_ptr = &func_800F7610_GoombaCoinStealPeachBoard;
    }
}


void func_800F76E8_GoombaCoinStealPeachBoard(void) {
    void* temp_s0;

    D_800F7BEC_GoombaCoinStealPeachBoard = func_80064EF4(1, 5);
    temp_s0 = ReadMainFS(0xA0101);
    D_800F7BF0_GoombaCoinStealPeachBoard = func_800678A4(temp_s0);
    FreeMainFS(temp_s0);
    func_80067208(D_800F7BEE_GoombaCoinStealPeachBoard[0], 0, D_800F7BF2_GoombaCoinStealPeachBoard, 0);
    func_80067384(D_800F7BEE_GoombaCoinStealPeachBoard[0], 0, 0x47F4);
    func_800674BC(D_800F7BEE_GoombaCoinStealPeachBoard[0], 0, 0x1000);
    func_80066DC4(D_800F7BEE_GoombaCoinStealPeachBoard[0], 0, 0xA0, 0x78);
}

void func_800F77A4_GoombaCoinStealPeachBoard(void) {
    func_80064D38(D_800F7BEE_GoombaCoinStealPeachBoard[0]);
    func_80067704(D_800F7BF2_GoombaCoinStealPeachBoard);
}

void func_800F77D0_GoombaCoinStealPeachBoard(void) {
    func_8003DAA8();
    func_8004F2AC();
    func_8004F548();
    D_800F7BE4_GoombaCoinStealPeachBoard = CreateObject(0xB, NULL);

    if (D_800C597A == 0) {
        D_800F7BE4_GoombaCoinStealPeachBoard->coords.x = D_800F7B04_GoombaCoinStealPeachBoard.x;
        D_800F7BE4_GoombaCoinStealPeachBoard->coords.y = D_800F7B04_GoombaCoinStealPeachBoard.y;
        D_800F7BE4_GoombaCoinStealPeachBoard->coords.z = D_800F7B04_GoombaCoinStealPeachBoard.z;
    } else {
        D_800F7BE4_GoombaCoinStealPeachBoard->coords.x = -55.0f;
        D_800F7BE4_GoombaCoinStealPeachBoard->coords.y = D_800F7B04_GoombaCoinStealPeachBoard.y;
        D_800F7BE4_GoombaCoinStealPeachBoard->coords.z = D_800F7B04_GoombaCoinStealPeachBoard.z;
    }

    D_800F7BE8_GoombaCoinStealPeachBoard = CreateObject(func_80052F04(D_800F7BE0_GoombaCoinStealPeachBoard), D_800F7B88_GoombaCoinStealPeachBoard[gPlayers[D_800F7BE0_GoombaCoinStealPeachBoard].characterID]);
    D_800F7BE8_GoombaCoinStealPeachBoard->coords.x = D_800F7B1C_GoombaCoinStealPeachBoard.x;
    D_800F7BE8_GoombaCoinStealPeachBoard->coords.y = D_800F7B1C_GoombaCoinStealPeachBoard.y;
    D_800F7BE8_GoombaCoinStealPeachBoard->coords.z = D_800F7B1C_GoombaCoinStealPeachBoard.z;
    func_8004CCD0(&D_800F7BE8_GoombaCoinStealPeachBoard->coords, &D_800F7BE4_GoombaCoinStealPeachBoard->coords, &D_800F7BE8_GoombaCoinStealPeachBoard->unk_18);

    if (D_800C597A != 0) {
        func_8004EE14(0, &D_800F7BE8_GoombaCoinStealPeachBoard->coords, 1, D_800F7BE4_GoombaCoinStealPeachBoard);
    }
}

void func_800F7928_GoombaCoinStealPeachBoard(void) {
    s32 i;
    
    DestroyObject(D_800F7BE4_GoombaCoinStealPeachBoard);
    
    if (D_800F7AE0_GoombaCoinStealPeachBoard != NULL) {
        DestroyObject(D_800F7AE0_GoombaCoinStealPeachBoard);
    }
    
    if (D_800F7AE4_GoombaCoinStealPeachBoard != NULL) {
        DestroyObject(D_800F7AE4_GoombaCoinStealPeachBoard);
    }
    
    for (i = 0; i < 3; i++) {
        if (D_800F7AE8_GoombaCoinStealPeachBoard[i] != NULL) {
            DestroyObject(D_800F7AE8_GoombaCoinStealPeachBoard[i]);
        }
        
        if (D_800F7AF4_GoombaCoinStealPeachBoard[i] != 0) {
            omDelObj(D_800F7AF4_GoombaCoinStealPeachBoard[i]);
        }
    }

    DestroyObject(D_800F7BE8_GoombaCoinStealPeachBoard);
    func_8004F2EC();
    func_8004F5F0();
}

void func_800F7A00_GoombaCoinStealPeachBoard(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(FE2310_ROM_START);
    LoadBackgroundIndex(9);
    func_800F76E8_GoombaCoinStealPeachBoard();
}

void func_800F7AA8_GoombaCoinStealPeachBoard(void) {
    func_8004A140();
    func_80049F0C();
    func_800F77A4_GoombaCoinStealPeachBoard();
}
