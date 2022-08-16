#include "common.h"
#include "296B70.h"

void func_800F65E0_296B70(void) {
    D_800F7650 = D_800ED5DD;
    func_8005CF30(0x32, 0x32);
    func_800F74C0_297A50();
    func_800F7120_2976B0();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    func_8003FCD4();
    InitProcess(func_800F66C4_296C54, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F70D4_297664);
    func_80060128(0x12);
    func_80072644(3, 0x10);
}

INCLUDE_ASM(s32, "ovl_5B_BowservisitMagmaMountain/296B70", func_800F66C4_296C54); //https://decomp.me/scratch/gCEbO

void func_800F7074_297604(void) {
    if (func_80072718() == 0) {
        func_800F7560_297AF0();
        func_800F7404_297994();
        func_80054654();
        func_80070ED4();
        func_80041370();
        func_800405DC(D_800F7650);
        func_8005DFB8(1);
    }
}

void func_800F70D4_297664(Object* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(3, 0x10);
        func_800601D4(0x20);
        arg0->func_ptr = &func_800F7074_297604;
    }
}

void func_800F7120_2976B0(void) {
    unk_Struct03* temp_s0;
    unk_Struct03* temp_s0_2;


    func_8003DAA8();
    func_8004F2AC();
    D_800F7654 = func_8003DBE0(0x76U, NULL);
    func_80025B34(*D_800F7654->unk_3C->unk_40);
    VEC3F_COPY_TO_OBJ(D_800F7654, D_800F75A0);
    D_800F7654->unk_24 = D_800F7654->unk_28 = D_800F7654->unk_2C = 1.5f;
    func_80025F60(*D_800F7654->unk_3C->unk_40, 0);
    temp_s0 = D_800F7654;
    temp_s0->unk_18.x = func_80088060(0.10471976f);
    temp_s0_2 = D_800F7654;
    temp_s0_2->unk_18.z = func_800855C0(0.10471976f);
    D_800F7658 = func_8003DBE0(6U, &D_800F75C4);
    func_80025B34(*D_800F7658->unk_3C->unk_40);
    D_800F7658->coords.x = D_800F75A0.x;
    D_800F7658->coords.y = D_800F75A0.y;
    D_800F7658->coords.z = D_800F75A0.z + 200.0f;
    D_800F7658->unk_24 = D_800F7658->unk_28 = D_800F7658->unk_2C = 1.5f;
    func_80025F60(*D_800F7658->unk_3C->unk_40, 0);
    func_800258EC(*D_800F7658->unk_40->unk_40, 0x180, 0x80);
    func_80025AD4(*D_800F7658->unk_40->unk_40);
    D_800F765C = func_8003DBE0(func_80052F04(D_800F7650), D_800F7620[gPlayers[D_800F7650].characterID]);
    func_80025B34(*D_800F765C->unk_3C->unk_40);
    VEC3F_COPY_TO_OBJ(D_800F765C, D_800F75B8);
    func_8004CCD0(&D_800F765C->coords, &D_800F7658->coords, &D_800F765C->unk_18);
    func_8004CCD0(&D_800F7658->coords, &D_800F765C->coords, &D_800F7658->unk_18);
    func_80052E84(D_800F7650);
    func_8003E664(gPlayers[D_800F7650].playerObj);
    (gPlayers[D_800F7650].playerObj)->coords.x = D_800F75AC.x;
    (gPlayers[D_800F7650].playerObj)->coords.y = D_800F75AC.y;
    (gPlayers[D_800F7650].playerObj)->coords.z = D_800F75AC.z;
}

void func_800F7404_297994(void) {
    func_8003E694(D_800F7654);
    func_8003E694(D_800F7658);
    func_8003E694(D_800F765C);
    
    if (D_800F7590 != NULL) {
        func_8003E694(D_800F7590);
    }

    if (D_800F759C != NULL) {
        func_800427D4(D_800F759C);
    }
    
    if (D_800F7594 != -1) {
        func_8002456C(D_800F7596);
    }
    
    if (D_800F7598 != -1) {
        func_8002456C(D_800F759A);
    }
    
    func_80052FD4((s16) D_800F7650);
    func_8004F2EC();
}

void func_800F74C0_297A50(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_80049E70(&D_FE2310);
    func_80049F4C(0x3B);
}

void func_800F7560_297AF0(void) {
    func_8004A140();
    func_80049F0C();
}
