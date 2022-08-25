#include "common.h"
#include "298AE0.h"

void func_800F65E0_298AE0(void) {
    D_800F7F00 = D_800ED5DD;
    func_8005CF30(50, 50);
    func_800F7CF8_29A1F8();
    func_800F7A90_299F90();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    func_8003FCD4();
    InitProcess(func_800F76D4_299BD4, 0x300, 0x2000, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F7A08_299F08);
    if (D_800C597A != 0) {
        func_80072644(6, 8);
    } else {
        func_80072644(2, 16);
    }
}

void func_800F66D8_298BD8(s32 arg0) {
    s16 sp18[4];
    unk_ovl_5E sp20;
    s32 i;
    s32 var_s3;

    var_s3 = 0;
    sp20 = D_800F7ED0;
    for (i = 0; i < 4; i++) {
        if (i == D_800F7F00) {
            if (gPlayers[i].unk_06 & 1) {
                var_s3 = 1;
                sp18[gPlayers[i].flags] = -0x8000;
            } else {
                func_8007155C(arg0, sp20.unk_00[gPlayers[i].flags]);
                sp18[gPlayers[i].flags] = -1;
            }
        } else {
            sp18[gPlayers[i].flags] = -0;
        }
    }
    if (var_s3 != 0) {
        func_8006DA1C(arg0, 2, 2);
        func_80070FF8(sp18[0], sp18[1], sp18[2], sp18[3], func_8004DBBC());
    } else {
        func_800710A4(sp18[0], sp18[1], sp18[2], sp18[3]);
    }
    func_8006FCF0(arg0, 0, 1);
}

INCLUDE_ASM(s32, "ovl_5E_StarVisitEternalStar/298AE0", func_800F6898_298D98);

INCLUDE_ASM(s32, "ovl_5E_StarVisitEternalStar/298AE0", func_800F76D4_299BD4);

void func_800F7978_299E78(void) {
    if (func_80072718() == 0) {
        func_800F7D98_29A298();
        func_800F7C88_29A188();
        func_80054654();
        func_80070ED4();
        func_80041370();
        func_800405DC(D_800F7F00);
        if (D_800F7DC8 == 0) {
            func_8005DFB8(1);
            return;
        }
        func_8004F284();
        func_8004F28C(0x5E, D_800F7DC8);
    }
}

void func_800F7A08_299F08(Object* arg0) {
    if (D_800F5144 != 0) {
        if (D_800F7DC8 != 0) {
            func_800726AC(6, 8);
        } else {
            if (D_800F7DCC != 0) {
                if (D_800F7DD0 == 1) {
                    func_800601D4(0x20);
                }
            }
            func_800726AC(2, 16);
        }
        arg0->func_ptr = &func_800F7978_299E78;
    }
}

void func_800F7A90_299F90(void) {
    func_8003DAA8();
    func_8004F2AC();
    func_8004F8DC();
    D_800F7F0C = func_8004F954(0x26, 0x20);
    D_800F7F04 = func_8003DBE0(0x78, &D_800F7DF8);
    D_800F7F04->coords.x = D_800F7DD4.x;
    D_800F7F04->coords.y = D_800F7DD4.y;
    D_800F7F04->coords.z = D_800F7DD4.z;
    D_800F7F04->unk_24 = D_800F7F04->unk_28 = D_800F7F04->unk_2C = 1.5f;
    D_800F7F08 = func_8003DBE0(func_80052F04(D_800F7F00), D_800F7EB4[gPlayers[D_800F7F00].characterID]);
    D_800F7F08->coords.x = D_800F7DE0.x;
    D_800F7F08->coords.y = D_800F7DE0.y;
    D_800F7F08->coords.z = D_800F7DE0.z;
    func_80021B14(*D_800F7F08->unk_3C->unk_40, gPlayers[D_800F7F00].characterID, 0x80);
    func_8004CCD0(&D_800F7F08->coords, &D_800F7F04->coords, &D_800F7F08->unk_18);
    func_8004CCD0(&D_800F7F04->coords, &D_800F7F08->coords, &D_800F7F04->unk_18);
    func_80052E84(D_800F7F00);
    func_8003E664(gPlayers[D_800F7F00].playerObj);
    (gPlayers[D_800F7F00].playerObj)->coords.x = D_800F7DEC.x;
    (gPlayers[D_800F7F00].playerObj)->coords.y = D_800F7DEC.y;
    (gPlayers[D_800F7F00].playerObj)->coords.z = D_800F7DEC.z;
}

INCLUDE_ASM(s32, "ovl_5E_StarVisitEternalStar/298AE0", func_800F7C88_29A188);

INCLUDE_ASM(s32, "ovl_5E_StarVisitEternalStar/298AE0", func_800F7CF8_29A1F8);

INCLUDE_ASM(s32, "ovl_5E_StarVisitEternalStar/298AE0", func_800F7D98_29A298);
