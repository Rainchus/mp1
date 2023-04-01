#include "common.h"
#include "spaces.h"

typedef struct testStruct2 {
s16 unk_00;
u16 unk_02;
} testStruct2;

s32 func_8005B984(s32);
s32 func_8005BAB0(s32);
void func_8005CD7C(s32, s32, s32, s32);
void func_8005B860(s32);
void func_8005C3FC(s32, s32);
void func_8005CC3C(void);
void func_800F6610_2FA8D0(void);
void func_8005B860(s32);
void func_8005BD1C(s32);
void func_8005B860(s32);
void func_8005BD10(s32);
void func_8005B860(s32);
void func_8005B860(s32);
extern EventTableEntry D_800F6A9C;
extern testStruct2 D_800F69E0[];
extern s16 D_800ED154;

void func_800F6610_2FA8D0(void) {
    testStruct2* temp = D_800F69E0;
    s32 i;

    for (i = 0; temp->unk_00 >= 0; temp++) {
        if (func_8005CE48(temp->unk_02) != 0) {
            SetSpaceType(temp->unk_00, 1);
        }
    }
}

void func_800F666C_2FA92C(void) {
    playerMain* player;

    InitObjSystem(0x50, 0x28);
    func_80060088();
    InitCameras(2);
    func_80023448(1);
    func_800234B8(0U, 0x78U, 0x78U, 0x78U);
    func_800234B8(1U, 0x40U, 0x40U, 0x60U);
    func_80023504(1, -100.0f, 100.0f, 300.0f);
    func_8005C3FC(0x53, 0x52);
    func_80052E84(0);
    player = GetPlayerStruct(0);
    func_8003E174(player->playerObj);
    player->playerObj->unk_0A |= 2;
    EventTableHydrate(&D_800F6A9C);
    func_800F6610_2FA8D0();
    func_8005CC3C();
    func_80060128(0x47);
}

void func_800F6744_2FAA04(void) {
    func_800F666C_2FA92C();
}

void func_800F6760_2FAA20(void) {
    SetPlayerOntoChain(0, 0, 0);
    func_800F666C_2FA92C();
}

void func_800F678C_2FAA4C(void) {
    SetPlayerOntoChain(0, 0, 8);
    func_800F666C_2FA92C();
}

void func_800F67B8_2FAA78(void) {
    func_8005B860(-1);
    func_8005BD1C(0);
}

void func_800F67DC_2FAA9C(void) {
    s32 temp_s0 = func_8005BAB0(0x4B7);
    s16 temp_s1 = func_8005B984(0);

    func_80070D90(temp_s0);
    if (temp_s1 == 0) {
        func_8005CD7C(3, 6, 1, 1);
        func_80058910(-1, 0);
    }
    EndProcess(NULL);
}

void func_800F6854_2FAB14(void) {
    D_800ED154 = 7;
    func_8005B860(-2);
}

void func_800F687C_2FAB3C(void) {
    func_8005B860(0x26);
}

void func_800F6898_2FAB58(void) {
    func_8005B860(0x27);
}

void func_800F68B4_2FAB74(void) {
    func_8005B860(0x28);
}

void func_800F68D0_2FAB90(void) {
    func_8005B860(0x29);
}

void func_800F68EC_2FABAC(void) {
    func_8005B860(0x2A);
}

void func_800F6908_2FABC8(void) {
    func_8005B860(0x2B);
}

void func_800F6924_2FABE4(void) {
    func_8005B860(-1);
    func_8005BD10(0);
}

void func_800F6948_2FAC08(void) {
    s32 temp_s0 = func_8005BAB0(0x4B8);
    s16 temp_s1 = func_8005B984(0x4A9);

    func_80070D90(temp_s0);
    if (temp_s1 == 0) {
        func_8005CD7C(0, 8, 1, 1);
        func_80058910(-1, 0);
    }
    EndProcess(NULL);
}
