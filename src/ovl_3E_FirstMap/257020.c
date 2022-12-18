#include "process.h"
#include "firstMap.h"

void func_800F6610_257020(void) {
    D_800ED5C2 = 8;
    InitObjSystem(0xA, 0);
    func_8005E044(0x35, 0, 0x92);
}


void func_800F664C_25705C(void) {
    s32 i;

    InitObjSystem(0xA, 0);
    SetPlayerOntoChain(0, 0, 0);
    SetPlayerOntoChain(1, 0, 0);
    SetPlayerOntoChain(2, 0, 0);
    SetPlayerOntoChain(3, 0, 0);
    func_800F6B0C_25751C();
    
    for (i = 0; i < 4; i++) {
        GetPlayerStruct(i)->characterID = D_800F8750[i];
    }

    func_8005DFB8(1);
}

void func_800F66FC_25710C(void) {
    Object* temp_s0;

    if (D_800F8890 == NULL) {
        temp_s0 = CreateObject(0x3A, NULL);
        func_8003E174(temp_s0);
        D_800F8890 = temp_s0;
        temp_s0->unk_0A |= 2;
        func_8004CDCC(temp_s0);
        func_800A0D50(&temp_s0->coords, &GetSpaceData(0x1C)->coords);
    }
}

void func_800F676C_25717C(void) {
    D_800F8890 = 0;
    func_800F66FC_25710C();
}

void func_800F678C_25719C(void) {
    Object* temp_s0;

    if (D_800F8894 == NULL) {
        temp_s0 = CreateObject(0x39, NULL);
        func_8003E174(temp_s0);
        D_800F8894 = temp_s0;
        temp_s0->unk_0A |= 2;
        func_800A0D50(&temp_s0->coords, &GetSpaceData(0x19)->coords);
    }
}

void func_800F67F4_257204(void) {
    D_800F8894 = 0;
    func_800F678C_25719C();
}

void func_800F6814_257224(void) {
    Object* temp_s0;

    if (D_800F8898 == NULL) {
        temp_s0 = CreateObject(0x6AU, NULL);
        func_8003E174(temp_s0);
        D_800F8898 = temp_s0;
        temp_s0->unk_0A |= 2;
        func_800A0D00(&temp_s0->xScale, 0.6f, 0.6f, 0.6f);
        temp_s0->unk_30 = 100.0f;
        func_800A0D50(&temp_s0->coords, &GetSpaceData(0x1B)->coords);
    }
}

void func_800F68A4_2572B4(void) {
    D_800F8898 = 0;
    func_800F6814_257224();
}

void func_800F68C4_2572D4(void) {
    Object* temp_s0;

    if (D_800F889C == NULL) {
        temp_s0 = CreateObject(0x3BU, NULL);
        func_8003E174(temp_s0);
        D_800F889C = temp_s0;
        temp_s0->unk_0A |= 2;
        func_800A0D50(&temp_s0->coords, &GetSpaceData(0x1A)->coords);
    }
}

void func_800F692C_25733C(void) {
    D_800F889C = 0;
    func_800F68C4_2572D4();
}

void func_800F694C_25735C(void) {
    SetNextChainAndSpace(-1, 1, 0);
}

void func_800F6970_257380(void) {
    SetNextChainAndSpace(-1, 3, 0);
}

void func_800F6994_2573A4(void) {
    SetNextChainAndSpace(-1, 1, 0);
}


void func_800F69B8_2573C8(void) {
    while (func_8004B850() != 0) {
        SleepVProcess();
    }
    SleepVProcess();
    SleepProcess(3);
}

void func_800F69FC_25740C(void) {
}

void func_800F6A04_257414(void) {
    s32 temp_s0, temp_s1, temp_s2, temp_a0;
    s32 i;

    SetPlayerAnimation(-1, -1, 2);
    func_800F69B8_2573C8();
    temp_s2 = func_8003C218(-1, &D_800F8788);
    func_8003C060(temp_s2, -1, 0);
    if (PlayerIsCPU(-1) != 0) {
        temp_a0 = D_800ED154.unk_00++;
        temp_s1 = D_800F8790[temp_a0];
        for (i = 0; i < temp_s1; i++) {
            func_8003BE84(temp_s2, -2);
        }
        func_8003BE84(temp_s2, -4);
    }
    
    temp_s0 = DirectionPrompt(temp_s2);
    func_8003B908(temp_s2);
    func_800F69FC_25740C();
    
    if (temp_s0 != 0) {
        SetNextChainAndSpace(-1, 2, 0);
    }
    
    EndProcess(NULL);
}

void func_800F6B0C_25751C(void) {
    s32 i;
    
    for (i = 0; i < 4; i++) {
        GetPlayerStruct(i)->unk_06 |= 1;
    }
}

void func_800F6B50_257560(void) {
    Process* temp_s0;

    temp_s0 = GetCurrentProcess();
    LinkChildProcess(temp_s0, func_800531E8());
    WaitForChildProcess();
}

void func_800F6B8C_25759C(void) {
    Process* temp_s0;

    temp_s0 = GetCurrentProcess();
    LinkChildProcess(temp_s0, func_800532B4());
    WaitForChildProcess();
}

void* func_800F6BC8_2575D8(s16 arg0, s16 arg1, s16 arg2) {
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
    temp_s5 = ReadMainFS(D_800F87D8[arg0]);
    temp_s0->unk6 = func_800678A4(temp_s5);
    func_80067208(temp_s0->unk0, 2, temp_s0->unk6, 0);
    func_80067384(temp_s0->unk0, 2, 0xA);
    func_800674BC(temp_s0->unk0, 2, 0x1000);
    func_80066DC4(temp_s0->unk0, 2, arg1, arg2);
    FreeMainFS(temp_s5);
    return temp_s0;
}

void func_800F6DD8_2577E8(ovl_3E_HeapStruct* arg0) {
    func_80067704(arg0->unk2);
    func_80067704(arg0->unk4);
    func_80067704(arg0->unk6);
    func_80064D38(arg0->unk0);
    func_8003B798((ProcessHeader*)arg0); //fake, fix later
}


void func_800F6E20_257830(void) {
    D_800F88A0 = -1;
    
    SetFadeInTypeAndTime(2, 0x10);
    func_80072724(0xFF, 0xFF, 0xFF);
    while (func_80072718() != 0) {
        SleepVProcess();
    }
    
    func_8004A520();
    func_8004B5C4(3.0f);
    func_8004B838(4.0f);
    while (1) {
        if (D_800F88A0 < 0) {
            func_8004B5DC(&GetPlayerStruct(CURRENT_PLAYER)->playerObj->coords);
        } else {
            func_8004B5DC(&GetSpaceData(D_800F88A0)->coords);
        }
        SleepVProcess();        
    }
}

void func_800F6EF0_257900(s16 arg0) {
    D_800F88A0 = arg0;
}

void func_800F6EFC_25790C(void) {
    SleepProcess(3);
    while (func_8004B850() != 0) {
        SleepVProcess();
    }
}

void func_800F6F38_257948(void) {
    playerMain* player;
    s32 i;

    for (i = 0; i < 4; i++) {
        player = GetPlayerStruct(i);
        player->turn_status = 0;
        player->unk_06 &= ~0x2;
    }
}

void func_800F6F80_257990(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        func_800546B4(i, GetPlayerStruct(i)->turn_status);
    }

}

void func_800F6FC4_2579D4(void) {
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

void func_800F7090_257AA0(void) {
    func_8005884C();
}

void func_800F70AC_257ABC(void) {
    Process* temp_s0;

    temp_s0 = GetCurrentProcess();
    LinkChildProcess(temp_s0, func_80048000(D_800ED5DC));
    WaitForChildProcess();
}

void func_800F70F0_257B00(s16 arg0) {
    Process* temp_s0;

    func_800415CC(D_800ED5DC, arg0);
    temp_s0 = GetCurrentProcess();
    LinkChildProcess(temp_s0, func_800419D8(D_800ED5DC));
    WaitForChildProcess();
}

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F714C_257B5C); //has rodata jump table

void func_800F73A0_257DB0(void) {
    GameStatus* gameStatus = &D_800ED5C0;
    playerMain* player = GetPlayerStruct(CURRENT_PLAYER);
    SpaceData* space = GetSpaceData(GetAbsSpaceIndexFromChainSpaceIndex(player->curChainIndex, player->curSpaceIndex));

    SetPlayerLandedSpaceType(-1, space->space_type);
    func_800546B4(D_800ED5DC, player->turn_status);

    switch (space->space_type) {
    case 1:
        ShowPlayerCoinChange(gameStatus->unk_1C, 3);
        func_80055960(gameStatus->unk_1C, 3);
        PlaySound(0x30);
        SleepProcess(30);
        return;
    case 2:
        ShowPlayerCoinChange(gameStatus->unk_1C, -3);
        func_80055960(gameStatus->unk_1C, -3);
        PlaySound(0x31);
        SleepProcess(30);
        return;
    }
}

void func_800F7484_257E94(s16 arg0) {
    Process* temp_s0;

    func_800415CC(D_800ED5DC, arg0);
    temp_s0 = GetCurrentProcess();
    LinkChildProcess(temp_s0, func_80041C04(D_800ED5DC));
    WaitForChildProcess();
}

void func_800F74E0_257EF0(void) {
    func_800405DC(D_800ED5DC);
}

void func_800F7500_257F10(Object* arg0, void* arg1) {
    LoadStringIntoWindow(arg0->unk_08, arg1, -1, -1);
    func_80071C8C(arg0->unk_08, 1);
    func_8004E0E8(arg0->unk_08);
    func_80071E80(arg0->unk_08, 1);
    func_8006EB40(arg0->unk_08);
}

void func_800F7560_257F70(Object** arg0) {
    Object* temp_v0;

    temp_v0 = *arg0;
    temp_v0->unk_34 = 20.0f;
    temp_v0->unk_38 = -3.0f;
    func_8003E81C(*arg0, 0, 0U);
    SleepProcess(3);

    while (!(func_8003E940(*arg0))) {
        SleepVProcess();
    }
    
    func_8003E81C(*arg0, -1, 2);
}

void func_800F75F0_258000(Object* arg0, s16 arg1) {
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
        SleepVProcess();
    }
    
    func_800484C4(arg0, arg1);
    
    while (!(func_8003E940(arg0->prev))) {
        SleepVProcess();
    }
    
    func_8003E81C(arg0->prev, -1, 2);
}

void func_800F7714_258124(void) {
    Process* process = GetCurrentProcess();
    Object** temp_s0 = process->user_data;

    while (1) {
        SleepVProcess();
        if (D_800F8808 == -1) {
            continue;
        }
        
        func_8003E81C(*temp_s0, D_800F8808, 0);
        D_800F8808 = -1;
        
        while (!(func_8003E940(*temp_s0))) {
            SleepVProcess();
        }
        
        func_8003E81C(*temp_s0, -1, 2);
    }
}

void func_800F77A8_2581B8(s32 arg0) {
    D_800F8808 = arg0;
}

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F77B4_2581C4);

s32 func_800F81F8_258C08(s32 arg0) {
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
        SleepVProcess();
    }
    
    func_8007155C(temp_s1_2, (0x10000 << arg0) >> 0x10);
    temp_s1 = func_8006FCF0(temp_s1_2, 0, 0);
    func_80070D90(temp_s1_2);
    func_80060214(0x7F);
    func_80053454(temp_s2);
    return temp_s1 == 1;
}

void func_800F83D4_258DE4(void) {
    u8 sp10;
    s32 playerIndex;
    s32 i;

    while (1) {
        SleepVProcess();
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
                func_8004B6D8(&sp10);
                func_8004B61C(&sp10);
                D_800ECC22 = 1;
                func_8005FD7C();
                D_800F384E = 1;
                if ((func_800F81F8_258C08(i) << 0x10) != 0) {
                    func_800601D4(0x5A);
                    func_800726AC(0, 0x10);
                    SleepProcess(0x11);
                    func_80056AF4();
                    func_80056984();
                    func_8005DFB8(1);
                    func_8005E3A8();
                    SleepVProcess();                
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

void func_800F852C_258F3C(void) {
    playerMain* player;
    s32 i;
    s16 absSpaceIndex;

    func_80060128(0x2A);
    InitCameras(2);
    InitObjSystem(0x50, 0x28);
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

    func_800F676C_25717C();
    func_800F67F4_257204();
    func_800F68A4_2572B4();
    func_800F692C_25733C();
    EventTableHydrate(&D_800F87A8);
    
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
    InitProcess(func_800F77B4_2581C4, 0x1005, 0, 0);
    InitProcess(func_800F6E20_257830, 0x1005, 0, 0);
    func_8005D900(InitProcess(func_800F83D4_258DE4, 0x1005, 0, 0), 0x80);
}

