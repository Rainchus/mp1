#include "common.h"
#include "62140.h"


INCLUDE_ASM(s32, "62140", func_80061540);

INCLUDE_ASM(s32, "62140", func_80061638);

s32 func_80061714(void) {
    s16 i;

    for (i = 0; i < 4; i++) {
        func_80061784(&i);
    }
    return 0;
}

void func_80061758(void) {
    Vec3s sp10;

    func_800642FC(&sp10, &func_80061714, 0, 1);
}

s32 func_80061784(s16* arg0) {
    u8 sp10;
    s16 temp_a2;
    s32 ret;

    if (osPfsIsPlug(&D_800EE960, &sp10) != 0) {
        sp10 = 0;
    }
    
    temp_a2 = *arg0;
    
    if ((sp10 >> temp_a2) & 1) {
        ret = osPfsInitPak(&D_800EE960, &D_800D90D0[temp_a2], temp_a2);
    } else {
        ret = 1;
    }
    return ret;
}

void func_80061808(s16 arg0) {
    Vec3s sp10;
    func_800642FC(&sp10, &func_80061784, &arg0, 2);
}

void func_80061838(s16* arg0) {
    osPfsRepairId(&D_800D90D0[*arg0]);
}


void func_80061874(s16 arg0) {
    Vec3s sp10;
    func_800642FC(&sp10, func_80061838, &arg0, 2);
}

void func_800618A4(OSPfs* arg0) { // TODO: fix argument
    arg0->channel = 0;
    arg0->queue = NULL;
    if (osPfsNumFiles(&D_800D90D0[((s16*)arg0)[0]], (s32*) &arg0->queue, (s32*) &arg0->channel) == 0) {
        osPfsFreeBlocks(&D_800D90D0[((s16*)arg0)[0]], (void*) arg0->id);
    }
}

s32 func_80061930(s16 arg0, s32* arg1, s32* arg2, s32* arg3) {
    Vec3s sp10;
    unk62140_2 sp20;
    sp20.unk_00 = arg0;

    func_800642FC(&sp10, &func_800618A4, &sp20, 2);
    *arg1 = sp20.unk_04;
    *arg2 = sp20.unk_08;
    *arg3 = sp20.unk_0C;
    return sp10.z;
}

void func_800619A0(OSPfs* arg0) { // TODO: fix argument
    u32 i = arg0->status;
    osPfsFileState(&D_800D90D0[((s16*)arg0)[0]], (s32) arg0->queue, (OSPfsState *) &arg0->channel);
}
 
INCLUDE_ASM(s32, "62140", func_800619E8);

INCLUDE_ASM(s32, "62140", func_80061A3C);

INCLUDE_ASM(s32, "62140", func_80061A98);

INCLUDE_ASM(s32, "62140", func_80061B3C);

INCLUDE_ASM(s32, "62140", func_80061C00);

INCLUDE_ASM(s32, "62140", func_80061CB4);

INCLUDE_ASM(s32, "62140", func_80061D30);

INCLUDE_ASM(s32, "62140", func_80061D64);

INCLUDE_ASM(s32, "62140", func_80061DD4);

INCLUDE_ASM(s32, "62140", func_80061E10);

INCLUDE_ASM(s32, "62140", func_80061F24);

INCLUDE_ASM(s32, "62140", func_80061F60);

INCLUDE_ASM(s32, "62140", func_80061FA0);

INCLUDE_ASM(s32, "62140", func_80061FE8);

INCLUDE_ASM(s32, "62140", HuRomDmaCodeRead);

INCLUDE_ASM(s32, "62140", func_80062140);

INCLUDE_ASM(s32, "62140", func_800621D8);

INCLUDE_ASM(s32, "62140", func_8006223C);

INCLUDE_ASM(s32, "62140", func_800622BC);

s16 func_80062364(s32 xPosStart, s32 yPosStart, s32 width, s32 height, s32 rgba) {
    box* boxPtr;
    s32 i;

    if (D_800F64E4 >= 4) {
        return -1;
    }

    for (i = 0; i < 4; i++) {
       if (D_800ED448[i].activeBool == 0) {
            break;
        }
    }

    boxPtr = &D_800ED448[i];
    boxPtr->activeBool = 1;
    boxPtr->xPosStart = xPosStart;
    boxPtr->yPosStart = yPosStart;
    boxPtr->width = width;
    boxPtr->height = height;
    boxPtr->rgba = rgba;
    D_800F64E4++;
    return i;
}

void func_80062408(s16 arg0) {
    if (D_800F64E4 != 0) {
        D_800ED448[arg0].activeBool = 0;
        D_800F64E4 = D_800F64E4 - 1;
    }
}

void func_80062450(void) {
    s32 i;
    D_800F64E4 = 0;

    for (i = 0; i < 4; i++) {
        D_800ED448[i].activeBool = 0;
    }
}

void func_8006248C(s8 arg0, s8 arg1, s8 arg2) {
    D_800F09E4.unk_00 = arg0;
    D_800F09E4.unk_01 = arg1;
    D_800F09E4.unk_02 = arg2;
    D_800F09E4.unk_03 = D_800F09E4.unk_04 = D_800F09E4.unk_05 = 0;
    D_800EE310 = 1;
}

void func_800624BC(s8 arg0, s8 arg1, s8 arg2, s8 arg3, u8 arg4, u8 arg5, u8 arg6, u8 arg7, u8 arg8) {
    D_800F09E4.unk_03 = arg0;
    D_800F09E4.unk_04 = arg1;
    D_800F09E4.unk_05 = arg2;
    D_800F09E4.unk_06 = arg3;
    D_800F09E4.unk_07 = arg4;
    D_800F09E4.unk_08 = arg5;
    D_800F09E4.unk_09 = arg6;
    D_800F09E4.unk_0A = arg7;
    D_800F09E4.unk_0B = arg8;
}

void func_80062500(void) { 
    D_800F09E4.unk_03 = D_800F09E4.unk_04 = D_800F09E4.unk_05 = 0;
}

void func_80062518(void) {
    D_800EE310 = 0;
}

void func_80062524(s16 arg0, u8* arg1) {
    u8* temp_v0;
    
    if (&D_800D9378[arg0] != NULL) {
        temp_v0 = (u8*)&D_800D9378[arg0];
        for (; *arg1 != 0; temp_v0++, arg1++) {
            *temp_v0 = *arg1;
        }
        *temp_v0 = 0;
    }
}

INCLUDE_ASM(s32, "62140", func_8006257C);
