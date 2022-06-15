#include "common.h"
#include "146200.h"

void func_800F65E0_146200(void) {
    D_800FA26C_13ACDC = -1;
    func_80029090(0x18);
    func_8001DE70(0x40);
    D_800EE984 = 0;
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    func_80009500();
    func_8005CF30(32, 0);
    func_80060088();
    func_800F9E80_149AA0(2500.0f, 315.0f, 0.0f, 0.0f, -330.0f, 458.0f, 375.0f);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 20.0f, 80.0f, 8000.0f);
    func_8002578C(0);
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, (*func_8005EB1C)), 160);
    func_8005D384(0, 0, 0, -1, (*func_800F67E0_146400));
    func_800F7FEC_147C0C();
    D_800FA43C = func_8005D384(8, 0xA, 0x64, -1, (*func_800F8C20_148840));
    func_8005D384(0x2710, 0, 0, -1, (*func_800F6EE4_146B04));
    func_80072644(0, 0x10);
    D_800FA262 = 3;
    func_800602AC(0x1A2);
}

void func_800F67E0_146400(Object* arg0) {
    D_800FA260 = 0;
    D_800FA266 = 30;
    D_800FA268 = 30;
    D_800ED430 = 0;
    arg0->func_ptr = (*func_800F6814_146434);
}

void func_800F6814_146434(void) {
    if (D_800C5982 != 1) {
        switch (D_800FA260) {
        case 0:
            func_800F6924_146544();
            return;
        case 1:
            D_800FA268--;
            if (D_800FA268 == 0) {
                if (D_800FA266 != 0) {
                    D_800FA266--;
                    func_80079078(D_800FA266);
                }
                D_800FA268 = 30;
            }
            if (D_800FA266 == 0 || D_800FA310 != 0) {
                D_800FA260 = 2;
                D_800FA264 = 1;
                return;
            }
            break;
        case 2:
            func_800F6B0C_14672C();
            break;
        }
        
    }
}

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F6924_146544);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F6A84_1466A4);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F6B0C_14672C);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F6EE4_146B04);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F6F40_146B60);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F6FD4_146BF4);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F7044_146C64);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F7078_146C98);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F70AC_146CCC);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F7180_146DA0);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F7310_146F30);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F73E4_147004);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F750C_14712C);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F7560_147180);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F7628_147248);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F7844_147464);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F796C_14758C);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F7BB8_1477D8);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F7FEC_147C0C);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F823C_147E5C);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F8264_147E84);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F8480_1480A0);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F8568_148188);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F8688_1482A8);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F86FC_14831C);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F8744_148364);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F8AA0_1486C0);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F8C20_148840);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F9094_148CB4);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F9314_148F34);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F95D4_1491F4);

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F9870_149490);

void func_800F9908_149528(Object* arg0) {
    unkGlobalStruct_00* temp = arg0->unk_50;
    
    D_800FA2F4_120524 = -1;
    D_800FA2F8 = 0;
    D_800FA2FC = D_800F32B0[temp->unk_58].cpuDifficulty;
    D_800FA2F0 = 0;
}

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F9950_149570);

#ifdef NON_MATCHING
s32 func_800F9A24_149644(Object* arg0, f32 arg1) { //matches, needs rodata support
    unkStructGroundPound_00* phi_s0;
    f32 temp_f12, temp_f14;
    s32 phi_s3;
    s32 i;
    f32 temp;
    f64 temp2 = D_800FA250;

    phi_s0 = D_800FA380;
    phi_s3 = -1;
    
   
    for (i = 0; i < 9; i++, phi_s0++) {
        if (phi_s0->unk_08 == 0) {
            break;
        }
        temp_f14 = phi_s0->unk_00 - arg0->unk_18;
        temp_f12 = phi_s0->unk_04 - arg0->unk_20;
        if ((SQ(temp_f14) + SQ(temp_f12) < D_800FA2E8)) {
            temp = arg1 - func_800B0CD8(temp_f12, temp_f14);
            // replace with correct constant later
            if ((fabs((temp)) < 1.5)) {
                phi_s3 = i;
                break;
            }
        }
    }

    return phi_s3;
}
#else
INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F9A24_149644);
#endif

INCLUDE_ASM(s32, "ovl_12_GroundPound/146200", func_800F9B18_149738);

void func_800F9E4C_149A6C(f32 arg0) {
    D_800FA2DC = arg0;
    
    if (arg0 == 0.0f) {
        D_800FA2D8 = 2;
    } else {
        D_800FA2D8 = 1;
    }
}

void func_800F9E80_149AA0(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    func_800178A0(1);
    D_800EE98C = arg0;
    D_800F33EC.y = arg1;
    D_800F33EC.x = arg2;
    D_800F33EC.z = arg3;
    D_800F6524.x = arg4;
    D_800F6524.y = arg5;
    D_800F6524.z = arg6;
}

s32 func_800F9F18_149B38(u32 seed) {
    u32 high, low;
    
    if (seed == 0) {
        seed = GetRandomByte();
        seed = (seed ^ func_80093780()) ^ 0xD826BC89;
    }
    
    high = seed / 127773;
    low = seed % 127773;
    seed = (2836 * high) - (16807 * low);
    return seed;
}

void func_800F9FEC_149C0C(void) {
    D_800FA1D0 = func_800F9F18_149B38(D_800FA1D0);
}
