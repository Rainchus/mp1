#include "common.h"
#include "1D9690.h"

void func_800F65E0_1D9690(void) {
    u8 temp_s0;

    func_80029090(50);
    func_8005CF30(50, 0);
    func_80060088();
    func_8001DE70(64);
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, (*func_8005EB1C)), 0xA0);
    func_800234B8(0U, 0xFF, 0xFF, 0xFF);
    func_800234B8(1U, 0xFF, 0xFF, 0xFF);
    func_80023504(1, -96.0f, 100.0f, 26.0f);
    func_800178A0(1);
    temp_s0 = func_800178E8();
    func_80017660(temp_s0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 30.0f, 80.0f, 4000.0f);
    func_800F6FC0_1DA070();
    func_800F747C_1DA52C((GetRandomByte() << 8) | GetRandomByte());
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    D_800EE984 = 0;
    D_800FD9A4 = 0;
    D_800FD9A6 = 0;
    D_800FD9A8 = 0;
    D_800FD99C = 0;
    D_800FD9A0 = 0;
    D_800FDC1A = 0;
    D_800FDC1C = 0;
    D_800FDC1E = 0;
    D_800FDD10 = 1;
    D_800FDC20 = NULL;
    D_800FD998 = func_8005D384(0x20, 0, 0, -1, (*func_800F67F8_1D98A8));
    func_8007B168(&D_800FD5F0, 1);
    func_800602AC(0x1A5);
}

void func_800F67F8_1D98A8(Object* arg0) {
    arg0->func_ptr = (*func_800F6930_1D99E0);
    func_800F736C_1DA41C();
    func_800F8068_1DB118();
    D_800FDC20 = func_8005D384(1, 7, 0, -1, (*func_800FBAE4_1DEB94));
    func_8005D8B8(D_800FDC20, 0xA0);
    func_800F81A4_1DB254();
    D_800F2AF8[D_800ED440] = func_8005D384(0, 0, 0, -1, (*func_800FA77C_1DD82C));
    D_800ED440++;
    D_800F2AF8[D_800ED440] = func_8005D384(0, 0, 0, -1, (*func_800FB6E0_1DE790));
    D_800ED440++;
    func_800FB30C_1DE3BC();
    func_800F71F4_1DA2A4();
    D_800FD9A0 = 1;
    func_80060128(0x19);
    if (IsBoardFeatureFlagSet(0x2B) != 0) {
        D_800FDC1C = 1;
    }
}

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F6930_1D99E0);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F69F8_1D9AA8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F6A38_1D9AE8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F6E50_1D9F00);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F6F98_1DA048);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F6FC0_1DA070);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F702C_1DA0DC);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F71F4_1DA2A4);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7244_1DA2F4);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F72A4_1DA354);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F736C_1DA41C);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F73EC_1DA49C);

u16 func_800F740C_1DA4BC(u16 arg0) { //shared overlay function
    D_800FD5C0 = D_800FD5C0 * 0x19971204;
    D_800FD5C0 = (D_800FD5C0 + 0x19760831) >> 0x10;
    if (arg0 == 0) {
        return D_800FD5C0;
    } else {
        return (D_800FD5C0 % arg0);
    }
}

void func_800F747C_1DA52C(u16 arg0) { //shared overlay function
    D_800FD5C0 = arg0 + (arg0 * D_800FD5C0);
}

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F74A0_1DA550);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7608_1DA6B8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7680_1DA730);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7720_1DA7D0);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7780_1DA830);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F781C_1DA8CC);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7874_1DA924);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F79E4_1DAA94);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7A8C_1DAB3C);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7AF8_1DABA8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7B74_1DAC24);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7C0C_1DACBC);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7D88_1DAE38);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F8068_1DB118);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F80F8_1DB1A8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F81A4_1DB254);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F82B0_1DB360);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F8818_1DB8C8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F8D58_1DBE08);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F9118_1DC1C8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F94A8_1DC558);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F95BC_1DC66C);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F96D4_1DC784);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F97A8_1DC858);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F9828_1DC8D8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F98EC_1DC99C);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F99C0_1DCA70);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F9A7C_1DCB2C);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F9AFC_1DCBAC);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F9C50_1DCD00);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F9D14_1DCDC4);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F9D80_1DCE30);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F9F60_1DD010);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FA308_1DD3B8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FA77C_1DD82C);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FA8D4_1DD984);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FA8F4_1DD9A4);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FA960_1DDA10);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FAA80_1DDB30);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FAED8_1DDF88);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FB190_1DE240);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FB2C8_1DE378);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FB30C_1DE3BC);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FB424_1DE4D4);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FB520_1DE5D0);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FB6E0_1DE790);

void func_800FB840_1DE8F0(Object* arg0) {
    u16 phi_v0;
    s32 phi_s3, phi_s4;
    f32 temp_f20;
    s16 sp10[2];
    u16 i;
    u16* temp_a0;
    
    sp10[0] = (arg0->unk_4C << 8) | arg0->unk_4D;
    sp10[1] = (arg0->unk_4E << 8) | arg0->unk_4F;
    
    for (i = 0; i < ARRAY_COUNT(D_800FD5DC); i++) {
        phi_v0 = func_800F740C_1DA4BC(0);
        temp_a0 = &D_800FD5DC[i];
        phi_v0 = (*temp_a0) + (phi_v0 & 0x3);
        *temp_a0 = phi_v0;
        
        if (phi_v0 >= 0x169) {
            *temp_a0 = phi_v0 - 0x168;
        }
        
        if (i == 0) {
            phi_s3 = func_800AEAC0(D_800FD5DC[i] * 2) * 10.0f + 120.0f;
            phi_s4 = func_800AEFD0(D_800FD5DC[i]) * 6.0f + 15.0f;
        } else {
            phi_s3 = func_800AEAC0(D_800FD5DC[i] * 2) * 10.0f + 160.0f;
            phi_s4 = func_800AEFD0(D_800FD5DC[i]) * 6.0f + 30.0f;
        }
        
        if (D_800FD5DC[i] < 0xB4) {
            func_800672B0(sp10[i], 0, 3);
        } else {
            func_800672B0(sp10[i], 0, 0);
            func_800671DC(sp10[i], 0, 3);
        }
        
        temp_f20 = func_800AEAC0(D_800FD5DC[i]) * D_800FD818 + D_800FD820;
        //temp_f20 = func_800AEAC0(D_800FD5DC[i]) * 0.2 + 0.5;
        func_80066DC4(sp10[i], 0, phi_s3, phi_s4);
        func_80067354(sp10[i], 0, temp_f20, temp_f20);
    }
}

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FBAE4_1DEB94);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FBE60_1DEF10);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FCA8C_1DFB3C);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FD124_1E01D4);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FD1D0_1E0280);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FD200_1E02B0);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FD274_1E0324);
