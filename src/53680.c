#include "common.h"
#include "engine/process.h"

extern u8 D_800C53E0_C5FE0[]; // { 0, 1, 2 }
extern u8 D_800C53E4_C5FE4[]; // { 1, 2, 3 }
extern void *D_800C5490_C6090[];
extern u8 D_800C54A8_C60A8[]; // { 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C }
extern u8 D_800C54B0_C60B0[]; // { 0x5E, 0x5F, 0x60, 0x61, 0x62, 0x63 }
extern s16 D_800D8380_D8410;
extern s16 D_800ED5DC_ED66C; // current player index

u8 func_80052F6C_53B6C(s16 index);

s16 GetCurrentPlayerIndex(void) {
    return D_800ED5DC_ED66C;
}

playerMain* GetPlayerStruct(s32 index) {
    if (index < 0) {
        index = GetCurrentPlayerIndex();
    }
    return &gPlayers[index];
}

// Returns true if the given index matches the current player index.
s16 PlayerIsCurrent(s16 index) {
    return index == D_800ED5DC_ED66C;
}

// Returns true if the given player is the same as the current player.
u32 PlayerStructIsCurrent(playerMain* player) {
  s16 cur_index = GetCurrentPlayerIndex();
  return player->playerIndex == cur_index;
}

u32 PlayerIsCPU(s16 index) {
    return GetPlayerStruct(index)->unk_06 & 1;
}

/*
 * Adjust's a player's coin total by a given count.
*/
void AdjustPlayerCoins(s32 index, s32 count) {
    playerMain* player = GetPlayerStruct(index);
    player->coinAmount += count;
    if (player->coinAmount >= 1000) {
        player->coinAmount = 999;
    }
    if (player->coinAmount < 0) {
        player->coinAmount = 0;
    }

    if (player->coinPeak <= player->coinAmount) {
        player->coinPeak = player->coinAmount;
    }
}

/*
 * Returns true if a player has at least the given coin count.
*/
s32 PlayerHasCoins(s32 index, s32 count) {
    playerMain* player = GetPlayerStruct(index);
    return player->coinAmount >= count;
}

/*
 * Updates the given player's current animation.
*/
void SetPlayerAnimation(s32 index, s16 animation, s32 unk) {
    playerMain* player = GetPlayerStruct(index);
    if (player == GetPlayerStruct(-1)) {
        func_8003E81C_3F41C(player->playerObj, animation, unk);
    }
}

void func_80052C44_53844(s32 index, s16 a, s16 b, s16 c, u16 d) {
    playerMain* player = GetPlayerStruct(index);
    if (player == GetPlayerStruct(-1)) {
        func_8003E8B8_3F4B8(player->playerObj, a, b, c, d);
    }
}

void func_80052CCC_538CC(s32 index, u8 b) {
    playerMain* player = GetPlayerStruct(index);
    player->cpuDifficultyCopy = b;
    if (!IsFlagSet(44)) {
        player->cpuDifficulty = D_800C53E0_C5FE0[b];
    }
    else {
        player->cpuDifficulty = D_800C53E4_C5FE4[b];
    }
}

void func_80052D34(void) {
    Process* process = HuPrcCurrentGet();
    playerMain* player = (playerMain*)process->user_data;
    u16 flags;
    f32 val;

    while (1) {
        HuPrcVSleep();
        while (((flags = player->unk_06) & 4) != 0) {
            HuPrcVSleep();
        }

        val = 1.0f;

        if ((flags & 2) == 0 && !PlayerStructIsCurrent(player)) {
            val = 0.7f;
        }

        func_800A0D00_A1900(&player->playerObj->xScale, val, val, val);
        
    }
}

void func_80052DC8_539C8(s16 index, void *param_2) {
    u8 character;
    Process* process;

    playerMain* player = GetPlayerStruct(index);
    player->playerIndex = index;

    // This was hard to match, seems awkward still.
    if (D_800D8380_D8410 != 0) {
        if (PlayerIsCurrent(index) != 0) {
            character = player->characterID;
        }
        else {
            character = func_80052F6C_53B6C(index);
        }
    }
    else {
        character = player->characterID;
    }

    player->playerObj = CreateObject(character, param_2);

    process = omAddPrcObj(func_80052D34, 0x5000, 0, 0);
    player->process = process;
    process->user_data = player;
}

void func_80052E84_53A84(s16 index) {
    playerMain* player = GetPlayerStruct(index);
    func_80052DC8_539C8(index, D_800C5490_C6090[player->characterID]);
}

void func_80052ECC_53ACC(s16 index, u8 param_2) {
    playerMain* player = GetPlayerStruct(index);
    func_8003E1BC_3EDBC(player->playerObj, param_2);
}

u8 func_80052F04_53B04(s16 index) {
    playerMain* player = GetPlayerStruct(index);
    return D_800C54A8_C60A8[player->characterID];
}

void func_80052F34_53B34(s16 index) {
    u8 var1 = func_80052F04_53B04(index);
    func_80052ECC_53ACC(index, var1);
}

u8 func_80052F6C_53B6C(s16 index) {
    playerMain* player = GetPlayerStruct(index);
    return D_800C54B0_C60B0[player->characterID];
}

void func_80052F9C_53B9C(s16 index) {
    u8 var1 = func_80052F6C_53B6C(index);
    func_80052ECC_53ACC(index, var1);
}

void func_80052FD4_53BD4(s16 index) {
    playerMain* player = GetPlayerStruct(index);
    if (player->playerObj != NULL) {
        EndProcess(player->process);
        DestroyObject(player->playerObj);
        player->playerObj = NULL;
    }
}

void func_80053020_53C20(void) {
    s32 i;
    playerMain* player;

    for (i = 0; i < 4; i++) {
        player = GetPlayerStruct(i);
        player->playerObj = NULL;
    }
    D_800D8380_D8410 = 0;
}

void func_80053064_53C64(void) {
    D_800D8380_D8410 = 1;
}

void func_80053074_53C74(void) {
}