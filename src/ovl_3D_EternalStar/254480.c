#include "common.h"
#include "eternalStar.h"

void func_8004DBD4(s16, u8);

s16 func_800F6610_254480(void) {
    s16 curSpaceIndex = GetCurrentSpaceIndex();
    s32 i;

    for (i = 0; i < 7; i++) {
        if (curSpaceIndex == D_800F8BD0[i]) {
            return D_800F8BE0[i];
        }
    }
    return D_800F8BE0[0];
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
    if (D_800ED5CA >= 7) {
        D_800ED5CA = 0;
        SetBoardFeatureFlag(0x44);
        func_800F667C_2544EC();
    }
}

void func_800F671C_25458C(void) {
    s32 i;

    for (i = 0; i < 7; i++) {
        if (IsBoardFeatureFlagSet(D_800F8BC0[i])) {
            SetSpaceType(D_800F8BD0[i], 6);
        } else {
            SetSpaceType(D_800F8BD0[i], 5);
        }
    }
}

s16 func_800F67AC_25461C(s16 arg0) {
    GameStatus* gameStatus = &D_800ED5C0;
    s32 i;
    
    for (i = 0; i < 7; i++) {
        if (arg0 != D_800F8BD0[i]) {
            continue;
        } else {
            if (IsBoardFeatureFlagSet(D_800F8BC0[i]) != 0) {
                return 2;
            } else {
                gameStatus->unk_1A = D_800F8BC0[i];
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
    unk_Struct03* temp_v0;
    ProcessHeader* temp_s0;

    temp_s0 = (ProcessHeader*)MallocTemp(sizeof(ProcessHeader));
    if (temp_s0 != NULL) {
        temp_v0 = func_8003DBE0(0x7B, arg0);
        temp_s0->prev = temp_v0;
        func_800A0D00(&temp_v0->unk_24, 0.5f, 0.5f, 0.5f);
        func_80025F10(*temp_s0->prev->unk_3C->unk_40, 2);
        process = InitProcess(&func_800F68B8_254728, 0x4000, 0, 0);
        temp_s0->next = (void*)process;
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
        func_8003E694(arg0->prev);
        EndProcess(arg0->next);
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
    temp_s0 = func_800F68E4_254754(D_800F8BF0);
    func_80072644(2, 0x10);

    while (func_80072718() != 0) {
        SleepVProcess();
    }
    
    func_800F6B58_2549C8(temp_s0);
    
    if (IsBoardFeatureFlagSet(0x44) == 0) {
        var_a1 = 0x4EE;
    } else {
        var_a1 = 0x4F0;
    }

    LoadStringIntoWindow(temp_s0->unk_08, var_a1, -1, -1);
    func_80071C8C(temp_s0->unk_08, 1);
    PlaySound(0xF0);
    WaitForTextConfirmation(temp_s0->unk_08);
    func_80071E80(temp_s0->unk_08, 1);
    func_8006EB40(temp_s0->unk_08);
    
    if (IsBoardFeatureFlagSet(0x44) == 0) {
        var_a1_2 = 0x4EF;
    } else {
        var_a1_2 = 0x4F1;
    }

    LoadStringIntoWindow(temp_s0->unk_08, var_a1_2, -1, -1);
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
    func_8005CF30(0xA, 0);
    func_8005E044(0x35, 0, 0x92);
}

void func_800F6D6C_254BDC(void) {
    func_8005CF30(0xA, 0);
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

    func_8005CF30(0x50, 0x28);
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
    if (IsBoardFeatureFlagSet(0x4E) != 0) {
        ClearBoardFeatureFlag(0x4E);
        func_800F66C8_254538();
    }
    func_800F671C_25458C();
    func_800F74D4_255344();
    func_800F719C_25500C();
    if (IsBoardFeatureFlagSet(0xF) == 0) {
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
    EventTableHydrate(&D_800F905C);
    
    if (IsBoardFeatureFlagSet(0xF) == 0) {
        EventTableHydrate(&D_800F9164);
    }
    
    func_800584F0(0);
    
    if (IsBoardFeatureFlagSet(0x4F) != 0) {
        playerNoFeatureFlag = GetPlayerStruct(-1);
        ClearBoardFeatureFlag(0x4F);
        func_800A0D50(&playerNoFeatureFlag->playerObj->coords, &GetSpaceData(0x4E)->coords);
        func_800A0E80(&playerNoFeatureFlag->playerObj->unk_18, &GetSpaceData(2)->coords, &playerNoFeatureFlag->playerObj->coords);
    }
    
    if (IsBoardFeatureFlagSet(0x50) != 0) {
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

void func_800F709C_254F0C(s16 arg0) { //fake match
    unk_Struct03* var_s2;
    SpaceData* space;
    s16 temp;

    if (D_800F91C0[arg0] == 0) {
        if (D_800F91BC == NULL) {
            var_s2 = func_8003DBE0(0x79U, NULL);
            func_8003E174(var_s2);
            D_800F91BC = var_s2;
        } else {
            var_s2 = func_8003E320(D_800F91BC);
        }
        var_s2->unk_0A |= 2;
        temp = arg0;
        D_800F91C0[arg0] = var_s2;
        func_8004CDCC(var_s2);
        space = GetSpaceData(D_800F8BF8[temp]);
        func_800A0D50(&var_s2->coords, &space->coords);
        func_8003C314(0xA, var_s2, (s16)(D_800F8C18[temp] >> 16 ), (s16)(D_800F8C1A[temp] >> 16)); //wtf
    }
}

void func_800F719C_25500C(void) {
    s32 i;
    D_800F91BC = 0;

    for (i = 0; i < 7; i++) {
        D_800F91C0[i] = NULL;
        if (IsBoardFeatureFlagSet(D_800F8C08[i]) == 0) {
            func_800F709C_254F0C(i);
        }
    }
}

void func_800F7224_255094(s16 arg0) {
    unk_Struct03* var_s1;

    if (D_800F91E0[arg0] == 0) {
        if (D_800F91DC == NULL) {
            var_s1 = func_8003DBE0(0x6A, NULL);
            func_8003E174(var_s1);
            D_800F91DC = var_s1;
        } else {
            var_s1 = func_8003E320(D_800F91DC);
        }
        D_800F91E0[arg0] = var_s1;
        var_s1->unk_0A |= 2;
        func_800A0D00(&var_s1->unk_24, 0.6f, 0.6f, 0.6f);
        var_s1->unk_30 = 100.0f;
        func_800A0D50(&var_s1->coords, &(GetSpaceData(D_800F8C34[arg0])->coords) );
        func_8003C314(8, var_s1, 0, 0);
    }
}

void func_800F732C_25519C(void) {
    s32 i;
    D_800F91DC = 0;
    
    for (i = 0; i <= 0; i++) {
        func_800F7224_255094(i);
    }
}

void func_800F736C_2551DC(void) {
    unk_Struct03* temp_s0;

    if (D_800F91E4 == NULL) {
        temp_s0 = func_8003DBE0(0x3B, &D_800F8C38);
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
    
    if (IsBoardFeatureFlagSet(0x4F)) {
        func_800A0E80(&D_800F91E4->unk_18, &(GetSpaceData(0x4E)->coords), &D_800F91E4->coords);
        InitProcess(func_800F73F0_255260, 0x1005, 0, 0);
    }
}

s16 func_800F753C_2553AC(void) {
    return RunDecisionTree(&D_800F8D60);
}

s16 func_800F7564_2553D4(void) {
    return RunDecisionTree(&D_800F8C40);
}

s16 func_800F758C_2553FC(void) {
    return RunDecisionTree(&D_800F8C70);
}

s16 func_800F75B4_255424(void) {
    return RunDecisionTree(&D_800F8CA0);
}

s16 func_800F75DC_25544C(void) {
    return RunDecisionTree(&D_800F8C40) ^ 1;
}

s16 func_800F7608_255478(void) {
    return RunDecisionTree(&D_800F8CD0);
}

s16 func_800F7630_2554A0(void) {
    return RunDecisionTree(&D_800F8D00);
}

s16 func_800F7658_2554C8(void) {
    return RunDecisionTree(&D_800F8C70) ^ 1;
}

s16 func_800F7684_2554F4(void) {
    return RunDecisionTree(&D_800F8CD0) ^ 1;
}

s16 func_800F76B0_255520(void) {
    return RunDecisionTree(&D_800F8D30);
}

s16 func_800F76D8_255548(void) {
    return RunDecisionTree(&D_800F8CA0) ^ 1;
}

s16 func_800F7704_255574(void) {
    return RunDecisionTree(&D_800F8D00) ^ 1;
}

s16 func_800F7730_2555A0(void) {
    return RunDecisionTree(&D_800F8D30) ^ 1;
}

s32 func_800F775C_2555CC(void) {
    if (D_800ED154.unk_00[0] != 0) {
        if (!(IsBoardFeatureFlagSet(0x48))) {
            return 0;
        }
    }
    return 1;
}

s32 func_800F7794_255604(void) {
    if (D_800ED154.unk_00[1] != 0) {
        if (!(IsBoardFeatureFlagSet(0x4C))) {
            return 0;
        }
    }
    return 1;
}

s32 func_800F77CC_25563C(void) {
    if (D_800ED158[0] != 0) {
        switch (D_800ED158[13]) {
        case 0:
            if (!(IsBoardFeatureFlagSet(0x46)) || !(IsBoardFeatureFlagSet(0x47))) {
                return 0;
            }
            break;
        case 1:
            if (!(IsBoardFeatureFlagSet(0x49)) || !(IsBoardFeatureFlagSet(0x4A))) {
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
            if (IsBoardFeatureFlagSet(0x46) == 0 || IsBoardFeatureFlagSet(0x47) == 0) {
                return 0;
            }
            break;
        case 2:
            if (IsBoardFeatureFlagSet(0x46) == 0) {
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
            if (IsBoardFeatureFlagSet(0x49) == 0 || IsBoardFeatureFlagSet(0x4A) == 0) {
                return 0;
            }
            break;
        case 1:
            if (IsBoardFeatureFlagSet(0x4B) == 0) {
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
            if ( IsBoardFeatureFlagSet(0x49) == 0 || IsBoardFeatureFlagSet(0x4A) == 0) {
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
            if (IsBoardFeatureFlagSet(0x4B) == 0) {
                return 0;
            }
            break;
        case 2:
            if ( IsBoardFeatureFlagSet(0x4B) == 0) {
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
                if (IsBoardFeatureFlagSet(0x46) == 0) {
                    return 0;
                }
                break;
            case 2:
                if (IsBoardFeatureFlagSet(0x46) == 0 || IsBoardFeatureFlagSet(0x47) == 0) {
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
            if (IsBoardFeatureFlagSet(0x46) == 0) {
                return 0;
            }
        } else {
            return 2;
        }
    }
    return 1;
}

void func_800F7B30_2559A0(s32 arg0, s32 arg1) { //fake match
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

unk_Struct03* func_800F7D6C_255BDC(s16 arg0) {
    unk_Struct03* temp_s0;
    playerMain* temp_s1 = GetPlayerStruct(arg0);

    if (temp_s1->playerIndex == GetCurrentPlayerIndex()) {
        temp_s0 = func_8003DBE0(temp_s1->characterID, NULL);
    } else {
        temp_s0 = func_8003DBE0(func_80052F6C(arg0), NULL);
    }
    func_800A0D50(&temp_s0->coords, &temp_s1->playerObj->coords);
    func_800A0D50(&temp_s0->unk_18, &temp_s1->playerObj->unk_18);
    func_80025930(*temp_s0->unk_3C->unk_40, 0, 0x8000);
    func_80025930(*temp_s0->unk_40->unk_40, 0, 0x8000);
    func_80021240(*temp_s0->unk_3C->unk_40);
    func_80021240(*temp_s0->unk_40->unk_40);
    return temp_s0;
}

void func_800F7E5C_255CCC(unk_Struct03* arg0) {
    func_8003E694(arg0);
}

void func_800F7E78_255CE8(unk_Struct03* arg0) {
    s32 i;

    for (i = 255; i >= 0; i = i - 8) {
        func_800211BC(*arg0->unk_3C->unk_40, i);
        func_800211BC(*arg0->unk_40->unk_40, ~i); 
        SleepVProcess();
    }
}

void func_800F7EE0_255D50(unk_Struct03* arg0) {
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
    unk_Struct03* temp_s1;
    unk_Struct03* temp_s3;
    Process* process;
    SpaceData* space;
    playerMain* player = GetPlayerStruct(-1);

    player->playerObj->unk_0A &= 0xFFFD;
    func_8003E664(player->playerObj);
    temp_s3 = func_800F7D6C_255BDC(-1);
    temp_s1 = func_8003DBE0(0x4C, NULL);
    func_80025EB4(*temp_s1->unk_3C->unk_40, 2, 0);
    func_800A0D50(&temp_s1->coords, &player->playerObj->coords);
    func_80058910(-1, 3);
    PlaySound(0x47);
    func_800F7EE0_255D50(temp_s3);
    func_8003E694(temp_s1);
    space = GetSpaceData(GetAbsSpaceIndexFromChainSpaceIndex(player->nextChainIndex, player->nextSpaceIndex));
    process = GetCurrentProcess();
    LinkChildProcess(process, func_8004D648(&player->playerObj->coords, &space->coords, &player->playerObj->coords, 25.0f));
    WaitForChildProcess();
    SetPlayerOntoChain(-1, player->nextChainIndex, player->nextSpaceIndex);
    temp_s1 = func_8003DBE0(0x4C, NULL);
    func_80025EB4(*temp_s1->unk_3C->unk_40, 2, 0);
    func_800A0D50(&temp_s1->coords, &player->playerObj->coords);
    PlaySound(0x47);
    func_800A0D50(&temp_s3->coords, &player->playerObj->coords);
    func_800A0D50(&temp_s3->unk_18, &player->playerObj->unk_18);
    func_800F7E78_255CE8(temp_s3);
    func_8003E694(temp_s1);
    func_800F7E5C_255CCC(temp_s3);
    func_8003E5E0(player->playerObj);
    player->playerObj->unk_0A |= 2;
}

void func_800F8130_255FA0(void) {
    playerMain* player = GetPlayerStruct(-1);
    s16 curSpaceIndex = GetCurrentSpaceIndex();
    s32 i;

    for (i = 0; i < 12; i++) {
        if (D_800F8F08[i] != curSpaceIndex) {
            continue;
        } else {
            while (func_8004B850() != 0) {
                SleepProcess(1);
            }
            
            D_800ED154.unk_00[i] = 1;

            SetNextChainAndSpace(-1, D_800F8ED8[i][D_800ED154.unk_1C], 0);
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
    SleepProcess(0x1E);
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
        LoadStringIntoWindow(textWindowID, 0x1FD, -1, -1);
        break;
    case 1:
        LoadStringIntoWindow(textWindowID, 0x1FE, -1, -1);
        break;
    default:
        LoadStringIntoWindow(textWindowID, 0x1FF, -1, -1);
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
    unk_Struct03* objectStructs[4];
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
            func_800A0D00(&objectStructs[j]->unk_24, 0.7f, 0.7f, 0.7f);
        }
    }

    PlaySound(0x47);

    for (i = 255; i >= 0; i = i - 8) {
        for (j = 0; j < 4; j++) {
            temp_s0_3 = GetPlayerStruct(j);
            if (temp_s0_3 != curPlayer) {
                func_800211BC(*objectStructs[j]->unk_3C->unk_40, i & 0xFF);
                func_800211BC(*objectStructs[j]->unk_40->unk_40, ~i & 0xFF); 
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

void func_800F87E4_256654(ProcessHeader* arg0) {
    s32 directionResult;
    s32 temp_s2;
    s32 i;
    s32 tempVar;

    SetPlayerAnimation(-1, -1, 2);
    SleepVProcess();
    func_800F7C70_255AE0();
    temp_s2 = func_8003C218(D_800ED5C0.unk_1C, arg0->prev);
    func_8003C060(temp_s2, D_800ED5C0.unk_1C, 0);
    
    if (PlayerIsCPU(-1) != 0) {
        tempVar = RunDecisionTree(arg0->next);
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
    func_800F87E4_256654(&D_800F8F68);
    EndProcess(NULL);
}

void func_800F8914_256784(void) {
    func_800F87E4_256654(&D_800F8F8C);
    EndProcess(NULL);
}

void func_800F893C_2567AC(void) {
    func_800F87E4_256654(&D_800F8FB0);
    EndProcess(NULL);
}

void func_800F8964_2567D4(void) {
    func_800F87E4_256654(&D_800F8FD4);
    EndProcess(NULL);
}

void func_800F898C_2567FC(void) {
    func_800F87E4_256654(&D_800F8FF8);
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
    func_8001D4D4(1, &D_800F8BB0);
    func_800F6E34_254CA4();
    func_800584F0(2);
    InitProcess(&func_800F6BD8_254A48, 0x1005, 0, 0);
}
