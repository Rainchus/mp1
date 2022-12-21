#include "PR/os.h"
#include "3014C0.h"

INCLUDE_ASM(s32, "ovl_7A_DebugRandomPlay/3014C0", func_800F65E0_3014C0);

void func_800F698C_30186C(unkObjectStruct* arg0) {
    func_800F69FC_3018DC(arg0, 0);
}

void func_800F69A8_301888(unkObjectStruct* arg0) {
    func_800F69FC_3018DC(arg0, 1);
}

void func_800F69C4_3018A4(unkObjectStruct* arg0) {
    func_800F69FC_3018DC(arg0, 2);
}

void func_800F69E0_3018C0(unkObjectStruct* arg0) {
    func_800F69FC_3018DC(arg0, 3);
}

INCLUDE_ASM(s32, "ovl_7A_DebugRandomPlay/3014C0", func_800F69FC_3018DC);

void func_800F6BBC_301A9C(void) {
}

INCLUDE_ASM(s32, "ovl_7A_DebugRandomPlay/3014C0", func_800F6BC4_301AA4);

INCLUDE_ASM(s32, "ovl_7A_DebugRandomPlay/3014C0", func_800F6DA0_301C80);

INCLUDE_ASM(s32, "ovl_7A_DebugRandomPlay/3014C0", func_800F6FA0_301E80);

INCLUDE_ASM(s32, "ovl_7A_DebugRandomPlay/3014C0", func_800F70BC_301F9C);

void func_800F72D4_3021B4(void) {

    do {
        D_800F8FB8 = GetRandomByte() % 0x46;
    } while ((D_800F7DB0[D_800F8FB8].unk_00) >> 24 != 0);
    
    func_800F7360_302240(D_800F8FB8);
}

INCLUDE_ASM(s32, "ovl_7A_DebugRandomPlay/3014C0", func_800F7360_302240);

INCLUDE_ASM(s32, "ovl_7A_DebugRandomPlay/3014C0", func_800F741C_3022FC);

void func_800F7468_302348(void) {
    func_8006E070(D_800F8FBA, 0);
    LoadStringIntoWindow(D_800F8FBA, (void*)&D_800F8F6C, -1, -1);
    while (1) {
        if ((func_8006FCC0(D_800F8FBA)) != 0) {
            SleepVProcess();
        } else {
            break;
        }        
    }

    EndProcess(D_800F91C8);
    D_800F91C8 = InitProcess(func_800F750C_3023EC, 0x3FFF, 0, 0);
    
    while (1) {
        SleepVProcess(); 
    }
}

void func_800F750C_3023EC(void) { //TODO: fix call to func_8006DA5C
    char buffer[0x200];

    func_8006EB40(D_800F8FBC);
    func_8006EB80();
    func_8006DA5C(D_800F8FBC, (void*)((D_800F7DB8[D_800F8FB8].unk_00) >> 16), 0);
    sprintf(buffer, D_800F8F78);
    func_8007149C(D_800F8FC0, (u8*) buffer);
    LoadStringIntoWindow(D_800F8FBC, D_800F8FC0, -1, -1);
    while (1) {
        if (func_8006FCC0(D_800F8FBC) != 0) {
            SleepVProcess();
        } else {
            break;
        }
    }

    EndProcess(D_800F91C8);
    
    while (1) {
        SleepVProcess();
    }
    
}

INCLUDE_ASM(s32, "ovl_7A_DebugRandomPlay/3014C0", func_800F75DC_3024BC);

INCLUDE_ASM(s32, "ovl_7A_DebugRandomPlay/3014C0", func_800F783C_30271C);

INCLUDE_ASM(s32, "ovl_7A_DebugRandomPlay/3014C0", func_800F7A50_302930);

void func_800F7CA0_302B80(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
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


void func_800F7D50_302C30(void) {
    s32 i;
    for (i = 0; i < D_800F3778; i++) {}
}

void func_800F7D88_302C68(void) {
    func_8005DFB8(1);
}
