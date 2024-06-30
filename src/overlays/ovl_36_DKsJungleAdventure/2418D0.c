#include "engine/process.h"
#include "dkJungleAdventure.h"

// bss
struct Object *D_800FA300_DKsJungleAdventure;
struct Object *D_800FA304_DKsJungleAdventure;
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

s16 func_800F6610_DKsJungleAdventure(void) {
    return D_800F9910_DKsJungleAdventure[D_800ED5C0.starSpaces[D_800ED5C0.chosenStarSpaceIndex]];
}

void func_800F663C_DKsJungleAdventure(void) { //ov054_func_800F663C
    s32 s1;
    s32 rand1;
    s32 rand2;
    s32 swap1;
    GameStatus* ed5c0;

    ed5c0 = &D_800ED5C0;
    for (s1 = 0; s1 < 30; s1++) {
        rand1 = rand8() % 7;
        rand2 = rand8() % 7;
        if (rand1 == rand2) {
            continue;
        }

        if (rand1 < D_800F98E0_DKsJungleAdventure[rand2]) {
            continue;
        }

        if (rand2 < D_800F98E0_DKsJungleAdventure[rand1]) {
            continue;
        }

        swap1 = D_800F98D0_DKsJungleAdventure[rand1];
        D_800F98D0_DKsJungleAdventure[rand1] = D_800F98D0_DKsJungleAdventure[rand2];
        D_800F98D0_DKsJungleAdventure[rand2] = swap1;

        swap1 = D_800F98E0_DKsJungleAdventure[rand1];
        D_800F98E0_DKsJungleAdventure[rand1] = D_800F98E0_DKsJungleAdventure[rand2];
        D_800F98E0_DKsJungleAdventure[rand2] = swap1;
    }

    for (s1 = 0; s1 < DK_STAR_COUNT; s1++) {
        ed5c0->starSpaces[s1] = D_800F98D0_DKsJungleAdventure[s1];
    }
}

void func_800F67A4_DKsJungleAdventure(void) {
    s32 starSpaceTemp;
    GameStatus* ed5c0;

    ed5c0 = &D_800ED5C0;

    if (++ed5c0->chosenStarSpaceIndex < DK_STAR_COUNT) {
        return;
    }

    starSpaceTemp = ed5c0->starSpaces[6];
    ed5c0->chosenStarSpaceIndex = 0;

    SetBoardFeatureFlag(0x44);
    func_800F663C_DKsJungleAdventure();

    if (starSpaceTemp != ed5c0->starSpaces[0]) {
        return;
    }

    starSpaceTemp = ed5c0->starSpaces[0];
    ed5c0->starSpaces[0] = ed5c0->starSpaces[6];
    ed5c0->starSpaces[6] = starSpaceTemp;
}

void func_800F6830_DKsJungleAdventure(void) { //ov054_func_800F6830
    s32 s0, s1;
    GameStatus* ed5c0 = &D_800ED5C0;

    for (s1 = 0; s1 < DK_STAR_COUNT; s1++) {
        SetSpaceType(D_800F9900_DKsJungleAdventure[s1], 1);
        SetBoardFeatureFlag(D_800F98F0_DKsJungleAdventure[s1]);
    }

    if (IsFlagSet(0x44)) {
        s0 = DK_STAR_COUNT;
    } else {
        s0 = ed5c0->chosenStarSpaceIndex;
    }

    for (s1 = 0; s1 < s0; s1++) {
        SetSpaceType(D_800F9900_DKsJungleAdventure[ed5c0->starSpaces[s1]], 6);
    }

    SetSpaceType(D_800F9900_DKsJungleAdventure[ed5c0->starSpaces[ed5c0->chosenStarSpaceIndex]], 5);

    ClearBoardFeatureFlag(D_800F98F0_DKsJungleAdventure[ed5c0->starSpaces[ed5c0->chosenStarSpaceIndex]]);
}

s32 func_800F6958_DKsJungleAdventure(s32 current_space_index) {
    s32 i;
    s32 j;
    s16* ov054_star_space_indicesptr;
    GameStatus* ed5c0 = &D_800ED5C0;

    i = 0;

    ov054_star_space_indicesptr = D_800F9900_DKsJungleAdventure;

    // This feels a bit odd, but the match was difficult.
    current_space_index = (s16)current_space_index;

    for (; i < DK_STAR_COUNT; i++) {
        if (current_space_index == ov054_star_space_indicesptr[i]) {
            if (i == ed5c0->starSpaces[ed5c0->chosenStarSpaceIndex]) {
                ed5c0->unk_1A = D_800F98F0_DKsJungleAdventure[i];
                return 1;
            }

            if (IsFlagSet(68)) {
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

void func_800F6A38_DKsJungleAdventure(void) {
    SpaceData* space_data;
    Object* ptr;
    mpSource_f2b7cstruct *f2bstr;
    void *ret;
    s32 s0;
    f32 ftemp;
    f32 ftt;
    f32 const20;

    space_data = (HuPrcCurrentGet())->user_data;

    PlaySound(109);
    ptr = CreateObject(64, NULL);
    ptr->unk_0A |= 4;
    func_8004CDCC(ptr);
    func_800A0D50(&ptr->coords, &space_data->coords);

    ptr->unk_30 = 500.0f;

    ret = func_80042728(ptr, 0);

    ftemp = 0.0f;
    for (s0 = 0; s0 < 6; s0++) {
        func_800A0D00(&ptr->xScale, ftemp, ftemp, ftemp);
        ftemp += 0.4f;
        HuPrcVSleep();
    }

    for (s0 = 0; s0 < 3; s0++) {
        func_800A0D00(&ptr->xScale, ftemp, ftemp, ftemp);
        ftemp -= 0.4f;
        HuPrcVSleep();
    }

    HuPrcSleep(30);
    PlaySound(68);

    ftt = 0.0f;
    const20 = 20.0f;
    while (TRUE) {
        f2bstr = (mpSource_f2b7cstruct*)&D_800F2B7C[*ptr->unk_3C->unk_40];
        func_800A40D0(&f2bstr->unk124, ftt);
        ftemp -= 0.02f;

        ftt += const20;
        if (ftemp < 0) {
            break;
        }

        func_800A0D00(&ptr->xScale, ftemp, ftemp, ftemp);
        ptr->unk_30 -= 6.0f;
        HuPrcVSleep();
    }

    func_800427D4(ret);
    HuPrcSleep(30);
    DestroyObject(ptr);
    EndProcess(NULL);
}

void func_800F6C48_DKsJungleAdventure(mystery_struct_ret_func_80048224* a0) { //ov054_ShowNextStarSpotInner
    Object* unk0ptr;

    unk0ptr = a0->unk0;
    unk0ptr->unk_34 = 20.0f;
    unk0ptr->unk_38 = -3.0f;

    func_8003E81C(a0->unk0, 0, 0);
    HuPrcSleep(3);

    while (func_8003E940(a0->unk0) == 0) {
        HuPrcVSleep();
    }

    func_8003E81C(a0->unk0, -1, 2);
}

void func_800F6CD8_DKsJungleAdventure(void) {
    GameStatus* ed5c0;
    mystery_struct_ret_func_80048224 *str;
    SpaceData* spacedata;
    Process* proc_struct;
    s32 string_id;

    ed5c0 = &D_800ED5C0;

    func_80060128(43);
    str = func_80048224(D_800F9920_DKsJungleAdventure);
    SetFadeInTypeAndTime(2, 16);

    while (func_80072718() != 0) {
        HuPrcVSleep();
    }

    func_8004A520();
    func_8004B5C4(3.0f);
    func_800F6C48_DKsJungleAdventure(str);

    if (ed5c0->chosenStarSpaceIndex == 0 && !IsFlagSet(68)) {
        string_id = 1256;
    } else {
        string_id = 1258;
    }

    LoadStringIntoWindow(str->unk8, (void*)string_id, -1, -1);
    func_80071C8C(str->unk8, 1);
    PlaySound(1125);
    WaitForTextConfirmation(str->unk8);
    func_80071E80(str->unk8, 1);
    func_8006EB40(str->unk8);

    spacedata = GetSpaceData(D_800F9910_DKsJungleAdventure[ed5c0->starSpaces[ed5c0->chosenStarSpaceIndex]]);
    func_8004B5DC(&spacedata->coords);
    func_8004B838(5.0f);
    HuPrcSleep(5);

    while (func_8004B850() != 0) {
        HuPrcVSleep();
    }

    HuPrcSleep(5);

    proc_struct = omAddPrcObj(&func_800F6A38_DKsJungleAdventure, 18432, 0, 0);
    proc_struct->user_data = spacedata;

    HuPrcSleep(30);

    if (ed5c0->chosenStarSpaceIndex == 0 && !IsFlagSet(68)) {
        string_id = 1257;
    } else {
        string_id = 1259;
    }

    LoadStringIntoWindow(str->unk8, (void*)string_id, -1, -1);
    func_80071C8C(str->unk8, 1);
    WaitForTextConfirmation(str->unk8);
    func_80071E80(str->unk8, 1);
    func_800601D4(90);
    HuPrcSleep(30);
    func_800726AC(2, 16);
    HuPrcSleep(17);
    func_8004847C(str);
    func_80056AF4();
    omOvlReturnEx(1);
    omOvlKill();
    HuPrcVSleep();
}

void func_800F6F0C_DKsJungleAdventure(void) {  //ov054_Entrypoint0
    GameStatus* ed5c0;
    ed5c0 = &D_800ED5C0;

    ed5c0->unk_02 = 0;
    omInitObjMan(10, 0); // InitObjectSystem
    omOvlGotoEx(53, 0, 146);
}

void func_800F6F44_DKsJungleAdventure(void) { //ov054_Entrypoint1
    GameStatus* ed5c0;
    ed5c0 = &D_800ED5C0;

    omInitObjMan(10, 0); // InitObjectSystem

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

    func_800F663C_DKsJungleAdventure();

    D_800ED100.boardRam[0] = 0;
    D_800ED100.boardRam[1] = 0;
    D_800ED100.boardRam[2] = 0;

    omOvlReturnEx(1);
}

void func_800F7024_DKsJungleAdventure(void);
INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F7024_DKsJungleAdventure);

// void func_800F7024_DKsJungleAdventure(void) { //ov054_SetupRoutine
//     s32 player_index;
//     playerMain* player;

//     omInitObjMan(80, 40); // InitObjectSystem
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

//     if (IsFlagSet(0x4e)) {
//         ClearBoardFeatureFlag(0x4e);
//         ov054_func_800F67A4();
//     }

//     func_800F6830_DKsJungleAdventure();
//     ov054_DrawToadsOuter();
//     ov054_DrawThwompsOuter();
//     ov054_Draw20CoinGateOuter();

//     if (!IsFlagSet(0xe)) {
//         ov054_DrawKoopaOuter();
//     }

//     if (!IsFlagSet(0xf)) {
//         ov054_DrawBooOuter();
//     }

//     if (!IsFlagSet(0xd)) {
//         ov054_DrawBowserOuter();
//     }
// }

void func_800F7190_DKsJungleAdventure(void);
INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F7190_DKsJungleAdventure);

// void func_800F7190_DKsJungleAdventure(void) { //ov054_Entrypoint2
//     func_80060128(8);
//     InitCameras(2);
//     func_800F7024_DKsJungleAdventure();

//     EventTableHydrate(main_event_table);

//     if (!IsFlagSet(0xe)) {
//         EventTableHydrate(koopa_event_table);
//     }

//     if (!IsFlagSet(0xf)) {
//         EventTableHydrate(boo_event_table);
//     }

//     if (!IsFlagSet(0xd)) {
//         EventTableHydrate(bowser_event_table);
//     }

//     func_800584F0(0);
// }

void func_800F7224_DKsJungleAdventure(void) { //ov054_Entrypoint3
    InitCameras(1);
    func_800F7024_DKsJungleAdventure();
    func_800584F0(1);
}

void func_800F7250_DKsJungleAdventure(void) { //ov054_DrawBowserInner
    Object *ptr;

    if (D_800FA300_DKsJungleAdventure != NULL) {
        return;
    }

    ptr = CreateObject(0x3B, NULL);
    func_8003E174(ptr);
    D_800FA300_DKsJungleAdventure = ptr;

    ptr->unk_0A |= 0x2;

    func_800A0D50(&ptr->coords, &GetSpaceData(0x70)->coords);
    func_8003C314(7, ptr, -2, 0);
}

void func_800F72CC_DKsJungleAdventure(void) { //ov054_DrawBowserOuter
    D_800FA300_DKsJungleAdventure = 0;
    func_800F7250_DKsJungleAdventure();
}

void func_800F72EC_DKsJungleAdventure(void) { //ov054_DrawKoopaInner
    Object *ptr;

    if (D_800FA304_DKsJungleAdventure != NULL) {
        return;
    }

    ptr = CreateObject(0x39, NULL);
    func_8003E174(ptr);
    D_800FA304_DKsJungleAdventure = ptr;

    ptr->unk_0A |= 0x2;

    func_800A0D50(&ptr->coords, &GetSpaceData(0x5D)->coords);
    func_8003C314(9, ptr, -1, -3);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F7368_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F7388_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F748C_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F7514_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F766C_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F76B0_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F77B8_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F77FC_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F78DC_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F7920_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F79D0_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F7A1C_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F7C34_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F7C6C_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F7E88_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F7EC0_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F80DC_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F8114_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F8248_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F83B0_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F8448_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F84E0_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F85BC_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F869C_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F8978_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F8A00_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F8DC8_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F8E80_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F8EBC_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F8F88_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F8FC4_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F91B4_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F9398_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F93BC_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F93E0_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F9404_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F9428_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F944C_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F9470_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F95A4_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F9674_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F96A8_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F970C_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F9798_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F9804_DKsJungleAdventure);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_36_DKsJungleAdventure/2418D0", func_800F983C_DKsJungleAdventure);
