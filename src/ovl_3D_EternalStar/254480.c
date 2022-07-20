#include "common.h"
#include "eternalStar.h"

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

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F67AC_25461C);

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

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F6B58_2549C8);
// void func_800F6B58_2549C8(ProcessHeader* arg0) {
//     func_8003E8B8(arg0->prev, 0, 0, 6, 0);
//     SleepProcess(3);
//     while (1) {
//         if (!(func_8003E940(arg0->prev))) {
//             SleepVProcess();
//         } else {
//             break;
//         }
//     }
//     func_8003E8B8(arg0->prev, -1, 0, 6, 2);
// }


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
    func_800234B8(0U, 0x78, 0x78, 0x78);
    func_800234B8(1U, 0x40, 0x40, 0x60);
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
        func_800A0D50(&playerNoFeatureFlag->playerObj->unk_0C, &GetSpaceData(0x4E)->coords.x);
        func_800A0E80(&playerNoFeatureFlag->playerObj->unk_18, &GetSpaceData(2)->coords.x, &playerNoFeatureFlag->playerObj->unk_0C);
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

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F709C_254F0C);
// void func_800F709C_254F0C(s16 arg0) {
//     unk_Struct03* var_s2;

//     if (D_800F91C0[arg0] == 0) {
//         if (D_800F91BC == NULL) {
//             var_s2 = func_8003DBE0(0x79U, NULL);
//             func_8003E174(var_s2);
//             D_800F91BC = var_s2;
//         } else {
//             var_s2 = func_8003E320(D_800F91BC);
//         }
//         var_s2->unk_0A |= 2;
//         D_800F91C0[arg0] = var_s2;
//         func_8004CDCC(var_s2);
//         func_800A0D50(&var_s2->unk_0C, &GetSpaceData(D_800F8BF8[arg0])->coords.x);
//         func_8003C314(0xA, var_s2, D_800F8C18[arg0], D_800F8C18[arg0 + 1]);
//     }
// }

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
        func_800A0D50(&var_s1->unk_0C, &(GetSpaceData(D_800F8C34[arg0])->coords) );
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
        temp_s0 = func_8003DBE0(0x3BU, &D_800F8C38);
        func_8003E174(temp_s0);
        D_800F91E4 = temp_s0;
        temp_s0->unk_0A |= 2;
        func_800A0D50(&temp_s0->unk_0C, &GetSpaceData(2)->coords);
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
    func_8003E81C(D_800F91E4, 0, 0U);
    PlaySound(0x4D);

    while ((func_8003E940(D_800F91E4) & 1) == 0) {
        SleepVProcess();
    }

    func_8003E81C(D_800F91E4, -1, 2U);
    func_8004CD84(&sp10);
    process = GetCurrentProcess();
    LinkChildProcess(process, func_8004D1EC(&D_800F91E4->unk_18, &sp10, &D_800F91E4->unk_18, 0x14));
    WaitForChildProcess();
    EndProcess(NULL);
}

void func_800F74D4_255344(void) {
    D_800F91E4 = 0;
    func_800F736C_2551DC();
    
    if (IsBoardFeatureFlagSet(0x4F) != 0) {
        func_800A0E80(&D_800F91E4->unk_18, &(GetSpaceData(0x4E)->coords.x), &D_800F91E4->unk_0C);
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
    if (D_800ED154 != 0) {
        if (IsBoardFeatureFlagSet(0x48) == 0) {
            return 0;
        }
    }
    return 1;
}

s32 func_800F7794_255604(void) {
    if (D_800ED156 != 0) {
        if (IsBoardFeatureFlagSet(0x4C) == 0) {
            return 0;
        }
    }
    return 1;
}

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F77CC_25563C);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F784C_2556BC);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F78CC_25573C);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7934_2557A4);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F79BC_25582C);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7A2C_25589C);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7A60_2558D0);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7AE8_255958);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7B30_2559A0);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7B6C_2559DC);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7BA0_255A10);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7BD4_255A44);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7C08_255A78);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7C3C_255AAC);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7C70_255AE0);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7D20_255B90);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7D6C_255BDC);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7E5C_255CCC);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7E78_255CE8);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7EE0_255D50);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7F4C_255DBC);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F7F7C_255DEC);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F8130_255FA0);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F8240_2560B0);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F8298_256108);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F8514_256384);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F8588_2563F8);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F87E4_256654);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F88EC_25675C);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F8914_256784);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F893C_2567AC);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F8964_2567D4);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F898C_2567FC);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F89B4_256824);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F89D8_256848);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F89FC_25686C);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F8A30_2568A0);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F8A94_256904);

INCLUDE_ASM(s32, "ovl_3D_EternalStar/254480", func_800F8B20_256990);
