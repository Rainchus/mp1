#include "GrabBag.h"

void func_800F65E0_GrabBag(void) {
    func_80029090(0x10);
    func_8002ADF0(&D_800EDEC0, 0x40);
    func_8001DE70(0x10);
    omInitObjMan(0x14, 0);
    func_80060088();
    omSetStatBit(omAddObj(0x7FDA, 0, 0, -1, func_8005EB1C), 0xA0);
    func_8000942C();
    D_800F6524.x = -10.0f;
    D_800F6524.y = 0.0f;
    D_800F6524.z = -105.0f;
    D_800F33EC.y = -36.0f;
    D_800F33EC.x = 0.0f;
    D_800F33EC.z = 0.0f;
    D_800EE98C = 1880.0f;
    func_800F66F8_GrabBag();
    func_800F7260_GrabBag();
    func_800F67BC_GrabBag();
    func_800F6C08_GrabBag();
    func_800F7680_GrabBag();
    func_8002890C(0, 0, 0);
    SetFadeInTypeAndTime(0, 0x10);
}


void func_800F66F8_GrabBag(void) {
    s16 temp_v0;

    func_800178A0(1);
    temp_v0 = func_800178E8();
    func_80017660(temp_v0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_v0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(temp_v0, 30.0f, 80.0f, 8000.0f);
}


void func_800F67BC_GrabBag(void) {
}


INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1C_GrabBag/1837D0", func_800F67C4_GrabBag);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1C_GrabBag/1837D0", func_800F69D4_GrabBag);


void func_800F6C08_GrabBag(void) {
    s32 i;

    D_800EE984 = 0;
    for (i = 0; i < ARRAY_COUNT(D_800EDE70); i++) {
        D_800EDE70[D_800EE984++] = omAddObj(3, 2, 0, -1, func_800F6C98_GrabBag);
    }
}


INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1C_GrabBag/1837D0", func_800F6C98_GrabBag);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1C_GrabBag/1837D0", func_800F6E90_GrabBag);
