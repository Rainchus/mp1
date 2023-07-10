#include "BobsledRun.h"

void func_800F65E0_188410(void) {
    unkObjectStruct* Obj;

    func_80029090(50);
    func_8002ADF0(&D_800EDEC0, 64);
    func_8001DE70(32);
    InitObjSystem(50, 0);
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
    D_800F2AF8[D_800ED440++] = func_8005D384(1, 5, 0, -1, &func_800FA890_18C6C0);
    D_800F2AF8[D_800ED440++] = func_8005D384(1, 1, 0, -1, &func_800FA96C_18C79C);
    D_800F2AF8[D_800ED440++] = func_8005D384(1, 1, 0, -1, &func_800FAD64_18CB94);
    D_800F2AF8[D_800ED440++] = func_8005D384(1, 1, 0, -1, &func_800FAE44_18CC74);
    D_800F2AF8[D_800ED440++] = func_8005D384(1, 1, 0, -1, &func_800FAF20_18CD50);
    D_800F2AF8[D_800ED440++] = func_8005D384(1, 1, 0, -1, &func_800FB000_18CE30);
    D_800F2AF8[D_800ED440++] = func_8005D384(1, 1, 0, -1, &func_800FB0DC_18CF0C);

    func_800FC918_18E748();
    func_800FD164_18EF94();
    func_800FD124_18EF54();
    func_800FD36C_18F19C(0xF6, 0x18);
    func_800FD1BC_18EFEC(0xF6, 0x24);
    func_800FCE2C_18EC5C(1, func_800594FC(0));
    func_800FCE2C_18EC5C(0, D_800FF34C);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 10, 60, -1, &func_800FBA00_18D830);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 10, 60, -1, &func_800FBB5C_18D98C);
    func_8005D384(2, 10, 60, -1, &func_800FBCB8_18DAE8);
    func_8005D384(2, 10, 60, -1, &func_800FBD5C_18DB8C);
    Obj = func_8005D384(0x7FDA, 0, 0, -1, &func_800FC180_18DFB0);
    Obj->unk_4C[0] = 2;
    func_8005D8B8(Obj, 0xA0);
    D_800B895C = 10.0f;
    D_800B8968 = 0.06f;
    D_800B896C = 5.0f;
    D_800B8980 = 80.0f;
    func_80028510(990, 1000, 0, 0, 50);
    func_80028BE0(4);
    func_8007B168(D_800FF840, 1);
    func_800234B8(0, 128, 128, 176);
    func_800234B8(1, 128, 128, 200);
    func_80060214(0x7F);
    func_800603F0(0x7F);
}

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800F6B60_188990);

void* func_800F6D20_188B50(Object* arg0) {
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


void func_800F6D8C_188BBC(void) {
    if (func_80072718() == 0) {
        func_8005DFB8(1);
    }
}

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800F6DB8_188BE8);

// void func_800F6DB8_188BE8(unk_ovl_1D_Struct *arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
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

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800F6F20_188D50);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800F78F4_189724);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800F9138_18AF68);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800F93C0_18B1F0);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800F9A8C_18B8BC);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FA15C_18BF8C);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FA244_18C074);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FA484_18C2B4);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FA890_18C6C0);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FA96C_18C79C);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FAD64_18CB94);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FAE44_18CC74);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FAF20_18CD50);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FB000_18CE30);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FB0DC_18CF0C);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FB1C4_18CFF4);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FB594_18D3C4);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FB858_18D688);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FB93C_18D76C);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FBA00_18D830);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FBB5C_18D98C);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FBCB8_18DAE8);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FBD5C_18DB8C);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FBE04_18DC34);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FBF88_18DDB8);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FC180_18DFB0);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FC4D0_18E300);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FC7DC_18E60C);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FC918_18E748);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FC9F8_18E828);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FCA48_18E878);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FCAC0_18E8F0);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FCB44_18E974);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FCCE8_18EB18);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FCE2C_18EC5C);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FD124_18EF54);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FD164_18EF94);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FD1BC_18EFEC);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FD36C_18F19C);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FD51C_18F34C);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FDCA8_18FAD8);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FDFC8_18FDF8);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FE080_18FEB0);

INCLUDE_ASM(s32, "ovl_1D_BobsledRun/188410", func_800FEC80_190AB0);
