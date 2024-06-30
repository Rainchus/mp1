#include "engine/process.h"
#include "2BB5C0.h"

void func_80025F10(s16, s32);
Object* func_80026A0C(s16, void*);
void func_800F731C_GameModeOverworld(void);
void func_800F86EC_GameModeOverworld(void);
extern char D_800FA180_GameModeOverworld[];

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_69_GameModeOverworld/2BB5F0", func_800F6610_GameModeOverworld);
// void func_800F6610_GameModeOverworld(void) { //matches, needs rodata support
//     omObjData* temp_s1;

//     InitCameras(1);
//     func_80029090(1);
//     func_8001DE70(0x19);
//     omInitObjMan(0x32, 0x14);
//     func_80060088();
//     func_8006CEA0();
//     temp_s1 = omAddObj(0x7FDA, 0, 0, -1, func_800F884C_GameModeOverworld);
//     omSetStatBit(temp_s1, 0xA0);
//     D_800F64F2 = 1;
//     omAddObj(0x2710, 0, 0, -1, &func_800F8AB8_GameModeOverworld);
//     D_800EE98C = 7120.0f;
//     D_800F6524.x = 54.9103f;
//     D_800F6524.y = 59.226612f;
//     D_800F6524.z = 61.478203f;
//     D_800F33EC.y = 341.0f;
//     D_800F33EC.x = 28.0f;
//     D_800F33EC.z = 0.0f;
//     func_8001D494(0, 20.0f, 80.0f, 13000.0f);
//     D_800FA1D0_GameModeOverworld.x = D_800FA1D0_GameModeOverworld.y = D_800FA1D0_GameModeOverworld.z = 0.0f;
//     D_800FA1DC_ovl_69 = 2000.0f;
//     D_800FA1C4_GameModeOverworld.x = D_800FA1C4_GameModeOverworld.y = D_800FA1C4_GameModeOverworld.z = 0.0f;
//     func_8001D494(1, 10.0f, 80.0f, 8000.0f);
//     func_800F884C_GameModeOverworld(temp_s1);
//     D_800ECC22 = 1;
//     func_8005AF60();
//     func_80023448(3);
//     func_800234B8(0U, 0x78U, 0x78U, 0x78U);
//     func_800234B8(1U, 0x40U, 0x40U, 0x60U);
//     func_80023504(1, -100.0f, 100.0f, 100.0f);
//     func_80023504(2, -100.0f, 100.0f, 100.0f);
//     func_800234B8(2U, 0U, 0U, 0U);
//     func_800234B8(3U, 0U, 0U, 0U);
//     omAddPrcObj(func_800F6968_GameModeOverworld, 0x3F00U, 0x1000, 0);
//     D_800FA1C0_GameModeOverworld = 0;
//     D_800FA1C2_GameModeOverworld = 0;
//     D_800FA1E2_GameModeOverworld = 0;
//     D_800FA1FC_GameModeOverworld = -1;
//     D_800FA202_GameModeOverworld = 0;
//     D_800FA200_GameModeOverworld = 0;
//     if ((D_800ED144 >= 0x64) && (IsFlagSet(3) == 0) && (IsFlagSet(0x17) != 0)) {
//         SetBoardFeatureFlag(3);
//         SetBoardFeatureFlag(4);
//     }
//     D_800FA203_GameModeOverworld = IsFlagSet(3);
//     D_800FA204_GameModeOverworld = IsFlagSet(4);
//     D_800FA205_GameModeOverworld = IsFlagSet(0x18);
//     if (D_800FA204_GameModeOverworld != 0) {
//         D_800FA1E2_GameModeOverworld = 1;
//     }
//     ClearBoardFeatureFlag(0);
//     ClearBoardFeatureFlag(0x29);
//     ClearBoardFeatureFlag(0x2B);
//     ClearBoardFeatureFlag(0x2C);
//     if (IsFlagSet(0x36) != 0) {
//         ClearBoardFeatureFlag(0x36);
//         func_80070ED4();
//         omOvlReturnEx(1);
//     }
// }

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_69_GameModeOverworld/2BB5F0", func_800F6968_GameModeOverworld);

void func_800F6F14_GameModeOverworld(void) {
    f32 var_f20, var_f24;
    u16 temp_s1;

    temp_s1 = LoadFormFile(0x9001A, 0x299);
    func_80026040(temp_s1);
    func_80025F10(temp_s1, 1);
    var_f20 = 0.0f;
    var_f24 = var_f20;
    while (1) {
      HuPrcVSleep();
        func_80027C1C(temp_s1, var_f24, var_f20, 0x20, 0x20);
        var_f20 += 0.5f;      
    }

}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_69_GameModeOverworld/2BB5F0", func_800F6FC8_GameModeOverworld);

void func_800F7214_GameModeOverworld(void) {
    s32 temp_s0;
    Vec3f pad;

    temp_s0 = LoadFormFile(0x7000A, 0x202B9);
    func_80025EB4(temp_s0, 2, 2);
    func_80025F10(temp_s0, 1);

    pad.x = 291.0f;
    pad.y = 0.0f;
    pad.z = 2234.0f;
    
    func_80025798(temp_s0, pad.x, pad.y, pad.z);
    func_80025830(temp_s0, 3.0f, 3.0f, 3.0f);
    func_800257E4(temp_s0, 0.0f, 45.0f, 0.0f);
    omAddPrcObj(func_800F731C_GameModeOverworld, 0x3F00, 0x1000, 0);
    func_80026A0C(temp_s0, "c100_1-atama")->unk_44 = -20.0f;
    while (1) {
        HuPrcVSleep();
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_69_GameModeOverworld/2BB5F0", func_800F731C_GameModeOverworld);

void func_800F7DB8_GameModeOverworld(s16 arg0) {
    func_80071E80(arg0, 1);
    func_80072080(arg0);
}

void func_800F7DF0_GameModeOverworld(void) {
    HuPrcSleep(0x37);
    PlaySound(0);
    while (1) {
        HuPrcVSleep(); 
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_69_GameModeOverworld/2BB5F0", func_800F7E24_GameModeOverworld);

void func_800F86A8_GameModeOverworld(omObjData* arg0) {
    arg0->model[0] = -1;
    SetFadeInTypeAndTime(0xFF, 0x10);
    arg0->func_ptr = &func_800F86EC_GameModeOverworld;
}


void func_800F86EC_GameModeOverworld(void) {
    if (D_800FA1C0_GameModeOverworld == 4) {
        func_80070ED4();
        if (D_800FA1FC_GameModeOverworld == -1) {
            omOvlReturnEx(1);
            return;
        }
        omOvlCallEx(D_800FA1FC_GameModeOverworld, D_800FA202_GameModeOverworld, 0x11);
    }
}

s32 func_800F8758_GameModeOverworld(u8 arg0) {
    if ((D_800EDEB4[arg0] & 0x300) == 0) {
        return D_800ECE14[arg0];
    }
    
    if ((D_800EDEB4[arg0] & 0x200) != 0) {
        return -0x50;
    } else {
        return -((D_800EDEB4[arg0] & 0x100) != 0) & 0x50;
    }
}

s32 func_800F87D0_GameModeOverworld(u8 arg0) {
    if ((D_800EDEB4[arg0] & 0xC00) == 0) {
        return D_800F3843[arg0];
    }
    
    if ((D_800EDEB4[arg0] & 0x800) != 0) {
        return 0x50;
    } else {
        return -((D_800EDEB4[arg0] & 0x400) != 0) & -0x50;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_69_GameModeOverworld/2BB5F0", func_800F884C_GameModeOverworld);
// void func_800F884C_GameModeOverworld(omObjData* arg0) { //cleanup later, matches needs rodata support
//     Vec3f sp10;
//     Vec3f sp20;
//     Vec3f sp30;
//     f32 temp_f20;
//     f32 temp_f20_2;
//     f32 temp_f20_3;
//     f32 temp_f20_4;
//     f32 temp_f20_5;
//     f32 temp_f20_6;
//     f32 temp_f22;
//     f32 temp_f22_2;
//     f32 temp_f24;
//     f32 temp_f24_2;


//     temp_f22 = D_800F33EC.y;
//     temp_f24 = D_800F33EC.x;
//     temp_f20 = func_800AEAC0(temp_f24);
//     sp10.x = D_800F6524.x + (temp_f20 * func_800AEFD0(temp_f22) * D_800EE98C);
//     sp10.y = (-func_800AEAC0(temp_f22) * D_800EE98C) + D_800F6524.y;
//     temp_f20_2 = func_800AEFD0(temp_f24);
//     sp10.z = (temp_f20_2 * func_800AEFD0(temp_f22) * D_800EE98C) + D_800F6524.z;
//     sp20.x = D_800F6524.x;
//     sp20.y = D_800F6524.y;
//     sp20.z = D_800F6524.z;
//     temp_f20_3 = func_800AEAC0(temp_f24);
//     sp30.x = temp_f20_3 * func_800AEAC0(temp_f22);
//     sp30.y = func_800AEFD0(temp_f22);
//     temp_f20_4 = func_800AEFD0(temp_f24);
//     sp30.z = temp_f20_4 * func_800AEAC0(temp_f22);
//     func_8001D420(0, &sp10, &sp20, &sp30);
//     func_8001D57C(0);
//     temp_f22_2 = D_800FA1D0_GameModeOverworld.x;
//     temp_f24_2 = D_800FA1D0_GameModeOverworld.y;
//     temp_f20_5 = func_800AEAC0(temp_f24_2);
//     sp10.x = D_800FA1C4_GameModeOverworld.x + (temp_f20_5 * func_800AEFD0(temp_f22_2) * D_800FA1DC_ovl_69);
//     sp10.y = (-func_800AEAC0(temp_f22_2) * D_800FA1DC_ovl_69) + D_800FA1C4_GameModeOverworld.y;
//     temp_f20_6 = func_800AEFD0(temp_f24_2);
//     sp10.z = D_800FA1C4_GameModeOverworld.z + (temp_f20_6 * func_800AEFD0(temp_f22_2) * D_800FA1DC_ovl_69);
//     sp20.x = D_800FA1C4_GameModeOverworld.x;
//     sp20.y = D_800FA1C4_GameModeOverworld.y;
//     sp20.z = D_800FA1C4_GameModeOverworld.z;
//     sp30.x = func_800AEAC0(temp_f24_2) * func_800AEAC0(temp_f22_2);
//     sp30.y = func_800AEFD0(temp_f22_2);
//     sp30.z = func_800AEFD0(temp_f24_2) * func_800AEAC0(temp_f22_2);
//     func_8001D420(1, &sp10, &sp20, &sp30);
//     func_8001D57C(1);
// }

void func_800F8AB8_GameModeOverworld(omObjData* arg0) {
    if ((D_800FA1C0_GameModeOverworld == 4) || (D_800FA1C2_GameModeOverworld != 0) || (D_800F5144 != 0)) {
        func_800726AC(0, 0x14);
        arg0->func_ptr = &func_800F8B38_GameModeOverworld;
        if (D_800FA204_GameModeOverworld == 0) {
            func_800601D4(0x28);
        }
    }
}

void func_800F8B38_GameModeOverworld(void) {
    if (func_80072718() == 0) {
        func_80070ED4();
        if (D_800FA1FC_GameModeOverworld == -1) {
            omOvlReturnEx(1);
            return;
        }
        omOvlCallEx(D_800FA1FC_GameModeOverworld, D_800FA202_GameModeOverworld, 0x11);
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_69_GameModeOverworld/2BB5F0", func_800F8BA0_GameModeOverworld);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_69_GameModeOverworld/2BB5F0", func_800F907C_GameModeOverworld);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_69_GameModeOverworld/2BB5F0", func_800F9474_GameModeOverworld);
