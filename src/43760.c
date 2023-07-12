#include "common.h"
#include "process.h"
#include "43760.h"

void func_80042B60(void) {
    if (D_800F383C >= (D_800C4E0C + 4)) {
        PlaySound(0x3D);
        D_800C4E0C = D_800F383C;
    }
}

INCLUDE_ASM(s32, "43760", func_80042BAC);

INCLUDE_ASM(s32, "43760", func_80043460);

void func_800434E4(void) {
    s32 i;

    for (i = 0; i < 5; i++) {
        D_800D6400[i].unk_00 = -1;
    }

    D_800D6450 = 0;
    D_800D645C = -1;
    D_800D645A = -1;
    D_800D6460 = -1;
    D_800D645E = -1;
}

INCLUDE_ASM(s32, "43760", func_80043544);

void func_8004367C(void) {
    void* temp_s0;

    if (D_800D645A == -1) {
        D_800D645A = func_80064EF4(1, 5);
        temp_s0 = ReadMainFS(0xA0023);
        D_800D645C = func_800678A4(temp_s0);
        FreeMainFS(temp_s0);
        func_80067208(D_800D645A, 0, D_800D645C, 0);
        func_80067384(D_800D645A, 0, 0x4770);
        func_800674BC(D_800D645A, 0, 0x1000U);
        func_80066DC4(D_800D645A, 0, 0xA0, D_800C4DC0[D_800D6459] + D_800D6404);
        
        if (GetRandomByte() & 1) {
            func_800674F4(D_800D645A, 0, 0x35,  0x9D, 0xE6);
        } else {
            func_800674F4(D_800D645A, 0, 0xAD, 0x71, 0xFE);
        }
    }
}

void func_800437B8(void) {
    void* temp_s0;

    if (D_800D645E == -1) {
        D_800D645E = func_80064EF4(1, 5);
        temp_s0 = ReadMainFS(0xA0025);
        D_800D6460 = func_800678A4(temp_s0);
        FreeMainFS(temp_s0);
        func_80067208(D_800D645E, 0, D_800D6460, 0);
        func_80067384(D_800D645E, 0, 0x100);
        func_800674BC(D_800D645E, 0, 0x1000U);
        func_80066DC4(D_800D645E, 0, 0x32, D_800C4DC4[D_800D6459]);
    }
}

INCLUDE_ASM(s32, "43760", func_8004388C);

void func_80043D68(void) {
    D_800D6450->unk_4C[0] = 0;
}

INCLUDE_ASM(s32, "43760", func_80043D78);

INCLUDE_ASM(s32, "43760", func_80043E7C);

INCLUDE_ASM(s32, "43760", func_800441D4);

Process* func_800444DC(void) {
    Process* process;
    s32* data;

    process = InitProcess(&func_800441D4, 0, 0x2000, 0x40);
    data = Malloc(process->heap, 16);
    process->user_data = data;
    *data = 0;
    return process;
}

void func_8004452C(void) { //fix me: remove goto
    unkUserData_00* temp_s0 = GetCurrentProcess()->user_data;
    u16* temp = D_800F5460;

loop_1:
    switch (temp_s0->unk_00) {
    case 0:
        func_80054868(temp_s0->unk_04 + 6);
        func_80047BE0(1);
        temp_s0->unk_00++;
        break;
    case 1:
        if (func_80054FA8() == 0) {
            if (temp[gPlayers[temp_s0->unk_04].flags] & 0x8000) {
                if (!(gPlayers[temp_s0->unk_04].unk_06 & 1)) {    
                    func_80043D68();
                    func_80054868(5);
                    temp_s0->unk_00++;
                    break;
                }
            }
            
            if (gPlayers[temp_s0->unk_04].unk_06 & 1) {
                func_80043D68();
                func_80054868(5);
                temp_s0->unk_00++;
            }  
        }
        break;
    case 2:
        if (D_800D645A == -1) {
            EndProcess(NULL);
        }
        break;
    }
    SleepVProcess();
    goto loop_1;
}

Process* func_80044680(s32 arg0) {
    Process* process;
    unkUserData_00* userData;

    process = InitProcess(func_8004452C, 0, 0x2000, 0x40);
    userData = Malloc(process->heap, sizeof(unkUserData_00));
    process->user_data = userData;
    userData->unk_00 = 0;
    userData->unk_04 = arg0;
    return process;
}

INCLUDE_ASM(s32, "43760", func_800446E0);

Process* func_800448A0(s32 arg0) {
    Process* process;
    unkUserData_00* userData;

    process = InitProcess(func_800446E0, 0, 0x2000, 0x40);
    userData = Malloc(process->heap, sizeof(unkUserData_00));
    process->user_data = userData;
    userData->unk_00 = 10;
    return process;
}

INCLUDE_ASM(s32, "43760", func_800448F4);

void func_80045000(void) {
    func_8004501C(0);
}

INCLUDE_ASM(s32, "43760", func_8004501C);
