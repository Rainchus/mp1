#include "common.h"
#include "spaces.h"

void func_800591E0_59DE0(void* arg0);
void func_80043460_44060(void);                                  /* extern */
void func_80045EE0_46AE0(void);                                  /* extern */
extern s32 D_800D86E4_D8774;
extern s16 D_800ECC20_ECCB0;
extern s16 D_800ED3C0_ED450;
extern s16 D_800EE986_EEA16;
extern s16 D_800F2CDC_F2D6C;
extern s16 D_800F3180_F3210;
extern s16 D_800F3298_F3328;
extern s16 D_800F37A8_F3838;
extern s16 D_800F37E8_F3878;
extern s32 D_800F3FF0_F4080;
extern s16 D_800F64C6_F6556;
extern s16 D_800F65B8_F6648;
extern s16 D_800F65D8_F6668;
extern s32 D_800C56D0_C62D0[];
extern s16 omovlhisidx;
extern s16 D_800D86B2_D8742;
extern omOvlHisData D_800D86B8_D8748[];
extern s16 D_800D86B0_D8740;
extern s16 D_800D86EC_D877C;
extern s16 D_800D86EE_D877E;
extern s16 D_800D86F0_D8780;
extern s16 D_800D86E0_D8770;
extern s16 D_800D86E2_D8772;
extern s16 D_800D86FA_D878A;
extern Vec3f D_800D86FC_D878C;
extern u16 D_800ED5C8_ED658;
extern s32 D_800D86F4_D8784;
extern s16 D_800D86F8_D8788;

void func_8003C2D0_3CED0(s32);
void func_800434E4_440E4(void);
void func_80045680_46280(void);
void func_80046720_47320(void);
void func_80053064_53C64(void);
void func_80053080_53C80(void);
void func_800532E0_53EE0(void);
void FreeSpaceTexturesWrapper(void);
void func_8003C30C_3CF0C(void);
void func_8003DADC_3E6DC(void);
void func_80043544_44144(void);
void func_80046760_47360(void);
void func_80053074_53C74(void);
void func_800532F4_53EF4(void);
void func_8004A510_4B110(void);
void func_8004A520_4B120(void);
void func_8004A7A4_4B3A4(void);
void func_8004A7DC_4B3DC(void);
void func_8004B5C4_4C1C4(f32);
f32 func_8004B5D0_4C1D0(void);
void func_8004B838_4C438(f32);
f32 func_8004B844_4C444(void);

void func_80056730_57330(s32 arg0, s16 arg1, s16 arg2) {
    omOvlHisData* history; //is this the correct struct??

    history = &D_800D86B8_D8748[D_800D86B2_D8742++];
    
    if (arg0 != -2) {
        if (arg0 == -1) {
            arg0 = omovlhis[omovlhisidx].overlayID;
        }
    } else {
        arg0 = D_800C56D0_C62D0[D_800ED5C2_ED652[0]];
    }
    
    history->overlayID = arg0;
    history->event = arg1;
    history->stat = arg2;
    
    if (D_800D86B2_D8742 >= 5) {
        D_800D86B2_D8742 = 4;
    }
}

INCLUDE_ASM("asm/nonmatchings/57330", func_800567D4_573D4);

void func_800568A4_574A4(void) {
    omOvlHisData* history;

    D_800D86E0_D8770 = 1;
    if (D_800D86B2_D8742 != 0) {
        history = &D_800D86B8_D8748[--D_800D86B2_D8742];
        omOvlCallEx(history->overlayID, history->event, history->stat);
        return;
    }
    if (D_800D86B0_D8740 != 0) {
        D_800D86E0_D8770 = 0;
        omOvlCallEx(D_800C56D0_C62D0[D_800ED5C2_ED652[0]], 2, 0x92);
        return;
    }
    
    ClearBoardFeatureFlag(0x2C);
    
    if (D_800D86E2_D8772 != 0) {
        SetBoardFeatureFlag(0x36);
    } else {
        ClearBoardFeatureFlag(0x36);
    }
    omOvlReturnEx(1);
}

void func_80056984_57584(void) {
    D_800D86B0_D8740 = 0;
}

s16 func_80056990_57590(void) {
    return D_800D86E0_D8770;
}

void func_8005699C_5759C(s32 arg0) {
    D_800D86B8_D8748[D_800D86B2_D8742].event = arg0;
    D_800D86B2_D8742++;
    if (D_800D86B2_D8742 >= 5) {
        D_800D86B2_D8742 = 4;
    }
    func_80056730_57330(-2, 3, 0x92);
    omOvlReturnEx(1);
}

void func_80056A08_57608(s32 arg0, s16 arg1, s32 arg2, s32 arg3) {
    LoadBackgroundData(&D_FE2310);
    if (arg0 >= 0) {
        LoadBackgroundIndex(arg0);
    }

    LoadInitialSpaceTextures();

    if (arg1 >= 0) {
        LoadBoardSpaces(0xA, arg1);
    }

    func_8003C2D0_3CED0(arg2);
    func_8003DAA8_3E6A8();
    func_80053020_53C20();
    func_80053064_53C64();
    func_800532E0_53EE0();
    func_800544E4_550E4();
    func_80045680_46280();
    func_800434E4_440E4();
    func_80046720_47320();
    func_8003FCD4_408D4();
    func_8006CEA0_6DAA0();
    D_800D86EC_D877C = -1;
    D_800D86EE_D877E = 0;
    D_800D86F0_D8780 = 0;
    func_80053080_53C80();
}

void func_80056AF4_576F4(void) {
    func_80041370_41F70();
    func_80046760_47360();
    func_80043544_44144();
    func_800456C4_462C4();
    func_80054654_55254();
    func_80070ED4_71AD4();
    func_800532F4_53EF4();
    func_80053074_53C74();
    func_8003DADC_3E6DC();
    func_8003C30C_3CF0C();
    FreeBoardSpaces();
    FreeSpaceTexturesWrapper();
    func_8004A140_4AD40();
    func_80049F0C_4AB0C();
}

void func_80056B78_57778(void) {
    playerMain* temp_v0;
    GameStatus* gameStatus = &D_800ED5C0_ED650;
    s32 i;

    D_800F65B8_F6648 = 0;
    D_800F37A8_F3838 = 0;
    D_800EE986_EEA16 = 0;
    D_800F64C6_F6556 = 0;
    D_800F3298_F3328 = 0;
    D_800F3180_F3210 = 0;
    D_800ECC20_ECCB0 = 0;
    D_800ED3C0_ED450 = 0;
    D_800F65D8_F6668 = 0;
    D_800F37E8_F3878 = 0;
    D_800D86E4_D8774 = 0;
    D_800F3FF0_F4080 = 0;
    D_800F2CDC_F2D6C = -1;
    func_80043460_44060();
    func_80045EE0_46AE0();
    if (IsFlagSet(0x41) == 0) {
        gameStatus->chosenStarSpaceIndex = 0;
        gameStatus->currentTurn = 1;
        gameStatus->unk_1C = 0;
        gameStatus->unk_1E = 0;
        if (IsFlagSet(0x2C) == 0) {
            switch (gameStatus->unk_04) {
                case 0:
                    gameStatus->maxTurns = 20;
                    break;
                case 1:
                    gameStatus->maxTurns = 35;
                    break;
                case 2:
                    gameStatus->maxTurns = 50;
                    break;
            }
        } else {
            switch (gameStatus->unk_04) {
                case 0:
                    gameStatus->maxTurns = 10;
                    break;
                case 1:
                    gameStatus->maxTurns = 20;
                    break;
                case 2:
                    gameStatus->maxTurns = 30;
                    break;
            }            
        }
        gameStatus->unk_22 = 0;
        gameStatus->unk_23 = 0;
        gameStatus->unk_24 = 1;
        
        for (i = 0; i < 4; i++) {
            temp_v0 = GetPlayerStruct(i);
            temp_v0->starAmount = 0;
            temp_v0->poisonedFlag = 0;
            temp_v0->totalMinigameCoins = 0;
            temp_v0->coinPeak = 0;
            temp_v0->happeningSpacesTotal = 0;
            temp_v0->redSpacesTotal = 0;
            temp_v0->blueSpacesTotal = 0;
            temp_v0->minigameSpacesTotal = 0;
            temp_v0->chanceSpacesTotal = 0;
            temp_v0->mushroomSpacesTotal = 0;
            temp_v0->bowserSpacesTotal = 0;
        }
        
        for (i = 0; i < ARRAY_COUNT(D_800ED100_ED190.boardRam); i++) {
            D_800ED100_ED190.boardRam[i] = 0;
        }

        ClearBoardFeatureFlag(0x46);
        ClearBoardFeatureFlag(0x47);
        ClearBoardFeatureFlag(0x48);
        ClearBoardFeatureFlag(0x49);
        ClearBoardFeatureFlag(0x4A);
        ClearBoardFeatureFlag(0x4B);
        ClearBoardFeatureFlag(0x4C);
        ClearBoardFeatureFlag(0x4F);
        ClearBoardFeatureFlag(0x50);
        ClearBoardFeatureFlag(0x51);
        ClearBoardFeatureFlag(0x52);
        ClearBoardFeatureFlag(0x53);
        ClearBoardFeatureFlag(0x54);
        ClearBoardFeatureFlag(0x55);
        ClearBoardFeatureFlag(0x56);
        ClearBoardFeatureFlag(0x57);
        ClearBoardFeatureFlag(0x58);
        ClearBoardFeatureFlag(0x59);
        ClearBoardFeatureFlag(0x5A);
        ClearBoardFeatureFlag(0x5B);
        ClearBoardFeatureFlag(0x5C);
        ClearBoardFeatureFlag(0x5D);
        ClearBoardFeatureFlag(0x42);
        ClearBoardFeatureFlag(0x43);
        ClearBoardFeatureFlag(0x4D);
        ClearBoardFeatureFlag(0x44);
        ClearBoardFeatureFlag(0x4E);
        ClearBoardFeatureFlag(0x41);
    }
}


void func_80056E30_57A30(s16 arg0) {
    D_800D86FA_D878A = arg0;
}

s16 func_80056E3C_57A3C(void) {
    return D_800D86FA_D878A;
}

void func_80056E48_57A48(Vec3f* arg0) {
    D_800D86FC_D878C = *arg0;
}

void func_80056E6C_57A6C(void) {
    Vec2f sp10;
    while (1) {
        switch (D_800D86FA_D878A) {
        case 1:
            func_8004B5DC_4C1DC(&gPlayers[D_800ED5DC_ED66C].playerObj->coords);
            break;
        case 2:
            func_8004B5DC_4C1DC(&D_800D86FC_D878C);
            break;
        case 3:
            func_8004B6D8_4C2D8(&sp10);
            func_8004B61C_4C21C(&sp10);
            break;
        }
        HuPrcVSleep();    
    }
}

void func_80056F40_57B40(void) {
    GameStatus* gameStatus = &D_800ED5C0_ED650;
    
    if (++D_800ED5DC_ED66C >= 4) {
        gameStatus->unk_1C = 0;
        gameStatus->currentTurn++;
        if (gameStatus->currentTurn >= 0x63) {
            gameStatus->currentTurn = 0x63;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/57330", func_80056FA8_57BA8);

INCLUDE_ASM("asm/nonmatchings/57330", func_8005700C_57C0C);

void func_80057208_57E08(s16 arg0) {
    switch (--arg0) {
    case 3:
    case 5:
        PlaySound(0x4E);
        break;
    case 0:
        PlaySound(0x30);
        break;
    case 1:
        PlaySound(0x31);
        break;
    case 8:
        PlaySound(0x61);
        break;
    case 2:
    case 7:
        PlaySound(0x60);
        break;
    case 4:
        PlaySound(0x5B);
        break;
    }
}

INCLUDE_ASM("asm/nonmatchings/57330", func_8005727C_57E7C);

void func_800582E4_58EE4(void) {
    HuPrcVSleep();
    func_8004A520_4B120();
    func_8004B5C4_4C1C4(3.0f);
    func_800591E0_59DE0(gPlayers[D_800ED5DC_ED66C].flags); //TODO: what arg type should this take?
    func_80056AF4_576F4();
    omOvlReturnEx(1);
    omOvlKill();
    HuPrcVSleep();
}

INCLUDE_ASM("asm/nonmatchings/57330", func_8005835C_58F5C);

INCLUDE_ASM("asm/nonmatchings/57330", func_800584F0_590F0);

void ExecBoardScene(board_overlay_entrypoint* arg0, s16 arg1) {
    if (arg0->index < 0) {
        return;
    }
    for (; arg0->index >= 0; arg0++) {
        if (arg0->index == arg1) {
            arg0->fn();
        }
    }       
}

void func_800587BC_593BC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    D_800D86F4_D8784 = arg0;
    D_800D86F8_D8788 = arg1;
    D_800D86EC_D877C = 8;
    D_800D86EE_D877E = arg2;
    D_800D86F0_D8780 = arg3;
}

void func_800587EC_593EC(s32 arg0, s16 arg1, s16 arg2) {
    func_800587BC_593BC(arg0, arg1,  arg2, 0);
}

void func_80058818_59418(s16 arg0, s16 arg1) {
    D_800D86EC_D877C = 0x10;
    D_800D86EE_D877E = arg0;
    D_800D86F0_D8780 = arg1;
    func_80056984_57584();
}

void func_8005884C_5944C(Vec3f *coords) {
    f32 temp_f20;
    f32 temp_f22;

    func_8004A7DC_4B3DC();
    func_8004A7A4_4B3A4();
    temp_f22 = func_8004B844_4C444();
    func_8004B838_4C438(-1.0f);
    temp_f20 = func_8004B5D0_4C1D0();
    func_8004B5C4_4C1C4(1.0f);
    func_8004A510_4B110();

    if (coords == NULL) {
        coords = &GetPlayerStruct(-1)->playerObj->coords;
    }

    func_8004B5DC_4C1DC(coords);
    HuPrcVSleep();
    func_8004A520_4B120();
    func_8004B5C4_4C1C4(temp_f20);
    func_8004B838_4C438(temp_f22);
}
