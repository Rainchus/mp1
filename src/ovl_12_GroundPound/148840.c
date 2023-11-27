#include "common.h"
#include "GroundPound.h"

void func_800F8C20_148840(unkObjectStruct* arg0) {
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_s3;
    s32 temp_v0;
    u32 temp_v0_2;
    s32 var_s0;
    s32 var_s1;
    s32 var_v0;
    s32 var_v0_2;
    u16 temp_v0_3;
    s32 i;
    unkGlobalStruct_00* temp_s4;

    D_800FA2D0_149E80 = 0;
    D_800FA310_149E80 = 0;
    D_800FA2D8_149E80 = 0;

    temp_s0 = 0;
    for (; temp_s0 < 4; temp_s0++) {
        temp_s1 = gPlayers[temp_s0].unk_00 == 0;
        if (temp_s1) {
            break;
        }
    }

    if (temp_s0 >= 4) {
        temp_s0 = 0;
    }
    
    temp_s3 = D_800C59AC[gPlayers[temp_s0].characterID].unk_00;
    temp_s1 = D_800C59AC[gPlayers[temp_s0].characterID].unk_08;
    func_80009618(1);
    func_8000979C(arg0, temp_s3, temp_s1, temp_s0, 0x699, 0x689);
    arg0->unk_30 *= 1.3f;
    arg0->unk_34 *= 1.3f;
    arg0->unk_38 *= 1.3f;
    arg0->unk_40[3] = LoadFormFile(0x19, 0x68D);
    arg0->unk_40[4] = LoadFormFile(0x1A, 0x68D);
    arg0->unk_40[5] = LoadFormFile(0x1C, 0x68D);
    arg0->unk_40[7] = LoadFormFile(0x1E, 0x68D);
    arg0->unk_40[8] = LoadFormFile(0x1D, 0x68D);
    temp_s4 = arg0->unk_50;
    func_8005D95C(arg0, D_800FA36C_149E80.x, D_800FA36C_149E80.y, D_800FA36C_149E80.z);
    D_800B895C = 10.0f;
    func_8001874C(arg0, 0, temp_s3, 1, 0);
    func_8001874C(arg0, 1, temp_s3 | 1, 1, 0);
    func_8001874C(arg0, 2, temp_s3 | 3, 1, 0);
    func_8001874C(arg0, 6, temp_s3 | 5, 1, 0x13);
    func_8001874C(arg0, 8, temp_s3 | 9, 1, 0x1D);
    func_8001874C(arg0, 9, temp_s3 | 0xA, 1, 0x27);
    func_8001874C(arg0, 0x11, temp_s3 | 0x18, 0, 0xE);
    func_8001874C(arg0, 0x12, temp_s3 | 0x1C, 2, 0);
    func_8001874C(arg0, 0x13, temp_s3 | 0x1D, 2, 0);
    func_8001874C(arg0, 0xA, temp_s3 | 0x1E, 1, 0x27);
    func_8001874C(arg0, 0x15, temp_s3 | 0x62, 0, 0);
    func_8001874C(arg0, 3, temp_s3 | 0x60, 1, 0);
    func_8001874C(arg0, 4, temp_s3 | 0x61, 1, 0);
    func_8001874C(arg0, 0x10, temp_s3 | 0x17, 1, 0);
    func_8001874C(arg0, 0x1E, temp_s3 | 0x63, 0, 0);
    func_8001874C(arg0, 0x1F, temp_s3 | 0x64, 0, 0);
    temp_s1 = 56;
    temp_v0_2 = func_800F9FEC_149C0C();

    if (temp_v0_2 & 1) {
        temp_s1 = 15;
    }
    
    func_8001874C(arg0, 13, temp_s3 | temp_s1, 1, 119);
    
    if (temp_v0_2 & 8) {
        temp_s1 = 16;
    } else {
        temp_s1 = 60;
    }

    func_8001874C(arg0, 14, temp_s3 | temp_s1, 1, 120);
    func_8001874C(arg0, 23, temp_s3 | 73, 1, 0);
    func_800090C4(arg0, 0, 2);
    D_800F3FB0[D_800F2BC0++] = arg0;
    func_800184BC(arg0, 1);

    if (gPlayers[temp_s4->unk_58].unk_06 & 1) {
        D_800FA2D6_149E80 = temp_s4->unk_56;
        D_800FA2D4_149E80 = 0;
        func_800F9908_149528(arg0);
    }

    temp_s4->unk_DC = 0;
    D_800FA2E0_149E80 = 10;
    arg0->func_ptr = &func_800F9094_148CB4;
}

void func_800F9094_148CB4(unkObjectStruct* arg0) { //related to movement
    unkGlobalStruct_00* temp_s0 = arg0->unk_50;
    
    if (D_800ED430 == 1) {
        if (D_800FA2D0_149E80 != 0) {
            D_800FA2D0_149E80--;
            if (D_800FA2D0_149E80 == 0) {
                func_800184BC(arg0, 0);
            }
        }
    }

    if ((gPlayers[temp_s0->unk_58].unk_06 & 1) && D_800ED430 == 1) {
        func_800F9B18_149738(arg0);
    }
    
    switch (D_800FA2D8_149E80) {
    case 1:
        D_800F5460[temp_s0->unk_56] = D_800F5460[temp_s0->unk_56] & 0x1030;
        D_800EDEB4[temp_s0->unk_56] = D_800EDEB4[temp_s0->unk_56] & 0x1030;
        D_800ECE14[temp_s0->unk_56] = 0;
        D_800F3843[temp_s0->unk_56] = 0;
        if (arg0->unk_18 > D_800FA2DC_149E80) {
            if ((arg0->unk_18 + (-D_800FA2DC_149E80)) < 10.0f) {
                D_800FA2D8_149E80 = 2;
            } else {
                D_800ECE14[temp_s0->unk_56] = -127;
            }
        } else if ((D_800FA2DC_149E80 + (-arg0->unk_18)) < 10.0f) {
            D_800FA2D8_149E80 = 2;
        } else {
            D_800ECE14[temp_s0->unk_56] = 127;
        }
        break;
    case 2:
        D_800F5460[temp_s0->unk_56] &= 0x1030;
        D_800EDEB4[temp_s0->unk_56] &= 0x1030;
        D_800ECE14[temp_s0->unk_56] = 0;
        D_800F3843[temp_s0->unk_56] = 0;
        if (D_800FA2E0_149E80 != 0) {
            D_800FA2E0_149E80--;
        } else if ((func_800184A8(temp_s0, 0) != 0) && (D_800ED430 != 2)) {
            D_800ED430 = 2;
        }
        break;
    }
    func_80005A28(arg0); //give control of object to player
    func_800F9870_149490(arg0); //do collision check
}

INCLUDE_ASM("asm/nonmatchings/ovl_12_GroundPound/148840", func_800F9314_148F34);

INCLUDE_ASM("asm/nonmatchings/ovl_12_GroundPound/148840", func_800F95D4_1491F4);

INCLUDE_ASM("asm/nonmatchings/ovl_12_GroundPound/148840", func_800F9870_149490);

void func_800F9908_149528(unkObjectStruct* arg0) {
    unkGlobalStruct_00* temp = arg0->unk_50;
    
    D_800FA2F4_149E80 = -1;
    D_800FA2F8_149E80 = 0;
    D_800FA2FC_149E80 = gPlayers[temp->unk_58].cpuDifficulty;
    D_800FA2F0_149E80 = 0;
}

INCLUDE_ASM("asm/nonmatchings/ovl_12_GroundPound/148840", func_800F9950_149570);

s32 func_800F9A24_149644(unkObjectStruct* arg0, f32 arg1) { //matches, needs rodata support
    unkStructGroundPound_00* phi_s0;
    f32 temp_f12, temp_f14;
    s32 phi_s3;
    s32 i;
    f32 temp;
    f64 temp2 = D_800FA250_149E80;

    phi_s0 = D_800FA380_149E80;
    phi_s3 = -1;
    
   
    for (i = 0; i < 9; i++, phi_s0++) {
        if (phi_s0->unk_08 == 0) {
            break;
        }
        temp_f14 = phi_s0->unk_00 - arg0->unk_18;
        temp_f12 = phi_s0->unk_04 - arg0->unk_20;
        if ((SQ(temp_f14) + SQ(temp_f12) < D_800FA2E8_149E80)) {
            temp = arg1 - func_800B0CD8(temp_f12, temp_f14);
            if ((fabs((temp)) < 45.0)) {
                phi_s3 = i;
                break;
            }
        }
    }

    return phi_s3;
}

INCLUDE_ASM("asm/nonmatchings/ovl_12_GroundPound/148840", func_800F9B18_149738);

void func_800F9E4C_149A6C(f32 arg0) {
    D_800FA2DC_149E80 = arg0;
    
    if (arg0 == 0.0f) {
        D_800FA2D8_149E80 = 2;
    } else {
        D_800FA2D8_149E80 = 1;
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
        seed = (seed ^ osGetCount()) ^ 0xD826BC89;
    }
    
    high = seed / 127773;
    low = seed % 127773;
    seed = (2836 * high) - (16807 * low);
    return seed;
}

u32 func_800F9FEC_149C0C(void) {
    D_800FA1D0_149DF0 = func_800F9F18_149B38(D_800FA1D0_149DF0);
    return D_800FA1D0_149DF0;
}
