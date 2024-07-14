#include "common.h"
#include "spaces.h"

void func_800591E0(void* arg0);
void func_80043460(void);                                  /* extern */
void func_80045EE0(void);                                  /* extern */
extern s32 D_800D86E4;
extern s16 D_800ECC20;
extern s16 D_800ED3C0;
extern s16 D_800EE986;
extern s16 D_800F2CDC;
extern s16 D_800F3180;
extern s16 D_800F3298;
extern s16 D_800F37A8;
extern s16 D_800F37E8;
extern s32 D_800F3FF0;
extern s16 D_800F64C6;
extern s16 D_800F65B8;
extern s16 D_800F65D8;
extern s32 D_800C56D0[];
extern s16 omovlhisidx;
extern s16 D_800D86B2;
extern omOvlHisData D_800D86B8[];
extern s16 D_800D86B0;
extern s16 D_800D86EC;
extern s16 D_800D86EE;
extern s16 D_800D86F0;
extern s16 D_800D86E0;
extern s16 D_800D86E2;
extern s16 D_800D86FA;
extern Vec3f D_800D86FC;
extern u16 D_800ED5C8;
extern s32 D_800D86F4;
extern s16 D_800D86F8;

void func_8003C2D0(s32);
void func_800434E4(void);
void func_80045680(void);
void func_80046720(void);
void func_80053064(void);
void func_80053080(void);
void func_800532E0(void);
void FreeSpaceTexturesWrapper(void);
void func_8003C30C(void);
void func_8003DADC(void);
void func_80043544(void);
void func_80046760(void);
void func_80053074(void);
void func_800532F4(void);
void func_8004A510(void);
void func_8004A520(void);
void func_8004A7A4(void);
void func_8004A7DC(void);
void func_8004B5C4(f32);
f32 func_8004B5D0(void);
void func_8004B838(f32);
f32 func_8004B844(void);

void func_80056730(s32 arg0, s16 arg1, s16 arg2) {
    omOvlHisData* history; //is this the correct struct??

    history = &D_800D86B8[D_800D86B2++];
    
    if (arg0 != -2) {
        if (arg0 == -1) {
            arg0 = omovlhis[omovlhisidx].overlayID;
        }
    } else {
        arg0 = D_800C56D0[D_800ED5C2[0]];
    }
    
    history->overlayID = arg0;
    history->event = arg1;
    history->stat = arg2;
    
    if (D_800D86B2 >= 5) {
        D_800D86B2 = 4;
    }
}

INCLUDE_ASM("asm/nonmatchings/57330", func_800567D4);

void func_800568A4(void) {
    omOvlHisData* history;

    D_800D86E0 = 1;
    if (D_800D86B2 != 0) {
        history = &D_800D86B8[--D_800D86B2];
        omOvlCallEx(history->overlayID, history->event, history->stat);
        return;
    }
    if (D_800D86B0 != 0) {
        D_800D86E0 = 0;
        omOvlCallEx(D_800C56D0[D_800ED5C2[0]], 2, 0x92);
        return;
    }
    
    ClearBoardFeatureFlag(0x2C);
    
    if (D_800D86E2 != 0) {
        SetBoardFeatureFlag(0x36);
    } else {
        ClearBoardFeatureFlag(0x36);
    }
    omOvlReturnEx(1);
}

void func_80056984(void) {
    D_800D86B0 = 0;
}

s16 func_80056990(void) {
    return D_800D86E0;
}

void func_8005699C(s32 arg0) {
    D_800D86B8[D_800D86B2].event = arg0;
    D_800D86B2++;
    if (D_800D86B2 >= 5) {
        D_800D86B2 = 4;
    }
    func_80056730(-2, 3, 0x92);
    omOvlReturnEx(1);
}

void func_80056A08(s32 arg0, s16 arg1, s32 arg2, s32 arg3) {
    LoadBackgroundData(FE2310_ROM_START);
    if (arg0 >= 0) {
        LoadBackgroundIndex(arg0);
    }

    LoadInitialSpaceTextures();

    if (arg1 >= 0) {
        LoadBoardSpaces(0xA, arg1);
    }

    func_8003C2D0(arg2);
    func_8003DAA8();
    func_80053020();
    func_80053064();
    func_800532E0();
    func_800544E4();
    func_80045680();
    func_800434E4();
    func_80046720();
    func_8003FCD4();
    func_8006CEA0();
    D_800D86EC = -1;
    D_800D86EE = 0;
    D_800D86F0 = 0;
    func_80053080();
}

void func_80056AF4(void) {
    func_80041370();
    func_80046760();
    func_80043544();
    func_800456C4();
    func_80054654();
    func_80070ED4();
    func_800532F4();
    func_80053074();
    func_8003DADC();
    func_8003C30C();
    FreeBoardSpaces();
    FreeSpaceTexturesWrapper();
    func_8004A140();
    func_80049F0C();
}

void func_80056B78(void) {
    playerMain* temp_v0;
    GameStatus* gameStatus = &D_800ED5C0;
    s32 i;

    D_800F65B8 = 0;
    D_800F37A8 = 0;
    D_800EE986 = 0;
    D_800F64C6 = 0;
    D_800F3298 = 0;
    D_800F3180 = 0;
    D_800ECC20 = 0;
    D_800ED3C0 = 0;
    D_800F65D8 = 0;
    D_800F37E8 = 0;
    D_800D86E4 = 0;
    D_800F3FF0 = 0;
    D_800F2CDC = -1;
    func_80043460();
    func_80045EE0();
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
        
        for (i = 0; i < MAX_PLAYERS; i++) {
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
        
        for (i = 0; i < ARRAY_COUNT(D_800ED100.boardRam); i++) {
            D_800ED100.boardRam[i] = 0;
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


void func_80056E30(s16 arg0) {
    D_800D86FA = arg0;
}

s16 func_80056E3C(void) {
    return D_800D86FA;
}

void func_80056E48(Vec3f* arg0) {
    D_800D86FC = *arg0;
}

void func_80056E6C(void) {
    Vec2f sp10;
    while (1) {
        switch (D_800D86FA) {
        case 1:
            func_8004B5DC(&gPlayers[D_800ED5DC].playerObj->coords);
            break;
        case 2:
            func_8004B5DC(&D_800D86FC);
            break;
        case 3:
            func_8004B6D8(&sp10);
            func_8004B61C(&sp10);
            break;
        }
        HuPrcVSleep();    
    }
}

void func_80056F40(void) {
    GameStatus* gameStatus = &D_800ED5C0;
    
    if (++D_800ED5DC >= 4) {
        gameStatus->unk_1C = 0;
        gameStatus->currentTurn++;
        if (gameStatus->currentTurn >= 0x63) {
            gameStatus->currentTurn = 0x63;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/57330", func_80056FA8);

INCLUDE_ASM("asm/nonmatchings/57330", func_8005700C);

void func_80057208(s16 arg0) {
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

INCLUDE_ASM("asm/nonmatchings/57330", func_8005727C);

void func_800582E4(void) {
    HuPrcVSleep();
    func_8004A520();
    func_8004B5C4(3.0f);
    func_800591E0(gPlayers[D_800ED5DC].flags); //TODO: what arg type should this take?
    func_80056AF4();
    omOvlReturnEx(1);
    omOvlKill();
    HuPrcVSleep();
}

INCLUDE_ASM("asm/nonmatchings/57330", func_8005835C);

INCLUDE_ASM("asm/nonmatchings/57330", func_800584F0);

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

void func_800587BC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    D_800D86F4 = arg0;
    D_800D86F8 = arg1;
    D_800D86EC = 8;
    D_800D86EE = arg2;
    D_800D86F0 = arg3;
}

void func_800587EC(s32 arg0, s16 arg1, s16 arg2) {
    func_800587BC(arg0, arg1,  arg2, 0);
}

void func_80058818(s16 arg0, s16 arg1) {
    D_800D86EC = 0x10;
    D_800D86EE = arg0;
    D_800D86F0 = arg1;
    func_80056984();
}

void func_8005884C(Vec3f *coords) {
    f32 temp_f20;
    f32 temp_f22;

    func_8004A7DC();
    func_8004A7A4();
    temp_f22 = func_8004B844();
    func_8004B838(-1.0f);
    temp_f20 = func_8004B5D0();
    func_8004B5C4(1.0f);
    func_8004A510();

    if (coords == NULL) {
        coords = &GetPlayerStruct(-1)->playerObj->coords;
    }

    func_8004B5DC(coords);
    HuPrcVSleep();
    func_8004A520();
    func_8004B5C4(temp_f20);
    func_8004B838(temp_f22);
}
