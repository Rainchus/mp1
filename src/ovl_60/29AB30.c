#include "common.h"
#include "29AB30.h"

extern s32 D_800F6E7C[];
extern s32 D_800F6D30[];
Vec3f D_800F6D50[];
Vec3f D_800F6DB0[];
s32* ptr_800F6E64[];

void func_8004DBD4(s16, u8);

void func_800F65E0_29AB30(void) {
    D_800F6EC0 = D_800ED5C3;
    D_800F6EC1 = D_800ED5DD;
    func_8005CF30(0x32, 0xA);
    func_800F6B8C_29B0DC();
    func_800F69BC_29AF0C();
    func_800544E4();
    func_800546B4(0, D_800F32B0[0].turn_status);
    func_800546B4(1, D_800F32B0[1].turn_status);
    func_800546B4(2, D_800F32B0[2].turn_status);
    func_800546B4(3, D_800F32B0[3].turn_status);
    func_8006CEA0();
    func_8005DC28(&func_800F66C4_29AC14, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F6978_29AEC8);
    func_80072644(1, 0x10);
}


void func_800F66C4_29AC14(void) {
    s16 textWindowID;

    func_800421E0();
    func_80063550(26);
    func_8004F00C(D_800F6EC4, 0, -3.0f);
    func_8004F044(D_800F6EC4);
    func_800602AC(117);
    func_80063550(10);
    textWindowID = CreateTextWindow(80, 60, 12, 3);
    func_8006D7D8(textWindowID, 382, -1, -1);
    func_8006E070(textWindowID, 0);
    ShowTextWindow(textWindowID);
    func_800602AC(0x432);
    func_8004DBD4(textWindowID, D_800F6EC1);
    HideTextWindow(textWindowID);
    func_8004CCD0(&D_800F6EC8->unk_0C , &D_800F32A0->unk_00, &D_800F6EC8->unk_18 );
    func_8004F4D4(D_800F6EC8, 0, 0);
    func_80060468(0x451, D_800F32B0[D_800F6EC1].characterID);
    func_80055960(D_800F6EC1, 20);
    func_80063550(40);
    func_8003E81C(D_800F6EC8, 1, 2);
    func_8004EE14(0, &D_800F6EC4->unk_0C, 10, D_800F6EC8);
    func_80063550(10);
    func_8004F4D4(D_800F6EC8, -1, 2);
    textWindowID = CreateTextWindow(100, 60, 14, 3);
    func_8006D7D8(textWindowID, 383, -1, -1);
    func_8006E070(textWindowID, 0);
    ShowTextWindow(textWindowID);
    func_800602AC(0x432);
    func_8004DBD4(textWindowID, D_800F6EC1);
    HideTextWindow(textWindowID);
    func_8004F4D4(D_800F6EC4, 2, 2);
    func_8004EE14(0, &D_800F6E10, 10, D_800F6EC4);
    func_800602AC(85);
    func_80063550(10);
    func_8004E3E0(0, &D_800F6E10, 20, D_800F6EC4);
    func_800602AC(85);
    func_80063550(20);
    D_800F5144 = 1;
    while (1) {
        func_800635B4();
    }
}

void func_800F692C_29AE7C(void) {
    if (func_80072718() == 0) {
        func_800F6D04_29B254();
        func_800F6B58_29B0A8();
        func_80054654();
        func_80070ED4();
        func_8005DFB8(1);
    }
}

void func_800F6978_29AEC8(Object* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(1, 16);
        arg0->func_ptr = &func_800F692C_29AE7C;
    }
}

void func_800F69BC_29AF0C(void) {
    func_8003DAA8();
    D_800F6EC4 = func_8003DBE0(8, &D_800F6E7C);
    D_800F6EC4->unk_0C = D_800F6D50[D_800F6EC0].x;
    D_800F6EC4->unk_10 = D_800F6D50[D_800F6EC0].y;
    D_800F6EC4->unk_14 = D_800F6D50[D_800F6EC0].z;
    D_800F6EC4->unk_30 = 1000.0f;
    func_8004F140(*D_800F6EC4->unk_3C->unk_40);
    D_800F6EC8 = func_8003DBE0(func_80052F04(D_800F6EC1), ptr_800F6E64[D_800F32B0[D_800F6EC1].characterID]);
    D_800F6EC8->unk_0C = D_800F6DB0[D_800F6EC0].x;
    D_800F6EC8->unk_10 = D_800F6DB0[D_800F6EC0].y;
    D_800F6EC8->unk_14 = D_800F6DB0[D_800F6EC0].z;
    func_80021B14(*D_800F6EC8->unk_3C->unk_40, D_800F32B0[D_800F6EC1].characterID, 0x80);
    func_8004CCD0(&D_800F6EC4->unk_0C, &D_800F6EC8->unk_0C, &D_800F6EC4->unk_18);
    func_8004CCD0(&D_800F6EC8->unk_0C, &D_800F6EC4->unk_0C, &D_800F6EC8->unk_18);
}

void func_800F6B58_29B0A8(void) {
    func_8003E694((unk_Struct03*) D_800F6EC4);
    func_8003E694((unk_Struct03*) D_800F6EC8);
    func_8004F1D0();
}

void func_800F6B8C_29B0DC(void) {
    s32 var_a0;

    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_80049E70(&D_FE2310);
    switch (D_800F6EC0) {
    case 1:
        if (D_800F32B0[D_800F6EC1].curChainIndex == 2) {
            var_a0 = 12;
        } else {
            var_a0 = 9;
        }
        break;
    case 3:
        switch (D_800F32B0[D_800F6EC1].curChainIndex) {
        case 2:
            var_a0 = 29;
            break;
        case 3:
            var_a0 = 33;
            break;
        case 8:
            var_a0 = 31;
            break;
        case 1:
            var_a0 = 32;
            break;
        case 0:
        default:
            var_a0 = 30;
            break;
        }
        break;
    default:
        var_a0 = D_800F6D30[D_800F6EC0];
    }
    func_80049F4C(var_a0);
}

void func_800F6D04_29B254(void) {
    func_8004A140();
    func_80049F0C();
}

s32 D_800F6D30[] = {0x00000002, 0x00000009, 0x00000014, 0x0000001D, 0x00000029, 0x00000031, 0x0000003A, 0x00000047};

Vec3f D_800F6D50[] = {
    {-80.0f, 0.0f, 1310.0f},
    {-80.0f, 0.0f, 1310.0f},
    {-80.0f, 0.0f, 1310.0f},
    {-80.0f, 0.0f, 1310.0f},
    {-80.0f, 0.0f, 1310.0f},
    {-80.0f, 0.0f, 1310.0f},
    {-80.0f, 0.0f, 1310.0f},
    {-80.0f, 0.0f, 1310.0f}
};

Vec3f D_800F6DB0[] = {
    {80.0f, 0.0f, 1520.0f},
    {80.0f, 0.0f, 1520.0f},
    {80.0f, 0.0f, 1520.0f},
    {80.0f, 0.0f, 1520.0f},
    {80.0f, 0.0f, 1520.0f},
    {80.0f, 0.0f, 1520.0f},
    {80.0f, 0.0f, 1520.0f},
    {80.0f, 0.0f, 1520.0f},
    {-500.f, 0.0f, 1310.0f}
};

s32 D_800F6E1C[] = { 0x00000002, 0x00010039, 0x00010001 };
s32 D_800F6E28[] = { 0x00000002, 0x00020039, 0x00020001 };
s32 D_800F6E34[] = { 0x00000002, 0x00060039, 0x00060001 };
s32 D_800F6E40[] = { 0x00000002, 0x00030039, 0x00030001 };
s32 D_800F6E4C[] = { 0x00000002, 0x00040039, 0x00040001 };
s32 D_800F6E58[] = { 0x00000002, 0x00050039, 0x00050001 };

s32* ptr_800F6E64[] = { D_800F6E1C, D_800F6E28, D_800F6E34, D_800F6E40, D_800F6E4C, D_800F6E58 };

s32 D_800F6E7C[] = { 0x00000003, 0x000A0072, 0x000A0073, 0x000A0074, 0x00000000 };