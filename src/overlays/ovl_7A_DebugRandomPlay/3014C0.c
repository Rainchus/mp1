#include "common.h"
#include "engine/ovlman.h"

typedef struct unkStruct2 {
    u32 unk_00;
    void* ramAddr;
    u16 unk_08;
    u16 unk_0A;
    s32 unk_0C;
} unkStruct2;

extern u8 D_800F8FB8_DebugRandomPlay;  //random minigame id
extern unkStruct2 D_800F7DB0_DebugRandomPlay[];
extern s16 D_800F8FBA_DebugRandomPlay;
extern Process* D_800F91C8_DebugRandomPlay;
extern u8 D_800F8FC0_DebugRandomPlay[];
extern s16 D_800F8FBC_DebugRandomPlay;
extern unkStruct2 D_800F7DB8_DebugRandomPlay[];
extern char D_800F8F78_DebugRandomPlay[];
extern u16 D_800F8920_DebugRandomPlay;

void func_800F69FC_DebugRandomPlay(omObjData* arg0, u16 arg1);
void func_800F6BC4_DebugRandomPlay(s32);
void func_800F6DA0_DebugRandomPlay(s32);
void func_800F6BBC_DebugRandomPlay(void);
void func_800F750C_DebugRandomPlay(void);
void func_800F7360_DebugRandomPlay(u8);
void func_800F7D88_DebugRandomPlay(s32);


INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F65E0_DebugRandomPlay);

void func_800F698C_DebugRandomPlay(omObjData* arg0) {
    func_800F69FC_DebugRandomPlay(arg0, 0);
}

void func_800F69A8_DebugRandomPlay(omObjData* arg0) {
    func_800F69FC_DebugRandomPlay(arg0, 1);
}

void func_800F69C4_DebugRandomPlay(omObjData* arg0) {
    func_800F69FC_DebugRandomPlay(arg0, 2);
}

void func_800F69E0_DebugRandomPlay(omObjData* arg0) {
    func_800F69FC_DebugRandomPlay(arg0, 3);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F69FC_DebugRandomPlay);

void func_800F6BBC_DebugRandomPlay(void) {
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F6BC4_DebugRandomPlay);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F6DA0_DebugRandomPlay);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F6FA0_DebugRandomPlay);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F70BC_DebugRandomPlay);

void func_800F72D4_DebugRandomPlay(void) {

    do {
        D_800F8FB8_DebugRandomPlay = rand8() % 0x46;
    } while ((D_800F7DB0_DebugRandomPlay[D_800F8FB8_DebugRandomPlay].unk_00) >> 24 != 0);
    
    func_800F7360_DebugRandomPlay(D_800F8FB8_DebugRandomPlay);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F7360_DebugRandomPlay);

void func_800F741C_DebugRandomPlay(void) {
    if ((D_800F8920_DebugRandomPlay != 0) || (D_800F5144 != 0)) {
        func_800F7D88_DebugRandomPlay(0x83);
        func_800601D4(0x28);
        func_80070ED4();
    }
}

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8930_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8940_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8944_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F894C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8958_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8968_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8974_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F897C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F898C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F899C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89AC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89BC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89C4_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89CC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89D4_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89DC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89E4_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89EC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89F4_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F89FC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A0C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A24_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A34_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A50_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A64_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A74_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A88_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8A98_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8AA8_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8AC0_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8ADC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8AF4_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B0C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B1C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B2C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B40_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B50_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B60_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B7C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8B8C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8BA0_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8BB4_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8BC8_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8BDC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8BEC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8BFC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C00_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C10_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C20_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C34_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C4C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C60_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C7C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C8C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8C9C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8CB0_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8CCC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8CE8_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8CEC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D00_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D10_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D20_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D40_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D58_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D78_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D88_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8D9C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8DAC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8DB8_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8DC8_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8DDC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8DE0_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8DFC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8E14_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8E2C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8E40_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8E5C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8E6C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8E80_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8E90_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8EA8_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8EBC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8ED8_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8EE8_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8EEC_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F04_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F18_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F2C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F3C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F50_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F64_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F68_DebugRandomPlay);

void func_800F7468_DebugRandomPlay(void) {
    func_8006E070(D_800F8FBA_DebugRandomPlay, 0);
    LoadStringIntoWindow(D_800F8FBA_DebugRandomPlay, "RANDOM PLAY", -1, -1);
    while (1) {
        if ((func_8006FCC0(D_800F8FBA_DebugRandomPlay)) != 0) {
            HuPrcVSleep();
        } else {
            break;
        }        
    }

    EndProcess(D_800F91C8_DebugRandomPlay);
    D_800F91C8_DebugRandomPlay = omAddPrcObj(func_800F750C_DebugRandomPlay, 0x3FFF, 0, 0);
    
    while (1) {
        HuPrcVSleep(); 
    }
}

void func_800F750C_DebugRandomPlay(void) { //TODO: fix call to func_8006DA5C
    char buffer[0x200];

    func_8006EB40(D_800F8FBC_DebugRandomPlay);
    func_8006EB80();
    func_8006DA5C(D_800F8FBC_DebugRandomPlay, (void*)((D_800F7DB8_DebugRandomPlay[D_800F8FB8_DebugRandomPlay].unk_00) >> 16), 0);
    sprintf(buffer, D_800F8F78_DebugRandomPlay); //D_800F8F78_DebugRandomPlay
    func_8007149C(D_800F8FC0_DebugRandomPlay, (u8*) buffer);
    LoadStringIntoWindow(D_800F8FBC_DebugRandomPlay, D_800F8FC0_DebugRandomPlay, -1, -1);
    while (1) {
        if (func_8006FCC0(D_800F8FBC_DebugRandomPlay) != 0) {
            HuPrcVSleep();
        } else {
            break;
        }
    }

    EndProcess(D_800F91C8_DebugRandomPlay);
    
    while (1) {
        HuPrcVSleep();
    }
    
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F75DC_DebugRandomPlay);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F783C_DebugRandomPlay);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", D_800F8F78_DebugRandomPlay);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7A_DebugRandomPlay/3014C0", func_800F7A50_DebugRandomPlay);

void func_800F7CA0_DebugRandomPlay(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
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

void func_800F7D50_DebugRandomPlay(void) {
    s32 i;
    for (i = 0; i < D_800F3778; i++) {}
}

void func_800F7D88_DebugRandomPlay(s32 arg0) {
    omOvlReturnEx(1);
}