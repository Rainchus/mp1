#include "common.h"
#include "180C0.h"

INCLUDE_ASM(s32, "180C0", func_800174C0);

INCLUDE_ASM(s32, "180C0", func_800174F4);

u16 LoadFormFile(s32 arg0, s32 arg1) {
    return LoadFormBinary(ReadMainFS(arg0), arg1);
}

s16 func_8001755C(s32 arg0) {
    return LoadFormBinary(ReadMainFS(arg0), 0x1D);
}

u8 GetRandomByte(void) {
    D_800C2FF4 = D_800C2FF4 * 0x41C64E6D + 0x3039;
    return (D_800C2FF4 + 1) >> 16;
}

INCLUDE_ASM(s32, "180C0", LoadOverlay);

INCLUDE_ASM(s32, "180C0", func_80017660);

INCLUDE_ASM(s32, "180C0", func_800176C4);

INCLUDE_ASM(s32, "180C0", func_8001775C);

INCLUDE_ASM(s32, "180C0", func_800177B0);

u16 ReadImgPackand(s32 arg0, s32 arg1, s32 arg2) {
    u16 temp_s0;
    void* temp_v0;

    temp_v0 = ReadMainFS(arg0);
    temp_s0 = func_8001E00C(temp_v0, arg1, arg2 );
    FreePerm(temp_v0);
    return temp_s0;
}

s16 func_80017850(s32 arg0, s32 arg1, char* arg2) {
    return func_80038A9C(arg0, ReadMainFS(arg1), 0, arg2);
}

void func_800178A0(s32 arg0) {
    D_800C3000 = (u8) arg0;
    InitCameras((s32) D_800C3000);
    D_800C3110->unk_40 = 45.0f;
    D_800C3001 = 0;
}

s16 func_800178E8(void) {
    s16 temp_s0;

    temp_s0 = D_800C3001;
    func_8001D8A0(D_800C3001, &func_8002A0E4, &D_800EE738);
    D_800C3001 += 1;
    return temp_s0;
}

INCLUDE_ASM(s32, "180C0", func_80017940);

INCLUDE_ASM(s32, "180C0", func_800179C0);

INCLUDE_ASM(s32, "180C0", func_80017A50);

INCLUDE_ASM(s32, "180C0", func_80017A60);

INCLUDE_ASM(s32, "180C0", func_80017B4C);

INCLUDE_ASM(s32, "180C0", func_80017BB0);

INCLUDE_ASM(s32, "180C0", func_80017C0C);

INCLUDE_ASM(s32, "180C0", func_80017D1C);

INCLUDE_ASM(s32, "180C0", func_80017DB0);

INCLUDE_ASM(s32, "180C0", func_8001802C);

INCLUDE_ASM(s32, "180C0", func_80018450);

INCLUDE_ASM(s32, "180C0", func_8001846C);

INCLUDE_ASM(s32, "180C0", func_80018490);

INCLUDE_ASM(s32, "180C0", func_800184A8);

INCLUDE_ASM(s32, "180C0", func_800184BC);

INCLUDE_ASM(s32, "180C0", func_800185A4);

INCLUDE_ASM(s32, "180C0", func_8001863C);

INCLUDE_ASM(s32, "180C0", func_800186A8);

INCLUDE_ASM(s32, "180C0", func_800186C8);

INCLUDE_ASM(s32, "180C0", func_800186E4);

INCLUDE_ASM(s32, "180C0", func_8001874C);

INCLUDE_ASM(s32, "180C0", func_800187D0);
