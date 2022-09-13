#include "common.h"
#include "28ABA0.h"

void func_800F65E0_28ABA0(void) {
    D_800F76B0 = D_800ED5DD;
    InitObjSystem(50, 10);
    func_800F7550_28BB10();
    func_800F741C_28B9DC();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(&func_800F6A98_28B058, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F73BC_28B97C);
    if (D_800C597A != 0) {
        SetFadeInTypeAndTime(6, 8);
    } else {
        SetFadeInTypeAndTime(1, 16);
    }
}

INCLUDE_ASM(s32, "ovl_4D_ThowmpTollYoshiBoard/28ABA0", func_800F66D0_28AC90);

s32 func_800F68C8_28AE88(void) { //slightly odd match with assignments in elseif statement
    s32 temp_v0;
    s32 var_v0;

    temp_v0 = func_8005021C(100.0f);
    if ((D_800ED154[D_800ED154[2]] + 40) < gPlayers[D_800F76B0].coinAmount) {
        if (gPlayers[D_800F76B0].cpuDifficultyCopy == 0) {
            var_v0 = 1;
            if (temp_v0 >= 80) {
                var_v0 = (-(temp_v0 >= 95) & 3) | 2;
            }
        } else {
            if (temp_v0 >= 60) {
                if (temp_v0 < 80) {
                    var_v0 = 2;
                } else {
                    var_v0 = 4;
                    if (temp_v0 < 90) {
                        var_v0 = 3;
                    }
                }
            } else {
                var_v0 = 1;
            }   
        }

    } else {
        if ((D_800ED154[D_800ED154[2]] + 20) < gPlayers[D_800F76B0].coinAmount) {
            if (gPlayers[D_800F76B0].cpuDifficultyCopy != 0) {
                if (temp_v0 >= 70) {
                    var_v0 = (-(temp_v0 >= 90) & 3) | 2;
                } else {
                    var_v0 = 1;
                }
            } else {
                var_v0 = 1;
                if (temp_v0 >= 80) {
                    var_v0 = (-(temp_v0 >= 95) & 3) | 2;
                }
            }
        } else if ((gPlayers[D_800F76B0].cpuDifficultyCopy == 0) || (var_v0 = temp_v0 < 95, ((temp_v0 < 80) != 0))) {
            var_v0 = 1;
        } else {
            var_v0 = (-(temp_v0 >= 95) & 3) | 2;
        }
    }
    
    var_v0 += D_800ED154[D_800ED154[2]];
    
    if (var_v0 >= 51) {
        var_v0 = 50;
    }
    
    if (gPlayers[D_800F76B0].coinAmount < var_v0) {
        var_v0 = gPlayers[D_800F76B0].coinAmount;
    }
    
    return var_v0;
}

INCLUDE_ASM(s32, "ovl_4D_ThowmpTollYoshiBoard/28ABA0", func_800F6A98_28B058);

void func_800F7340_28B900(void) {
    if (func_80072718() == 0) {
        func_800F75F0_28BBB0();
        func_800F7524_28BAE4();
        func_80054654();
        func_80070ED4();
        if (D_800F7620 == 0) {
            func_8005DFB8(1);
            return;
        }
        func_8004F284();
        func_8004F28C(0x4D, D_800F7622);
    }
}

void func_800F73BC_28B97C(Object* arg0) {
    if (D_800F5144 != 0) {
        if (D_800F7620 != 0) {
            func_800726AC(6, 8);
        } else {
            func_800726AC(1, 16);
        }
        arg0->func_ptr = &func_800F7340_28B900;
    }
}

void func_800F741C_28B9DC(void) {
    func_8003DAA8();
    D_800F76B4 = func_8003DBE0(13, NULL);
    D_800F76B4->coords.x = D_800F7624.x;
    D_800F76B4->coords.y = D_800F7624.y;
    D_800F76B4->coords.z = D_800F7624.z;
    func_800A0D00(&D_800F76B4->xScale, 2.0f, 2.0f, 2.0f);
    D_800F76B8 = func_8003DBE0(func_80052F04(D_800F76B0), D_800F7678[gPlayers[D_800F76B0].characterID]);
    D_800F76B8->coords.x = D_800F7630.x;
    D_800F76B8->coords.y = D_800F7630.y;
    D_800F76B8->coords.z = D_800F7630.z;
    func_8004CCD0(&D_800F76B8->coords, &D_800F76B4->coords, &D_800F76B8->unk_18);
    func_8004CCD0(&D_800F76B4->coords, &D_800F76B8->coords, &D_800F76B4->unk_18);
}

void func_800F7524_28BAE4(void) {
    func_8003E694(D_800F76B8);
    func_8003E694(D_800F76B4);
}

void func_800F7550_28BB10(void) {
    func_800178A0(1);
    func_80017660(0U, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0U, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(0x15);
}

void func_800F75F0_28BBB0(void) {
    func_8004A140();
    func_80049F0C();
}
