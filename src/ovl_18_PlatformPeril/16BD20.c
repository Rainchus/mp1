#include "common.h"
#include "16BD20.h"

void func_800F65E0_16BD20(void) {
    func_8001DE70(0x20);
    func_8005CF30(0x32, 0);
    func_80060088();
    func_8000942C();
    func_8007B168(&D_800FDF60_1736A0, 1);
    func_8007B168(&D_800FDF6C_1736AC, 1);
    func_8007B168(&D_800FDF78_1736B8, 1);
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, func_8005EB1C), 0xA0);
    D_800EE984 = 0;
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    func_8005D384(4, 0, 0, -1, &func_800F66E8_16BE28);
    func_8005D384(1, 0, 0, 1, &func_800F6720_16BE60);
    D_800B895C = 10.0f;
    func_80072644(0, 0x10);
}


void func_800F66E8_16BE28(void) {
    if (D_800F5144 == 1) {
        func_800601D4(0x28);
        func_8005DFB8(1);
    }
}

void func_800F6720_16BE60(Object* arg0) {
    D_800FE2F8 = 0;
    D_800FCD90 = 0;
    func_800FC1DC_17191C();
    func_80009468();
    func_800F6F68_16C6A8();
    func_800F90C0_16E800();
    func_800F76E4_16CE24();
    func_800F8B7C_16E2BC();
    func_800FC8E4_172024();
    arg0->func_ptr = &func_800F6790_16BED0;
}

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800F6790_16BED0);

s32 func_800F6DF4_16C534(void) {
    if (func_800FC95C_17209C()) {
        return 1;
    } else {
        return 0;
    }
}

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800F6E14_16C554);

void func_800F6F60_16C6A0(void) {
}

void func_800F6F68_16C6A8(void) {
    u8 temp_s0;

    func_800178A0(1);
    temp_s0 = func_800178E8();
    func_80017660(temp_s0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 30.0f, 80.0f, 8000.0f);
    D_800F6524.x = D_800FDD74.unk4;
    D_800F6524.y = D_800FDD74.unk8;
    D_800F6524.z = D_800FDD74.unkC;
    D_800F33EC.y = D_800FDD74.unk10;
    D_800F33EC.x = D_800FDD74.unk14;
    D_800F33EC.z = D_800FDD74.unk18;
    D_800EE98C = D_800FDD74.unk_00.float32;
}

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800F7070_16C7B0);

#ifdef NON_MATCHING
void func_800F76E4_16CE24(void) {
    s32 var_a0;
    s32 temp_s0;
    s32 tempVar;
    s32 j;
    s32 i;

    D_800FE1D0_173910 = 0;
    D_800FE1D4_173914 = 0;
    func_800090B8(D_800ED440);

    for (i = 0; i < 4; i++) {
        temp_s0 = (GetRandomByte() << 8) | GetRandomByte();
        tempVar = temp_s0;
        if (temp_s0 < 0) {
            tempVar += 3;
        }

        D_800FE258_173998[i] = temp_s0 - ((tempVar >> 2) * 4);
        var_a0 = 0;
        
        for (j = 0; j < i; j++) {
            if (D_800FE258_173998[j] != D_800FE258_173998[i]) {
                if (var_a0 < i) {
                    var_a0++;
                    continue;
                }
            } else {
                i -= 1;
            }
        }    
    }

    
    for (i = 0; D_800FD2A0_1729E0[i].unk0 != 0; i++) {} //find end of list
    func_800F7070_16C7B0(&D_800FD2A0_1729E0[i]);

    for (i = 0; D_800FD2A0_1729E0[i].unk0 != 0; i++) {
        func_8005D384(0xA, 5, 5, -1, &func_800F7868_16CFA8);
    }
}
#else
INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800F76E4_16CE24);
#endif

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800F7868_16CFA8);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800F815C_16D89C);

void func_800F8218_16D958(void) {
}

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800F8220_16D960);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800F87A0_16DEE0);

void func_800F8AE8_16E228(Object* arg0) {
    arg0->unk_1C = D_800FE1D8[arg0->unk_4C]->unk_1C + 50.0f;
    func_80025798(arg0->unk_40->unk_00.signed16[1], arg0->unk_18, D_800FE1D8[arg0->unk_4C]->unk_1C, arg0->unk_20);
    func_80025830(arg0->unk_40->unk_00.signed16[1], 0.7f, 0.7f, 0.7f);
}

void func_800F8B7C_16E2BC(void) {
    s32 i;
    D_800FE250 = 0;
    
    for (i = 0; D_800FD8F4[i].unk_00.signed32 != 0; i++) {
        D_800EDE70[D_800EE984++] = func_8005D384(0xA, 5, 5, -1, &func_800F8C2C_16E36C);
    }
}

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800F8C2C_16E36C);

void func_800F90C0_16E800(void) {
    D_800FCDA0 = 300.0f;
    D_800FE2B0.unk0 = 0;
    D_800FE2B0.unk4 = 0;
    D_800FE2B0.unk8 = 0;
    D_800FE2B0.unkC = 0;
    func_80009500();
    func_80009618(0);
    D_800B8955 = 0;
    func_8005D98C(2, 4);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 9, 0x3C, 2, &func_800F94EC_16EC2C);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 9, 0x3C, 2, &func_800F9598_16ECD8);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 9, 0x3C, 2, &func_800F9644_16ED84);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 9, 0x3C, 2, &func_800F96F0_16EE30);
}

void func_800F922C_16E96C(Object* arg0, s32 arg1, s32 arg2, u16 arg3, f32 arg4, f32 arg5, f32 arg6) {
    unkGlobalStruct_00* temp_s0_2;
    s32 i;
    s32 temp = 0x699;

    func_8000979C(arg0, arg1, arg2, arg3, temp, temp);
    D_800FE2A0[arg3] = gPlayers[arg3].cpuDifficulty;
    func_800187D0(arg0, 0, arg1, 1, 0);
    func_800187D0(arg0, 1, arg1 | 1, 1, 0);
    func_800187D0(arg0, 2, arg1 | 3, 1, 0);
    func_800187D0(arg0, 6, arg1 | 5, 1, 0x13);
    
    if (!(GetRandomByte() & 1)) {
        func_8001775C(arg0, 0xD, arg1 | 0xF);
        func_8001775C(arg0, 0xE, arg1 | 0x10);
    } else {
        func_8001775C(arg0, 0xD, arg1 | 0x38);
        func_8001775C(arg0, 0xE, arg1 | 0x3C);
    }
    
    func_8001874C(arg0, 0x15, arg1 | 0x62, 0, 0);
    arg0->unk_18 = arg4;
    arg0->unk_1C = arg5;
    arg0->unk_20 = arg6;
    arg0->unk_30 = 1.0f;
    arg0->unk_34 = 1.0f;
    arg0->unk_38 = 1.0f;
    func_800224A4((arg0->unk_40->unk_00.signed16[0] * 0xC0) + D_800F2B7C + 0x7C, 0, 180.0f, 0);
    func_80025830(arg0->unk_40->unk_00.unsigned16[1], arg0->unk_30, arg0->unk_34, arg0->unk_38);
    func_800257E4(arg0->unk_40->unk_00.unsigned16[1], arg0->unk_24, arg0->unk_28, arg0->unk_2C);
    func_80025798(arg0->unk_40->unk_00.unsigned16[1], arg0->unk_18, 1.0f, arg0->unk_20);
    func_80025798(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_18, arg0->unk_1C, arg0->unk_20);
    temp_s0_2 = arg0->unk_50;
    func_80008FD0(arg0, 30.0f);
    arg0->func_ptr = &func_800F979C_16EEDC;
    arg0->unk_4C = arg3;
    
    if (gPlayers[arg3].unk_06 & 1) { //checking if CPU?
        arg0->unk_4D = 1;
    } else {
        arg0->unk_4D = 0;
    }
    
    arg0->unk_4E = 0;

    for (i = 0; i < 4; i++) {
        D_800FE1B0[i][1] = 0;
        D_800FE1B0[i][0] = 0;
    }
    temp_s0_2->unk_3C = 180.0f;
}

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800F94EC_16EC2C);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800F9598_16ECD8);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800F9644_16ED84);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800F96F0_16EE30);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800F979C_16EEDC);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FAAE0_170220);

void func_800FAD30_170470(void) {
    func_8005D384(3, 0, 0, -1, &func_800FAD64_1704A4);
}


void func_800FAD64_1704A4(Object* arg0) {
    s32 temp_s0;

    arg0->func_ptr = NULL;
    temp_s0 = InitSprite(0x2A0009);
    temp_s0 = func_80019060(temp_s0, 0, 0);
    func_80018D44(temp_s0, 0x4000);
    SetBasicSpritePos(temp_s0, 0xA0, 0x78);
    ShowBasicSprite(temp_s0);
}

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FADC8_170508);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FAE7C_1705BC);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FAE8C_1705CC);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FAEC0_170600);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FAF58_170698);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FAFA0_1706E0);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FB028_170768);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FB3B0_170AF0);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FB3E8_170B28);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FB544_170C84);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FB60C_170D4C);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FB620_170D60);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FB680_170DC0);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FBC38_171378);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FBCD4_171414);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FBFB0_1716F0);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FC000_171740);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FC17C_1718BC);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FC1DC_17191C);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FC438_171B78);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FC48C_171BCC);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FC648_171D88);

void func_800FC8D4_172014(void) {
}

void func_800FC8DC_17201C(void) {
}

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FC8E4_172024);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FC95C_17209C);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FCB10_172250);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FCBD4_172314);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FCD44_172484);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FCD50_172490);

INCLUDE_ASM(s32, "ovl_18_PlatformPeril/16BD20", func_800FCD5C_17249C);
