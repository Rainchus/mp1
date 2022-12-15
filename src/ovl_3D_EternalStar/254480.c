#include "common.h"
#include "eternalStar.h"


Vec4f D_800F8BB0_256A20 = {0.0f, 0.0f, 320.0f, 240.0f};
s16 D_800F8BC0_256A30[] = {0x0046, 0x0047, 0x0048, 0x0049, 0x004A, 0x004B, 0x004C};
s16 D_800F8BD0_256A40[] = {0x0055, 0x0054, 0x0053, 0x0052, 0x0051, 0x0050, 0x004F};
s16 D_800F8BE0_256A50[] = {0x0001, 0x0009, 0x0008, 0x0007, 0x0006, 0x0005, 0x0004};
s32 D_800F8BF0_256A60[] = {0x00000001, 0x000A00E8};
s16 D_800F8BF8_256A68[] = {0x0001, 0x0009, 0x0008, 0x0007, 0x0006, 0x0005, 0x0004, 0x0000};
s16 D_800F8C08_256A78[] = {0x0046, 0x0047, 0x0048, 0x0049, 0x004A, 0x004B, 0x004C};
my_struct D_800F8C18_256A88[] = {
    {2, 8},
    {-2, 2},
    {3, -1},
    {5, 0},
    {7, 0},
    {0, -5},
    {4, -5}
};
s16 D_800F8C34_256AA4[] = {0};
s32 D_800F8C38_256AA8[] = {0x00000001, 0x000A006C};
DecisionTreeNonLeafNode D_800F8C40_256AB0[4] = { { 0x05000000, {(void*) 0x00000001}, {0x00005541} }, { 0x05000000, {(void*) 0x00000002}, {0x00005A46} }, {0x05000000, { (void*) 0x00000004}, {0x00005F4B} }, { 0x00000000, {0x00000000}, {0x00006450} } };
DecisionTreeNonLeafNode D_800F8C70_256AE0[4] = { { 0x05000000, {(void*) 0x00000001}, {0x00005041} }, { 0x05000000, {(void*) 0x00000002}, {0x00005546} }, {0x05000000, { (void*) 0x00000004}, {0x00005A4B} }, { 0x00000000, {0x00000000}, {0x00005F55} } };
DecisionTreeNonLeafNode D_800F8CA0_256B10[4] = { { 0x05000000, {(void*) 0x00000001}, {0x00004650} }, { 0x05000000, {(void*) 0x00000002}, {0x00004B55} }, {0x05000000, { (void*) 0x00000004}, {0x0000505A} }, { 0x00000000, {0x00000000}, {0x0000555F} } };
DecisionTreeNonLeafNode D_800F8CD0_256B40[4] = { { 0x05000000, {(void*) 0x00000001}, {0x00005541} }, { 0x05000000, {(void*) 0x00000002}, {0x00005041} }, {0x05000000, { (void*) 0x00000004}, {0x00004B3C} }, { 0x00000000, {0x00000000}, {0x00004637} } };
DecisionTreeNonLeafNode D_800F8D00_256B70[4] = { { 0x05000000, {(void*) 0x00000001}, {0x00004B5A} }, { 0x05000000, {(void*) 0x00000002}, {0x00004650} }, {0x05000000, { (void*) 0x00000004}, {0x00004146} }, { 0x00000000, {0x00000000}, {0x00003C3C} } };
DecisionTreeNonLeafNode D_800F8D30_256BA0[4] = { { 0x05000000, {(void*) 0x00000001}, {0x0000141E} }, { 0x05000000, {(void*) 0x00000002}, {0x00000A1E} }, {0x05000000, { (void*) 0x00000004}, {0x00000514} }, { 0x00000000, {0x00000000}, {0x0000000A} } };
DecisionTreeNonLeafNode D_800F8D60_256BD0[1] = { { 0x00000000, {0x00000000}, {0x00003232} } };
s16 (*D_800F8D6C[16])() = {func_800F753C_2553AC, func_800F7564_2553D4, func_800F758C_2553FC, func_800F75B4_255424, func_800F75DC_25544C, func_800F753C_2553AC, func_800F7608_255478, func_800F7630_2554A0, func_800F7658_2554C8, func_800F7684_2554F4, func_800F753C_2553AC, func_800F76B0_255520, func_800F76D8_255548, func_800F7704_255574, func_800F7730_2555A0, func_800F753C_2553AC};
s32 D_800F8DAC_256C1C[] = {0x05000000, 0x00000001, 0x00015541, 0x05000000, 0x00000002, 0x00015A46, 0x05000000, 0x00000004, 0x00015F4B, 0x00000000, 0x00000000, 0x00016450};
DecisionTreeNonLeafNode D_800F8DDC_256C4C[2] = { { 0x06000000, {func_800F7B6C_2559DC}, {0x00016464} },               { 0x00000000, {0x00000000},           {0x00006464} } };
DecisionTreeNonLeafNode D_800F8DF4_256C64[3] = { { 0x02000000, {(void*) 0x00000004},   {(u32) D_800F8DAC_256C1C} },  { 0x06000000, {func_800F7BA0_255A10}, {0x00016464} }, { 0x00000000, {0x00000000}, {0x00006464} } };
DecisionTreeNonLeafNode D_800F8E18_256C88[2] = { { 0x06000000, {func_800F7BD4_255A44}, {0x00016464} },               { 0x00000000, {0x00000000},           {0x00006464} } };
DecisionTreeNonLeafNode D_800F8E30_256CA0[3] = { { 0x02000000, {(void*) 0x00000010},   {(u32) D_800F8DAC_256C1C} },  { 0x06000000, {func_800F7C08_255A78}, {0x00016464} }, { 0x00000000, {0x00000000}, {0x00006464} } };
DecisionTreeNonLeafNode D_800F8E54_256CC4[3] = { { 0x02000000, {(void*) 0x00000040},   {(u32) D_800F8DAC_256C1C} },  { 0x06000000, {func_800F7C3C_255AAC}, {0x00016464} }, { 0x00000000, {0x00000000}, {0x00006464} } };
s16 D_800F8E78_256CE8[] = {0x0002, 0x0002, 0x0002, 0x0000};
s16 D_800F8E80_256CF0[] = {0x000D, 0x000D, 0x000D, 0x0000};
s16 D_800F8E88_256CF8[] = {0x0005, 0x000A, 0x0013, 0x0000};
s16 D_800F8E90_256D00[] = {0x0013, 0x0005, 0x0006, 0x0000};
s16 D_800F8E98_256D08[] = {0x000A, 0x0014, 0x0011, 0x0000};
s16 D_800F8EA0_256D10[] = {0x0010, 0x0013, 0x000A, 0x0000};
s16 D_800F8EA8_256D18[] = {0x0014, 0x0010, 0x0014, 0x0000};
s16 D_800F8EB0_256D20[] = {0x0011, 0x0011, 0x0010, 0x0000};
s16 D_800F8EB8_256D28[] = {0x0013, 0x0006, 0x0005, 0x0000};
s16 D_800F8EC0_256D30[] = {0x0006, 0x0013, 0x0013, 0x0000};
s16 D_800F8EC8_256D38[] = {0x0013, 0x0013, 0x0013, 0x0000};
s16 D_800F8ED0_256D40[] = {0x0013, 0x0013, 0x0013, 0x0000};
s16* D_800F8ED8_256D48[] = {D_800F8E78_256CE8, D_800F8E80_256CF0, D_800F8E88_256CF8, D_800F8E90_256D00, D_800F8E98_256D08, D_800F8EA0_256D10, D_800F8EA8_256D18, D_800F8EB0_256D20, D_800F8EB8_256D28, D_800F8EC0_256D30, D_800F8EC8_256D38, D_800F8ED0_256D40};
s16 D_800F8F08_256D78[] = {0x0042, 0x004D, 0x0044, 0x0045, 0x0049, 0x004A, 0x0062, 0x0063, 0x005E, 0x005F, 0x0060, 0x004B};

EventListEntry D_800F8F20_256D90[] = {
    {1, 2, func_800F8130_255FA0},
    {0, 0, 0}
};

EventListEntry D_800F8F30_256DA0[] = {
    {1, 2, func_800F8240_2560B0},
    {2, 2, func_800F8298_256108},
    {0, 0, 0}
};

EventListEntry D_800F8F48_256DB8[] = {
    {3, 1, func_800F8514_256384},
    {4, 2, func_800F8588_2563F8},
    {0, 0, 0}
};

s16 D_800F8F60_256DD0[] = {0x0027, 0x003E, -1, 0};
EventTableUnkStruct D_800F8F68_256DD8 = {D_800F8F60_256DD0, D_800F8DDC_256C4C, 0x0001, 0x0000};

EventListEntry D_800F8F74_256DE4[] = {
    {1, 2, func_800F88EC_25675C},
    {0, 0, 0}
};

s16 D_800F8F84_256DF4[] = {0x0029, 0x0026, -1, 0};
EventTableUnkStruct D_800F8F8C_256DFC = {D_800F8F84_256DF4, D_800F8DF4_256C64, 3, 4};

EventListEntry D_800F8F98_256E08[] = {
    {1, 2, func_800F8914_256784},
    {0, 0, 0}
};

s16 D_800F8FA8_256E18[] = {0x0049, 0x0036, -1, 0};
EventTableUnkStruct D_800F8FB0_256E20 = {D_800F8FA8_256E18, D_800F8E18_256C88, 0x0009, 0x0008};


EventListEntry D_800F8FBC_256E2C[] = {
    {1, 2, func_800F893C_2567AC},
    {0, 0, 0}
};

s16 D_800F8FCC_256E3C[] = {0x0063, 0x001F, -1, 0};
EventTableUnkStruct D_800F8FD4_256E44 = {D_800F8FCC_256E3C, D_800F8E30_256CA0, 0x000C, 0x000B};

EventListEntry D_800F8FE0_256E50[] = {
    {1, 2, func_800F8964_2567D4},
    {0, 0, 0}
};

s16 D_800F8FF0_256E60[] = {16, 15, -1, 0};
EventTableUnkStruct D_800F8FF8_256E68 = {D_800F8FF0_256E60, D_800F8E54_256CC4, 0x000F, 0x000E};

EventListEntry D_800F9004_256E74[] = {
    {1, 2, func_800F898C_2567FC},
    {0, 0, 0}
};

EventListEntry D_800F9014_256E84[] = {
    {1, 1, func_800F89B4_256824},
    {0, 0, 0}
};

EventListEntry D_800F9024_256E94[] = {
    {1, 1, func_800F89D8_256848},
    {0, 0, 0}
};

EventListEntry D_800F9034_256EA4[] = {
    {1, 1, func_800F89FC_25686C},
    {0, 0, 0}
};

EventListEntry D_800F9044_256EB4[] = {
    {1, 1, func_800F8A30_2568A0},
    {3, 1, func_800F8A94_256904},
    {0, 0, 0}
};

EventTableEntry D_800F905C_256ECC[] = {
    {0x0055, D_800F9044_256EB4},
    {0x0054, D_800F9044_256EB4},
    {0x0053, D_800F9044_256EB4},
    {0x0052, D_800F9044_256EB4},
    {0x0051, D_800F9044_256EB4},
    {0x0050, D_800F9044_256EB4},
    {0x004F, D_800F9044_256EB4},
    {0x0042, D_800F8F20_256D90},
    {0x004D, D_800F8F20_256D90},
    {0x0044, D_800F8F20_256D90},
    {0x0045, D_800F8F20_256D90},
    {0x0049, D_800F8F20_256D90},
    {0x004A, D_800F8F20_256D90},
    {0x0062, D_800F8F20_256D90},
    {0x0063, D_800F8F20_256D90},
    {0x005E, D_800F8F20_256D90},
    {0x005F, D_800F8F20_256D90},
    {0x0060, D_800F8F20_256D90},
    {0x004B, D_800F8F20_256D90},
    {0x002A, D_800F8F48_256DB8},
    {0x0034, D_800F8F48_256DB8},
    {0x000E, D_800F8F48_256DB8},
    {0x001A, D_800F8F48_256DB8},
    {0x0059, D_800F8F74_256DE4},
    {0x005C, D_800F8F98_256E08},
    {0x0035, D_800F8FBC_256E2C},
    {0x005B, D_800F8FE0_256E50},
    {0x005A, D_800F9004_256E74},
    {0x000A, D_800F9014_256E84},
    {0x002C, D_800F9024_256E94},
    {0x002E, D_800F9024_256E94},
    {0x0057, D_800F8F30_256DA0},
    {0xFFFF, 0x00000000},
    {0x0056, D_800F9034_256EA4},
    {0xFFFF, 0x00000000},
    {0x0000, 0x00000000}
};

void func_8004DBD4(s32, u8);

s16 func_800F6610_254480(void) {
    s16 curSpaceIndex = GetCurrentSpaceIndex();
    s32 i;

    for (i = 0; i < ARRAY_COUNT(D_800F8BE0_256A50); i++) {
        if (curSpaceIndex == D_800F8BD0_256A40[i]) {
            return D_800F8BE0_256A50[i];
        }
    }
    return D_800F8BE0_256A50[0];
}

void func_800F667C_2544EC(void) {
    ClearBoardFeatureFlag(0x46);
    ClearBoardFeatureFlag(0x47);
    ClearBoardFeatureFlag(0x48);
    ClearBoardFeatureFlag(0x49);
    ClearBoardFeatureFlag(0x4A);
    ClearBoardFeatureFlag(0x4B);
    ClearBoardFeatureFlag(0x4C);
}

void func_800F66C8_254538(void) {
    D_800ED5CA++;
    if (D_800ED5CA >= ARRAY_COUNT(D_800F8BE0_256A50)) {
        D_800ED5CA = 0;
        SetBoardFeatureFlag(0x44);
        func_800F667C_2544EC();
    }
}

void func_800F671C_25458C(void) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(D_800F8BD0_256A40); i++) {
        if (IsFlagSet(D_800F8BC0_256A30[i])) {
            SetSpaceType(D_800F8BD0_256A40[i], 6);
        } else {
            SetSpaceType(D_800F8BD0_256A40[i], 5);
        }
    }
}

s16 func_800F67AC_25461C(s16 arg0) {
    GameStatus* gameStatus = &D_800ED5C0;
    s32 i;
    
    for (i = 0; i < ARRAY_COUNT(D_800F8BD0_256A40); i++) {
        if (arg0 != D_800F8BD0_256A40[i]) {
            continue;
        } else {
            if (IsFlagSet(D_800F8BC0_256A30[i]) != 0) {
                return 2;
            } else {
                gameStatus->unk_1A = D_800F8BC0_256A30[i];
                return 1;
            }
        }
    }
    return 0;
}

void func_800F6850_2546C0(void) {
    func_8001D494(1, 40.0f, 80.0f, 8000.0f);
    func_8001D420(1, &D_800F9180, &D_800F918C, &D_800F9198);
    func_8001D57C(1);
    func_8001D520(1, &D_800F91A4, &D_800F91B0);
}

void func_800F68B8_254728(void) {
    while (1) {
        func_800F6850_2546C0();
        SleepVProcess();   
    }
}

ProcessHeader* func_800F68E4_254754(s32* arg0) {
    Process* process;
    Object* temp_v0;
    ProcessHeader* temp_s0;

    temp_s0 = (ProcessHeader*)MallocTemp(sizeof(ProcessHeader));
    if (temp_s0 != NULL) {
        temp_v0 = CreateObject(0x7B, arg0);
        temp_s0->prev = temp_v0;
        func_800A0D00(&temp_v0->xScale, 0.5f, 0.5f, 0.5f);
        func_80025F10(*temp_s0->prev->unk_3C->unk_40, 2);
        process = InitProcess(&func_800F68B8_254728, 0x4000, 0, 0);
        temp_s0->process = process;
        process->user_data = temp_s0;
        temp_s0->unk_0A = 0x69;
        D_800F9180.x = 0;
        D_800F9180.y = 0;
        D_800F9180.z = 600.0f;
        D_800F918C.x = 0;
        D_800F918C.y = 0;
        D_800F918C.z = 0;
        D_800F9198.x = 0;
        D_800F9198.y = 1.0f;
        D_800F9198.z = 0;
        D_800F91A4.x = 1280.0f;
        D_800F91A4.y = 960.0f;
        D_800F91A4.z = 511.0f;
        D_800F91B0.x = 240.0f;
        D_800F91B0.y =  temp_s0->unk_0A * 4.0f + 480.0f;
        D_800F91B0.z = 511.5f;
        func_800F6850_2546C0();
        temp_s0->unk_08 = func_8007194C(0x4B, temp_s0->unk_0A + 0x5A, 3);
        func_8006E070(temp_s0->unk_08, 0);
    }
    return temp_s0;
}

void func_800F6AA0_254910(ProcessHeader* arg0) {
    if (arg0 != NULL) {
        DestroyObject(arg0->prev);
        EndProcess(arg0->process);
        func_80072080(arg0->unk_08);
        func_8003B798(arg0);
    }
}

void func_800F6AE8_254958(ProcessHeader* arg0, s16 arg1) {
    arg0->unk_0A = arg1;
    D_800F91B4 = (arg1 * 4.0f) + 480.0f;
    func_8006DDC8(arg0->unk_08, 0x4B, (arg0->unk_0A + 0x5A));
}

void func_800F6B58_2549C8(ProcessHeader* arg0) {
    func_8003E8B8(arg0->prev, 0, 0, 6, 0);
    SleepProcess(3);
    while (1) {
        if (!(func_8003E940(arg0->prev))) {
            SleepVProcess();
        } else {
            break;
        }
    }
    func_8003E8B8(arg0->prev, -1, 0, 6, 2);
}

void func_800F6BD8_254A48(void) {
    s32 var_a1;
    s32 var_a1_2;
    ProcessHeader* temp_s0;

    func_80060128(0x30);
    temp_s0 = func_800F68E4_254754(D_800F8BF0_256A60);
    SetFadeInTypeAndTime(2, 0x10);

    while (func_80072718() != 0) {
        SleepVProcess();
    }
    
    func_800F6B58_2549C8(temp_s0);
    
    if (IsFlagSet(0x44) == 0) {
        var_a1 = 0x4EE;
    } else {
        var_a1 = 0x4F0;
    }

    LoadStringIntoWindow(temp_s0->unk_08, (void*)var_a1, -1, -1);
    func_80071C8C(temp_s0->unk_08, 1);
    PlaySound(0xF0);
    WaitForTextConfirmation(temp_s0->unk_08);
    func_80071E80(temp_s0->unk_08, 1);
    func_8006EB40(temp_s0->unk_08);
    
    if (IsFlagSet(0x44) == 0) {
        var_a1_2 = 0x4EF;
    } else {
        var_a1_2 = 0x4F1;
    }

    LoadStringIntoWindow(temp_s0->unk_08, (void*)var_a1_2, -1, -1);
    func_80071C8C(temp_s0->unk_08, 1);
    WaitForTextConfirmation(temp_s0->unk_08);
    func_80071E80(temp_s0->unk_08, 1);
    func_800601D4(0x5A);
    SleepProcess(5);
    func_800726AC(2, 0x10);
    SleepProcess(0x11);
    func_800F6AA0_254910(temp_s0);
    func_80056AF4();
    func_8005DFB8(1);
    func_8005E3A8();
    SleepVProcess();
}

void func_800F6D30_254BA0(void) {
    D_800ED5C2 = 7;
    InitObjSystem(0xA, 0);
    func_8005E044(0x35, 0, 0x92);
}

void InitBoard(void) {
    InitObjSystem(0xA, 0);
    SetPlayerOntoChain(0, 0x12, 0);
    SetPlayerOntoChain(1, 0x12, 0);
    SetPlayerOntoChain(2, 0x12, 0);
    SetPlayerOntoChain(3, 0x12, 0);
    SetBoardFeatureFlag(0x43);
    func_800F667C_2544EC();
    D_800ED172 = GetRandomByte() % 3;
    ClearBoardFeatureFlag(0x4F);
    ClearBoardFeatureFlag(0x50);
    func_800F7F4C_255DBC();
    func_8005DFB8(1);
}

void func_800F6E34_254CA4(void) {
    playerMain* temp_s0;
    s32 i;

    InitObjSystem(0x50, 0x28);
    func_80060088();
    func_80023448(1);
    func_800234B8(0, 0x78, 0x78, 0x78);
    func_800234B8(1, 0x40, 0x40, 0x60);
    func_80023504(1, -100.0f, 100.0f, 300.0f);
    func_80056A08(0x44, 0x4C, 0x48, 0);
    func_80052E84(0);
    func_80052E84(1);
    func_80052E84(2);
    func_80052E84(3);
    
    for (i = 0; i < 4; i++) {
        temp_s0 = GetPlayerStruct(i);
        func_8003E174(temp_s0->playerObj);
        temp_s0->playerObj->unk_0A |= 2;
    }

    if (IsFlagSet(0x4E) != 0) {
        ClearBoardFeatureFlag(0x4E);
        func_800F66C8_254538();
    }

    func_800F671C_25458C();
    func_800F74D4_255344();
    func_800F719C_25500C();

    if (IsFlagSet(0xF) == 0) {
        func_800F732C_25519C();
    }
}

void func_800F6F68_254DD8(void) {
    playerMain* playerNoFeatureFlag;
    playerMain* playerFeatureFlag;
    s32 i;

    func_80060128(0xF);
    InitCameras(2);
    func_800F6E34_254CA4();
    EventTableHydrate(D_800F905C_256ECC);
    
    if (IsFlagSet(0xF) == 0) {
        EventTableHydrate(&D_800F9164);
    }
    
    func_800584F0(0);
    
    if (IsFlagSet(0x4F) != 0) {
        playerNoFeatureFlag = GetPlayerStruct(-1);
        ClearBoardFeatureFlag(0x4F);
        func_800A0D50(&playerNoFeatureFlag->playerObj->coords, &GetSpaceData(0x4E)->coords);
        func_800A0E80(&playerNoFeatureFlag->playerObj->unk_18, &GetSpaceData(2)->coords, &playerNoFeatureFlag->playerObj->coords);
    }
    
    if (IsFlagSet(0x50) != 0) {
        ClearBoardFeatureFlag(0x50);
        for (i = 0; i < 4; i++) {
            playerFeatureFlag = GetPlayerStruct(i);
            playerFeatureFlag->playerObj->unk_0A &= ~2;
            func_8003E664(playerFeatureFlag->playerObj);
        }
    }
}

void func_800F7070_254EE0(void) {
    InitCameras(1);
    func_800F6E34_254CA4();
    func_800584F0(1);
}

void func_800F709C_254F0C(s16 arg0) {
    Object* var_s2;
    SpaceData* space;

    if (D_800F91C0[arg0] == 0) {
        if (D_800F91BC == NULL) {
            var_s2 = CreateObject(0x79, NULL);
            func_8003E174(var_s2);
            D_800F91BC = var_s2;
        } else {
            var_s2 = func_8003E320(D_800F91BC);
        }
        
        var_s2->unk_0A |= 2;

        D_800F91C0[arg0] = var_s2;
        func_8004CDCC(var_s2);
        space = GetSpaceData(D_800F8BF8_256A68[arg0]);
        func_800A0D50(&var_s2->coords, &space->coords);
        func_8003C314(0xA, var_s2, D_800F8C18_256A88[arg0].unk0, D_800F8C18_256A88[arg0].unk2);
    }
}

void func_800F719C_25500C(void) {
    s32 i;
    D_800F91BC = 0;

    for (i = 0; i < ARRAY_COUNT(D_800F8C08_256A78); i++) {
        D_800F91C0[i] = NULL;
        if (IsFlagSet(D_800F8C08_256A78[i]) == 0) {
            func_800F709C_254F0C(i);
        }
    }
}

void func_800F7224_255094(s16 arg0) {
    Object* var_s1;

    if (D_800F91E0[arg0] == 0) {
        if (D_800F91DC == NULL) {
            var_s1 = CreateObject(0x6A, NULL);
            func_8003E174(var_s1);
            D_800F91DC = var_s1;
        } else {
            var_s1 = func_8003E320(D_800F91DC);
        }
        D_800F91E0[arg0] = var_s1;
        var_s1->unk_0A |= 2;
        func_800A0D00(&var_s1->xScale, 0.6f, 0.6f, 0.6f);
        var_s1->unk_30 = 100.0f;
        func_800A0D50(&var_s1->coords, &(GetSpaceData(D_800F8C34_256AA4[arg0])->coords) );
        func_8003C314(8, var_s1, 0, 0);
    }
}

void func_800F732C_25519C(void) {
    s32 i;
    D_800F91DC = 0;
    
    for (i = 0; i < ARRAY_COUNT(D_800F8C34_256AA4); i++) {
        func_800F7224_255094(i);
    }
}

void func_800F736C_2551DC(void) {
    Object* temp_s0;

    if (D_800F91E4 == NULL) {
        temp_s0 = CreateObject(0x3B, &D_800F8C38_256AA8);
        func_8003E174(temp_s0);
        D_800F91E4 = temp_s0;
        temp_s0->unk_0A |= 2;
        func_800A0D50(&temp_s0->coords, &GetSpaceData(2)->coords);
        func_8003C314(7, temp_s0, 0, 0);
    }
}


void func_800F73F0_255260(void) {
    Process* process;
    Vec3f sp10;
    
    while (func_80072718() != 0) {
        SleepVProcess();
    }
    
    SleepProcess(0x1E);
    func_8003E81C(D_800F91E4, 0, 0);
    PlaySound(0x4D);

    while ((func_8003E940(D_800F91E4) & 1) == 0) {
        SleepVProcess();
    }

    func_8003E81C(D_800F91E4, -1, 2);
    func_8004CD84(&sp10);
    process = GetCurrentProcess();
    LinkChildProcess(process, func_8004D1EC(&D_800F91E4->unk_18, &sp10, &D_800F91E4->unk_18, 0x14));
    WaitForChildProcess();
    EndProcess(NULL);
}

void func_800F74D4_255344(void) {
    D_800F91E4 = 0;
    func_800F736C_2551DC();
    
    if (IsFlagSet(0x4F)) {
        func_800A0E80(&D_800F91E4->unk_18, &(GetSpaceData(0x4E)->coords), &D_800F91E4->coords);
        InitProcess(func_800F73F0_255260, 0x1005, 0, 0);
    }
}

s16 func_800F753C_2553AC(void) {
    return RunDecisionTree(D_800F8D60_256BD0);
}

s16 func_800F7564_2553D4(void) {
    return RunDecisionTree(D_800F8C40_256AB0);
}

s16 func_800F758C_2553FC(void) {
    return RunDecisionTree(D_800F8C70_256AE0);
}

s16 func_800F75B4_255424(void) {
    return RunDecisionTree(D_800F8CA0_256B10);
}

s16 func_800F75DC_25544C(void) {
    return RunDecisionTree(D_800F8C40_256AB0) ^ 1;
}

s16 func_800F7608_255478(void) {
    return RunDecisionTree(D_800F8CD0_256B40);
}

s16 func_800F7630_2554A0(void) {
    return RunDecisionTree(D_800F8D00_256B70);
}

s16 func_800F7658_2554C8(void) {
    return RunDecisionTree(D_800F8C70_256AE0) ^ 1;
}

s16 func_800F7684_2554F4(void) {
    return RunDecisionTree(D_800F8CD0_256B40) ^ 1;
}

s16 func_800F76B0_255520(void) {
    return RunDecisionTree(D_800F8D30_256BA0);
}

s16 func_800F76D8_255548(void) {
    return RunDecisionTree(D_800F8CA0_256B10) ^ 1;
}

s16 func_800F7704_255574(void) {
    return RunDecisionTree(D_800F8D00_256B70) ^ 1;
}

s16 func_800F7730_2555A0(void) {
    return RunDecisionTree(D_800F8D30_256BA0) ^ 1;
}

s32 func_800F775C_2555CC(void) {
    if (D_800ED154.unk_00[0] != 0) {
        if (!(IsFlagSet(0x48))) {
            return 0;
        }
    }
    return 1;
}

s32 func_800F7794_255604(void) {
    if (D_800ED154.unk_00[1] != 0) {
        if (!(IsFlagSet(0x4C))) {
            return 0;
        }
    }
    return 1;
}

s32 func_800F77CC_25563C(void) {
    if (D_800ED158[0] != 0) {
        switch (D_800ED158[13]) {
        case 0:
            if (!(IsFlagSet(0x46)) || !(IsFlagSet(0x47))) {
                return 0;
            }
            break;
        case 1:
            if (!(IsFlagSet(0x49)) || !(IsFlagSet(0x4A))) {
                return 0;
            }
            break;
        default:
            return 2;
        }
    }
    return 1;
}

s32 func_800F784C_2556BC(void) {
    if (D_800ED154.unk_00[3] != 0) {
        switch (D_800ED154.unk_1C) {
        case 0:
                return 2;
        case 1:
            if (IsFlagSet(0x46) == 0 || IsFlagSet(0x47) == 0) {
                return 0;
            }
            break;
        case 2:
            if (IsFlagSet(0x46) == 0) {
                return 0;
            }
        }
    }
    return 1;
}

s32 func_800F78CC_25573C(void) {
    if (D_800ED154.unk_00[4] != 0) {
        switch (D_800ED154.unk_1C) {
        case 0:
            if (IsFlagSet(0x49) == 0 || IsFlagSet(0x4A) == 0) {
                return 0;
            }
            break;
        case 1:
            if (IsFlagSet(0x4B) == 0) {
                return 0;
            }
            break;
        }
    }
    return 1;
}


s32 func_800F7934_2557A4(void) {
    if (D_800ED154.unk_00[5] != 0) {
        switch (D_800ED154.unk_1C) {
        case 0:
            return 3;
        case 1:
            return 2;
        case 2:
            if ( IsFlagSet(0x49) == 0 || IsFlagSet(0x4A) == 0) {
                return 0;
            }
        }
    }
    return 1;
}

s32 func_800F79BC_25582C(void) {
    if (D_800ED154.unk_00[6] != 0) {
        switch (D_800ED154.unk_1C) {
        case 0:
            if (IsFlagSet(0x4B) == 0) {
                return 0;
            }
            break;
        case 2:
            if (IsFlagSet(0x4B) == 0) {
                return 0;
            }
            break;
        case 1:
            return 3;
        }
    }
    return 1;
}

s32 func_800F7A2C_25589C(void) {
    if (D_800ED158[5] != 0 && D_800ED158[13] == 2) {
        return 3;
    } else {
        return 1;
    }
}

s32 func_800F7A60_2558D0(void) {
    if (D_800ED154.unk_00[8] != 0) {
        switch (D_800ED154.unk_1C) {
            case 0:
                return 2;
            case 1:
                if (IsFlagSet(0x46) == 0) {
                    return 0;
                }
                break;
            case 2:
                if (IsFlagSet(0x46) == 0 || IsFlagSet(0x47) == 0) {
                    return 0;
                }
            break;
        }
    }
    return 1;
}

s32 func_800F7AE8_255958(void) {
    if (D_800ED154.unk_00[9] != 0) {
        if (D_800ED154.unk_1C == 0) {
            if (IsFlagSet(0x46) == 0) {
                return 0;
            }
        } else {
            return 2;
        }
    }
    return 1;
}

void func_800F7B30_2559A0(s32 arg0, s32 arg1) {
    D_800F8D6C[((arg0 & 3) << 2 | (arg1 & 3))]();
}

void func_800F7B6C_2559DC(void) {
    func_800F7B30_2559A0(func_800F775C_2555CC(), func_800F7794_255604());
}

void func_800F7BA0_255A10(void) {
    func_800F7B30_2559A0(func_800F784C_2556BC(), func_800F77CC_25563C());
}

void func_800F7BD4_255A44(void) {
    func_800F7B30_2559A0(func_800F78CC_25573C(), func_800F7934_2557A4());
}

void func_800F7C08_255A78(void) {
    func_800F7B30_2559A0(func_800F7A2C_25589C(), func_800F79BC_25582C());
}

void func_800F7C3C_255AAC(void) {
    func_800F7B30_2559A0(func_800F7AE8_255958(), func_800F7A60_2558D0());
}


void func_800F7C70_255AE0(void) {
    while (func_8004B850() != 0) {
        SleepVProcess();
    }
    SleepVProcess();
    D_800F91E8 = func_80045D84(0, 0x92, 1);
    D_800F91EC = func_80045D84(1, 0xA0, 1);
    D_800F91F0 = func_80045D84(3, 0xAE, 1);
    D_800F91F4 = func_80045D84(0xB, 0xBC, 1);
    SleepProcess(3);
    D_800EE320 = 1;
}

void func_800F7D20_255B90(void) {
    D_800EE320 = 0;
    func_80045E6C(D_800F91E8);
    func_80045E6C(D_800F91EC);
    func_80045E6C(D_800F91F0);
    func_80045E6C(D_800F91F4);
}

Object* func_800F7D6C_255BDC(s16 arg0) {
    Object* temp_s0;
    playerMain* temp_s1 = GetPlayerStruct(arg0);

    if (temp_s1->playerIndex == GetCurrentPlayerIndex()) {
        temp_s0 = CreateObject(temp_s1->characterID, NULL);
    } else {
        temp_s0 = CreateObject(func_80052F6C(arg0), NULL);
    }
    func_800A0D50(&temp_s0->coords, &temp_s1->playerObj->coords);
    func_800A0D50(&temp_s0->unk_18, &temp_s1->playerObj->unk_18);
    func_80025930(*temp_s0->unk_3C->unk_40, 0, 0x8000);
    func_80025930(*temp_s0->unk_40->unk_40, 0, 0x8000);
    func_80021240(*temp_s0->unk_3C->unk_40);
    func_80021240(*temp_s0->unk_40->unk_40);
    return temp_s0;
}

void func_800F7E5C_255CCC(Object* arg0) {
    DestroyObject(arg0);
}

void func_800F7E78_255CE8(Object* arg0) {
    s32 i;

    for (i = 255; i >= 0; i = i - 8) {
        func_800211BC(*arg0->unk_3C->unk_40, i);
        func_800211BC(*arg0->unk_40->unk_40, ~i); 
        SleepVProcess();
    }
}

void func_800F7EE0_255D50(Object* arg0) {
    s32 i;

    for (i = 0; i <= 255; i = i + 8) {
        func_800211BC(*arg0->unk_3C->unk_40, i);
        func_800211BC(*arg0->unk_40->unk_40, ~i); 
        SleepVProcess();
    }
}

void func_800F7F4C_255DBC(void) {
    s32 i;

    for (i = 0; i < 12; i++) {
        D_800ED154.unk_00[i] = 0;
    }
}

void func_800F7F7C_255DEC(void) {
    Object* temp_s1;
    Object* temp_s3;
    Process* process;
    SpaceData* space;
    playerMain* player = GetPlayerStruct(-1);

    player->playerObj->unk_0A &= ~2;
    func_8003E664(player->playerObj);
    temp_s3 = func_800F7D6C_255BDC(-1);
    temp_s1 = CreateObject(0x4C, NULL);
    func_80025EB4(*temp_s1->unk_3C->unk_40, 2, 0);
    func_800A0D50(&temp_s1->coords, &player->playerObj->coords);
    func_80058910(-1, 3);
    PlaySound(0x47);
    func_800F7EE0_255D50(temp_s3);
    DestroyObject(temp_s1);
    space = GetSpaceData(GetAbsSpaceIndexFromChainSpaceIndex(player->nextChainIndex, player->nextSpaceIndex));
    process = GetCurrentProcess();
    LinkChildProcess(process, func_8004D648(&player->playerObj->coords, &space->coords, &player->playerObj->coords, 25.0f));
    WaitForChildProcess();
    SetPlayerOntoChain(-1, player->nextChainIndex, player->nextSpaceIndex);
    temp_s1 = CreateObject(0x4C, NULL);
    func_80025EB4(*temp_s1->unk_3C->unk_40, 2, 0);
    func_800A0D50(&temp_s1->coords, &player->playerObj->coords);
    PlaySound(0x47);
    func_800A0D50(&temp_s3->coords, &player->playerObj->coords);
    func_800A0D50(&temp_s3->unk_18, &player->playerObj->unk_18);
    func_800F7E78_255CE8(temp_s3);
    DestroyObject(temp_s1);
    func_800F7E5C_255CCC(temp_s3);
    func_8003E5E0(player->playerObj);
    player->playerObj->unk_0A |= 2;
}

void func_800F8130_255FA0(void) {
    playerMain* player = GetPlayerStruct(-1);
    s16 curSpaceIndex = GetCurrentSpaceIndex();
    s32 i;

    for (i = 0; i < ARRAY_COUNT(D_800F8F08_256D78); i++) {
        if (D_800F8F08_256D78[i] != curSpaceIndex) {
            continue;
        } else {
            while (func_8004B850() != 0) {
                SleepProcess(1);
            }
            
            D_800ED154.unk_00[i] = 1;

            SetNextChainAndSpace(-1, D_800F8ED8_256D48[i][D_800ED154.unk_1C], 0);
            func_800405DC(player->playerIndex);
            func_800F7F7C_255DEC();
            func_8003FEFC(player->playerIndex);
            break;
        }        
    }

    EndProcess(NULL);
}

void func_800F8240_2560B0(void) {
    SetPlayerAnimation(-1, -1, 2);
    SleepProcess(30);
    SetBoardFeatureFlag(0x4F);
    func_800587BC(0x5D, 0, 3, 1);
    func_8004CB20(1);
    EndProcess(NULL);
}

void func_800F8298_256108(void) {
    Vec3f sp10;
    playerMain* player;
    s16 textWindowID;
    SpaceData* temp_s0;
    s32 tempVar;

    player = GetPlayerStruct(-1);

    while (func_80072718() != 0) {
        SleepVProcess();
    }
    
    SleepProcess(0x32);
    SetNextChainAndSpace(-1, 0x13, 0);
    func_800F7F7C_255DEC();
    SetPlayerAnimation(-1, 0, 2);
    temp_s0 = GetSpaceData(GetAbsSpaceIndexFromChainSpaceIndex(0x12, 1));
    func_800A0E80(&player->playerObj->unk_18, &temp_s0->coords, &player->playerObj->coords);
    func_8004D3F4(&player->playerObj->coords, &temp_s0->coords, &player->playerObj->coords, 0xF);
    SleepProcess(0xF);
    SetPlayerOntoChain(-1, 0x12, 1);
    SetPlayerAnimation(-1, -1, 2);
    SleepProcess(0xF);
    func_800A0D50(&sp10, &player->playerObj->unk_18);
    func_8003D514(&sp10, -90.0f);
    func_8004D1EC(&player->playerObj->unk_18, &sp10, &player->playerObj->unk_18, 4);
    SleepProcess(4);
    func_8003D514(&sp10, 170.0f);
    func_8004D1EC(&player->playerObj->unk_18, &sp10, &player->playerObj->unk_18, 8);
    SleepProcess(8);
    func_8003D514(&sp10, -80.0f);
    func_8004D1EC(&player->playerObj->unk_18, &sp10, &player->playerObj->unk_18, 4);
    SleepProcess(4);
    tempVar = D_800ED172;
    
    while (1) {
        D_800ED172 =  GetRandomByte() % 3;
        if (tempVar != D_800ED172) {
            break;
        }
    }

    func_800F7F4C_255DBC();
    textWindowID = CreateTextWindow(0x4C, 0x3C, 0xE, 3);
    
    switch (D_800ED172) {
    case 0:
        LoadStringIntoWindow(textWindowID, (void*)0x1FD, -1, -1);
        break;
    case 1:
        LoadStringIntoWindow(textWindowID, (void*)0x1FE, -1, -1);
        break;
    default:
        LoadStringIntoWindow(textWindowID, (void*)0x1FF, -1, -1);
        break;
    }
    
    func_8006E070(textWindowID, 0);
    ShowTextWindow(textWindowID);
    func_8004DBD4(textWindowID, player->playerIndex);
    HideTextWindow(textWindowID);
    EndProcess(NULL);
}

void func_800F8514_256384(void) {
    SetBoardFeatureFlag(0x50);
    func_800587EC(0x5C, 0, 4);
    func_8004CB20(1);
    SetPlayerOntoChain(0, 0x12, 1);
    SetPlayerOntoChain(1, 0x12, 1);
    SetPlayerOntoChain(2, 0x12, 1);
    SetPlayerOntoChain(3, 0x12, 1);
}

void func_800F8588_2563F8(void) {
    playerMain* temp_s0_3;
    playerMain* curPlayer;
    s32 playerIndex;
    Object* objectStructs[4];
    s32 i;
    s32 j;

    curPlayer = GetPlayerStruct(-1);
    
    while (func_80072718() != 0) {
        SleepVProcess();
    }
    
    SleepProcess(5);
    playerIndex = curPlayer->playerIndex;
    objectStructs[playerIndex] = func_800F7D6C_255BDC(playerIndex);
    PlaySound(0x47);

    for (i = 255; i >= 0; i = i - 8) { 
        func_800211BC(*objectStructs[playerIndex]->unk_3C->unk_40, i & 0xFF);
        func_800211BC(*objectStructs[playerIndex]->unk_40->unk_40, ~i & 0xFF);
        SleepVProcess();
    }

    func_800F7E5C_255CCC(objectStructs[playerIndex]);
    curPlayer->playerObj->unk_0A |= 2;
    func_8003E5E0(curPlayer->playerObj);
    SleepProcess(0xA);

    for (j = 0; j < 4; j++) {
        temp_s0_3 = GetPlayerStruct(j);
        if (temp_s0_3 != curPlayer) {
            objectStructs[j] = func_800F7D6C_255BDC(j);
            func_800A0D00(&objectStructs[j]->xScale, 0.7f, 0.7f, 0.7f);
        }
    }

    PlaySound(0x47);

    for (i = 255; i >= 0; i = i - 8) {
        for (j = 0; j < 4; j++) {
            temp_s0_3 = GetPlayerStruct(j);
            if (temp_s0_3 != curPlayer) {
                func_800211BC(*objectStructs[j]->unk_3C->unk_40, i);
                func_800211BC(*objectStructs[j]->unk_40->unk_40, ~i); 
            }       
        }
        SleepVProcess();
    }

    for (j = 0; j < 4; j++) {
        temp_s0_3 = GetPlayerStruct(j);
        if (temp_s0_3 != curPlayer) {
            func_800F7E5C_255CCC(objectStructs[j]);
            temp_s0_3->playerObj->unk_0A |= 2;
            func_8003E5E0(temp_s0_3->playerObj);            
        }
    }
        
    EndProcess(NULL);
}

void func_800F87E4_256654(EventTableUnkStruct* arg0) {
    s32 directionResult;
    s32 temp_s2;
    s32 i;
    s32 tempVar;

    SetPlayerAnimation(-1, -1, 2);
    SleepVProcess();
    func_800F7C70_255AE0();
    temp_s2 = func_8003C218(D_800ED5C0.unk_1C, arg0->spaceIDs);
    func_8003C060(temp_s2, D_800ED5C0.unk_1C, 0);
    
    if (PlayerIsCPU(-1) != 0) {
        tempVar = RunDecisionTree(arg0->decisionTree);
        for (i = 0; i < tempVar; i++) {
            func_8003BE84(temp_s2, -2);
        }
        func_8003BE84(temp_s2, -4);
    }
    
    directionResult = DirectionPrompt(temp_s2);
    
    func_8003B908(temp_s2);
    func_800F7D20_255B90();
    
    if (directionResult == 0) {
        SetNextChainAndSpace(-1, arg0->unk_08, 0);
    } else {
        SetNextChainAndSpace(-1, arg0->unk_0A, 0);
    }
}

void func_800F88EC_25675C(void) {
    func_800F87E4_256654(&D_800F8F68_256DD8);
    EndProcess(NULL);
}

void func_800F8914_256784(void) {
    func_800F87E4_256654(&D_800F8F8C_256DFC);
    EndProcess(NULL);
}

void func_800F893C_2567AC(void) {
    func_800F87E4_256654(&D_800F8FB0_256E20);
    EndProcess(NULL);
}

void func_800F8964_2567D4(void) {
    func_800F87E4_256654(&D_800F8FD4_256E44);
    EndProcess(NULL);
}

void func_800F898C_2567FC(void) {
    func_800F87E4_256654(&D_800F8FF8_256E68);
    EndProcess(NULL);
}

void func_800F89B4_256824(void) {
    SetNextChainAndSpace(-1, 0x12, 2);
}

void func_800F89D8_256848(void) {
    SetNextChainAndSpace(-1, 7, 0);
}

void func_800F89FC_25686C(void) {
    func_8004D2A4(-1, 8, 0);
    func_800587EC(0x65, 0, 1);
}

void func_800F8A30_2568A0(void) {
    if (func_800F67AC_25461C(GetCurrentSpaceIndex()) == 1) {
        func_800587EC(0x5E, 0, 2);
        func_8004D2A4(-1, 8, func_800F6610_254480());
    }
}

void func_800F8A94_256904(void) {
    playerMain* temp_s0;
    s32 i;

    if (func_800F67AC_25461C(GetCurrentSpaceIndex()) == 2) {
        for (i = 0; i < 4; i++) {
            temp_s0 = GetPlayerStruct(i);
            temp_s0->unk_00 = i != GetCurrentPlayerIndex();
        }
        func_800587BC(1, 0, 5, 1);
    }
}

void func_800F8B20_256990(void) {
    InitCameras(2);
    func_8001D4D4(1, &D_800F8BB0_256A20);
    func_800F6E34_254CA4();
    func_800584F0(2);
    InitProcess(&func_800F6BD8_254A48, 0x1005, 0, 0);
}
