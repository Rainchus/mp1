#include "common.h"
#include "285230.h"

void func_800F65E0_285230(void) {
    D_800F6F20 = D_800ED5DD;
    omInitObjMan(50, 10);
    func_800F6E14_285A64();
    func_800F6D1C_28596C();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(&func_800F6924_285574, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F6CBC_28590C);
    if (D_800C597A != 0) {
        SetFadeInTypeAndTime(6, 8);
    } else {
        SetFadeInTypeAndTime(1, 16);
    }
}

INCLUDE_ASM(s32, "overlays/ovl_47/285230", func_800F66D0_285320);

INCLUDE_ASM(s32, "overlays/ovl_47/285230", func_800F6924_285574);

void func_800F6C40_285890(omObjData* obj) {
    if (func_80072718() == 0) {
        func_800F6EB4_285B04();
        func_800F6DE8_285A38();
        func_80054654();
        func_80070ED4();
        if (D_800F6EE0 == 0) {
            omOvlReturnEx(1);
            return;
        }
        func_8004F284();
        func_8004F28C(0x47, D_800F6EE2);
    }
}

void func_800F6CBC_28590C(omObjData* obj) {
    if (D_800F5144 != 0) {
        if (D_800F6EE0 != 0) {
            func_800726AC(6, 8);
        } else {
            func_800726AC (1, 16);
        }
        obj->func_ptr = &func_800F6C40_285890;
    }
}

void func_800F6D1C_28596C(void) {
    func_8003DAA8();
    D_800F6F24 = CreateObject(10, &D_800F6F08);
    D_800F6F24->coords.x = D_800F6EE4.x;
    D_800F6F24->coords.y = D_800F6EE4.y;
    D_800F6F24->coords.z = D_800F6EE4.z;
    D_800F6F28 = CreateObject(func_80052F04(D_800F6F20), NULL);
    D_800F6F28->coords.x = D_800F6EFC.x;
    D_800F6F28->coords.y = D_800F6EFC.y;
    D_800F6F28->coords.z = D_800F6EFC.z;
    func_8004CCD0(&D_800F6F28->coords, &D_800F6F24->coords, &D_800F6F28->unk_18);
    func_8004CCD0(&D_800F6F24->coords, &D_800F6F28->coords, &D_800F6F24->unk_18);
}

void func_800F6DE8_285A38(void) {
    DestroyObject(D_800F6F28);
    DestroyObject(D_800F6F24);
}

void func_800F6E14_285A64(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(2);
}

void func_800F6EB4_285B04(void) {
    func_8004A140();
    func_80049F0C();
}
