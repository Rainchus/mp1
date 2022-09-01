#include "common.h"
#include "1FF1E0.h"

void func_800F65E0_1FF1E0(void) {
    void* temp_s0;

    func_8005CF30(36, 0);
    func_80060088();
    D_800EE984 = 0;
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    func_8001DE70(33);
    func_80029090(3);
    func_8002ADF0(&D_800EDEC0, 64);
    func_80009500();
    func_800FE090_206C90(20.0f, 3100.0f, 324.0f, 45.0f, 0, -280.0f, 0, 1675.0f);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, func_8005EB1C), 0xA0);
    func_80023448(3);
    func_800234B8(0, 0, 0, 0);
    func_800234B8(1, 0, 0, 0);
    func_80023504(1, 0.0f, 100.0f, 0.0f);
    func_800234B8(2, 0xA0, 0x5A, 0xCA);
    func_80023504(2, -16.0f, 97.0f, -68.0f);
    func_800234B8(3, 0, 0, 0);
    func_80023504(3, 100.0f, 80.0f, 100.0f);
    func_8005D98C(0, 4);
    func_8005D98C(1, 4);
    func_8005D98C(2, 6);
    D_800FE49C = func_8005DB44(1);
    D_800FE460 = func_8005DB44(0);
    D_800FE480 = func_8005DB44(2);
    func_8005D8B8(func_8005D384(0x64, 0, 0, -1, &func_800FE140_206D40), 0xA0);
    func_8005D384(10, 13, 38, 0, &func_800F7AEC_2006EC);
    func_8005D384(10, 13, 38, 0, &func_800F7B08_200708);
    func_8005D384(10, 13, 38, 0, &func_800F7B24_200724);
    func_8005D384(10, 13, 38, 0, &func_800F7B40_200740);
    func_8005D384(20, 3, 4, 1, &func_800F9724_202324);
    func_8005D384(20, 3, 4, 1, &func_800F9724_202324);
    func_8005D384(20, 3, 4, 1, &func_800F9724_202324);
    func_8005D384(20, 3, 4, 1, &func_800F9724_202324);
    D_800FE478 = func_8005D384(20, 6, 4, -1, &func_800FAB8C_20378C);
    D_800FE4AC = func_8005D384(40, 2, 0, -1, &func_800FB28C_203E8C);
    D_800FE494 = func_8005D384(42, 2, 0, -1, &func_800FB180_203D80);
    D_800FE4C4 = func_8005D384(45, 1, 0, -1, &func_800F6F04_1FFB04);
    func_8005D384(0, 0, 0, -1, &func_800F6AC0_1FF6C0);
    D_800FE470[1] = func_8005D384(6, 4, 0, -1, &func_800F6BE4_1FF7E4);
    D_800FE47C = func_8005D384(30, 0, 0, -1, &func_800F7034_1FFC34);
    func_8005D384(0x2710, 0, 0, -1, &func_800FBF30_204B30);
    D_800FE4A8 = func_8005D384(6, 0, 0, -1, NULL);
    temp_s0 = ReadMainFS(38);
    D_800FE45A = func_80039084(temp_s0);
    FreePerm(temp_s0);
    D_800FE458 = IsBoardFeatureFlagSet(43);
    func_80072644(0, 16);
}

void func_800F6AC0_1FF6C0(Object* arg0) {
    s32 i;

    D_800FE464 = 0;
    D_800FE498 = 0;
    D_800FE490 = 0;
    D_800FE44A = 0;
    
    for (i = 0; i < 4; i++) {
        D_800FE44C[i] = 0;
    }
    
    D_800FE4B4 = 0;
    D_800ED430 = 0;
    arg0->func_ptr = &func_800F6B28_1FF728;
}

void func_800F6B28_1FF728(void) {
    switch (D_800FE464) {
    case 0:
        if (D_800FE490 == NULL) {
            D_800FE490 = func_8005D384(4, 0, 0, -1, &func_800FBAA4_2046A4);
            return;
        }
    case 1:
        return;
    case 2:
        if (D_800FE498 == NULL) {
            D_800FE498 = func_8005D384(4, 0, 0, -1, &func_800FBB5C_20475C);
        }
        break;
    }
}

void func_800F6BE4_1FF7E4(Object* arg0) {
    unkGlobalStruct_00* temp_s0_2;
    unkGlobalStruct_00* temp_s0_3;
    void* temp_s0;
    
    arg0->unk_40->unk_00.unsigned16[0] = LoadFormFile(0x410001, 0x289);
    temp_s0 = ReadMainFS(0x27);
    func_80038A9C((&D_800F2B7C[arg0->unk_40->unk_00.signed16[0]])->unk_6C, temp_s0, 0, D_800FE3B0);
    func_80025AD4(arg0->unk_40->unk_00.signed16[0]);
    func_80025B34(arg0->unk_40->unk_00.signed16[0]);
    FreePerm(temp_s0);
    arg0->unk_40->unk_04.unsigned16[1] = LoadFormFile(0x410002, 0x699);
    func_80025798((s16) arg0->unk_40->unk_04.unsigned16[1], 0.0f, 1.0f, 0.0f);
    func_800090B8(D_800ED440);
    D_800F2AF8[D_800ED440++] = D_800FE4A8;
    temp_s0_2 = func_80023684(0x2C, 0x7918);
    D_800FE4A8->unk_50 = temp_s0_2;
    func_8009B770(temp_s0_2, 0, 0x2C);
    temp_s0_2->unk_04.b[0] = 1;
    temp_s0_2->unk_04.b[1] = 1;
    func_80009000(D_800FE4A8, 2, -1000.0f);
    D_800F2AF8[D_800ED440++] = arg0;
    temp_s0_3 = func_80023684(0x2C, 0x7918);
    arg0->unk_50 = temp_s0_3;
    func_8009B770(temp_s0_3, 0, 0x2C);
    temp_s0_3->unk_04.b[0] = 1;
    temp_s0_3->unk_04.b[1] = 0;
    func_80009028(arg0, 0, -400.0f, -2500.0f, 400.0f, 2500.0f);
    temp_s0_3->unk_08.float32 = 0.1f;
    arg0->unk_4C = 1;
    arg0->func_ptr = &func_800F6DF4_1FF9F4;
}

void func_800F6DF4_1FF9F4(Object* arg0) {
    f32 temp_f2;

    if ((D_800FE464 != 0) && (arg0->unk_4C == 1)) {
        temp_f2 = D_800F652C.x;
        if ((temp_f2 > -2150.0f)) {
            D_800F652C.x = temp_f2 + -2.186f;
        } else {
            arg0->unk_4C = 0;
            func_8005DC18(D_800FE478, 1);
        }
    }
}

void func_800F6E80_1FFA80(Object* arg0) {
    f32 temp_f2;

    temp_f2 = D_800F652C.x;
    if ((temp_f2 > -2150.0f)) {
        D_800F652C.x = temp_f2 + -13.116001f;
    } else {
        arg0->unk_4C = 0;
        func_8005DC18(D_800FE478, 1);
        D_800F652C.x = -2150.0f;
    }
}

void func_800F6F04_1FFB04(Object* arg0) {
    unkGlobalStruct_00* temp_s0;

    arg0->unk_40->unk_00.signed16[0] = func_800174C0(0x41000A, 0x419);
    temp_s0 = func_80023684(44, 0x7918);
    arg0->unk_50 = temp_s0;
    func_8009B770(temp_s0, 0, 44);
    temp_s0->unk_04.b[0] = 1;
    temp_s0->unk_04.b[1] = 2;
    D_800F2AF8[D_800ED440++] = arg0;
    func_8005D95C(arg0, 0.0f, 0.0f, D_800F652C.x + -935.0f);
    func_800258EC(arg0->unk_40->unk_00.signed16[0], 4, 4);
    func_80009090(arg0);
    arg0->func_ptr = &func_800F6FF4_1FFBF4;
}

void func_800F6FF4_1FFBF4(Object* arg0) {
    func_8005D95C(arg0, 0.0f, 0.0f, D_800F652C.x + -935.0f);
}

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7034_1FFC34);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7278_1FFE78);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7364_1FFF64);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7478_200078);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F77B4_2003B4);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7A0C_20060C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7AEC_2006EC);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7B08_200708);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7B24_200724);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7B40_200740);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7B5C_20075C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F8210_200E10);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F82F4_200EF4);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F8D80_201980);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F8EA0_201AA0);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F9094_201C94);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F947C_20207C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F9550_202150);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F960C_20220C);

void func_800F9648_202248(void) {
}

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F9650_202250);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F9724_202324);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F98F0_2024F0);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F9C2C_20282C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FA2B8_202EB8);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FA36C_202F6C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FA41C_20301C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FA44C_20304C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FA5B8_2031B8);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FA5EC_2031EC);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FA78C_20338C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FAA40_203640);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FAB8C_20378C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FAD68_203968);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FAE18_203A18);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FB0D8_203CD8);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FB180_203D80);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FB28C_203E8C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FB3F8_203FF8);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FB540_204140);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FB738_204338);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FB8EC_2044EC);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FBAA4_2046A4);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FBB5C_20475C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FBF30_204B30);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FBF74_204B74);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FC0F4_204CF4);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FCEA0_205AA0);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FD394_205F94);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FD9BC_2065BC);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FDAC4_2066C4);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FDB84_206784);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FDCAC_2068AC);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FDDC0_2069C0);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FE090_206C90);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FE140_206D40);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FE178_206D78);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FE194_206D94);
