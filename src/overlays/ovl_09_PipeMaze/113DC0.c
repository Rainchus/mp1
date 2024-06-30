#include "common.h"
#include "113DC0.h"

void func_800F65E0_PipeMaze(void) {
    func_80029090(32);
    func_8001DE70(32);
    omInitObjMan(50, 0);
    func_80060088();
    omSetStatBit(omAddObj(0x7FDA, 0, 0, -1, func_8005EB1C), 160);
    D_800F9A34_PipeMaze = 0;
    func_800F6678_PipeMaze();
    D_800F9902_PipeMaze = 0;
    func_800F7EA4_PipeMaze();
    func_800F7100_PipeMaze();
    func_800F68BC_PipeMaze();
    SetFadeInTypeAndTime(0, 16);
}

void func_800F6678_PipeMaze(void) {
    s16 temp_s0;
    
    func_800178A0(1);
    temp_s0 = func_800178E8();
    func_80017660(temp_s0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(temp_s0, 36.0f, 80.0f, 8000.0f);
}

void func_800F673C_PipeMaze(void) {
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F6744_PipeMaze);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F68BC_PipeMaze);

void func_800F6A38_PipeMaze(omObjData* arg0) {
    arg0->func_ptr = &func_800F9134_PipeMaze;
    arg0->trans.x = arg0->trans.y = arg0->trans.z = 0;
    arg0->model[0] = func_800174C0(0x1B0000, 0x299);
    func_80025798(arg0->model[0], arg0->trans.x, arg0->trans.y, arg0->trans.z);
    D_800F6524.x = 0.0f;
    D_800F6524.y = 200.0f;
    D_800F6524.z = -200.0f;
    D_800F33EC.y = 0.0f;
    D_800F33EC.x = 0.0f;
    D_800F33EC.z = 0.0f;
    D_800EE98C = 2500.0f;
    func_800F673C_PipeMaze();
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F6B04_PipeMaze);

void func_800F6C34_PipeMaze(omObjData* arg0) {
    u16 temp_v0;
    f32 temp_f0 = 0;
    f32 temp_f2 = 800.0f;

    switch (D_800F9A38_PipeMaze[D_800F9910_PipeMaze]) {
    case 1:
        arg0->trans.x = temp_f0 - 600.0f;
        break;
    case 3:
        arg0->trans.x = temp_f0;
        break;
    case 5:
        arg0->trans.x = temp_f0 + 600.0f;
        break;
    default:
        return;
    }
    
    arg0->trans.y = temp_f2 + ((14 - D_800F9A78_PipeMaze[D_800F9910_PipeMaze]) * 400.0f);
    D_800F9910_PipeMaze++;
    arg0->trans.z = -960.0f;
    arg0->func_ptr = NULL;
    temp_v0 = func_800174C0(0x1B0001, 0x289);
    D_800F9B48_PipeMaze[D_800F9908_PipeMaze] = arg0->model[0] = temp_v0;
    func_80025798(arg0->model[0], arg0->trans.x, arg0->trans.y, arg0->trans.z);
    func_80026040(D_800F9B48_PipeMaze[D_800F9908_PipeMaze]);
    func_80025B34(D_800F9B48_PipeMaze[D_800F9908_PipeMaze]);
    D_800F9908_PipeMaze++;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F6DD8_PipeMaze);

void func_800F7100_PipeMaze(void) {
    omObjData* temp_v0;

    D_800EE984 = 0;
    D_800F9B80_PipeMaze = func_8006B8A4(1, 0x289, 0x289, 0x289, 1);
    func_8006B870();
    temp_v0 = omAddObj(1, 8, 0, -1, &func_800F7194_PipeMaze);
    D_800EDE70[D_800EE984++] = temp_v0;
    omSetStatBit(temp_v0, 0xA0);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F7194_PipeMaze);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F7368_PipeMaze);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F7AC8_PipeMaze);

void func_800F7C78_PipeMaze(void) {
    switch (D_800F9984_PipeMaze) {
    case 1:
        func_800F7E2C_PipeMaze();
        return;
    case 2:
        func_800F7CD8_PipeMaze();
        return;
    default:
        func_800F7E78_PipeMaze();
        return;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F7CD8_PipeMaze);

void func_800F7E2C_PipeMaze(void) {
    func_800F7CD8_PipeMaze();
    D_800F9914_PipeMaze++;
    if (D_800F9914_PipeMaze >= 4) {
        D_800F9914_PipeMaze = 0;
    }
}

void func_800F7E78_PipeMaze(void) {
    D_800F9914_PipeMaze = rand8() >> 6;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F7EA4_PipeMaze);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F80CC_PipeMaze);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F8414_PipeMaze);

void func_800F8F24_PipeMaze(void) {
    if (D_800F9A34_PipeMaze == 1) {
        if ((D_800F6524.y < 6800.0f) && (D_800F990C_PipeMaze == 0)) {
            D_800F6524.y += 150.0f;
            D_800F64F2 = 1;
        } else if ((D_800F6524.y >= 6800.0f) && (D_800F990C_PipeMaze == 0)) {
            D_800F990C_PipeMaze = 1;
            D_800F64F2 = 0;
        }
        if (D_800F990C_PipeMaze == 3) {
            D_800F9A34_PipeMaze = 2;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F9000_PipeMaze);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F9134_PipeMaze);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F9590_PipeMaze);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F9678_PipeMaze);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_09_PipeMaze/113DC0", func_800F97C4_PipeMaze);
