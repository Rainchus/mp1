#include "common.h"
#include "dkJungleAdventure.h"

// bss
struct unk_Struct03 *D_800FA300;
struct unk_Struct03 *D_800FA304;
// struct mpSource_object *bss_toad_model;
// struct mpSource_object *bss_toad_instances[DK_STAR_COUNT];
// struct mpSource_object *bss_thwomp_model;
// struct mpSource_object *thwomp_instances[DK_THWOMP_COUNT];
// struct mpSource_object *boo_model;
// struct mpSource_object *boo_instances[DK_BOO_COUNT];
// struct mpSource_object *coin_gate_model;
// // Seems awkward this isn't an array like the others,
// // but memory alignment issues occur with an array.
// struct mpSource_object *coin_gate_right;
// struct mpSource_object *coin_gate_left;
// void *arrow_unk_1;
// void *arrow_unk_2;
// void *arrow_unk_3;
// void *arrow_unk_4;
// f32 ov054_unk_boulder_float_1;
// f32 ov054_unk_boulder_float_2;
// s16 boulder_active;
// struct mpSource_object *boulder_obj_model;

s16 func_800F6610_2418D0(void) {
    return D_800F9910[D_800ED5C0.starSpaces[D_800ED5C0.chosenStarSpaceIndex]];
}

void func_800F663C_2418FC(void) { //ov054_func_800F663C
    s32 s1;
    s32 rand1;
    s32 rand2;
    s32 swap1;
    GameStatus* ed5c0;

    ed5c0 = &D_800ED5C0;
    for (s1 = 0; s1 < 30; s1++) {
        rand1 = GetRandomByte() % 7;
        rand2 = GetRandomByte() % 7;
        if (rand1 == rand2) {
            continue;
        }

        if (rand1 < D_800F98E0[rand2]) {
            continue;
        }

        if (rand2 < D_800F98E0[rand1]) {
            continue;
        }

        swap1 = D_800F98D0[rand1];
        D_800F98D0[rand1] = D_800F98D0[rand2];
        D_800F98D0[rand2] = swap1;

        swap1 = D_800F98E0[rand1];
        D_800F98E0[rand1] = D_800F98E0[rand2];
        D_800F98E0[rand2] = swap1;
    }

    for (s1 = 0; s1 < DK_STAR_COUNT; s1++) {
        ed5c0->starSpaces[s1] = D_800F98D0[s1];
    }
}

void func_800F67A4_241A64(void) {
    s32 starSpaceTemp;
    GameStatus* ed5c0;

    ed5c0 = &D_800ED5C0;

    if (++ed5c0->chosenStarSpaceIndex < DK_STAR_COUNT) {
        return;
    }

    starSpaceTemp = ed5c0->starSpaces[6];
    ed5c0->chosenStarSpaceIndex = 0;

    SetBoardFeatureFlag(0x44);
    func_800F663C_2418FC();

    if (starSpaceTemp != ed5c0->starSpaces[0]) {
        return;
    }

    starSpaceTemp = ed5c0->starSpaces[0];
    ed5c0->starSpaces[0] = ed5c0->starSpaces[6];
    ed5c0->starSpaces[6] = starSpaceTemp;
}

void func_800F6830_241AF0(void) { //ov054_func_800F6830
    s32 s0, s1;
    GameStatus* ed5c0 = &D_800ED5C0;

    for (s1 = 0; s1 < DK_STAR_COUNT; s1++) {
        SetSpaceType(D_800F9900[s1], 1);
        SetBoardFeatureFlag(D_800F98F0[s1]);
    }

    if (IsBoardFeatureFlagSet(0x44)) {
        s0 = DK_STAR_COUNT;
    } else {
        s0 = ed5c0->chosenStarSpaceIndex;
    }

    for (s1 = 0; s1 < s0; s1++) {
        SetSpaceType(D_800F9900[ed5c0->starSpaces[s1]], 6);
    }

    SetSpaceType(D_800F9900[ed5c0->starSpaces[ed5c0->chosenStarSpaceIndex]], 5);

    ClearBoardFeatureFlag(D_800F98F0[ed5c0->starSpaces[ed5c0->chosenStarSpaceIndex]]);
}

s32 func_800F6958_241C18(s32 current_space_index) {
    s32 i;
    s32 j;
    s16* ov054_star_space_indicesptr;
    GameStatus* ed5c0 = &D_800ED5C0;

    i = 0;

    ov054_star_space_indicesptr = D_800F9900;

    // This feels a bit odd, but the match was difficult.
    current_space_index = (s16)current_space_index;

    for (; i < DK_STAR_COUNT; i++) {
        if (current_space_index == ov054_star_space_indicesptr[i]) {
            if (i == ed5c0->starSpaces[ed5c0->chosenStarSpaceIndex]) {
                ed5c0->unk_1A = D_800F98F0[i];
                return 1;
            }

            if (IsBoardFeatureFlagSet(68)) {
                current_space_index = DK_STAR_COUNT;
            }
            else {
                current_space_index = ed5c0->chosenStarSpaceIndex;
            }

            for (j = 0; j < current_space_index; j++) {
                if (i == ed5c0->starSpaces[j]) {
                  return 2;
                }
            }

            return 0;
        }        
    }
    return 0;
}

void func_800F6A38_241CF8(void) {
    SpaceData* space_data;
    unk_Struct03* ptr;
    mpSource_f2b7cstruct *f2bstr;
    void *ret;
    s32 s0;
    f32 ftemp;
    f32 ftt;
    f32 const20;

    space_data = (GetCurrentProcess())->user_data;

    PlaySound(109);
    ptr = func_8003DBE0(64, NULL);
    ptr->unk_0A |= 4;
    func_8004CDCC(ptr);
    func_800A0D50(&ptr->unk_0C, &space_data->coords);

    ptr->unk_30 = 500.0f;

    ret = func_80042728(ptr, 0);

    ftemp = 0.0f;
    for (s0 = 0; s0 < 6; s0++) {
        func_800A0D00(&ptr->unk_24, ftemp, ftemp, ftemp);
        ftemp += 0.4f;
        SleepVProcess();
    }

    for (s0 = 0; s0 < 3; s0++) {
        func_800A0D00(&ptr->unk_24, ftemp, ftemp, ftemp);
        ftemp -= 0.4f;
        SleepVProcess();
    }

    SleepProcess(30);
    PlaySound(68);

    ftt = 0.0f;
    const20 = 20.0f;
    while (TRUE) {
        f2bstr = &D_800F2B7C[*ptr->unk_3C->unk_40];
        func_800A40D0(&f2bstr->unk124, ftt);
        ftemp -= 0.02f;

        ftt += const20;
        if (ftemp < 0) {
            break;
        }

        func_800A0D00(&ptr->unk_24, ftemp, ftemp, ftemp);
        ptr->unk_30 -= 6.0f;
        SleepVProcess();
    }

    func_800427D4(ret);
    SleepProcess(30);
    func_8003E694(ptr);
    EndProcess(NULL);
}

void func_800F6C48_241F08(mystery_struct_ret_func_80048224* a0) { //ov054_ShowNextStarSpotInner
    unk_Struct03* unk0ptr;

    unk0ptr = a0->unk0;
    unk0ptr->unk_34 = 20.0f;
    unk0ptr->unk_38 = -3.0f;

    func_8003E81C(a0->unk0, 0, 0);
    SleepProcess(3);

    while (func_8003E940(a0->unk0) == 0) {
        SleepVProcess();
    }

    func_8003E81C(a0->unk0, -1, 2);
}

void func_800F6CD8_241F98(void) {
    GameStatus* ed5c0;
    mystery_struct_ret_func_80048224 *str;
    SpaceData* spacedata;
    Process* proc_struct;
    s32 string_id;

    ed5c0 = &D_800ED5C0;

    func_80060128(43);
    str = func_80048224(D_800F9920);
    func_80072644(2, 16);

    while (func_80072718() != 0) {
        SleepVProcess();
    }

    func_8004A520();
    func_8004B5C4(3.0f);
    func_800F6C48_241F08(str);

    if (ed5c0->chosenStarSpaceIndex == 0 && !IsBoardFeatureFlagSet(68)) {
        string_id = 1256;
    } else {
        string_id = 1258;
    }

    LoadStringIntoWindow(str->unk8, string_id, -1, -1);
    func_80071C8C(str->unk8, 1);
    PlaySound(1125);
    WaitForTextConfirmation(str->unk8);
    func_80071E80(str->unk8, 1);
    func_8006EB40(str->unk8);

    spacedata = GetSpaceData(D_800F9910[ed5c0->starSpaces[ed5c0->chosenStarSpaceIndex]]);
    func_8004B5DC(&spacedata->coords);
    func_8004B838(5.0f);
    SleepProcess(5);

    while (func_8004B850() != 0) {
        SleepVProcess();
    }

    SleepProcess(5);

    proc_struct = InitProcess(&func_800F6A38_241CF8, 18432, 0, 0);
    proc_struct->user_data = spacedata;

    SleepProcess(30);

    if (ed5c0->chosenStarSpaceIndex == 0 && !IsBoardFeatureFlagSet(68)) {
        string_id = 1257;
    } else {
        string_id = 1259;
    }

    LoadStringIntoWindow(str->unk8, string_id, -1, -1);
    func_80071C8C(str->unk8, 1);
    WaitForTextConfirmation(str->unk8);
    func_80071E80(str->unk8, 1);
    func_800601D4(90);
    SleepProcess(30);
    func_800726AC(2, 16);
    SleepProcess(17);
    func_8004847C(str);
    func_80056AF4();
    func_8005DFB8(1);
    func_8005E3A8();
    SleepVProcess();
}

void func_800F6F0C_2421CC(void) {  //ov054_Entrypoint0
    GameStatus* ed5c0;
    ed5c0 = &D_800ED5C0;

    ed5c0->unk_02 = 0;
    func_8005CF30(10, 0); // InitObjectSystem
    func_8005E044(53, 0, 146);
}

void func_800F6F44_242204(void) { //ov054_Entrypoint1
    GameStatus* ed5c0;
    ed5c0 = &D_800ED5C0;

    func_8005CF30(10, 0); // InitObjectSystem

    SetPlayerOntoChain(0, 0, 0);
    SetPlayerOntoChain(1, 0, 0);
    SetPlayerOntoChain(2, 0, 0);
    SetPlayerOntoChain(3, 0, 0);

    switch (ed5c0->unk_00) {
        case 0:
            SetBoardFeatureFlag(0x46);
            SetBoardFeatureFlag(0x47);
            SetBoardFeatureFlag(0x49);
            SetBoardFeatureFlag(0x4B);
            break;

        case 1:
            SetBoardFeatureFlag(0x47);
            SetBoardFeatureFlag(0x49);
            break;
    }

    SetBoardFeatureFlag(0x43);

    func_800F663C_2418FC();

    D_800ED154[0] = 0;
    D_800ED154[1] = 0;
    D_800ED154[2] = 0;

    func_8005DFB8(1);
}

void func_800F7024_2422E4(void);
INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F7024_2422E4);

// void func_800F7024_2422E4(void) { //ov054_SetupRoutine
//     s32 player_index;
//     playerMain* player;

//     func_8005CF30(80, 40); // InitObjectSystem
//     func_80060088();
//     func_80023448(1);
//     func_800234B8(0, 0x78, 0x78, 0x78);
//     func_800234B8(1, 0x40, 0x40, 0x60);
//     func_80023504(1, -100.0f, 100.0f, 300.0f);
//     SetupBoard(0, 0x45, 4, 0);

//     // Reset animations for characters?
//     func_80052E84(0);
//     func_80052E84(1);
//     func_80052E84(2);
//     func_80052E84(3);

//     for (player_index = 0; player_index < 4; player_index++) {
//         player = GetPlayerStruct(player_index);
//         func_8003E174(player->obj);
//         player->playerObj->unk_0A |= 2;
//     }

//     if (IsBoardFeatureFlagSet(0x4e)) {
//         ClearBoardFeatureFlag(0x4e);
//         ov054_func_800F67A4();
//     }

//     func_800F6830_241AF0();
//     ov054_DrawToadsOuter();
//     ov054_DrawThwompsOuter();
//     ov054_Draw20CoinGateOuter();

//     if (!IsBoardFeatureFlagSet(0xe)) {
//         ov054_DrawKoopaOuter();
//     }

//     if (!IsBoardFeatureFlagSet(0xf)) {
//         ov054_DrawBooOuter();
//     }

//     if (!IsBoardFeatureFlagSet(0xd)) {
//         ov054_DrawBowserOuter();
//     }
// }

void func_800F7190_242450(void);
INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F7190_242450);

// void func_800F7190_242450(void) { //ov054_Entrypoint2
//     func_80060128(8);
//     InitCameras(2);
//     func_800F7024_2422E4();

//     EventTableHydrate(main_event_table);

//     if (!IsBoardFeatureFlagSet(0xe)) {
//         EventTableHydrate(koopa_event_table);
//     }

//     if (!IsBoardFeatureFlagSet(0xf)) {
//         EventTableHydrate(boo_event_table);
//     }

//     if (!IsBoardFeatureFlagSet(0xd)) {
//         EventTableHydrate(bowser_event_table);
//     }

//     func_800584F0(0);
// }

void func_800F7224_2424E4(void) { //ov054_Entrypoint3
    InitCameras(1);
    func_800F7024_2422E4();
    func_800584F0(1);
}

void func_800F7250_242510(void) { //ov054_DrawBowserInner
    unk_Struct03 *ptr;

    if (D_800FA300 != NULL) {
        return;
    }

    ptr = func_8003DBE0(0x3B, NULL);
    func_8003E174(ptr);
    D_800FA300 = ptr;

    ptr->unk_0A |= 0x2;

    func_800A0D50(&ptr->unk_0C, &GetSpaceData(0x70)->coords);
    func_8003C314(7, ptr, -2, 0);
}

void func_800F72CC_24258C(void) { //ov054_DrawBowserOuter
    D_800FA300 = 0;
    func_800F7250_242510();
}

//INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F72EC_2425AC);
void func_800F72EC_2425AC(void) { //ov054_DrawKoopaInner
    unk_Struct03 *ptr;

    if (D_800FA304 != NULL) {
        return;
    }

    ptr = func_8003DBE0(0x39, NULL);
    func_8003E174(ptr);
    D_800FA304 = ptr;

    ptr->unk_0A |= 0x2;

    func_800A0D50(&ptr->unk_0C, &GetSpaceData(0x5D)->coords);
    func_8003C314(9, ptr, -1, -3);
}

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F7368_242628);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F7388_242648);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F748C_24274C);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F7514_2427D4);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F766C_24292C);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F76B0_242970);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F77B8_242A78);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F77FC_242ABC);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F78DC_242B9C);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F7920_242BE0);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F79D0_242C90);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F7A1C_242CDC);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F7C34_242EF4);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F7C6C_242F2C);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F7E88_243148);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F7EC0_243180);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F80DC_24339C);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F8114_2433D4);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F8248_243508);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F83B0_243670);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F8448_243708);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F84E0_2437A0);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F85BC_24387C);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F869C_24395C);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F8978_243C38);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F8A00_243CC0);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F8DC8_244088);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F8E80_244140);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F8EBC_24417C);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F8F88_244248);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F8FC4_244284);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F91B4_244474);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F9398_244658);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F93BC_24467C);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F93E0_2446A0);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F9404_2446C4);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F9428_2446E8);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F944C_24470C);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F9470_244730);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F95A4_244864);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F9674_244934);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F96A8_244968);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F970C_2449CC);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F9798_244A58);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F9804_244AC4);

INCLUDE_ASM(s32, "ovl_36_DKsJungleAdventure/2418D0", func_800F983C_244AFC);
