#include "engine/process.h"
#include "FirstMap.h"

void func_800F6610_FirstMap(void) {
    D_800ED5C2[0] = 8;
    omInitObjMan(0xA, 0);
    omOvlGotoEx(0x35, 0, 0x92);
}

void func_800F664C_FirstMap(void) {
    s32 i;

    omInitObjMan(0xA, 0);
    SetPlayerOntoChain(0, 0, 0);
    SetPlayerOntoChain(1, 0, 0);
    SetPlayerOntoChain(2, 0, 0);
    SetPlayerOntoChain(3, 0, 0);
    func_800F6B0C_FirstMap();
    
    for (i = 0; i < MAX_PLAYERS; i++) {
        GetPlayerStruct(i)->characterID = D_800F8750_FirstMap[i];
    }

    omOvlReturnEx(1);
}

void func_800F66FC_FirstMap(void) {
    Object* temp_s0;

    if (D_800F8890_FirstMap == NULL) {
        temp_s0 = CreateObject(0x3A, NULL);
        func_8003E174(temp_s0);
        D_800F8890_FirstMap = temp_s0;
        temp_s0->unk_0A |= 2;
        func_8004CDCC(temp_s0);
        func_800A0D50(&temp_s0->coords, &GetSpaceData(0x1C)->coords);
    }
}

void func_800F676C_FirstMap(void) {
    D_800F8890_FirstMap = 0;
    func_800F66FC_FirstMap();
}

void func_800F678C_FirstMap(void) {
    Object* temp_s0;

    if (D_800F8894_FirstMap == NULL) {
        temp_s0 = CreateObject(0x39, NULL);
        func_8003E174(temp_s0);
        D_800F8894_FirstMap = temp_s0;
        temp_s0->unk_0A |= 2;
        func_800A0D50(&temp_s0->coords, &GetSpaceData(0x19)->coords);
    }
}

void func_800F67F4_FirstMap(void) {
    D_800F8894_FirstMap = 0;
    func_800F678C_FirstMap();
}

void func_800F6814_FirstMap(void) {
    Object* temp_s0;

    if (D_800F8898_FirstMap == NULL) {
        temp_s0 = CreateObject(0x6AU, NULL);
        func_8003E174(temp_s0);
        D_800F8898_FirstMap = temp_s0;
        temp_s0->unk_0A |= 2;
        func_800A0D00(&temp_s0->xScale, 0.6f, 0.6f, 0.6f);
        temp_s0->unk_30 = 100.0f;
        func_800A0D50(&temp_s0->coords, &GetSpaceData(0x1B)->coords);
    }
}

void func_800F68A4_FirstMap(void) {
    D_800F8898_FirstMap = 0;
    func_800F6814_FirstMap();
}

void func_800F68C4_FirstMap(void) {
    Object* temp_s0;

    if (D_800F889C_FirstMap == NULL) {
        temp_s0 = CreateObject(0x3BU, NULL);
        func_8003E174(temp_s0);
        D_800F889C_FirstMap = temp_s0;
        temp_s0->unk_0A |= 2;
        func_800A0D50(&temp_s0->coords, &GetSpaceData(0x1A)->coords);
    }
}

void func_800F692C_FirstMap(void) {
    D_800F889C_FirstMap = 0;
    func_800F68C4_FirstMap();
}

void func_800F694C_FirstMap(void) {
    SetNextChainAndSpace(-1, 1, 0);
}

void func_800F6970_FirstMap(void) {
    SetNextChainAndSpace(-1, 3, 0);
}

void func_800F6994_FirstMap(void) {
    SetNextChainAndSpace(-1, 1, 0);
}


void func_800F69B8_FirstMap(void) {
    while (func_8004B850() != 0) {
        HuPrcVSleep();
    }
    HuPrcVSleep();
    HuPrcSleep(3);
}

void func_800F69FC_FirstMap(void) {
}

void func_800F6A04_FirstMap(void) {
    s32 temp_s0, temp_s1, temp_s2, temp_a0;
    s32 i;

    SetPlayerAnimation(-1, -1, 2);
    func_800F69B8_FirstMap();
    temp_s2 = func_8003C218(-1, &D_800F8788_FirstMap);
    func_8003C060(temp_s2, -1, 0);
    if (PlayerIsCPU(-1) != 0) {
        temp_a0 = D_800ED100.boardRam[0]++;
        temp_s1 = D_800F8790_FirstMap[temp_a0];
        for (i = 0; i < temp_s1; i++) {
            func_8003BE84(temp_s2, -2);
        }
        func_8003BE84(temp_s2, -4);
    }
    
    temp_s0 = DirectionPrompt(temp_s2);
    func_8003B908(temp_s2);
    func_800F69FC_FirstMap();
    
    if (temp_s0 != 0) {
        SetNextChainAndSpace(-1, 2, 0);
    }
    
    EndProcess(NULL);
}

void func_800F6B0C_FirstMap(void) {
    s32 i;
    
    for (i = 0; i < 4; i++) {
        GetPlayerStruct(i)->unk_06 |= 1;
    }
}

void func_800F6B50_FirstMap(void) {
    Process* temp_s0;

    temp_s0 = HuPrcCurrentGet();
    HuPrcChildLink(temp_s0, func_800531E8());
    HuPrcChildWatch();
}

void func_800F6B8C_FirstMap(void) {
    Process* temp_s0;

    temp_s0 = HuPrcCurrentGet();
    HuPrcChildLink(temp_s0, func_800532B4());
    HuPrcChildWatch();
}

void* func_800F6BC8_FirstMap(s16 arg0, s16 arg1, s16 arg2) {
    ovl_3E_HeapStruct* temp_s0;
    s16 temp_s1;
    void* temp_s5;


    temp_s0 = MallocTemp(8U);
    temp_s0->unk0 = func_80064EF4(3, 0);
    temp_s5 = ReadMainFS(0xA0030);
    temp_s0->unk2 = func_800678A4(temp_s5);
    func_80067208(temp_s0->unk0, 0, temp_s0->unk2, 0);
    func_80067384(temp_s0->unk0, 0, 0xB);
    func_800674BC(temp_s0->unk0, 0, 0x1000);
    temp_s1 = arg1 + 5;
    func_80066DC4(temp_s0->unk0, 0, temp_s1, arg2);
    FreeMainFS(temp_s5);
    temp_s5 = ReadMainFS(0xA0031);
    temp_s0->unk4 = func_800678A4(temp_s5);
    func_80067208(temp_s0->unk0, 1, temp_s0->unk4, 0);
    func_80067384(temp_s0->unk0, 1, 0xB);
    func_800674BC(temp_s0->unk0, 1, 0x1000);
    func_80066DC4(temp_s0->unk0, 1, temp_s1, arg2);
    func_8006752C(temp_s0->unk0, 1, 0xFF);
    func_800674F4(temp_s0->unk0, 1, 0xFF, 0xD3, 0x4F);
    FreeMainFS(temp_s5);
    temp_s5 = ReadMainFS(D_800F87D8_FirstMap[arg0]);
    temp_s0->unk6 = func_800678A4(temp_s5);
    func_80067208(temp_s0->unk0, 2, temp_s0->unk6, 0);
    func_80067384(temp_s0->unk0, 2, 0xA);
    func_800674BC(temp_s0->unk0, 2, 0x1000);
    func_80066DC4(temp_s0->unk0, 2, arg1, arg2);
    FreeMainFS(temp_s5);
    return temp_s0;
}

void func_800F6DD8_FirstMap(ovl_3E_HeapStruct* arg0) {
    func_80067704(arg0->unk2);
    func_80067704(arg0->unk4);
    func_80067704(arg0->unk6);
    func_80064D38(arg0->unk0);
    FreeTemp(arg0);
}


void func_800F6E20_FirstMap(void) {
    D_800F88A0_FirstMap = -1;
    
    SetFadeInTypeAndTime(2, 0x10);
    func_80072724(0xFF, 0xFF, 0xFF);
    while (func_80072718() != 0) {
        HuPrcVSleep();
    }
    
    func_8004A520();
    func_8004B5C4(3.0f);
    func_8004B838(4.0f);
    while (1) {
        if (D_800F88A0_FirstMap < 0) {
            func_8004B5DC(&GetPlayerStruct(CURRENT_PLAYER)->playerObj->coords);
        } else {
            func_8004B5DC(&GetSpaceData(D_800F88A0_FirstMap)->coords);
        }
        HuPrcVSleep();        
    }
}

void func_800F6EF0_FirstMap(s16 arg0) {
    D_800F88A0_FirstMap = arg0;
}

void func_800F6EFC_FirstMap(void) {
    HuPrcSleep(3);
    while (func_8004B850() != 0) {
        HuPrcVSleep();
    }
}

void func_800F6F38_FirstMap(void) {
    playerMain* player;
    s32 i;

    for (i = 0; i < 4; i++) {
        player = GetPlayerStruct(i);
        player->turn_status = 0;
        player->unk_06 &= ~0x2;
    }
}

void func_800F6F80_FirstMap(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        func_800546B4(i, GetPlayerStruct(i)->turn_status);
    }

}

void func_800F6FC4_FirstMap(void) {
    playerMain* temp_s0;
    s32 i;

    if (++D_800ED5DC >= 4) {
        D_800ED5DC = 0;
    }

    for (i = 0; i < 4; i++) {
        func_80052FD4(i);
        func_80052E84(i);
        temp_s0 = GetPlayerStruct(i);
        func_8003E174(temp_s0->playerObj);
        temp_s0->playerObj->unk_0A |= 2;
        func_8004CC8C(i, GetAbsSpaceIndexFromChainSpaceIndex(temp_s0->curChainIndex, temp_s0->curSpaceIndex));
        func_8004CDA0(i);
    }
}

void func_800F7090_FirstMap(Vec3f* coords) {
    func_8005884C(coords);
}

void func_800F70AC_FirstMap(void) {
    Process* temp_s0;

    temp_s0 = HuPrcCurrentGet();
    HuPrcChildLink(temp_s0, func_80048000(D_800ED5DC));
    HuPrcChildWatch();
}

void func_800F70F0_FirstMap(s16 arg0) {
    Process* temp_s0;

    func_800415CC(D_800ED5DC, arg0);
    temp_s0 = HuPrcCurrentGet();
    HuPrcChildLink(temp_s0, func_800419D8(D_800ED5DC));
    HuPrcChildWatch();
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3E_FirstMap/257020", func_800F714C_FirstMap); //has rodata jump table

void func_800F73A0_FirstMap(void) {
    GameStatus* gameStatus = &D_800ED5C0;
    playerMain* player = GetPlayerStruct(CURRENT_PLAYER);
    SpaceData* space = GetSpaceData(GetAbsSpaceIndexFromChainSpaceIndex(player->curChainIndex, player->curSpaceIndex));

    SetPlayerLandedSpaceType(-1, space->spaceType);
    func_800546B4(D_800ED5DC, player->turn_status);

    switch (space->spaceType) {
    case 1:
        ShowPlayerCoinChange(gameStatus->unk_1C, 3);
        func_80055960(gameStatus->unk_1C, 3);
        PlaySound(0x30);
        HuPrcSleep(30);
        return;
    case 2:
        ShowPlayerCoinChange(gameStatus->unk_1C, -3);
        func_80055960(gameStatus->unk_1C, -3);
        PlaySound(0x31);
        HuPrcSleep(30);
        return;
    }
}

void func_800F7484_FirstMap(s16 arg0) {
    Process* temp_s0;

    func_800415CC(D_800ED5DC, arg0);
    temp_s0 = HuPrcCurrentGet();
    HuPrcChildLink(temp_s0, func_80041C04(D_800ED5DC));
    HuPrcChildWatch();
}

void func_800F74E0_FirstMap(void) {
    func_800405DC(D_800ED5DC);
}

void func_800F7500_FirstMap(Object* arg0, void* arg1) {
    LoadStringIntoWindow(arg0->unk_08, arg1, -1, -1);
    func_80071C8C(arg0->unk_08, 1);
    func_8004E0E8(arg0->unk_08);
    func_80071E80(arg0->unk_08, 1);
    func_8006EB40(arg0->unk_08);
}

void func_800F7560_FirstMap(Object** arg0) {
    Object* temp_v0;

    temp_v0 = *arg0;
    temp_v0->unk_34 = 20.0f;
    temp_v0->unk_38 = -3.0f;
    func_8003E81C(*arg0, 0, 0U);
    HuPrcSleep(3);

    while (!(func_8003E940(*arg0))) {
        HuPrcVSleep();
    }
    
    func_8003E81C(*arg0, -1, 2);
}

void func_800F75F0_FirstMap(Object* arg0, s16 arg1) {
    Object* temp_v0;
    s32 i;
    s16 temp_s1;
    s16 new_var;

    temp_s1 = arg0->unk_0A;
    temp_v0 = arg0->prev;
    temp_v0->unk_34 = 20.0f;
    temp_v0->unk_38 = -2.5f;
    func_8003E81C(arg0->prev, 0, 0);
    new_var = (arg1 - temp_s1) / 14;

    for (i = 0; i < 14; i++) {
        temp_s1 = arg0->unk_0A;
        func_800484C4(arg0, temp_s1 + new_var);
        HuPrcVSleep();
    }
    
    func_800484C4(arg0, arg1);
    
    while (!(func_8003E940(arg0->prev))) {
        HuPrcVSleep();
    }
    
    func_8003E81C(arg0->prev, -1, 2);
}

void func_800F7714_FirstMap(void) {
    Process* process = HuPrcCurrentGet();
    Object** temp_s0 = process->user_data;

    while (1) {
        HuPrcVSleep();
        if (D_800F8808_FirstMap == -1) {
            continue;
        }
        
        func_8003E81C(*temp_s0, D_800F8808_FirstMap, 0);
        D_800F8808_FirstMap = -1;
        
        while (!(func_8003E940(*temp_s0))) {
            HuPrcVSleep();
        }
        
        func_8003E81C(*temp_s0, -1, 2);
    }
}

void func_800F77A8_FirstMap(s32 arg0) {
    D_800F8808_FirstMap = arg0;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3E_FirstMap/257020", func_800F77B4_FirstMap);

s16 func_800F81F8_FirstMap(s32 arg0) {
    s16 temp_s1;
    s16 temp_s1_2;
    void* temp_s0;
    unk_Struct02* temp_s2;

    func_80060214(0x60);
    temp_s2 = func_800533F8(1, 0);
    temp_s0 = ReadMainFS(0xA012A);
    *temp_s2->unk_0C = func_800678A4(temp_s0);
    func_80067208(temp_s2->unk_0A, 0, *temp_s2->unk_0C, 0);
    func_80067384(temp_s2->unk_0A, 0, 9);
    func_800674BC(temp_s2->unk_0A, 0, 0x1000);
    func_80066DC4(temp_s2->unk_0A, 0, 0xA0, 0x78);
    func_80067354(temp_s2->unk_0A, 0, 40.0f, 30.0f);
    func_80067558(temp_s2->unk_0A, 0, 0, 0, 0, 0xC0);
    FreeMainFS(temp_s0);
    temp_s1_2 = func_8006D010(0x49, 0x4B, 0xB8, 0x4C, 0, 0);
    func_8006E0A4(temp_s1_2, 5);
    func_8006E154(temp_s1_2, 0);
    func_800717C0(temp_s1_2);
    LoadStringIntoWindow(temp_s1_2, (void* )0x209, -1, -1);
    func_8006E070(temp_s1_2, 0);

    while (func_8006FCC0(temp_s1_2) != 0) {
        HuPrcVSleep();
    }
    
    func_8007155C(temp_s1_2, (0x10000 << arg0) >> 0x10);
    temp_s1 = func_8006FCF0(temp_s1_2, 0, 0);
    func_80070D90(temp_s1_2);
    func_80060214(0x7F);
    func_80053454(temp_s2);
    return temp_s1 == 1;
}

void func_800F83D4_FirstMap(void) {
    Vec2f coords;
    s32 playerIndex;
    s32 i;

    while (1) {
        HuPrcVSleep();
        if (func_80072718() != 0) {
            continue;
        }
        if (D_800ED0D2 == 3) {
            continue;
        }
    
        playerIndex = GetCurrentPlayerIndex();
    
        for (i = 0; i < 4; i++) {
            if (D_800EC6EA[i] & 0x1000) {
                func_80041F84(playerIndex);
                func_8004B6D8(&coords);
                func_8004B61C(&coords);
                D_800ECC22 = 1;
                func_8005FD7C();
                D_800F384E = 1;
                if (func_800F81F8_FirstMap(i) != 0) {
                    func_800601D4(0x5A);
                    func_800726AC(0, 0x10);
                    HuPrcSleep(0x11);
                    func_80056AF4();
                    func_80056984();
                    omOvlReturnEx(1);
                    omOvlKill();
                    HuPrcVSleep();                
                }
                
                D_800F384E = 0;
                func_8005FECC();
                D_800ECC22 = 0;
                func_80041FE0(playerIndex);
                break;
            }
        }        
    }
}

void func_800F852C_FirstMap(void) {
    playerMain* player;
    s32 i;
    s16 absSpaceIndex;

    func_80060128(0x2A);
    InitCameras(2);
    omInitObjMan(0x50, 0x28);
    func_80060088();
    func_80023448(1);
    func_800234B8(0, 0x78, 0x78, 0x78);
    func_800234B8(1, 0x40, 0x40, 0x60);
    func_80023504(1, -100.0f, 100.0f, 300.0f);
    func_80056A08(0x4D, 0x4D, 0, 0);
    func_80052E84(0);
    func_80052E84(1);
    func_80052E84(2);
    func_80052E84(3);

    for (i = 0; i < 4; i++) {
        player = GetPlayerStruct(i);
        func_8003E174(player->playerObj);
        player->playerObj->unk_0A |= 2;
        player->coinAmount = 0xA;
    }

    func_800F676C_FirstMap();
    func_800F67F4_FirstMap();
    func_800F68A4_FirstMap();
    func_800F692C_FirstMap();
    EventTableHydrate(&D_800F87A8_FirstMap);
    
    for (i = 0; i < 4; i++) {
        player = GetPlayerStruct(i);
        absSpaceIndex = GetAbsSpaceIndexFromChainSpaceIndex(player->curChainIndex, player->curSpaceIndex);
        func_8004CC8C(i, absSpaceIndex);
        func_8004CDA0(i);
    }
    
    func_8004A510();
    func_8004B5C4(1.0f);
    func_8004B838(-1.0f);
    func_8004B5DC(&GetPlayerStruct(CURRENT_PLAYER)->playerObj->coords);
    omAddPrcObj(func_800F77B4_FirstMap, 0x1005, 0, 0);
    omAddPrcObj(func_800F6E20_FirstMap, 0x1005, 0, 0);
    omPrcSetStatBit(omAddPrcObj(func_800F83D4_FirstMap, 0x1005, 0, 0), 0x80);
}

