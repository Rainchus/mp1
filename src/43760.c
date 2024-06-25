#include "common.h"
#include "engine/process.h"
#include "engine/pad.h"
typedef struct unk43760 {
    s16 unk_00;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
} unk43760;

typedef struct unkUserData_00 {
/* 0x00 */ s32 unk_00;
/* 0x04 */ s32 unk_04;
/* 0x08 */ s32 unk_08;
/* 0x0C */ s32 unk_0C;
} unkUserData_00; //0x10 in size

extern u32 D_800F383C_F38CC;
extern u32 D_800C4E0C_C5A0C;
extern unk43760 D_800D6400_D6490[5];
extern omObjData* D_800D6450_D64E0;
extern s16 D_800D645A_D64EA;
extern s16 D_800D645C_D64EC;
extern s16 D_800D645E_D64EE;
extern s16 D_800D6460_D64F0;
extern u16 D_800D6404_D6494;
extern s8 D_800D6459_D64E9;
extern u8 D_800C4DC0_C59C0[];
extern u8 D_800C4DC4_C59C4[];

void func_80042B60_43760(void) {
    if (D_800F383C_F38CC >= (D_800C4E0C_C5A0C + 4)) {
        PlaySound(0x3D);
        D_800C4E0C_C5A0C = D_800F383C_F38CC;
    }
}

INCLUDE_ASM("asm/nonmatchings/43760", func_80042BAC_437AC);

INCLUDE_ASM("asm/nonmatchings/43760", func_80043460_44060);

void func_800434E4_440E4(void) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(D_800D6400_D6490); i++) {
        D_800D6400_D6490[i].unk_00 = -1;
    }

    D_800D6450_D64E0 = 0;
    D_800D645C_D64EC = -1;
    D_800D645A_D64EA = -1;
    D_800D6460_D64F0 = -1;
    D_800D645E_D64EE = -1;
}

INCLUDE_ASM("asm/nonmatchings/43760", func_80043544_44144);

void func_8004367C_4427C(void) {
    void* temp_s0;

    if (D_800D645A_D64EA == -1) {
        D_800D645A_D64EA = func_80064EF4_65AF4(1, 5);
        temp_s0 = ReadMainFS(0xA0023);
        D_800D645C_D64EC = func_800678A4_684A4(temp_s0);
        FreeMainFS(temp_s0);
        func_80067208_67E08(D_800D645A_D64EA, 0, D_800D645C_D64EC, 0);
        func_80067384_67F84(D_800D645A_D64EA, 0, 0x4770);
        func_800674BC_680BC(D_800D645A_D64EA, 0, 0x1000U);
        func_80066DC4_679C4(D_800D645A_D64EA, 0, 0xA0, D_800C4DC0_C59C0[D_800D6459_D64E9] + D_800D6404_D6494);
        
        if (rand8() & 1) {
            func_800674F4_680F4(D_800D645A_D64EA, 0, 0x35,  0x9D, 0xE6);
        } else {
            func_800674F4_680F4(D_800D645A_D64EA, 0, 0xAD, 0x71, 0xFE);
        }
    }
}

void func_800437B8_443B8(void) {
    void* temp_s0;

    if (D_800D645E_D64EE == -1) {
        D_800D645E_D64EE = func_80064EF4_65AF4(1, 5);
        temp_s0 = ReadMainFS(0xA0025);
        D_800D6460_D64F0 = func_800678A4_684A4(temp_s0);
        FreeMainFS(temp_s0);
        func_80067208_67E08(D_800D645E_D64EE, 0, D_800D6460_D64F0, 0);
        func_80067384_67F84(D_800D645E_D64EE, 0, 0x100);
        func_800674BC_680BC(D_800D645E_D64EE, 0, 0x1000U);
        func_80066DC4_679C4(D_800D645E_D64EE, 0, 0x32, D_800C4DC4_C59C4[D_800D6459_D64E9]);
    }
}

INCLUDE_RODATA("asm/nonmatchings/43760", D_800CAD28_CB928);

INCLUDE_RODATA("asm/nonmatchings/43760", D_800CAD38_CB938);

INCLUDE_ASM("asm/nonmatchings/43760", func_8004388C_4448C);

void func_80043D68_44968(void) {
    D_800D6450_D64E0->work[0] = 0;
}

INCLUDE_ASM("asm/nonmatchings/43760", func_80043D78_44978);

INCLUDE_ASM("asm/nonmatchings/43760", func_80043E7C_44A7C);

INCLUDE_ASM("asm/nonmatchings/43760", func_800441D4_44DD4);

Process* func_800444DC_450DC(void) {
    Process* process;
    s32* data;

    process = omAddPrcObj(&func_800441D4_44DD4, 0, 0x2000, 0x40);
    data = HuMemMemoryAlloc(process->heap, 16);
    process->user_data = data;
    *data = 0;
    return process;
}

void func_8004452C_4512C(void) { //TODO: fix goto
    unkUserData_00* temp_s0 = HuPrcCurrentGet()->user_data;
    u16* temp = D_800F5460_F54F0;

loop_1:
    switch (temp_s0->unk_00) {
    case 0:
        func_80054868_55468(temp_s0->unk_04 + 6);
        func_80047BE0_487E0(1);
        temp_s0->unk_00++;
        break;
    case 1:
        if (func_80054FA8_55BA8() == 0) {
            if (temp[gPlayers[temp_s0->unk_04].flags] & 0x8000) {
                if (!(gPlayers[temp_s0->unk_04].unk_06 & 1)) {    
                    func_80043D68_44968();
                    func_80054868_55468(5);
                    temp_s0->unk_00++;
                    break;
                }
            }
            
            if (gPlayers[temp_s0->unk_04].unk_06 & 1) {
                func_80043D68_44968();
                func_80054868_55468(5);
                temp_s0->unk_00++;
            }  
        }
        break;
    case 2:
        if (D_800D645A_D64EA == -1) {
            EndProcess(NULL);
        }
        break;
    }
    HuPrcVSleep();
    goto loop_1;
}

Process* func_80044680_45280(s32 arg0) {
    Process* process;
    unkUserData_00* userData;

    process = omAddPrcObj(func_8004452C_4512C, 0, 0x2000, 0x40);
    userData = HuMemMemoryAlloc(process->heap, sizeof(unkUserData_00));
    process->user_data = userData;
    userData->unk_00 = 0;
    userData->unk_04 = arg0;
    return process;
}

INCLUDE_ASM("asm/nonmatchings/43760", func_800446E0_452E0);

Process* func_800448A0_454A0(s32 arg0) {
    Process* process;
    unkUserData_00* userData;

    process = omAddPrcObj(func_800446E0_452E0, 0, 0x2000, 0x40);
    userData = HuMemMemoryAlloc(process->heap, sizeof(unkUserData_00));
    process->user_data = userData;
    userData->unk_00 = 10;
    return process;
}

INCLUDE_ASM("asm/nonmatchings/43760", func_800448F4_454F4);

void func_80045000_45C00(void) {
    func_8004501C_45C1C(0);
}

INCLUDE_ASM("asm/nonmatchings/43760", func_8004501C_45C1C);

INCLUDE_RODATA("asm/nonmatchings/43760", D_800CAE40_CBA40);

INCLUDE_RODATA("asm/nonmatchings/43760", D_800CAE50_CBA50);

INCLUDE_RODATA("asm/nonmatchings/43760", D_800CAE60_CBA60);

INCLUDE_RODATA("asm/nonmatchings/43760", D_800CAE78_CBA78);
