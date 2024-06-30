#include "common.h"
#include "FaceLift.h"

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F65E0_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F6974_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F6B88_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F6DBC_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F7444_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F7D58_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F80A4_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F8204_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F8274_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC8C0_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC8C4_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC8CC_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC8D4_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC8DC_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC8E4_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC8EC_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC8F4_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC900_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC90C_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC918_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC924_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC930_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F8378_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F84B4_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F8588_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F8608_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F8660_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F86AC_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC940_FaceLift);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", D_800FC948_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F8A98_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F8CE0_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F8D5C_FaceLift);

void func_800F8DC8_FaceLift(omObjData* arg0) {
    s16 i;

    func_800F80A4_FaceLift(arg0, 4);
    func_800FA374_FaceLift(arg0->model[0], arg0->model[1]);
    func_800258EC(arg0->model[0], 4, 4);
    func_800258EC(arg0->model[1], 4, 4);
    func_800258EC(arg0->model[2], 4, 4);
    func_800258EC(arg0->model[3], 4, 4);
    arg0->model[4] = LoadFormFile(0x200003, 0x219);
    func_80025F10(arg0->model[4], 16);
    func_80025830(arg0->model[4], 3.8f, 3.8f, 3.8f);
    
    for (i = 0; i < ARRAY_COUNT(D_800FC980_FaceLift); i++) {
        D_800FC980_FaceLift[i].x = D_800FC4B0_FaceLift[i].unk_00;
        D_800FC980_FaceLift[i].y = D_800FC4B0_FaceLift[i].unk_04;
        D_800FC980_FaceLift[i].z = 0;
    }
    
    func_80023504(1, 0.0f, 119.0f, 0.0f);
    func_80023504(2, 0.0f, -117.0f, 22.0f);
    func_800234B8(2, 0xFF, 0, 0);
    func_80025F10(func_8002451C(0, &func_800F9988_FaceLift, 0), 16);
    D_800FC9F0_FaceLift.x = ((-17.25f - D_800FC500_FaceLift.unk_50) / (D_800FC500_FaceLift.unk_50 - D_800FC500_FaceLift.unk_00));
    D_800FC9F0_FaceLift.y = ((-17.25f - D_800FC500_FaceLift.unk_50) / (D_800FC500_FaceLift.unk_50 - D_800FC500_FaceLift.unk_28));
    arg0->work[0] = 0;
    SetFadeInTypeAndTime(0, 16);
    arg0->func_ptr = &func_800F8FCC_FaceLift;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F8FCC_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F9058_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F91C0_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F9800_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F9988_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F99E8_FaceLift);

void func_800F9AD4_FaceLift(omObjData* arg0) {
    s16 temp = InitSprite(0x20000B);
    
    D_800FC960_FaceLift = func_80019060(temp, 0, 1);
    func_80018C90(D_800FC960_FaceLift);
    arg0->work[1] = 0;
    arg0->func_ptr = &func_800F9B38_FaceLift;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F9B38_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F9BC8_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800F9EE4_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FA058_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FA374_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FA5B4_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FA7D0_FaceLift);

void func_800FA9DC_FaceLift(omObjData* arg0) {
    if (D_800FC3D0_FaceLift != 0 || D_800F5144 != 0) {
        func_800726AC(0, 0x14);
        arg0->func_ptr = &func_800FAA38_FaceLift;
        func_800601D4(40);
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FAA38_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FAA64_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FAB24_FaceLift);

void func_800FACB8_FaceLift(omObjData* arg0) {
    func_800FACD8_FaceLift(arg0, D_800FCA18_FaceLift);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FACD8_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FAEE0_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FB0BC_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FB1B4_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FB29C_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FB608_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FB724_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FB858_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FB9E8_FaceLift);

void func_800FBE08_FaceLift(void) {
    void* fsData;

    fsData = ReadMainFS(0x0000007E);
    D_800FCA1E_FaceLift = func_800678A4(fsData);
    FreeMainFS(fsData);
    fsData = ReadMainFS(0x0020000C);
    D_800FCA2A_FaceLift = func_800678A4(fsData);
    FreeMainFS(fsData);
    D_800FCA28_FaceLift = 0;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FBE78_FaceLift);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FC094_FaceLift);

void func_800FC0F0_FaceLift(s16 arg0) {
    s16 i;
    for (i = 0; i < 4; i++) {
        func_80067480(arg0, i, 0x8000);
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0E_FaceLift/12BC20", func_800FC14C_FaceLift);

void func_800FC30C_FaceLift(s16 arg0, s16 arg1) {
    s16 i;
    
    for (i = 0; i < 4; i++) {
        func_80067354(arg0, i, arg1 / 10.0f, arg1 / 10.0f);
    }
}

void func_800FC39C_FaceLift(s16 arg0, s16 arg1, s16 arg2) {
    func_80066DC4(arg0, 0, arg1, arg2);
}
