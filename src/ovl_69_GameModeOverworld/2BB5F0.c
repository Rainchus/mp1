#include "process.h"
#include "2BB5C0.h"

void func_80025F10(s16, s32);
Object* func_80026A0C(s16, void*);
void func_800F731C_2BC2FC(void);
extern char D_800FA180[];

INCLUDE_ASM(s32, "ovl_69_GameModeOverworld/2BB5F0", func_800F6610_2BB5F0);
// void func_800F6610_2BB5F0(void) { //matches, needs rodata support
//     unkObjectStruct* temp_s1;

//     InitCameras(1);
//     func_80029090(1);
//     func_8001DE70(0x19);
//     InitObjSystem(0x32, 0x14);
//     func_80060088();
//     func_8006CEA0();
//     temp_s1 = func_8005D384(0x7FDA, 0, 0, -1, func_800F884C_2BD82C);
//     func_8005D8B8(temp_s1, 0xA0);
//     D_800F64F2 = 1;
//     func_8005D384(0x2710, 0, 0, -1, &func_800F8AB8_2BDA98);
//     D_800EE98C = 7120.0f;
//     D_800F6524.x = 54.9103f;
//     D_800F6524.y = 59.226612f;
//     D_800F6524.z = 61.478203f;
//     D_800F33EC.y = 341.0f;
//     D_800F33EC.x = 28.0f;
//     D_800F33EC.z = 0.0f;
//     func_8001D494(0, 20.0f, 80.0f, 13000.0f);
//     D_800FA1D0.x = D_800FA1D0.y = D_800FA1D0.z = 0.0f;
//     D_800FA1DC_ovl_69 = 2000.0f;
//     D_800FA1C4.x = D_800FA1C4.y = D_800FA1C4.z = 0.0f;
//     func_8001D494(1, 10.0f, 80.0f, 8000.0f);
//     func_800F884C_2BD82C(temp_s1);
//     D_800ECC22 = 1;
//     func_8005AF60();
//     func_80023448(3);
//     func_800234B8(0U, 0x78U, 0x78U, 0x78U);
//     func_800234B8(1U, 0x40U, 0x40U, 0x60U);
//     func_80023504(1, -100.0f, 100.0f, 100.0f);
//     func_80023504(2, -100.0f, 100.0f, 100.0f);
//     func_800234B8(2U, 0U, 0U, 0U);
//     func_800234B8(3U, 0U, 0U, 0U);
//     InitProcess(func_800F6968_2BB948, 0x3F00U, 0x1000, 0);
//     D_800FA1C0 = 0;
//     D_800FA1C2 = 0;
//     D_800FA1E2 = 0;
//     D_800FA1FC = -1;
//     D_800FA202 = 0;
//     D_800FA200 = 0;
//     if ((D_800ED144 >= 0x64) && (IsFlagSet(3) == 0) && (IsFlagSet(0x17) != 0)) {
//         SetBoardFeatureFlag(3);
//         SetBoardFeatureFlag(4);
//     }
//     D_800FA203 = IsFlagSet(3);
//     D_800FA204 = IsFlagSet(4);
//     D_800FA205 = IsFlagSet(0x18);
//     if (D_800FA204 != 0) {
//         D_800FA1E2 = 1;
//     }
//     ClearBoardFeatureFlag(0);
//     ClearBoardFeatureFlag(0x29);
//     ClearBoardFeatureFlag(0x2B);
//     ClearBoardFeatureFlag(0x2C);
//     if (IsFlagSet(0x36) != 0) {
//         ClearBoardFeatureFlag(0x36);
//         func_80070ED4();
//         func_8005DFB8(1);
//     }
// }

INCLUDE_ASM(s32, "ovl_69_GameModeOverworld/2BB5F0", func_800F6968_2BB948);

void func_800F6F14_2BBEF4(void) {
    f32 var_f20, var_f24;
    u16 temp_s1;

    temp_s1 = LoadFormFile(0x9001A, 0x299);
    func_80026040(temp_s1);
    func_80025F10(temp_s1, 1);
    var_f20 = 0.0f;
    var_f24 = var_f20;
    while (1) {
      SleepVProcess();
        func_80027C1C(temp_s1, var_f24, var_f20, 0x20, 0x20);
        var_f20 += 0.5f;      
    }

}

INCLUDE_ASM(s32, "ovl_69_GameModeOverworld/2BB5F0", func_800F6FC8_2BBFA8);

void func_800F7214_2BC1F4(void) {
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
    InitProcess(func_800F731C_2BC2FC, 0x3F00, 0x1000, 0);
    func_80026A0C(temp_s0, &D_800FA180)->unk_44 = -20.0f;
    while (1) {
        SleepVProcess();
    }
}

INCLUDE_ASM(s32, "ovl_69_GameModeOverworld/2BB5F0", func_800F731C_2BC2FC);

void func_800F7DB8_2BCD98(s16 arg0) {
    func_80071E80(arg0, 1);
    func_80072080(arg0);
}

void func_800F7DF0_2BCDD0(void) {
    SleepProcess(0x37);
    PlaySound(0);
    while (1) {
        SleepVProcess(); 
    }
}

INCLUDE_ASM(s32, "ovl_69_GameModeOverworld/2BB5F0", func_800F7E24_2BCE04);

void func_800F86A8_2BD688(unkObjectStruct* arg0) {
    arg0->unk_40[0] = -1;
    SetFadeInTypeAndTime(0xFF, 0x10);
    arg0->func_ptr = &func_800F86EC_2BD6CC;
}


void func_800F86EC_2BD6CC(void) {
    if (D_800FA1C0 == 4) {
        func_80070ED4();
        if (D_800FA1FC == -1) {
            func_8005DFB8(1);
            return;
        }
        func_8005DF44(D_800FA1FC, D_800FA202, 0x11);
    }
}

s32 func_800F8758_2BD738(u8 arg0) {
    if ((D_800EDEB4[arg0] & 0x300) == 0) {
        return D_800ECE14[arg0];
    }
    
    if ((D_800EDEB4[arg0] & 0x200) != 0) {
        return -0x50;
    } else {
        return -((D_800EDEB4[arg0] & 0x100) != 0) & 0x50;
    }
}

s32 func_800F87D0_2BD7B0(u8 arg0) {
    if ((D_800EDEB4[arg0] & 0xC00) == 0) {
        return D_800F3843[arg0];
    }
    
    if ((D_800EDEB4[arg0] & 0x800) != 0) {
        return 0x50;
    } else {
        return -((D_800EDEB4[arg0] & 0x400) != 0) & -0x50;
    }
}

INCLUDE_ASM(s32, "ovl_69_GameModeOverworld/2BB5F0", func_800F884C_2BD82C);
// void func_800F884C_2BD82C(unkObjectStruct* arg0) { //cleanup later, matches needs rodata support
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
//     temp_f22_2 = D_800FA1D0.x;
//     temp_f24_2 = D_800FA1D0.y;
//     temp_f20_5 = func_800AEAC0(temp_f24_2);
//     sp10.x = D_800FA1C4.x + (temp_f20_5 * func_800AEFD0(temp_f22_2) * D_800FA1DC_ovl_69);
//     sp10.y = (-func_800AEAC0(temp_f22_2) * D_800FA1DC_ovl_69) + D_800FA1C4.y;
//     temp_f20_6 = func_800AEFD0(temp_f24_2);
//     sp10.z = D_800FA1C4.z + (temp_f20_6 * func_800AEFD0(temp_f22_2) * D_800FA1DC_ovl_69);
//     sp20.x = D_800FA1C4.x;
//     sp20.y = D_800FA1C4.y;
//     sp20.z = D_800FA1C4.z;
//     sp30.x = func_800AEAC0(temp_f24_2) * func_800AEAC0(temp_f22_2);
//     sp30.y = func_800AEFD0(temp_f22_2);
//     sp30.z = func_800AEFD0(temp_f24_2) * func_800AEAC0(temp_f22_2);
//     func_8001D420(1, &sp10, &sp20, &sp30);
//     func_8001D57C(1);
// }

void func_800F8AB8_2BDA98(unkObjectStruct* arg0) {
    if ((D_800FA1C0 == 4) || (D_800FA1C2 != 0) || (D_800F5144 != 0)) {
        func_800726AC(0, 0x14);
        arg0->func_ptr = &func_800F8B38_2BDB18;
        if (D_800FA204 == 0) {
            func_800601D4(0x28);
        }
    }
}

void func_800F8B38_2BDB18(void) {
    if (func_80072718() == 0) {
        func_80070ED4();
        if (D_800FA1FC == -1) {
            func_8005DFB8(1);
            return;
        }
        func_8005DF44(D_800FA1FC, D_800FA202, 0x11);
    }
}

INCLUDE_ASM(s32, "ovl_69_GameModeOverworld/2BB5F0", func_800F8BA0_2BDB80);

INCLUDE_ASM(s32, "ovl_69_GameModeOverworld/2BB5F0", func_800F907C_2BE05C);

INCLUDE_ASM(s32, "ovl_69_GameModeOverworld/2BB5F0", func_800F9474_2BE454);
