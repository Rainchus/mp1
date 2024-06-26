#include "common.h"

typedef struct unk51200 {
/* 0x00 */ s32* unk0;
/* 0x04 */ u16 unk4;
/* 0x06 */ s16 unk6;
/* 0x08 */ s16 unk8;
/* 0x0A */ s16 unkA;
} unk51200;

typedef struct unkMallocStruct {
/* 0x00 */ s32 unk0;
/* 0x04 */ s16 unk4;
} unkMallocStruct;

extern s16 D_800C52F8_C5EF8;
extern s32 D_800C52FC_C5EFC;
extern u16 D_800F5460_F54F0[];
extern unk51200* D_800D8370_D8400;

INCLUDE_ASM("asm/nonmatchings/51200", func_80050600_51200);

INCLUDE_ASM("asm/nonmatchings/51200", func_8005077C_5137C);

void func_80050A7C_5167C(unk_Struct02* arg0) {
    func_80053454_54054(arg0);
}

s32 func_80050A98_51698(s32 arg0) {
    s32 var_s0;
    s32 temp_s1;
    unk_Struct02* temp_s3;
    s32 temp_s4;
    s32 temp_s5;
    u16* temp_s0;

    temp_s1 = func_8003EDDC_3F9DC(&D_800C52FC_C5EFC);
    temp_s5 = func_80045D84_46984(9, 0xAE, 0);
    temp_s4 = func_80045D84_46984(5, 0xBC, 0);
    temp_s3 = func_8005077C_5137C(0);
    HuPrcVSleep();
    temp_s0 = &D_800F5460_F54F0[arg0];

    while (1) {
        HuPrcVSleep();
        if (D_800C52F8_C5EF8 != 0) {
            if ((*temp_s0 & 2) != 0) {
            var_s0 = 3;
            break;
            }
        } else  {
             if (func_8003EE58_3FA58(temp_s1) != 0) {
                PlaySound(0x466);
                D_800C52F8_C5EF8 = 1;
                continue;
            }  
        }

        if (*temp_s0 & 0x8000) {
            var_s0 = 4;
            break;
        } else if (*temp_s0 & 0x1000) {
            var_s0 = 0;
            break;
        }
    }

    func_80050A7C_5167C(temp_s3);
    func_80045E6C_46A6C(temp_s5);
    func_80045E6C_46A6C(temp_s4);
    func_8003EE3C_3FA3C(temp_s1);
    return var_s0;
}


INCLUDE_ASM("asm/nonmatchings/51200", func_80050BE0_517E0);

void func_80050D1C_5191C(s16 arg0, s32 arg1) {
    func_8006EB40_6F740(arg0);
    LoadStringIntoWindow(arg0, (void*)arg1, -1, -1);
}

void func_80050D68_51968(void) {
    s16 temp_v0_2;
    s16 var_s0;
    s32* temp_s2;
    s16 temp;
    Process* process = HuPrcCurrentGet();

    temp_s2 = ((unk51200*)process->user_data)->unk0;
    temp = ((unk51200*)process->user_data)->unk4;
    var_s0 = -1;
    while (1) {
        temp_v0_2 = func_8007186C_7246C(temp);
        if ((temp_v0_2 != var_s0) & (~temp_v0_2 != 0)) {
            var_s0 = temp_v0_2;
            func_80050D1C_5191C(D_800D8370_D8400->unk8, temp_s2[temp_v0_2]);
        }
        HuPrcVSleep();        
    }
}

Process* func_80050E10_51A10(s16 arg0, s32 arg1) {
    Process* process;
    unkMallocStruct* processUserData;

    process = omAddPrcObj(&func_80050D68_51968, 0x1005, 0, 0x40);
    processUserData = HuMemMemoryAlloc(process->heap, sizeof(unkMallocStruct));
    process->user_data = processUserData;
    processUserData->unk0 = arg1;
    processUserData->unk4 = arg0;
    return process;
}

INCLUDE_ASM("asm/nonmatchings/51200", func_80050E7C_51A7C);

INCLUDE_ASM("asm/nonmatchings/51200", func_80051198_51D98);

INCLUDE_ASM("asm/nonmatchings/51200", func_800512F4_51EF4);

INCLUDE_ASM("asm/nonmatchings/51200", func_80051428_52028);

INCLUDE_ASM("asm/nonmatchings/51200", func_80051548_52148);

INCLUDE_ASM("asm/nonmatchings/51200", func_8005165C_5225C);

INCLUDE_ASM("asm/nonmatchings/51200", func_800516C8_522C8);

INCLUDE_ASM("asm/nonmatchings/51200", func_80051778_52378);

INCLUDE_ASM("asm/nonmatchings/51200", func_8005188C_5248C);

INCLUDE_ASM("asm/nonmatchings/51200", func_80051898_52498);

INCLUDE_ASM("asm/nonmatchings/51200", func_80051954_52554);

INCLUDE_ASM("asm/nonmatchings/51200", func_80051AE0_526E0);

INCLUDE_ASM("asm/nonmatchings/51200", func_80052614_53214);

INCLUDE_ASM("asm/nonmatchings/51200", func_800526D8_532D8);

INCLUDE_ASM("asm/nonmatchings/51200", func_800527A0_533A0);

INCLUDE_ASM("asm/nonmatchings/51200", func_80052934_53534);
