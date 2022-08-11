#include "common.h"
#include "firstMap.h"

void func_800F6610_257020(void) {
    D_800ED5C2 = 8;
    func_8005CF30(0xA, 0);
    func_8005E044(0x35, 0, 0x92);
}


void func_800F664C_25705C(void) {
    s32 i;

    func_8005CF30(0xA, 0);
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
    unk_Struct03* temp_s0;

    if (D_800F8890 == NULL) {
        temp_s0 = func_8003DBE0(0x3A, NULL);
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
    unk_Struct03* temp_s0;

    if (D_800F8894 == NULL) {
        temp_s0 = func_8003DBE0(0x39, NULL);
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
    unk_Struct03* temp_s0;

    if (D_800F8898 == NULL) {
        temp_s0 = func_8003DBE0(0x6AU, NULL);
        func_8003E174(temp_s0);
        D_800F8898 = temp_s0;
        temp_s0->unk_0A |= 2;
        func_800A0D00(&temp_s0->unk_24, 0.6f, 0.6f, 0.6f);
        temp_s0->unk_30 = 100.0f;
        func_800A0D50(&temp_s0->coords, &GetSpaceData(0x1B)->coords);
    }
}

void func_800F68A4_2572B4(void) {
    D_800F8898 = 0;
    func_800F6814_257224();
}

void func_800F68C4_2572D4(void) {
    unk_Struct03* temp_s0;

    if (D_800F889C == NULL) {
        temp_s0 = func_8003DBE0(0x3BU, NULL);
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


INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F6E20_257830);

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

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F7090_257AA0);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F70AC_257ABC);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F70F0_257B00);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F714C_257B5C);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F73A0_257DB0);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F7484_257E94);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F74E0_257EF0);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F7500_257F10);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F7560_257F70);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F75F0_258000);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F7714_258124);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F77A8_2581B8);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F77B4_2581C4);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F81F8_258C08);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F83D4_258DE4);

INCLUDE_ASM(s32, "ovl_3E_FirstMap/257020", func_800F852C_258F3C);
