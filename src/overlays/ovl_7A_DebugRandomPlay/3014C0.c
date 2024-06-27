#include "common.h"
#include "engine/ovlman.h"

typedef struct unkStruct2 {
    u32 unk_00;
    void* ramAddr;
    u16 unk_08;
    u16 unk_0A;
    s32 unk_0C;
} unkStruct2;

extern u8 D_800F8FB8_303E98;  //random minigame id
extern unkStruct2 D_800F7DB0_302C90[];
extern s16 D_800F8FBA_303E9A;
extern Process* D_800F91C8_3040A8;
extern u8 D_800F8FC0_303EA0[];
extern s16 D_800F8FBC_303E9C;
extern unkStruct2 D_800F7DB8_302C98[];
extern char D_800F8F78_303E58[];
extern u16 D_800F8920_303800;

void func_800F69FC_3018DC(omObjData* arg0, u16 arg1);
void func_800F6BC4_301AA4(s32);
void func_800F6DA0_301C80(s32);
void func_800F6BBC_301A9C(void);
void func_800F750C_3023EC(void);
void func_800F7360_302240(u8);
void func_800F7D88_302C68(s32);


INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F65E0_3014C0);

void func_800F698C_30186C(omObjData* arg0) {
    func_800F69FC_3018DC(arg0, 0);
}

void func_800F69A8_301888(omObjData* arg0) {
    func_800F69FC_3018DC(arg0, 1);
}

void func_800F69C4_3018A4(omObjData* arg0) {
    func_800F69FC_3018DC(arg0, 2);
}

void func_800F69E0_3018C0(omObjData* arg0) {
    func_800F69FC_3018DC(arg0, 3);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F69FC_3018DC);

void func_800F6BBC_301A9C(void) {
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F6BC4_301AA4);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F6DA0_301C80);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F6FA0_301E80);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F70BC_301F9C);

void func_800F72D4_3021B4(void) {

    do {
        D_800F8FB8_303E98 = rand8() % 0x46;
    } while ((D_800F7DB0_302C90[D_800F8FB8_303E98].unk_00) >> 24 != 0);
    
    func_800F7360_302240(D_800F8FB8_303E98);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F7360_302240);

void func_800F741C_3022FC(void) {
    if ((D_800F8920_303800 != 0) || (D_800F5144_F51D4 != 0)) {
        func_800F7D88_302C68(0x83);
        func_800601D4_60DD4(0x28);
        func_80070ED4_71AD4();
    }
}

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8930_303810);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8940_303820);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8944_303824);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F894C_30382C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8958_303838);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8968_303848);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8974_303854);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F897C_30385C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F898C_30386C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F899C_30387C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89AC_30388C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89BC_30389C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89C4_3038A4);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89CC_3038AC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89D4_3038B4);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89DC_3038BC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89E4_3038C4);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89EC_3038CC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89F4_3038D4);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89FC_3038DC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A0C_3038EC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A24_303904);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A34_303914);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A50_303930);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A64_303944);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A74_303954);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A88_303968);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A98_303978);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8AA8_303988);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8AC0_3039A0);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8ADC_3039BC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8AF4_3039D4);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B0C_3039EC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B1C_3039FC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B2C_303A0C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B40_303A20);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B50_303A30);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B60_303A40);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B7C_303A5C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B8C_303A6C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8BA0_303A80);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8BB4_303A94);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8BC8_303AA8);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8BDC_303ABC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8BEC_303ACC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8BFC_303ADC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C00_303AE0);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C10_303AF0);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C20_303B00);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C34_303B14);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C4C_303B2C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C60_303B40);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C7C_303B5C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C8C_303B6C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C9C_303B7C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8CB0_303B90);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8CCC_303BAC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8CE8_303BC8);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8CEC_303BCC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D00_303BE0);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D10_303BF0);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D20_303C00);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D40_303C20);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D58_303C38);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D78_303C58);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D88_303C68);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D9C_303C7C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8DAC_303C8C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8DB8_303C98);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8DC8_303CA8);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8DDC_303CBC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8DE0_303CC0);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8DFC_303CDC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8E14_303CF4);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8E2C_303D0C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8E40_303D20);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8E5C_303D3C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8E6C_303D4C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8E80_303D60);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8E90_303D70);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8EA8_303D88);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8EBC_303D9C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8ED8_303DB8);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8EE8_303DC8);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8EEC_303DCC);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F04_303DE4);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F18_303DF8);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F2C_303E0C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F3C_303E1C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F50_303E30);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F64_303E44);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F68_303E48);

void func_800F7468_302348(void) {
    func_8006E070_6EC70(D_800F8FBA_303E9A, 0);
    LoadStringIntoWindow(D_800F8FBA_303E9A, "RANDOM PLAY", -1, -1);
    while (1) {
        if ((func_8006FCC0_708C0(D_800F8FBA_303E9A)) != 0) {
            HuPrcVSleep();
        } else {
            break;
        }        
    }

    EndProcess(D_800F91C8_3040A8);
    D_800F91C8_3040A8 = omAddPrcObj(func_800F750C_3023EC, 0x3FFF, 0, 0);
    
    while (1) {
        HuPrcVSleep(); 
    }
}

void func_800F750C_3023EC(void) { //TODO: fix call to func_8006DA5C_6E65C
    char buffer[0x200];

    func_8006EB40_6F740(D_800F8FBC_303E9C);
    func_8006EB80_6F780();
    func_8006DA5C_6E65C(D_800F8FBC_303E9C, (void*)((D_800F7DB8_302C98[D_800F8FB8_303E98].unk_00) >> 16), 0);
    sprintf(buffer, D_800F8F78_303E58); //D_800F8F78_D03E8
    func_8007149C_7209C(D_800F8FC0_303EA0, (u8*) buffer);
    LoadStringIntoWindow(D_800F8FBC_303E9C, D_800F8FC0_303EA0, -1, -1);
    while (1) {
        if (func_8006FCC0_708C0(D_800F8FBC_303E9C) != 0) {
            HuPrcVSleep();
        } else {
            break;
        }
    }

    EndProcess(D_800F91C8_3040A8);
    
    while (1) {
        HuPrcVSleep();
    }
    
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F75DC_3024BC);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F783C_30271C);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F78_303E58);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F7A50_302930);

void func_800F7CA0_302B80(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    func_800178A0_184A0(1);
    D_800EE98C_EEA1C = arg1;
    D_800F33EC_F347C.y = arg2;
    D_800F33EC_F347C.x = arg3;
    D_800F33EC_F347C.z = arg4;
    D_800F6524_F65B4.x = arg5;
    D_800F6524_F65B4.y = arg6;
    D_800F6524_F65B4.z = arg7;
    D_800C3110_C3D10->unk_40 = arg0;
}

void func_800F7D50_302C30(void) {
    s32 i;
    for (i = 0; i < D_800F3778_F3808; i++) {}
}

void func_800F7D88_302C68(s32 arg0) {
    omOvlReturnEx(1);
}

