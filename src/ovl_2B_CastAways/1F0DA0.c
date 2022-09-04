#include "common.h"
#include "1F0DA0.h"

void func_800F65E0_1F0DA0(void) {
    s32 i;
    void* filePtr;

    func_8005CF30(0x35, 0);
    func_80060088();
    func_80029090(1);
    func_8001DE70(0x64);
    func_8002890C(0x21, 0x42, 0xD6);
    func_800178A0(1);
    D_800FBB80_ovl2B.x = 0;
    D_800FBB80_ovl2B.y = 3072.0f;
    D_800FBB80_ovl2B.z = -200.0f;
    D_800FBB70_ovl2B.x = 0;
    D_800FBB70_ovl2B.y = 0;
    D_800FBB70_ovl2B.z = -300.0f;
    D_800FBB9C_ovl2B[0].x = 0;
    D_800FBB9C_ovl2B[0].y = 1.0f;
    D_800FBB9C_ovl2B[0].z = 0;
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, &func_800FB884_1F6044), 0xA0);
    func_80023448(3);
    func_800234B8(0, 0x78, 0x78, 0x78);
    func_800234B8(1, 0x40, 0x40, 0x60);
    func_80023504(1, -100.0f, 100.0f, 100.0f);
    func_800234B8(2, 0, 0, 0);
    func_80023504(2, -100.0f, 100.0f, 100.0f);
    func_800234B8(3, 0, 0, 0);
    func_80023504(3, -100.0f, 100.0f, 100.0f);
    func_8005D98C(0, 0xA);
    func_8005D98C(1, 0xC);
    func_8005D98C(2, 0xA);
    func_8005D98C(4, 4);
    func_8005D384(0x64, 0, 0, -1, &func_800F7014_1F17D4);
    func_8005D384(0, 0, 0, -1, &func_800F704C_1F180C);
    func_8005D8B8(func_8005D384(4, 4, 0, -1, &func_800F71AC_1F196C), 0xA0);
    D_800FBB48_ovl2B[0] = func_8005D384(6, 0, 0, -1, &func_800F761C_1F1DDC);
    D_800FBB48_ovl2B[1] = func_8005D384(6, 0, 0, -1, &func_800F7650_1F1E10);
    D_800FBB48_ovl2B[2] = func_8005D384(6, 0, 0, -1, &func_800F7684_1F1E44);
    func_8005D384(8, 5, 0xF, 4, &func_800F8AAC_1F326C);
    func_8005D384(8, 5, 0xF, 4, &func_800F8AC8_1F3288);
    func_8005D384(8, 5, 0xF, 4, &func_800F8AE4_1F32A4);
    func_8005D384(8, 5, 0xF, 4, &func_800F8B00_1F32C0);
    func_8005D384(0x2710, 0, 0, -1, &func_800FACA8_1F5468);

    for (i = 0; i < 2; i++) {
        filePtr = ReadMainFS(D_800FB9A4_ovl2B[i]);
        D_800FBB04_ovl2B[i] = func_80039084(filePtr);
        FreePerm(filePtr);
    }

    D_800FBB46_ovl2B = LoadFormFile(0x35, 0x2009D);
    filePtr = ReadMainFS(0x2A);
    D_800FBB40_ovl2B = func_80039084(filePtr);
    FreePerm(filePtr);
    filePtr = ReadMainFS(0x25);
    D_800FBB42_ovl2B = func_80039084(filePtr);
    FreePerm(filePtr);
    filePtr = ReadMainFS(0x24);
    D_800FBB44_ovl2B = func_80039084(filePtr);
    FreePerm(filePtr);
    D_800FBB50_ovl2B[3] = IsBoardFeatureFlagSet(0x2B);
    func_80072644(0, 0x10);
    D_800FBB98_ovl2B = 0;
}

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800F6A24_1F11E4);

void func_800F7014_1F17D4(void) {
    s32 i;
    for (i = 0; i < D_800F3778_ovl2B; i++) {}
}

void func_800F704C_1F180C(Object* arg0) {
    D_800FBB78_ovl2B[2] = 0;
    D_800FBB58_ovl2B = 60;
    D_800FBB5A_ovl2B = 30;
    D_800FBB64_ovl2B = D_800FBB68_ovl2B = 0.0f;
    D_800FBB50_ovl2B[2] = 0;
    D_800FBB6C_ovl2B = PlaySound(0x1AA);
    arg0->func_ptr = &func_800F70C4_1F1884;
}

void func_800F70C4_1F1884(void) {
    func_80079078(D_800FBB58_ovl2B);
    switch (D_800FBB78_ovl2B[2]) {
    case 0:
        func_800FA198_1F4958();
        return;
    case 1:
        D_800FBB5A_ovl2B--;
        if (D_800FBB5A_ovl2B == 0) {
            D_800FBB58_ovl2B--;
            D_800FBB5A_ovl2B = 30;
        }
        if (D_800FBB58_ovl2B == 0) {
            D_800FBB78_ovl2B[2] = 2;
            D_800FBB8C_ovl2B = 0;
            func_800601D4(40);
            return;
        }
        return;
    case 2:
        func_800FA410_1F4BD0();
        break;
    }
}

void func_800F71AC_1F196C(Object* arg0) {
    s16 sprite;

    sprite = InitSprite(0x3F0002);
    D_800FBB5C_ovl2B = sprite;
    D_800FBB5E_ovl2B = func_80019060(sprite, 0, 1);
    func_80018D44(D_800FBB5E_ovl2B, 0x4008);
    SetBasicSpritePos(D_800FBB5E_ovl2B, 0xA0, 0x82);
    ShowBasicSprite(D_800FBB5E_ovl2B);
    SetBasicSpriteSize(D_800FBB5E_ovl2B, 2.0f, 2.0f);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    arg0->unk_40->unk_00.unsigned16[0] = LoadFormFile(0x3F0000, 0x499);
    arg0->unk_40->unk_04.unsigned16[1] = func_800174C0(0x3F0001, 0x1499);
    func_80039C48(&D_800FBA64_ovl2B, &D_800FBB60);
    func_80026040(arg0->unk_40->unk_04.unsigned16[1]);
    arg0->func_ptr = &func_800F7308_1F1AC8;
}

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800F7308_1F1AC8);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800F73AC_1F1B6C);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800F75BC_1F1D7C);

void func_800F761C_1F1DDC(Object* arg0) {
    func_800F73AC_1F1B6C(arg0, 0);
    arg0->func_ptr = &func_800F76B8_1F1E78;
}

void func_800F7650_1F1E10(Object* arg0) {
    func_800F73AC_1F1B6C(arg0, 1);
    arg0->func_ptr = &func_800F76B8_1F1E78;
}

void func_800F7684_1F1E44(Object* arg0) {
    func_800F73AC_1F1B6C(arg0, 2);
    arg0->func_ptr = &func_800F76B8_1F1E78;
}

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800F76B8_1F1E78);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800F7A38_1F21F8);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800F8194_1F2954);

void func_800F8AAC_1F326C(Object* arg0) {
    func_800F8194_1F2954(arg0, 0);
}

void func_800F8AC8_1F3288(Object* arg0) {
    func_800F8194_1F2954(arg0, 1);
}

void func_800F8AE4_1F32A4(Object* arg0) {
    func_800F8194_1F2954(arg0, 2);
}

void func_800F8B00_1F32C0(Object* arg0) {
    func_800F8194_1F2954(arg0, 3);
}

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800F8B1C_1F32DC);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800F92FC_1F3ABC);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800F9E2C_1F45EC);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800F9EAC_1F466C);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800FA198_1F4958);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800FA410_1F4BD0);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800FABE4_1F53A4);

void func_800FACA8_1F5468(void) {
    if ((D_800FB9E0[2] != 0) || (D_800F5144 != 0)) {
        func_800FB5B4_1F5D74(131);
        func_800601D4(40);
    }
}

s32 func_800FACEC_1F54AC(unk_ovl_2BStruct* arg0) {
    if (arg0->unk_04 == 0) {
        return -1;
    }
    if (arg0->unk_04 < 0x22) {
        return 0;
    }
    
    if (arg0->unk_04 < 0x39) {
        return 1;
    } else {
        return 2;
    }
}

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800FAD2C_1F54EC);

void func_800FAF40_1F5700(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    func_800178A0(1);
    D_800EE98C = arg1;
    D_800F33EC.y = arg2;
    D_800F33EC.x = arg3;
    D_800F33EC.z = arg4;
    D_800F6524.x = arg5;
    D_800F6524.y = arg6;
    D_800F6524.z = arg7;
    D_800C3110->unk_40 = arg0;
}

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800FAFF0_1F57B0);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800FB0C8_1F5888);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800FB374_1F5B34);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800FB404_1F5BC4);

s32 func_800FB4D4_1F5C94(f32 arg0, f32 arg1, f32 arg2, u16 arg3, f32 arg4, f32 arg5, f32 arg6) {
    f32 temp_f0, temp_f2, temp_f12;
    f32 temp = 18.0f;
    
    temp_f2 = D_800FBA30[arg3];
    temp_f12 = (arg0 - arg4) * (arg0 - arg4);
    temp_f0 = (arg2 - arg6) * (arg2 - arg6);
    
    if ( (temp_f12 + temp_f0) <= ((temp_f2 + temp) * (temp_f2 + temp))) {
        return 1;
    } else {
        return 0;
    }
}

s32 func_800FB53C_1F5CFC(f32 arg0, f32 arg1, f32 arg2, u16 arg3, f32 arg4, f32 arg5, f32 arg6) {
    f32 temp_f0, temp_f2, temp_f12;
    f32 temp = 18.0f;
    
    temp_f2 = D_800FBA30[arg3] - 6.0f;
    temp_f12 = (arg0 - arg4) * (arg0 - arg4);
    temp_f0 = (arg2 - arg6) * (arg2 - arg6);
    
    if ( (temp_f12 + temp_f0) <= ((temp_f2 + temp) * (temp_f2 + temp))) {
        return 1;
    } else {
        return 0;
    }
}

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800FB5B4_1F5D74);

void func_800FB644_1F5E04(u16 arg0, s32 arg1) {
    D_800F2B7C[arg0].unk_4C.signed32 = arg1;
}

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800FB668_1F5E28);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800FB778_1F5F38);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800FB858_1F6018);

INCLUDE_ASM(s32, "ovl_2B_CastAways/1F0DA0", func_800FB884_1F6044);
