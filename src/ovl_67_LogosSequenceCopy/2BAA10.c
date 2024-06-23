#include "logos.h"

void func_800F6610_2BAA10(unkLogoStruct* arg0, s16 arg1, s16 arg2, s16 arg3, u16 arg4) {
    void* temp_s6;
    s32 i;
    u8 temp_s0;

    temp_s6 = ReadMainFS(0x110005);
    sprintf(D_800F5038, D_800F6F80, arg2);

    for (i = 0; i < 2; i++) {
        temp_s0 = D_800F5038[i];
        arg0->unkC[arg1] = func_800678A4(temp_s6);
        func_80067208(arg0->unkA, arg1, arg0->unkC[arg1], temp_s0 - 48);
        func_80067384(arg0->unkA, arg1, 0xA);
        func_800674BC(arg0->unkA, arg1, 0x1000);
        func_80066DC4(arg0->unkA, arg1, arg3, arg4);
        func_80067558(arg0->unkA, arg1, 255, 255, 255, 255);
        arg1 += 1;
        arg3 += 0x10;        
    }

    FreeMainFS(temp_s6);
}


INCLUDE_ASM(s32, "ovl_67_LogosSequenceCopy/2BAA10", func_800F6778_2BAB78);

void func_800F6AD4_2BAED4(void) {
    s32 var_s0;

    var_s0 = 1;
    InitObjSystem(0xA, 0xA);
    LeoDriveExistBool = func_800827C0() == 1;
    if (LeoDriveExistBool != 0) {
        D_800F6F70 = LeoDriveExist(0x95, 0x96, &D_800ECDE8, 8);
        if (D_800F6F70 != 0) {
            LeoDriveExistBool = 0;
        } else if (osGetMemSize() < 0x800000) { //if memsize is less than 8MB
            InitProcess(func_800F6778_2BAB78, 0x5000, 0, 0);
            D_800F6F70 = 0x2C;
            var_s0 = 0;
        }
    }
    if (var_s0 != 0) {
        omOvlGotoEx(0x66, 0, 0x91);
    }
}

void func_800F6BA0_2BAFA0(void) {
    unkLogoStruct sp10; //could be incorrect
    s32 mesg;

    osCreateMesgQueue(&D_800F7980, &D_800F7998, 1);
    func_800639F8(&sp10, &D_800F7980, 2);
    osRecvMesg(&D_800F7980, (OSMesg) &mesg, 1);
    if (mesg == 2) {
        func_8007FEA4();
    }
    func_80063A5C(&sp10);
    osDestroyThread(NULL);
}

INCLUDE_ASM(s32, "ovl_67_LogosSequenceCopy/2BAA10", func_800F6C1C_2BB01C); //https://decomp.me/scratch/rZb4x

void func_800F6C6C_2BB06C(void) {
    osSendMesg(&D_800F7980, 0, 1);
}

s32 func_800F6C94_2BB094(s32 arg0, s32 arg1, s32 arg2) {
    someStruct sp18;
    s32 sp38;

    func_800819F0(&sp18, 0, arg1, arg0, arg2, &D_800F6F90);
    osRecvMesg(&D_800F6F90, (OSMesg) &sp38, 1);
    return sp38;
}

INCLUDE_ASM(s32, "ovl_67_LogosSequenceCopy/2BAA10", func_800F6CEC_2BB0EC);

INCLUDE_ASM(s32, "ovl_67_LogosSequenceCopy/2BAA10", func_800F6E10_2BB210);
