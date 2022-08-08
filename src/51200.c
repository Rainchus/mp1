#include "common.h"
#include "51200.h"

INCLUDE_ASM(s32, "51200", func_80050600);

INCLUDE_ASM(s32, "51200", func_8005077C);

void func_80050A7C(s32 arg0) {
    func_80053454(arg0);
}

extern s16 D_800C52F8;
extern s32 D_800C52FC;
extern u16 D_800F5460[];

#ifdef NON_EQUIVALENT
s32 func_80050A98(s32 arg0) {
    s32 var_s0;
    s32 temp_s1;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s5;
    u16* temp_s0;

    temp_s1 = func_8003EDDC(&D_800C52FC);
    temp_s5 = func_80045D84(9, 0xAE, 0);
    temp_s4 = func_80045D84(5, 0xBC, 0);
    temp_s3 = func_8005077C(0);
    SleepVProcess();
    temp_s0 = &D_800F5460[arg0];
    while (1) {
        SleepVProcess();
        if (D_800C52F8 == 0 || (*temp_s0 & 2)) {
            if (func_8003EE58(temp_s1) != 0) {
                PlaySound(0x466);
                D_800C52F8 = 1;
                continue;
            }
        } else {
            var_s0 = 3;
            break;
        }
        
        
        
        if (*temp_s0 & 0x8000) {
            var_s0 = 4;
            break;
        } else if (*temp_s0 & 0x1000) {
            var_s0 = 0;
            break;
        }
    }
    func_80050A7C(temp_s3);
    func_80045E6C(temp_s5);
    func_80045E6C(temp_s4);
    func_8003EE3C(temp_s1);
    return var_s0;
}
#else
INCLUDE_ASM(s32, "51200", func_80050A98);
#endif

INCLUDE_ASM(s32, "51200", func_80050BE0);

void func_80050D1C(s16 arg0, s32 arg1) {
    func_8006EB40(arg0);
    LoadStringIntoWindow(arg0, arg1, -1, -1);
}

void func_80050D68(void) {
    s16 temp_v0_2;
    s16 var_s0;
    s32* temp_s2;
    s32 temp;
    Process* process = GetCurrentProcess();

    temp_s2 = ((unk51200*)process->user_data)->unk0;
    temp = ((unk51200*)process->user_data)->unk4;
    var_s0 = -1;
    while (1) {
        temp_v0_2 = func_8007186C(temp);
        if ((temp_v0_2 != var_s0) & (~temp_v0_2 != 0)) {
            var_s0 = temp_v0_2;
            func_80050D1C(D_800D8370->unk8, temp_s2[temp_v0_2]);
        }
        SleepVProcess();        
    }
}

INCLUDE_ASM(s32, "51200", func_80050E10);

INCLUDE_ASM(s32, "51200", func_80050E7C);

INCLUDE_ASM(s32, "51200", func_80051198);

INCLUDE_ASM(s32, "51200", func_800512F4);

INCLUDE_ASM(s32, "51200", func_80051428);

INCLUDE_ASM(s32, "51200", func_80051548);

INCLUDE_ASM(s32, "51200", func_8005165C);

INCLUDE_ASM(s32, "51200", func_800516C8);

INCLUDE_ASM(s32, "51200", func_80051778);

INCLUDE_ASM(s32, "51200", func_8005188C);

INCLUDE_ASM(s32, "51200", func_80051898);

INCLUDE_ASM(s32, "51200", func_80051954);

INCLUDE_ASM(s32, "51200", func_80051AE0);

INCLUDE_ASM(s32, "51200", func_80052614);

INCLUDE_ASM(s32, "51200", func_800526D8);

INCLUDE_ASM(s32, "51200", func_800527A0);

INCLUDE_ASM(s32, "51200", func_80052934);
