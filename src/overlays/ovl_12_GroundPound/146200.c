#include "GroundPound.h"

void func_800F65E0_146200(void) {
    D_800FA26C_13ACDC = -1;
    func_80029090(0x18);
    func_8001DE70(0x40);
    D_800EE984 = 0;
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    func_80009500();
    omInitObjMan(32, 0);
    func_80060088();
    func_800F9E80_149AA0(2500.0f, 315.0f, 0.0f, 0.0f, -330.0f, 458.0f, 375.0f);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 20.0f, 80.0f, 8000.0f);
    func_8002578C(0);
    omSetStatBit(omAddObj(0x7FDA, 0, 0, -1, &func_8005EB1C), 160);
    omAddObj(0, 0, 0, -1, &func_800F67E0_146400);
    func_800F7FEC_147C0C();
    D_800FA43C = omAddObj(8, 0xA, 0x64, -1, &func_800F8C20_148840);
    omAddObj(0x2710, 0, 0, -1, &func_800F6EE4_146B04);
    SetFadeInTypeAndTime(0, 0x10);
    D_800FA262 = 3;
    PlaySound(0x1A2);
}

void func_800F67E0_146400(omObjData* arg0) {
    D_800FA260 = 0;
    D_800FA266 = 30;
    D_800FA268 = 30;
    D_800ED430 = 0;
    arg0->func_ptr = &func_800F6814_146434;
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

INCLUDE_ASM(s32, "overlays/ovl_12_GroundPound/146200", func_800F6924_146544);

INCLUDE_ASM(s32, "overlays/ovl_12_GroundPound/146200", func_800F6A84_1466A4);

INCLUDE_ASM(s32, "overlays/ovl_12_GroundPound/146200", func_800F6B0C_14672C);

INCLUDE_ASM(s32, "overlays/ovl_12_GroundPound/146200", func_800F6EE4_146B04);
