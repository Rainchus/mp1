#include "common.h"
#include "CastAways.h"

void func_800F65E0_1F0DA0(void) {
    s32 i;
    void* filePtr;

    InitObjSystem(0x35, 0);
    func_80060088();
    func_80029090(1);
    func_8001DE70(0x64);
    func_8002890C(0x21, 0x42, 0xD6);
    func_800178A0(1);
    D_800FBB80_1F62C0.x = 0;
    D_800FBB80_1F62C0.y = 3072.0f;
    D_800FBB80_1F62C0.z = -200.0f;
    D_800FBB70_1F62C0.x = 0;
    D_800FBB70_1F62C0.y = 0;
    D_800FBB70_1F62C0.z = -300.0f;
    D_800FBB9C_1F62C0[0].x = 0;
    D_800FBB9C_1F62C0[0].y = 1.0f;
    D_800FBB9C_1F62C0[0].z = 0;
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
    D_800FBB48_1F62C0[0] = func_8005D384(6, 0, 0, -1, &func_800F761C_1F1DDC);
    D_800FBB48_1F62C0[1] = func_8005D384(6, 0, 0, -1, &func_800F7650_1F1E10);
    D_800FBB48_1F62C0[2] = func_8005D384(6, 0, 0, -1, &func_800F7684_1F1E44);
    func_8005D384(8, 5, 0xF, 4, &func_800F8AAC_1F326C);
    func_8005D384(8, 5, 0xF, 4, &func_800F8AC8_1F3288);
    func_8005D384(8, 5, 0xF, 4, &func_800F8AE4_1F32A4);
    func_8005D384(8, 5, 0xF, 4, &func_800F8B00_1F32C0);
    func_8005D384(0x2710, 0, 0, -1, &func_800FACA8_1F5468);

    for (i = 0; i < 2; i++) {
        filePtr = ReadMainFS(D_800FB9A4_1F6164[i]);
        D_800FBB04_1F62C0[i] = func_80039084(filePtr);
        FreePerm(filePtr);
    }

    D_800FBB46_1F62C0 = LoadFormFile(0x35, 0x2009D);
    filePtr = ReadMainFS(0x2A);
    D_800FBB40_1F62C0 = func_80039084(filePtr);
    FreePerm(filePtr);
    filePtr = ReadMainFS(0x25);
    D_800FBB42_1F62C0 = func_80039084(filePtr);
    FreePerm(filePtr);
    filePtr = ReadMainFS(0x24);
    D_800FBB44_1F62C0 = func_80039084(filePtr);
    FreePerm(filePtr);
    D_800FBB50_1F62C0[3] = IsFlagSet(0x2B);
    SetFadeInTypeAndTime(0, 0x10);
    D_800FBB98_1F62C0 = 0;
}

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800F6A24_1F11E4);

void func_800F7014_1F17D4(void) {
    s32 i;
    for (i = 0; i < D_800F3778; i++) {}
}

void func_800F704C_1F180C(unkObjectStruct* arg0) {
    D_800FBB78_1F62C0[2] = 0;
    D_800FBB58_1F62C0 = 60;
    D_800FBB5A_1F62C0 = 30;
    D_800FBB64_1F62C0 = D_800FBB68_1F62C0 = 0.0f;
    D_800FBB50_1F62C0[2] = 0;
    D_800FBB6C_1F62C0 = PlaySound(0x1AA);
    arg0->func_ptr = &func_800F70C4_1F1884;
}

void func_800F70C4_1F1884(void) {
    func_80079078(D_800FBB58_1F62C0);
    switch (D_800FBB78_1F62C0[2]) {
    case 0:
        func_800FA198_1F4958();
        return;
    case 1:
        D_800FBB5A_1F62C0--;
        if (D_800FBB5A_1F62C0 == 0) {
            D_800FBB58_1F62C0--;
            D_800FBB5A_1F62C0 = 30;
        }
        if (D_800FBB58_1F62C0 == 0) {
            D_800FBB78_1F62C0[2] = 2;
            D_800FBB8C_1F62C0 = 0;
            func_800601D4(40);
            return;
        }
        return;
    case 2:
        func_800FA410_1F4BD0();
        break;
    }
}

INCLUDE_RODATA("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", D_800FBA40_1F6200);

INCLUDE_RODATA("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", D_800FBA58_1F6218);

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800F71AC_1F196C);

/* TODO: Fix RODATA */
// void func_800F71AC_1F196C(unkObjectStruct* arg0) {
//     s16 sprite;

//     sprite = InitSprite(0x3F0002);
//     D_800FBB5C_1F62C0 = sprite;
//     D_800FBB5E_1F62C0 = func_80019060(sprite, 0, 1);
//     func_80018D44(D_800FBB5E_1F62C0, 0x4008);
//     SetBasicSpritePos(D_800FBB5E_1F62C0, 0xA0, 0x82);
//     ShowBasicSprite(D_800FBB5E_1F62C0);
//     SetBasicSpriteSize(D_800FBB5E_1F62C0, 2.0f, 2.0f);
//     func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
//     func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
//     arg0->unk_40[0] = LoadFormFile(0x3F0000, 0x499);
//     arg0->unk_40[3] = func_800174C0(0x3F0001, 0x1499);
//     func_80039C48(&D_800FBA64_1F62C0, &D_800FBB60_1F62C0);
//     func_80026040(arg0->unk_40[3]);
//     arg0->func_ptr = &func_800F7308_1F1AC8;
// }

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800F7308_1F1AC8);

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800F73AC_1F1B6C);

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800F75BC_1F1D7C);

void func_800F761C_1F1DDC(unkObjectStruct* arg0) {
    func_800F73AC_1F1B6C(arg0, 0);
    arg0->func_ptr = &func_800F76B8_1F1E78;
}

void func_800F7650_1F1E10(unkObjectStruct* arg0) {
    func_800F73AC_1F1B6C(arg0, 1);
    arg0->func_ptr = &func_800F76B8_1F1E78;
}

void func_800F7684_1F1E44(unkObjectStruct* arg0) {
    func_800F73AC_1F1B6C(arg0, 2);
    arg0->func_ptr = &func_800F76B8_1F1E78;
}

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800F76B8_1F1E78);

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800F7A38_1F21F8);

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800F8194_1F2954);

void func_800F8AAC_1F326C(unkObjectStruct* arg0) {
    func_800F8194_1F2954(arg0, 0);
}

void func_800F8AC8_1F3288(unkObjectStruct* arg0) {
    func_800F8194_1F2954(arg0, 1);
}

void func_800F8AE4_1F32A4(unkObjectStruct* arg0) {
    func_800F8194_1F2954(arg0, 2);
}

void func_800F8B00_1F32C0(unkObjectStruct* arg0) {
    func_800F8194_1F2954(arg0, 3);
}

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800F8B1C_1F32DC);

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800F92FC_1F3ABC);

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800F9E2C_1F45EC);

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800F9EAC_1F466C);

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800FA198_1F4958);

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800FA410_1F4BD0);

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800FABE4_1F53A4);

void func_800FACA8_1F5468(void) {
    if ((D_800FB9C4_1F6184[16] != 0) || (D_800F5144 != 0)) {
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

INCLUDE_ASM("asm/nonmatchings/ovl_2B_CastAways/1F0DA0", func_800FAD2C_1F54EC);
