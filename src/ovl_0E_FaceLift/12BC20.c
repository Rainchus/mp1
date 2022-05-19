#include "common.h"
#include "12BC20.h"

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F65E0_12BC20);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F6974_12BFB4);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F6B88_12C1C8);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F6DBC_12C3FC);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F7444_12CA84);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F7D58_12D398);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F80A4_12D6E4);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F8204_12D844);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F8274_12D8B4);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F8378_12D9B8);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F84B4_12DAF4);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F8588_12DBC8);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F8608_12DC48);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F8660_12DCA0);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F86AC_12DCEC);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F8A98_12E0D8);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F8CE0_12E320);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F8D5C_12E39C);

void func_800F8DC8_12E408(Object* arg0) {
    unkGlobalStruct_00* temp_v0;
    s16 i;

    func_800F80A4_12D6E4(arg0, 4);
    temp_v0 = arg0->unk_40;
    func_800FA374_12F9B4(temp_v0->unk_00, temp_v0->unk_02);
    func_800258EC(arg0->unk_40->unk_00, 4, 4);
    func_800258EC(arg0->unk_40->unk_02, 4, 4);
    func_800258EC(arg0->unk_40->unk_04.unsigned16, 4, 4);
    func_800258EC(arg0->unk_40->unk_06, 4, 4);
    arg0->unk_40->unk_08 = LoadFormFile(0x200003, 0x219);
    func_80025F10(arg0->unk_40->unk_08, 16);
    func_80025830(arg0->unk_40->unk_08, 3.8f, 3.8f, 3.8f);
    
    for (i = 0; i < 6; i++) {
        D_800FC980[i].x = D_800FC4B0[i].unk_00;
        D_800FC980[i].y = D_800FC4B0[i].unk_04;
        D_800FC980[i].z = 0;
    }
    
    func_80023504(1, 0.0f, 119.0f, 0.0f);
    func_80023504(2, 0.0f, -117.0f, 22.0f);
    func_800234B8(2, 0xFF, 0, 0);
    func_80025F10(func_8002451C(0, (*func_800F9988_12EFC8), 0), 16);
    D_800FC9F0.x = ((-17.25f - D_800FC500.unk_50) / (D_800FC500.unk_50 - D_800FC500.unk_00));
    D_800FC9F0.y = ((-17.25f - D_800FC500.unk_50) / (D_800FC500.unk_50 - D_800FC500.unk_28));
    arg0->unk_4C = 0;
    func_80072644(0, 16);
    arg0->func_ptr = (*func_800F8FCC_12E60C);
}

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F8FCC_12E60C);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F9058_12E698);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F91C0_12E800);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F9800_12EE40);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F9988_12EFC8);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F99E8_12F028);

void func_800F9AD4_12F114(Object* arg0) {
    D_800FC960 = func_80019060(InitSprite(0x20000B), 0, 1);
    func_80018C90(D_800FC960);
    arg0->unk_4D = 0;
    arg0->func_ptr = (*func_800F9B38_12F178);
}

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F9B38_12F178);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F9BC8_12F208);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800F9EE4_12F524);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FA058_12F698);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FA374_12F9B4);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FA5B4_12FBF4);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FA7D0_12FE10);

void func_800FA9DC_13001C(Object* arg0) {
    if (D_800FC3D0_DAFD0 != 0 || D_800F5144 != 0) {
        func_800726AC(0, 0x14);
        arg0->func_ptr = (*func_800FAA38_130078);
        func_800601D4(40);
    }
}

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FAA38_130078);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FAA64_1300A4);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FAB24_130164);

void func_800FACB8_1302F8(Object* arg0) {
    func_800FACD8_130318(arg0, D_800FCA18);
}

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FACD8_130318);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FAEE0_130520);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FB0BC_1306FC);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FB1B4_1307F4);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FB29C_1308DC);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FB608_130C48);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FB724_130D64);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FB858_130E98);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FB9E8_131028);

void func_800FBE08_131448(void) {
    void* temp_s0;

    temp_s0 = ReadMainFS(0x0000007E);
    D_800FCA1E = func_800678A4(temp_s0);
    FreeMainFS(temp_s0);
    temp_s0 = ReadMainFS(0x0020000C);
    D_800FCA2A = func_800678A4(temp_s0);
    FreeMainFS(temp_s0);
    D_800FCA28 = 0;
}

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FBE78_1314B8);

INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FC094_1316D4);

#ifdef NON_MATCHING
void func_800FC0F0_131730(s16 arg0) {
    s16 i;
    for (i = 0; i < 4; i++) {
        func_80067480(arg0, i, 0x8000);
    }
}
#else
INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FC0F0_131730);
#endif

#ifdef NON_MATCHING
void func_800FC14C_13178C(s16 arg0, s16 arg1) {
    s16 phi_s2 = arg1;
    s16 phi_s0 = 0;
    
    if (arg1 >= 100) {
        func_80067480(arg0, 0, 0x8000);
        func_800672DC(arg0, 0, 1, 0);
        func_800672B0(arg0, 0, 1);
        phi_s2 = arg1 - 100;
        phi_s0 = 1;
        
    } else {
        func_800674BC(arg0, 0, 0x8000);
    }

    
    
    if (phi_s0 != 0 || (phi_s2 / 10 != 0)) {
        func_80067480(arg0, 1, 0x8000);
        func_800672DC(arg0, 1, (phi_s2 / 10), 0);
        func_800672B0(arg0, 1, 1);
        phi_s2 = phi_s2 % 10;
    } else {
        func_800674BC(arg0, 1, 0x8000);
    }
    
    func_80067480(arg0, 2, 0x8000);
    func_800672DC(arg0, 2, phi_s2, 0);
    func_800672B0(arg0, 2, 1);
    func_80067480(arg0, 3, 0x8000);
}
#else
INCLUDE_ASM(s32, "ovl_0E_FaceLift/12BC20", func_800FC14C_13178C);
#endif

void func_800FC30C_13194C(s16 arg0, s16 arg1) {
    s16 i;
    
    for (i = 0; i < 4; i++) {
        func_80067354(arg0, i, arg1 / 10.0f, arg1 / 10.0f);
    }
}

void func_800FC39C_1319DC(s16 arg0, s16 arg1, s16 arg2) {
    func_80066DC4(arg0, 0, arg1, arg2);
}
