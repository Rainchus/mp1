#include "common.h"
#include "285230.h"

extern u8 D_800F6F20_name_47;
extern s16 D_800F6EE2_name_47;

void func_800F65E0_name_47(void) {
    D_800F6F20_name_47 = D_800ED5DC;
    omInitObjMan(50, 10);
    func_800F6E14_name_47();
    func_800F6D1C_name_47();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(&func_800F6924_name_47, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F6CBC_name_47);
    if (D_800C597A != 0) {
        SetFadeInTypeAndTime(6, 8);
    } else {
        SetFadeInTypeAndTime(1, 16);
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_47/285230", func_800F66D0_name_47);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_47/285230", func_800F6924_name_47);

void func_800F6C40_name_47(omObjData* obj) {
    if (func_80072718() == 0) {
        func_800F6EB4_name_47();
        func_800F6DE8_name_47();
        func_80054654();
        func_80070ED4();
        if (D_800F6EE0_name_47 == 0) {
            omOvlReturnEx(1);
            return;
        }
        func_8004F284();
        func_8004F28C(0x47, D_800F6EE2_name_47);
    }
}

void func_800F6CBC_name_47(omObjData* obj) {
    if (D_800F5144 != 0) {
        if (D_800F6EE0_name_47 != 0) {
            func_800726AC(6, 8);
        } else {
            func_800726AC (1, 16);
        }
        obj->func_ptr = &func_800F6C40_name_47;
    }
}

void func_800F6D1C_name_47(void) {
    func_8003DAA8();
    D_800F6F24_name_47 = CreateObject(10, &D_800F6F08_name_47);
    D_800F6F24_name_47->coords.x = D_800F6EE4_name_47.x;
    D_800F6F24_name_47->coords.y = D_800F6EE4_name_47.y;
    D_800F6F24_name_47->coords.z = D_800F6EE4_name_47.z;
    D_800F6F28_name_47 = CreateObject(func_80052F04(D_800F6F20_name_47), NULL);
    D_800F6F28_name_47->coords.x = D_800F6EFC_name_47.x;
    D_800F6F28_name_47->coords.y = D_800F6EFC_name_47.y;
    D_800F6F28_name_47->coords.z = D_800F6EFC_name_47.z;
    func_8004CCD0(&D_800F6F28_name_47->coords, &D_800F6F24_name_47->coords, &D_800F6F28_name_47->unk_18);
    func_8004CCD0(&D_800F6F24_name_47->coords, &D_800F6F28_name_47->coords, &D_800F6F24_name_47->unk_18);
}

void func_800F6DE8_name_47(void) {
    DestroyObject(D_800F6F28_name_47);
    DestroyObject(D_800F6F24_name_47);
}

void func_800F6E14_name_47(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(2);
}

void func_800F6EB4_name_47(void) {
    func_8004A140();
    func_80049F0C();
}
