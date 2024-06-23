#include "common.h"
#include "2872A0.h"

void func_800F65E0_2872A0(void) {
    D_800F7BE0 = D_800ED5DD;
    omInitObjMan(0x32, 0xA);
    func_800F7A00_2886C0();
    func_800F77D0_288490();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(&func_800F6CB0_287970, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F7688_288348);
    if (D_800C597A != 0) {
        SetFadeInTypeAndTime(6, 8);
    } else {
        SetFadeInTypeAndTime(1, 16);
    }
}

INCLUDE_ASM(s32, "overlays/ovl_4A_GoombaCoinStealPeachBoard/2872A0", func_800F66D0_287390);

INCLUDE_ASM(s32, "overlays/ovl_4A_GoombaCoinStealPeachBoard/2872A0", func_800F68B8_287578);

INCLUDE_ASM(s32, "overlays/ovl_4A_GoombaCoinStealPeachBoard/2872A0", func_800F6AE0_2877A0);

INCLUDE_ASM(s32, "overlays/ovl_4A_GoombaCoinStealPeachBoard/2872A0", func_800F6BC4_287884);

INCLUDE_ASM(s32, "overlays/ovl_4A_GoombaCoinStealPeachBoard/2872A0", func_800F6CB0_287970); //large

void func_800F7610_2882D0(void) {
    if (func_80072718() == 0) {
        func_800F7AA8_288768();
        func_800F7928_2885E8();
        func_80054654();
        func_80070ED4();
        if (D_800F7B00 == 0) {
            omOvlReturnEx(1);
            return;
        }
        func_8004F284();
        func_8004F28C(0x4A, 1);
    }
}

void func_800F7688_288348(omObjData* arg0) {
    if (D_800F5144 != 0) {
        if (D_800F7B00 != 0) {
            func_800726AC(6, 8);
        } else {
            func_800726AC(1, 16);
        }
        arg0->func_ptr = &func_800F7610_2882D0;
    }
}


void func_800F76E8_2883A8(void) {
    void* temp_s0;

    D_800F7BEC = func_80064EF4(1, 5);
    temp_s0 = ReadMainFS(0xA0101);
    D_800F7BF0 = func_800678A4(temp_s0);
    FreeMainFS(temp_s0);
    func_80067208(D_800F7BEE[0], 0, D_800F7BF2, 0);
    func_80067384(D_800F7BEE[0], 0, 0x47F4);
    func_800674BC(D_800F7BEE[0], 0, 0x1000);
    func_80066DC4(D_800F7BEE[0], 0, 0xA0, 0x78);
}

void func_800F77A4_288464(void) {
    func_80064D38(D_800F7BEE[0]);
    func_80067704(D_800F7BF2);
}

void func_800F77D0_288490(void) {
    func_8003DAA8();
    func_8004F2AC();
    func_8004F548();
    D_800F7BE4 = CreateObject(0xB, NULL);

    if (D_800C597A == 0) {
        D_800F7BE4->coords.x = D_800F7B04.x;
        D_800F7BE4->coords.y = D_800F7B04.y;
        D_800F7BE4->coords.z = D_800F7B04.z;
    } else {
        D_800F7BE4->coords.x = -55.0f;
        D_800F7BE4->coords.y = D_800F7B04.y;
        D_800F7BE4->coords.z = D_800F7B04.z;
    }

    D_800F7BE8 = CreateObject(func_80052F04(D_800F7BE0), D_800F7B88[gPlayers[D_800F7BE0].characterID]);
    D_800F7BE8->coords.x = D_800F7B1C.x;
    D_800F7BE8->coords.y = D_800F7B1C.y;
    D_800F7BE8->coords.z = D_800F7B1C.z;
    func_8004CCD0(&D_800F7BE8->coords, &D_800F7BE4->coords, &D_800F7BE8->unk_18);

    if (D_800C597A != 0) {
        func_8004EE14(0, &D_800F7BE8->coords, 1, D_800F7BE4);
    }
}

void func_800F7928_2885E8(void) {
    s32 i;
    
    DestroyObject(D_800F7BE4);
    
    if (D_800F7AE0 != NULL) {
        DestroyObject(D_800F7AE0);
    }
    
    if (D_800F7AE4 != NULL) {
        DestroyObject(D_800F7AE4);
    }
    
    for (i = 0; i < 3; i++) {
        if (D_800F7AE8[i] != NULL) {
            DestroyObject(D_800F7AE8[i]);
        }
        
        if (D_800F7AF4[i] != 0) {
            func_8005D718(D_800F7AF4[i]);
        }
    }

    DestroyObject(D_800F7BE8);
    func_8004F2EC();
    func_8004F5F0();
}

void func_800F7A00_2886C0(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(9);
    func_800F76E8_2883A8();
}

void func_800F7AA8_288768(void) {
    func_8004A140();
    func_80049F0C();
    func_800F77A4_288464();
}
