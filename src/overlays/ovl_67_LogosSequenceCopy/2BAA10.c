#include "logos.h"

s32 D_800F6F70_LogosSequenceCopy = 0;
s32 D_800F6F74_LogosSequenceCopy[] = {0x00110000, 0x00110001, 0x00110002};

void func_800F6610_LogosSequenceCopy(unkLogoStruct* arg0, s16 arg1, s16 arg2, s16 arg3, u16 arg4) {
    void* temp_s6;
    s32 i;
    u8 temp_s0;

    temp_s6 = ReadMainFS(0x110005);
    sprintf(D_800F5038, "%02d", arg2);

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


INCLUDE_ASM("asm/nonmatchings/overlays/ovl_67_LogosSequenceCopy/2BAA10", func_800F6778_LogosSequenceCopy);

void func_800F6AD4_LogosSequenceCopy(void) {
    s32 var_s0;

    var_s0 = 1;
    omInitObjMan(0xA, 0xA);
    LeoDriveExistBool = func_800827C0() == 1;
    if (LeoDriveExistBool != 0) {
        D_800F6F70_LogosSequenceCopy = LeoDriveExist(0x95, 0x96, &D_800ECDE8, 8);
        if (D_800F6F70_LogosSequenceCopy != 0) {
            LeoDriveExistBool = 0;
        } else if (osGetMemSize() < 0x800000) { //if memsize is less than 8MB
            omAddPrcObj(func_800F6778_LogosSequenceCopy, 0x5000, 0, 0);
            D_800F6F70_LogosSequenceCopy = 0x2C;
            var_s0 = 0;
        }
    }
    if (var_s0 != 0) {
        omOvlGotoEx(0x66, 0, 0x91);
    }
}

void func_800F6BA0_LogosSequenceCopy(void) {
    unkLogoStruct sp10; //could be incorrect
    s32 mesg;

    osCreateMesgQueue(&D_800F7980_LogosSequenceCopy, &D_800F7998_LogosSequenceCopy, 1);
    func_800639F8(&sp10, &D_800F7980_LogosSequenceCopy, 2);
    osRecvMesg(&D_800F7980_LogosSequenceCopy, (OSMesg) &mesg, 1);
    if (mesg == 2) {
        func_8007FEA4();
    }
    func_80063A5C(&sp10);
    osDestroyThread(NULL);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_67_LogosSequenceCopy/2BAA10", func_800F6C1C_LogosSequenceCopy); //https://decomp.me/scratch/rZb4x

void func_800F6C6C_LogosSequenceCopy(void) {
    osSendMesg(&D_800F7980_LogosSequenceCopy, 0, 1);
}

s32 func_800F6C94_LogosSequenceCopy(s32 arg0, s32 arg1, s32 arg2) {
    someStruct sp18;
    s32 sp38;

    func_800819F0(&sp18, 0, arg1, arg0, arg2, &D_800F6F90_LogosSequenceCopy);
    osRecvMesg(&D_800F6F90_LogosSequenceCopy, (OSMesg) &sp38, 1);
    return sp38;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_67_LogosSequenceCopy/2BAA10", func_800F6CEC_LogosSequenceCopy);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_67_LogosSequenceCopy/2BAA10", func_800F6E10_LogosSequenceCopy);
