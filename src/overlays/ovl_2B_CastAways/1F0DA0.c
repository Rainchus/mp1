#include "CastAways.h"

void func_800F65E0_CastAways(void) {
    s32 i;
    void* filePtr;

    omInitObjMan(0x35, 0);
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
    omSetStatBit(omAddObj(0x7FDA, 0, 0, -1, &func_800FB884_CastAways), 0xA0);
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
    omAddObj(0x64, 0, 0, -1, &func_800F7014_CastAways);
    omAddObj(0, 0, 0, -1, &func_800F704C_CastAways);
    omSetStatBit(omAddObj(4, 4, 0, -1, &func_800F71AC_CastAways), 0xA0);
    D_800FBB48_ovl2B[0] = omAddObj(6, 0, 0, -1, &func_800F761C_CastAways);
    D_800FBB48_ovl2B[1] = omAddObj(6, 0, 0, -1, &func_800F7650_CastAways);
    D_800FBB48_ovl2B[2] = omAddObj(6, 0, 0, -1, &func_800F7684_CastAways);
    omAddObj(8, 5, 0xF, 4, &func_800F8AAC_CastAways);
    omAddObj(8, 5, 0xF, 4, &func_800F8AC8_CastAways);
    omAddObj(8, 5, 0xF, 4, &func_800F8AE4_CastAways);
    omAddObj(8, 5, 0xF, 4, &func_800F8B00_CastAways);
    omAddObj(0x2710, 0, 0, -1, &func_800FACA8_CastAways);

    for (i = 0; i < 2; i++) {
        filePtr = ReadMainFS(D_800FB9A4_ovl2B[i]);
        D_800FBB04_ovl2B[i] = func_80039084(filePtr);
        HuMemDirectFree(filePtr);
    }

    D_800FBB46_ovl2B = LoadFormFile(0x35, 0x2009D);
    filePtr = ReadMainFS(0x2A);
    D_800FBB40_ovl2B = func_80039084(filePtr);
    HuMemDirectFree(filePtr);
    filePtr = ReadMainFS(0x25);
    D_800FBB42_ovl2B = func_80039084(filePtr);
    HuMemDirectFree(filePtr);
    filePtr = ReadMainFS(0x24);
    D_800FBB44_ovl2B = func_80039084(filePtr);
    HuMemDirectFree(filePtr);
    D_800FBB50_ovl2B[3] = IsFlagSet(0x2B);
    SetFadeInTypeAndTime(0, 0x10);
    D_800FBB98_ovl2B = 0;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800F6A24_CastAways);

void func_800F7014_CastAways(void) {
    s32 i;
    for (i = 0; i < D_800F3778_ovl2B; i++) {}
}

void func_800F704C_CastAways(omObjData* arg0) {
    D_800FBB78_ovl2B[2] = 0;
    D_800FBB58_ovl2B = 60;
    D_800FBB5A_ovl2B = 30;
    D_800FBB64_ovl2B = D_800FBB68_ovl2B = 0.0f;
    D_800FBB50_ovl2B[2] = 0;
    D_800FBB6C_ovl2B = PlaySound(0x1AA);
    arg0->func_ptr = &func_800F70C4_CastAways;
}

void func_800F70C4_CastAways(void) {
    func_80079078(D_800FBB58_ovl2B);
    switch (D_800FBB78_ovl2B[2]) {
    case 0:
        func_800FA198_CastAways();
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
        func_800FA410_CastAways();
        break;
    }
}

void func_800F71AC_CastAways(omObjData* arg0) {
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
    arg0->model[0] = LoadFormFile(0x3F0000, 0x499);
    arg0->model[3] = func_800174C0(0x3F0001, 0x1499);
    func_80039C48(&D_800FBA64_ovl2B, &D_800FBB60_CastAways);
    func_80026040(arg0->model[3]);
    arg0->func_ptr = &func_800F7308_CastAways;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800F7308_CastAways);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800F73AC_CastAways);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800F75BC_CastAways);

void func_800F761C_CastAways(omObjData* arg0) {
    func_800F73AC_CastAways(arg0, 0);
    arg0->func_ptr = &func_800F76B8_CastAways;
}

void func_800F7650_CastAways(omObjData* arg0) {
    func_800F73AC_CastAways(arg0, 1);
    arg0->func_ptr = &func_800F76B8_CastAways;
}

void func_800F7684_CastAways(omObjData* arg0) {
    func_800F73AC_CastAways(arg0, 2);
    arg0->func_ptr = &func_800F76B8_CastAways;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800F76B8_CastAways);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800F7A38_CastAways);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800F8194_CastAways);

void func_800F8AAC_CastAways(omObjData* arg0) {
    func_800F8194_CastAways(arg0, 0);
}

void func_800F8AC8_CastAways(omObjData* arg0) {
    func_800F8194_CastAways(arg0, 1);
}

void func_800F8AE4_CastAways(omObjData* arg0) {
    func_800F8194_CastAways(arg0, 2);
}

void func_800F8B00_CastAways(omObjData* arg0) {
    func_800F8194_CastAways(arg0, 3);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800F8B1C_CastAways);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800F92FC_CastAways);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800F9E2C_CastAways);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800F9EAC_CastAways);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800FA198_CastAways);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800FA410_CastAways);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800FABE4_CastAways);

void func_800FACA8_CastAways(void) {
    if ((D_800FB9E0_CastAways[2] != 0) || (D_800F5144 != 0)) {
        func_800FB5B4_CastAways(131);
        func_800601D4(40);
    }
}

s32 func_800FACEC_CastAways(unk_ovl_2BStruct* arg0) {
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

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_2B_CastAways/1F0DA0", func_800FAD2C_CastAways);
