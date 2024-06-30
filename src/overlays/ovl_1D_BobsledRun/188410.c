#include "BobsledRun.h"

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", D_800FF840_BobsledRun);

void func_800F65E0_BobsledRun(void) {
    omObjData* Obj;

    func_80029090(50);
    func_8002ADF0(&D_800EDEC0, 64);
    func_8001DE70(32);
    omInitObjMan(50, 0);
    func_80060088();
    func_8000942C();
    func_800178A0(2);
    func_800179C0(2);
    func_8002578C(1);
    func_8002890C(0, 0, 50);
    func_80017660(0, 0.0f, 8.0f, 320.0f, 112.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 240.0f, 511.0f);
    func_8001D494(0, 90.0f, 20.0f, 12000.0f);
    func_80017660(1, 0.0f, 128.0f, 320.0f, 232.0f);
    func_800176C4(1, 640.0f, 480.0f, 511.0f, 640.0f, 720.0f, 511.0f);
    func_8001D494(1, 90.0f, 20.0f, 12000.0f);
    D_800EE984 = 0;
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    func_80009500();
    func_800090B8(D_800ED440);
    D_800F2AF8[D_800ED440++] = omAddObj(1, 5, 0, -1, &func_800FA890_BobsledRun);
    D_800F2AF8[D_800ED440++] = omAddObj(1, 1, 0, -1, &func_800FA96C_BobsledRun);
    D_800F2AF8[D_800ED440++] = omAddObj(1, 1, 0, -1, &func_800FAD64_BobsledRun);
    D_800F2AF8[D_800ED440++] = omAddObj(1, 1, 0, -1, &func_800FAE44_BobsledRun);
    D_800F2AF8[D_800ED440++] = omAddObj(1, 1, 0, -1, &func_800FAF20_BobsledRun);
    D_800F2AF8[D_800ED440++] = omAddObj(1, 1, 0, -1, &func_800FB000_BobsledRun);
    D_800F2AF8[D_800ED440++] = omAddObj(1, 1, 0, -1, &func_800FB0DC_BobsledRun);

    func_800FC918_BobsledRun();
    func_800FD164_BobsledRun();
    func_800FD124_BobsledRun();
    func_800FD36C_BobsledRun(0xF6, 0x18);
    func_800FD1BC_BobsledRun(0xF6, 0x24);
    func_800FCE2C_BobsledRun(1, func_800594FC(0));
    func_800FCE2C_BobsledRun(0, D_800FF34C_BobsledRun);
    D_800F3FB0[D_800F2BC0++] = omAddObj(2, 10, 60, -1, &func_800FBA00_BobsledRun);
    D_800F3FB0[D_800F2BC0++] = omAddObj(2, 10, 60, -1, &func_800FBB5C_BobsledRun);
    omAddObj(2, 10, 60, -1, &func_800FBCB8_BobsledRun);
    omAddObj(2, 10, 60, -1, &func_800FBD5C_BobsledRun);
    Obj = omAddObj(0x7FDA, 0, 0, -1, &func_800FC180_BobsledRun);
    Obj->work[0] = 2;
    omSetStatBit(Obj, 0xA0);
    D_800B895C = 10.0f;
    D_800B8968 = 0.06f;
    D_800B896C = 5.0f;
    D_800B8980 = 80.0f;
    func_80028510(990, 1000, 0, 0, 50);
    func_80028BE0(4);
    func_8007B168(D_800FF840_BobsledRun, 1);
    func_800234B8(0, 128, 128, 176);
    func_800234B8(1, 128, 128, 200);
    func_80060214(0x7F);
    func_800603F0(0x7F);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800F6B60_BobsledRun);

void* func_800F6D20_BobsledRun(Object* arg0) {
    unkGlobalStruct_02* temp_v1;
    s32 i;
    
    if (arg0->unk_53 >= 0) {
        for (i = 0; i < D_800ED440; i++) {
            temp_v1 = (D_800F2AF8[i])->unk_50;
            if (arg0->unk_53 == temp_v1->unk_05) {
                return temp_v1;
            }
        }
    }
    return NULL;
}


void func_800F6D8C_BobsledRun(void) {
    if (func_80072718() == 0) {
        omOvlReturnEx(1);
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800F6DB8_BobsledRun);

// void func_800F6DB8_BobsledRun(unk_ovl_1D_Struct *arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
//     f32 temp_f20, temp_f22, temp_f24, temp_f26, temp_f28;
//     f32 var_f0;
//     f32 var_f26;
    
//     temp_f20 = arg1 - arg3;
//     temp_f22 = arg2 - arg4;
//     temp_f26 = func_800B1750((temp_f20 * temp_f20) + (temp_f22 * temp_f22));
    
    
//     var_f26 = temp_f28 = arg0->unk_3C;
//     temp_f24 = func_800AEAC0(temp_f28);
//     temp_f28 = func_8000A72C(temp_f20, temp_f22, temp_f24, func_800AEFD0(var_f26));
//     var_f26 = temp_f26;
//     if (var_f26 != 0.0f) {
//         if (var_f26 < (arg0->unk_40 * 0.4f)) {
//             var_f26 = var_f26 * 0.05f;
//         } else {
//             if (var_f26 < (arg0->unk_40 * 0.8f)) {
//                 var_f0 = 0.1f;
//             } else {
//                 var_f0 = 0.02f;
//             }
//             var_f26 = var_f26 * var_f0;
//         }
//         arg0->unk_40 = (var_f26 * temp_f28) + arg0->unk_40;
//     }
// }

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800F6F20_BobsledRun);

// INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", D_800FF840_191670);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800F78F4_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800F9138_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800F93C0_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800F9A8C_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FA15C_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FA244_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FA484_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FA890_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FA96C_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FAD64_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FAE44_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FAF20_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FB000_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FB0DC_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FB1C4_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FB594_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FB858_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FB93C_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FBA00_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FBB5C_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FBCB8_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FBD5C_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FBE04_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FBF88_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FC180_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FC4D0_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FC7DC_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FC918_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FC9F8_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FCA48_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FCAC0_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FCB44_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FCCE8_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FCE2C_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FD124_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FD164_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FD1BC_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FD36C_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FD51C_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FDCA8_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FDFC8_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FE080_BobsledRun);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1D_BobsledRun/188410", func_800FEC80_BobsledRun);
