#include "process.h"
#include "285B70.h"

Vec3f D_800F70C0_286650 = {-115.0f, 0.0f, 1120.0f};
Vec3f D_800F70CC_28665C[] = {{30.0f, 350.0f, 1475.0f},{30.0f, 65.0f, 1475.0f}};
Vec3f D_800F70E4_286674 = {115.0f, 0.0f, 1520.0f};

s32 D_800F70F0_286680[] = { 0x00000003, 0x000A0068, 0x000A006A, 0x000A006C };
s32 D_800F7100_286690[] =  { 0x00000002, 0x0001003C, 0x0001003E };
s32 D_800F710C_28669C[] = { 0x00000002, 0x0002003C, 0x0002003E };
s32 D_800F7118_2866A8[] = { 0x00000002, 0x0006003C, 0x0006003E };
s32 D_800F7124_2866B4[] = { 0x00000002, 0x0003003C, 0x0003003E };
s32 D_800F7130_2866C0[] = { 0x00000002, 0x0004003C, 0x0004003E };
s32 D_800F713C_2866CC[] = { 0x00000002, 0x0005003C, 0x0005003E };

s32* D_800F7148_2866D8[] = {D_800F7100_286690, D_800F710C_28669C, D_800F7118_2866A8, D_800F7124_2866B4, D_800F7130_2866C0, D_800F713C_2866CC};


//f64 D_800F7160_2866F0 = 0.017453292519943295;
//f64 D_800F7160_2866F8 = 0.017453292519943295;

//bss
extern u8 D_800F7170_ovl48;
extern Object* D_800F7174_ovl48;
extern Object* D_800F7178_ovl48;
extern Object* D_800F717C_ovl48;
extern unkObjectStruct* D_800F7180_ovl48;

void func_800F65E0_285B70(void) {
    D_800F7170_ovl48 = D_800ED5DD;
    InitObjSystem(50, 10);
    func_800F6FF8_286588();
    func_800F6E1C_2863AC();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(func_800F66BC_285C4C, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F6DD0_286360);
    func_80060128(0x12);
    SetFadeInTypeAndTime(3, 0x10);
}

void func_800F66BC_285C4C(void) {
    f32 var_f20;
    s32 temp_s1;

    SleepProcess(0x10);
    PlaySound(0x46A);
    SleepProcess(0xA);
    if (gPlayers[D_800F7170_ovl48].coinAmount == 0) {
        temp_s1 = CreateTextWindow(0x28, 0x28, 0x10, 2);
        LoadStringIntoWindow(temp_s1, (void* )0x192, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        func_8004DBD4(temp_s1, D_800F7170_ovl48);
        HideTextWindow(temp_s1);
        temp_s1 = CreateTextWindow(0x28, 0x28, 0x13, 3);
        LoadStringIntoWindow(temp_s1, (void* )0x193, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        PlaySound(0x46A);
        func_8004DBD4(temp_s1, D_800F7170_ovl48);
        HideTextWindow(temp_s1);
    } else if (!(gPlayers[D_800F7170_ovl48].coinAmount >= 0xA)) {
        temp_s1 = CreateTextWindow(0x28, 0x28, 0x10, 2);
        LoadStringIntoWindow(temp_s1, (void* )0x18F, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        func_8004DBD4(temp_s1, D_800F7170_ovl48);
        HideTextWindow(temp_s1);
        temp_s1 = CreateTextWindow(0x28, 0x28, 0x12, 3);
        LoadStringIntoWindow(temp_s1, (void* )0x190, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow( temp_s1);
        func_8004DBD4(temp_s1, D_800F7170_ovl48);
        HideTextWindow(temp_s1);
        func_8003E81C(D_800F7174_ovl48, 1, 0);
        func_8004F40C(D_800F7174_ovl48, 0, 2);
        func_8003E81C(D_800F717C_ovl48, 1, 0);
        func_80055960(D_800F7170_ovl48, -gPlayers[D_800F7170_ovl48].coinAmount);
        func_800503B0(D_800F7170_ovl48, 5);
        func_80060618(0x44A, D_800F7170_ovl48);
        SleepProcess(0x1E);
        temp_s1 = CreateTextWindow(0x28, 0x28, 0x10, 2);
        LoadStringIntoWindow(temp_s1, (void* )0x191, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        PlaySound(0x469);
        func_8004DBD4(temp_s1, D_800F7170_ovl48);
        HideTextWindow(temp_s1);
    } else {
        temp_s1 = CreateTextWindow(0x37, 0x28, 0x10, 2);
        LoadStringIntoWindow(temp_s1, (void* )0x18C, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        func_8004DBD4(temp_s1, D_800F7170_ovl48);
        HideTextWindow(temp_s1);
        func_8004F4D4(D_800F7174_ovl48, 2, 0);
        func_8004F40C(D_800F7174_ovl48, 0, 2);
        SleepProcess(0x14);
        var_f20 = D_800F70CC_28665C[0].y;

        while (D_800F70CC_28665C[1].y <= var_f20) {
            D_800F7178_ovl48->unk_30 = var_f20;
            SleepVProcess();
            var_f20 -= 2.0f;
        }

        D_800F7178_ovl48->unk_30 = D_800F70CC_28665C[1].y;
        D_800F7180_ovl48->unk_4C = 1;
        SleepVProcess();
        func_8003E81C(D_800F7174_ovl48, 1, 0);
        func_8004F40C(D_800F7174_ovl48, 0, 2);
        SleepProcess(0x28);
        temp_s1 = CreateTextWindow(0x28, 0x28, 0x12, 3);
        LoadStringIntoWindow(temp_s1, (void* )0x18D, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        func_8004DBD4(temp_s1, D_800F7170_ovl48);
        HideTextWindow(temp_s1);
        func_8003E81C(D_800F7174_ovl48, 1, 0);
        func_8004F40C(D_800F7174_ovl48, 0, 2);
        func_8003E81C(D_800F717C_ovl48, 0, 0);
        func_80055960(D_800F7170_ovl48, -0xA);
        func_800503B0(D_800F7170_ovl48, 5);
        func_80060618(0x44A, D_800F7170_ovl48);
        SleepProcess(0x1E);
        temp_s1 = CreateTextWindow(0x50, 0x28, 0xF, 3);
        LoadStringIntoWindow(temp_s1, (void* )0x18E, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        PlaySound(0x469);
        func_8004DBD4(temp_s1, D_800F7170_ovl48);
        HideTextWindow(temp_s1);
    }

    D_800F5144 = 1;
    while (1) {
        SleepVProcess();
    }
}

void func_800F6C14_2861A4(unkObjectStruct* arg0) {
    Object* temp_s0;
    Object* temp_s0_2;
    Object* temp_s0_3;

    temp_s0 = D_800F7178_ovl48;
    temp_s0->unk_18.x = sinf(arg0->unk_24 * 0.017453292519943295);
    temp_s0_2 = D_800F7178_ovl48;
    temp_s0_2->unk_18.z = cosf(arg0->unk_24 * 0.017453292519943295);
    if ((arg0->unk_4C == 0) || !(arg0->unk_24 < -310.0f)) {
        arg0->unk_24 = arg0->unk_24 - 5.0f;
        if (arg0->unk_24 <= -360.0f) {
            arg0->unk_24 = arg0->unk_24 + 360.0f;
        }
    } else {
        temp_s0_3 = D_800F7178_ovl48;
        temp_s0_3->unk_30 = ((sinf(arg0->unk_28 * 0.017453292519943295)) * 4.0f) + D_800F70CC_28665C[1].y;
        arg0->unk_28 = arg0->unk_28 + 5.0f;
        if (arg0->unk_28 >= 360.0f) {
            arg0->unk_28 -= 360.0f;
        }
    }
}

void func_800F6D84_286314(void) {
    if (func_80072718() == 0) {
        func_800F7098_286628();
        func_800F6FAC_28653C();
        func_80054654();
        func_80070ED4();
        func_8005DFB8(1);
    }
}

void func_800F6DD0_286360(unkObjectStruct* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(3, 0x10);
        func_800601D4(0x20);
        arg0->func_ptr = &func_800F6D84_286314;
    }
}

void func_800F6E1C_2863AC(void) {
    func_8003DAA8();
    func_8004F2AC();
    D_800F7174_ovl48 = CreateObject(6, D_800F70F0_286680);
    D_800F7174_ovl48->coords.x = D_800F70C0_286650.x;
    D_800F7174_ovl48->coords.y = D_800F70C0_286650.y;
    D_800F7174_ovl48->coords.z = D_800F70C0_286650.z;
    D_800F7174_ovl48->zScale = 1.5f;
    D_800F7174_ovl48->yScale = 1.5f;
    D_800F7174_ovl48->xScale = 1.5f;
    D_800F7178_ovl48 = CreateObject(0x28, NULL);
    D_800F7178_ovl48->coords.x = D_800F70CC_28665C[0].x;
    D_800F7178_ovl48->coords.y = 0.0f;
    D_800F7178_ovl48->unk_30 = D_800F70CC_28665C[0].y;
    D_800F7178_ovl48->coords.z = D_800F70CC_28665C[0].z;
    D_800F7180_ovl48 = func_8005D384(0x1000, 0, 0, -1, &func_800F6C14_2861A4);
    D_800F7180_ovl48->unk_24 = -12.0f;
    D_800F7180_ovl48->unk_28 = 0.0f;
    D_800F7180_ovl48->unk_4C = 0;
    D_800F717C_ovl48 = CreateObject(func_80052F04(D_800F7170_ovl48), D_800F7148_2866D8[gPlayers[D_800F7170_ovl48].characterID]);
    D_800F717C_ovl48->coords.x = D_800F70E4_286674.x;
    D_800F717C_ovl48->coords.y = D_800F70E4_286674.y;
    D_800F717C_ovl48->coords.z = D_800F70E4_286674.z;
    func_8004CCD0(&D_800F717C_ovl48->coords, &D_800F7174_ovl48->coords, &D_800F717C_ovl48->unk_18);
    func_8004CCD0(&D_800F7174_ovl48->coords, &D_800F717C_ovl48->coords, &D_800F7174_ovl48->unk_18);
}

void func_800F6FAC_28653C(void) {
    func_8005D718(D_800F7180_ovl48);
    DestroyObject(D_800F717C_ovl48);
    DestroyObject(D_800F7174_ovl48);
    DestroyObject(D_800F7178_ovl48);
    func_8004F2EC();
}

void func_800F6FF8_286588(void) {
    func_800178A0(1);
    func_80017660(0U, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0U, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(2);
}

void func_800F7098_286628(void) {
    func_8004A140();
    func_80049F0C();
}
