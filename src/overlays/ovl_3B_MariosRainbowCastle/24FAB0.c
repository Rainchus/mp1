#include "common.h"
#include "engine/process.h"

void func_800F6610_MariosRainbowCastle(void) {
    Object* temp_v0;
    f32 var_f20;
    f32 var_f22;
    s32 var_s0;
    void* temp_s0;
    void* temp_s2;

    temp_s0 = HuPrcCurrentGet()->user_data;
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
        HuPrcVSleep();
    }
    for(var_s0 = 0; var_s0 < 3; var_s0++) {
        func_800A0D00(&temp_v0->xScale, var_f20, var_f20, var_f20);
        var_f20 -= 0.4f;
        HuPrcVSleep();
    }
    HuPrcSleep(0x1E);
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
        HuPrcVSleep();
    }
    func_800427D4(temp_s2);
    HuPrcSleep(0x1E);
    DestroyObject(temp_v0);
    EndProcess(NULL);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F6820_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F68B0_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F6A80_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F6ABC_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F6B2C_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F6C50_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F6CE8_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F6D2C_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F6D8C_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F6DE8_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F6E08_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F6E84_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F6EA4_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F6F50_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F6F70_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F7078_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F70B8_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F7168_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F71B4_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F72BC_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F72E0_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F73E8_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F740C_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F7430_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F75E4_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F76F0_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F7774_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F7C04_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F7C28_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F7D5C_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F7E2C_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F7E60_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F7E94_MariosRainbowCastle);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_3B_MariosRainbowCastle/24FAB0", func_800F7F00_MariosRainbowCastle);
