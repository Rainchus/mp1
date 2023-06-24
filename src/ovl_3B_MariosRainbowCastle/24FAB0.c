#include "common.h"
#include "process.h"

void SleepProcess(s32);                                  /* extern */

void func_800F6610_24FAB0(void) {
    Object* temp_v0;
    f32 var_f20;
    f32 var_f22;
    s32 var_s0;
    void* temp_s0;
    void* temp_s2;

    temp_s0 = GetCurrentProcess()->user_data;
    PlaySound(0x6D);
    temp_v0 = CreateObject(0x40U, NULL);
    temp_v0->unk_0A |= 4;
    func_8004CDCC(temp_v0);
    func_800A0D50(&temp_v0->coords, temp_s0 + 4);
    temp_v0->unk_30 = 500.0f;
    temp_s2 = func_80042728(temp_v0, 0);
    var_f20 = 0.0f;
    for(var_s0 = 0; var_s0 < 6; var_s0++) {
        func_800A0D00(&temp_v0->xScale, var_f20, var_f20, var_f20);
        var_f20 += 0.4f;
        SleepVProcess();
    }
    for(var_s0 = 0; var_s0 < 3; var_s0++) {
        func_800A0D00(&temp_v0->xScale, var_f20, var_f20, var_f20);
        var_f20 -= 0.4f;
        SleepVProcess();
    }
    SleepProcess(0x1E);
    PlaySound(0x44);
    var_f22 = 0.0f;
    while (TRUE) {
        func_800A40D0(D_800F2B7C[*temp_v0->unk_3C->unk_40].unk7C[0], var_f22);
        var_f22 += 20.0f;
        var_f20 -= 0.02f;
        if (var_f20 < 0.0f) {
            break;
        }
        func_800A0D00(&temp_v0->xScale, var_f20, var_f20, var_f20);
        temp_v0->unk_30 -= 6.0f;
        SleepVProcess();
    }
    func_800427D4(temp_s2);
    SleepProcess(0x1E);
    DestroyObject(temp_v0);
    EndProcess(NULL);
}

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F6820_24FCC0);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F68B0_24FD50);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F6A80_24FF20);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F6ABC_24FF5C);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F6B2C_24FFCC);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F6C50_2500F0);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F6CE8_250188);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F6D2C_2501CC);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F6D8C_25022C);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F6DE8_250288);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F6E08_2502A8);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F6E84_250324);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F6EA4_250344);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F6F50_2503F0);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F6F70_250410);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F7078_250518);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F70B8_250558);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F7168_250608);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F71B4_250654);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F72BC_25075C);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F72E0_250780);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F73E8_250888);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F740C_2508AC);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F7430_2508D0);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F75E4_250A84);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F76F0_250B90);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F7774_250C14);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F7C04_2510A4);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F7C28_2510C8);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F7D5C_2511FC);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F7E2C_2512CC);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F7E60_251300);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F7E94_251334);

INCLUDE_ASM(s32, "ovl_3B_MariosRainbowCastle/24FAB0", func_800F7F00_2513A0);
