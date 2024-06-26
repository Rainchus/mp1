#include "common.h"
#include "engine/process.h"
#include "spaces.h"

typedef struct unkProcessUserDataStruct {
    Vec3f unk_00;
    Vec3f unk_0C;
    Vec3f* unk_18;
    union {
        f32 floatUnk1C;
        s32 signed32Unk1C;
    } unk_1C;
} unkProcessUserDataStruct;

extern s8 D_800F3843_F38D3[];

void func_8004CB70_4D770(s16 arg0, s16 arg1, Vec3f* arg2) {
    SpaceData* temp_v0;

    temp_v0 = GetSpaceData(arg1);
    arg2->x = temp_v0->coords.x;
    arg2->y = temp_v0->coords.y;
    arg2->z = temp_v0->coords.z;
    if (arg0 != -1) {
        if (PlayerIsCurrent(arg0) == 0) {
            arg2->x = arg2->x + D_800C51C0_C5DC0[arg0].x;
            arg2->z = arg2->z + D_800C51C0_C5DC0[arg0].y;
        }
    }
}

void func_8004CC14_4D814(s16 arg0, s16 arg1, Vec3f* arg2) {
    SpaceData* space;

    space = GetSpaceData(arg1);
    arg2->x = (space->coords.x + D_800C51E0_C5DE0[arg0].x);
    arg2->y = space->coords.y;
    arg2->z = (space->coords.z + D_800C51E0_C5DE0[arg0].y);
}

void func_8004CC8C_4D88C(s16 arg0, s16 arg1) {
    func_8004CB70_4D770(arg0, arg1, &gPlayers[arg0].playerObj->coords);
}

void func_8004CCD0_4D8D0(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2) {
    func_800A0E80_A1A80(arg2, arg1, arg0);
    func_8003D408_3E008(arg2);
}

void func_8004CD08_4D908(s16 arg0, Vec3f* arg1) {
    Object* playerObject;

    playerObject = GetPlayerStruct(arg0)->playerObj;
    func_8004CCD0_4D8D0(&playerObject->coords, arg1, &playerObject->unk_18);
}

void func_8004CD48_4D948(Object* arg0, s16 arg1) {
    func_8004CCD0_4D8D0(&arg0->coords, &GetSpaceData(arg1)->coords, &arg0->unk_18);
}

void func_8004CD84_4D984(Vec3f* arg0) {
    arg0->x = 0.0f;
    arg0->y = 0.0f;
    arg0->z = 1.0f;
}

void func_8004CDA0_4D9A0(s16 arg0) {
    func_8004CD84_4D984(&GetPlayerStruct(arg0)->playerObj->unk_18);
}

void func_8004CDCC_4D9CC(Object* unk) {
    Vec3f sp10;
    Vec3f sp20;
    Vec3f* temp_s2;

    temp_s2 = &unk->coords;
    func_800A0E80_A1A80(&sp10, &D_800C3110_C3D10->pos, temp_s2);
    func_800A0D00_A1900(&sp20, sp10.x, 0.0f, sp10.z);
    unk->unk_3C->unk_24 = -func_8003D8CC_3E4CC(&sp10, &sp20);
    func_8004CCD0_4D8D0(temp_s2, &D_800C3110_C3D10->pos, &sp10);
    unk->unk_3C->unk28 = func_8003D2B0_3DEB0(&sp10);
    unk->unk_3C->unk_2C = 0.0f;
}

void SwapPlayerLocationData(s16 arg0, s16 arg1) {
    playerMain* player1;
    playerMain* player2;
    u16 temp;

    player1 = GetPlayerStruct(arg0);
    player2 = GetPlayerStruct(arg1);
    temp = player1->curChainIndex;
    player1->curChainIndex = player2->curChainIndex;
    player2->curChainIndex = temp;
    temp = player1->curSpaceIndex;
    player1->curSpaceIndex = player2->curSpaceIndex;
    player2->curSpaceIndex = temp;
    temp = player1->nextChainIndex;
    player1->nextChainIndex = player2->nextChainIndex;
    player2->nextChainIndex = temp;
    temp = player1->nextSpaceIndex;
    player1->nextSpaceIndex = player2->nextSpaceIndex;
    player2->nextSpaceIndex = temp;
}

// INCLUDE_ASM("asm/nonmatchings/4D770", SetPlayerLandedSpaceType);
void SetPlayerLandedSpaceType(s16 playerIndex, s16 spaceType) {
    playerMain* player = GetPlayerStruct(playerIndex);
    s32 spaceTemp;
    
    switch(--spaceType) {
        case 0:
        case 2:
        case 5:
        case 6:
        case 7:
            spaceTemp = 1;
            break;
        case 1:
        case 8:
            spaceTemp = 2;
            break;

        case 3:
            spaceTemp = 4;
            break;
        default:
            spaceTemp = 0;
            break;
    }
    
    player->turn_status = spaceTemp;
}

s16 GetSumOfPlayerStars(void) {
    s32 starTotal = 0;
    s32 i;

    for (i = 0; i < 4; i++) {
        starTotal += GetPlayerStruct(i)->starAmount;
    }
    
    return starTotal;
}

u8 RNGPercentChance(s8 arg0) {
    return arg0 > ((rand8() * 99) >> 8);
}

s16 GetTurnsElapsed(void) {
    GameStatus* gameStatus = &D_800ED5C0_ED650;
    return gameStatus->maxTurns - gameStatus->currentTurn + 1;
}

s32 func_8004D02C_4DC2C(s16 arg0, f32 arg1) {
    Vec3f sp10;

    sp10.x = D_800ECE14_ECEA4[arg0];
    sp10.y = 0.0f;
    sp10.z = D_800F3843_F38D3[arg0];
    
    if ((arg1 <= func_800A1200_A1E00(&sp10))) {
        return 1;
    } else {
        return 0;
    }
}

void func_8004D0B0_4DCB0(s16 arg0) {
    func_8004DB9C_4E79C(D_800C5200_C5E00[arg0]);
}

void func_8004D0DC_4DCDC(void) {
    unkProcessUserDataStruct *temp_s0 = HuPrcCurrentGet()->user_data;
    s32 temp_s1 = temp_s0->unk_1C.signed32Unk1C;
    f32 temp_f20 = func_8003D2B0_3DEB0(&temp_s0->unk_00);
    f32 new_var = func_8003D2B0_3DEB0(&temp_s0->unk_0C) - temp_f20;
    f32 var_f2;
    
    
    if (new_var < 0.0f) {
        new_var += 360.0f;
    }
    
    var_f2 = func_8003D8CC_3E4CC(&temp_s0->unk_00, &temp_s0->unk_0C) / temp_s1;
    
    if (!(new_var < 180.0f)) {
        var_f2 = -var_f2;
    }
    
    new_var = var_f2;
    temp_f20 = 0.0f;
    
    while (temp_s0->unk_1C.signed32Unk1C != 0) {
        func_800A0D50_A1950(temp_s0->unk_18, &temp_s0->unk_00);
        temp_f20 += new_var;
        func_8003D514_3E114(temp_s0->unk_18, temp_f20);
        temp_s0->unk_1C.signed32Unk1C = temp_s0->unk_1C.signed32Unk1C - 1;
        HuPrcVSleep();
    }
    
    EndProcess(0);
}

Process* func_8004D1EC_4DDEC(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, s32 arg3) {
    Process* temp_s1;
    unkProcessUserDataStruct* temp_s0;

    temp_s1 = omAddPrcObj(func_8004D0DC_4DCDC, 0x4001, 0, 0x50);
    temp_s0 = HuMemMemoryAlloc(temp_s1->heap, sizeof(unkProcessUserDataStruct));
    temp_s1->user_data = temp_s0;
    func_800A0D00_A1900(temp_s0, arg0->x, 0.0f, arg0->z);
    func_800A0D00_A1900(&temp_s0->unk_0C, arg1->x, 0.0f, arg1->z);
    temp_s0->unk_18 = arg2;
    temp_s0->unk_1C.signed32Unk1C = arg3;
    return temp_s1;
}

void func_8004D2A4_4DEA4(s16 arg0, s32 arg1, s16 arg2) {
    Vec3f sp10;
    Vec3f* temp_a2;
    playerMain* temp_s1;

    temp_s1 = GetPlayerStruct(arg0);
    func_800A0E80_A1A80(&sp10, &GetSpaceData(arg2)->coords, &temp_s1->playerObj->coords);
    func_8003D408_3E008(&sp10);
    temp_a2 = &temp_s1->playerObj->unk_18;
    func_8004D1EC_4DDEC(temp_a2, &sp10, temp_a2, arg1);
}

void func_8004D328_4DF28(void) {
    unkProcessUserDataStruct* temp_s0 = HuPrcCurrentGet()->user_data;
    s32 temp_s1 = temp_s0->unk_1C.signed32Unk1C;

    while (temp_s0->unk_1C.signed32Unk1C != 0) {
        func_800A0E80_A1A80(temp_s0->unk_18, &temp_s0->unk_0C, &temp_s0->unk_00);
        func_800A0F00_A1B00(temp_s0->unk_18, 1.0f - (1.0f / temp_s1) * (temp_s0->unk_1C.signed32Unk1C - 1), temp_s0->unk_18);
        func_800A0E00_A1A00(temp_s0->unk_18, temp_s0->unk_18, &temp_s0->unk_00);
        temp_s0->unk_1C.signed32Unk1C = temp_s0->unk_1C.signed32Unk1C - 1;
        HuPrcVSleep();        
    }
    EndProcess(NULL);
}

Process* func_8004D3F4_4DFF4(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, s32 arg3) {
    Process* temp_s1;
    unkProcessUserDataStruct* temp_s0;

    temp_s1 = omAddPrcObj(func_8004D328_4DF28, 0x4001, 0, 0x50);
    temp_s0 = HuMemMemoryAlloc(temp_s1->heap, 0x20);
    temp_s1->user_data = temp_s0;
    temp_s0->unk_00 = *arg0;
    temp_s0->unk_0C = *arg1;
    temp_s0->unk_18 = arg2;
    temp_s0->unk_1C.signed32Unk1C = arg3;
    return temp_s1;
}


void func_8004D4A8_4E0A8(s16 arg0, s32 arg1) {
    Vec3f sp10;
    Vec3f sp20;
    playerMain* temp_v0;
    Process* process;

    temp_v0 = GetPlayerStruct(arg0);
    func_8004CB70_4D770(arg0, GetAbsSpaceIndexFromChainSpaceIndex(temp_v0->curChainIndex, temp_v0->curSpaceIndex), &sp10);
    func_8004CB70_4D770(arg0, GetAbsSpaceIndexFromChainSpaceIndex(temp_v0->nextChainIndex, temp_v0->nextSpaceIndex), &sp20);
    func_8004CCD0_4D8D0(&sp10, &sp20, &temp_v0->playerObj->unk_18);
    process = func_8004D3F4_4DFF4(&sp10, &sp20, &temp_v0->playerObj->coords, arg1);
    HuPrcChildLink(HuPrcCurrentGet(), process);
    HuPrcChildWatch();
}

void func_8004D580_4E180(void) {
    unkProcessUserDataStruct* temp_s0 = HuPrcCurrentGet()->user_data;
    Vec3f* temp_s1;
    f32 temp_f20;
    
    temp_f20 = temp_s0->unk_1C.floatUnk1C;
    temp_s1 = &temp_s0->unk_0C;
    
    while (!(func_800A13C0_A1FC0(&temp_s0->unk_00, temp_s1) < temp_f20)) {
        func_800A0E80_A1A80(temp_s0->unk_18, temp_s1, &temp_s0->unk_00);
        func_8003D408_3E008(temp_s0->unk_18);
        func_800A0F00_A1B00(temp_s0->unk_18, temp_f20, temp_s0->unk_18);
        func_800A0E00_A1A00(temp_s0->unk_18, temp_s0->unk_18, &temp_s0->unk_00);
        func_800A0D50_A1950(&temp_s0->unk_00, temp_s0->unk_18);
        HuPrcVSleep();
    }
    func_800A0D50_A1950(temp_s0->unk_18, &temp_s0->unk_0C);
    EndProcess(NULL);
}

Process* func_8004D648_4E248(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3) {
    Process* temp_s1;
    unkProcessUserDataStruct* temp_s0;

    temp_s1 = omAddPrcObj(func_8004D580_4E180, 0x4001, 0, 0x50);
    temp_s0 = HuMemMemoryAlloc(temp_s1->heap, 0x20);
    temp_s1->user_data = temp_s0;
    temp_s0->unk_00 = *arg0;
    temp_s0->unk_0C = *arg1;
    temp_s0->unk_18 = arg2;
    temp_s0->unk_1C.floatUnk1C = arg3;
    return temp_s1;
}

void func_8004D6FC_4E2FC(s16 arg0, f32 arg1) {
    Vec3f sp10;
    Vec3f sp20;
    playerMain* temp_v0;
    Process* process;

    temp_v0 = GetPlayerStruct(arg0);
    func_8004CB70_4D770(arg0, GetAbsSpaceIndexFromChainSpaceIndex(temp_v0->curChainIndex, temp_v0->curSpaceIndex), &sp10);
    func_8004CB70_4D770(arg0, GetAbsSpaceIndexFromChainSpaceIndex(temp_v0->nextChainIndex, temp_v0->nextSpaceIndex), &sp20);
    func_8004CCD0_4D8D0(&sp10, &sp20, &temp_v0->playerObj->unk_18);
    process = func_8004D648_4E248(&sp10, &sp20, &temp_v0->playerObj->coords, arg1);
    HuPrcChildLink(HuPrcCurrentGet(), process);
    HuPrcChildWatch();
}

void SetPlayerOntoChain(s16 player, s16 chain_index, s16 space_index) {
    playerMain* temp_v1 = GetPlayerStruct(player);

    if (chain_index >= 0) {
        temp_v1->curChainIndex = chain_index;
        temp_v1->nextChainIndex = chain_index;
    }
    if (space_index >= 0) {
        temp_v1->curSpaceIndex = space_index;
        temp_v1->nextSpaceIndex = space_index + 1;
    }
}

void SetNextChainAndSpace(s16 arg0, s16 arg1, s16 arg2) {
    playerMain* temp_v0 = GetPlayerStruct(arg0);

    if (arg1 >= 0) {
        temp_v0->nextChainIndex = arg1;
    }
    if (arg2 >= 0) {
        temp_v0->nextSpaceIndex = arg2;
    }
}

s32 func_8004D8A4_4E4A4(void) {
    GameStatus* gameStatus = &D_800ED5C0_ED650;
    s32 var_s0 = 0;
    
    SetBoardFeatureFlag(D_800ED5C0_ED650.unk_1A);
    SetBoardFeatureFlag(0x4E);
    if (IsFlagSet(0x43) != 0) {
        if ((gameStatus->unk_02 != 7) || D_800ED5C0_ED650.chosenStarSpaceIndex == 6) {
            func_80056730_57330(-2, 4, 0x92);
            var_s0 = 1;
        }
    }
    return var_s0;
}

const char pad_4d770[] = "\0\0\0\0\0\0\0"; //TODO: this is required likely because of a bad split