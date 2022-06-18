#include "common.h"
#include "113DC0.h"

void func_800F65E0_113DC0(void) {
    func_80029090(32);
    func_8001DE70(32);
    func_8005CF30(50, 0);
    func_80060088();
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, func_8005EB1C), 160);
    D_800F9A34 = 0;
    func_800F6678_113E58();
    D_800F9902 = 0;
    func_800F7EA4_115684();
    func_800F7100_1148E0();
    func_800F68BC_11409C();
    func_80072644(0, 16);
}

void func_800F6678_113E58(void) {
    s16 temp_s0;
    
    func_800178A0(1);
    temp_s0 = func_800178E8();
    func_80017660(temp_s0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(temp_s0, 36.0f, 80.0f, 8000.0f);
}

void func_800F673C_113F1C(void) {
}

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F6744_113F24);

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F68BC_11409C);

void func_800F6A38_114218(Object* arg0) {
    arg0->func_ptr = (*func_800F9134_116914);
    arg0->unk_18= arg0->unk_1C = arg0->unk_20 = 0;
    arg0->unk_40->unk_00.unsigned16[0] = func_800174C0(0x1B0000, 0x299);
    func_80025798(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_18, arg0->unk_1C, arg0->unk_20);
    D_800F6524.x = 0.0f;
    D_800F6524.y = 200.0f;
    D_800F6524.z = -200.0f;
    D_800F33EC.y = 0.0f;
    D_800F33EC.x = 0.0f;
    D_800F33EC.z = 0.0f;
    D_800EE98C = 2500.0f;
    func_800F673C_113F1C();
}

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F6B04_1142E4);

void func_800F6C34_114414(Object* arg0) {
    u16 temp_v0;
    f32 temp_f0 = 0;
    f32 temp_f2 = 800.0f;

    switch (D_800F9A38[D_800F9910]) {
    case 1:
        arg0->unk_18 = temp_f0 - 600.0f;
        break;
    case 3:
        arg0->unk_18 = temp_f0;
        break;
    case 5:
        arg0->unk_18 = temp_f0 + 600.0f;
        break;
    default:
        return;
    }
    
    arg0->unk_1C = temp_f2 + ((14 - D_800F9A78[D_800F9910]) * 400.0f);
    D_800F9910++;
    arg0->unk_20 = -960.0f;
    arg0->func_ptr = NULL;
    temp_v0 = func_800174C0(0x1B0001, 0x289);
    D_800F9B48[D_800F9908] = arg0->unk_40->unk_00.unsigned16[0] = temp_v0;
    func_80025798(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_18, arg0->unk_1C, arg0->unk_20);
    func_80026040(D_800F9B48[D_800F9908]);
    func_80025B34(D_800F9B48[D_800F9908]);
    D_800F9908++;
}

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F6DD8_1145B8);

void func_800F7100_1148E0(void) {
    Object* temp_v0;

    D_800EE984 = 0;
    D_800F9B80 = func_8006B8A4(1, 0x289, 0x289, 0x289, 1);
    func_8006B870();
    temp_v0 = func_8005D384(1, 8, 0, -1, (*func_800F7194_114974));
    D_800EDE70[D_800EE984++] = temp_v0;
    func_8005D8B8(temp_v0, 0xA0);
}

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F7194_114974);

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F7368_114B48);

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F7AC8_1152A8);

void func_800F7C78_115458(void) {
    switch (D_800F9984) {
    case 1:
        func_800F7E2C_11560C();
        return;
    case 2:
        func_800F7CD8_1154B8();
        return;
    default:
        func_800F7E78_115658();
        return;
    }
}

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F7CD8_1154B8);

void func_800F7E2C_11560C(void) {
    func_800F7CD8_1154B8();
    D_800F9914++;
    if (D_800F9914 >= 4) {
        D_800F9914 = 0;
    }
}

void func_800F7E78_115658(void) {
    D_800F9914 = GetRandomByte() >> 6;
}

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F7EA4_115684);

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F80CC_1158AC);

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F8414_115BF4);

void func_800F8F24_116704(void) {
    if (D_800F9A34 == 1) {
        if ((D_800F6528[0] < 6800.0f) && (D_800F990C == 0)) {
            D_800F6528[0] = D_800F6528[0] + 150.0f;
            D_800F64F2 = 1;
        } else if ((D_800F6528[0] >= 6800.0f) && (D_800F990C == 0)) {
            D_800F990C = 1;
            D_800F64F2 = 0;
        }
        if (D_800F990C == 3) {
            D_800F9A34 = 2;
        }
    }
}

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F9000_1167E0);

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F9134_116914);

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F9590_116D70);

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F9678_116E58);

INCLUDE_ASM(s32, "ovl_09_PipeMaze/113DC0", func_800F97C4_116FA4);
