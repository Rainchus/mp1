#include "common.h"
#include "spaces.h"
#include "include/engine/process.h"

typedef struct testStruct2 {
s16 unk_00;
u16 unk_02;
} testStruct2;

typedef struct unkUserData {
char unk_00[0x0C];
Vec3f vec1;
Vec3f vec2;
} unkUserData;

void func_8005CC3C(void);
void func_8005C3FC(s32, s32);
extern s16 D_800ED154;
void func_8005B860(s32);
void func_800F67BC_2FA2FC(void);
void func_800F682C_2FA36C(void);
extern s32 D_800F6C5C;
extern Object* D_800F6D60;
extern testStruct2 D_800F6C40;
extern EventTableEntry D_800F6D04;
void func_800F6934_2FA474(void);
void func_800F69F4_2FA534(void);
s32 func_8005B984(s32);
s32 func_8005BAB0(s32);
void func_8005CD7C(s32, s32, s32, s32);
void func_8005BD10(s32);

void func_800F6610_2FA150(void) {
    testStruct2* temp = &D_800F6C40;

    for (; temp->unk_00 >= 0; temp++) {
        if (func_8005CE48(temp->unk_02) != 0) {
            SetSpaceType(temp->unk_00, 1);
        }
    }
}

void func_800F666C_2FA1AC(void) {
    Object* temp_v1;
    playerMain* player;

    InitObjSystem(0x50, 0x28);
    func_80060088();
    InitCameras(2);
    func_80023448(1);
    func_800234B8(0, 0x78, 0x78, 0x78);
    func_800234B8(1, 0x40, 0x40, 0x60);
    func_80023504(1, -100.0f, 100.0f, 300.0f);
    func_8005C3FC(0x52, 0x51);
    func_80052E84(0);
    player = GetPlayerStruct(0);
    func_8003E174(player->playerObj);
    player->playerObj->unk_0A |= 2;
    func_800F69F4_2FA534();
    EventTableHydrate(&D_800F6D04);
    func_800F6610_2FA150();
    func_8005CC3C();
    func_80060128(0x46);
}

void func_800F6748_2FA288(void) {
    func_800F666C_2FA1AC();
}

void func_800F6764_2FA2A4(void) {
    SetPlayerOntoChain(0, 0, 0);
    func_800F666C_2FA1AC();
}

void func_800F6790_2FA2D0(void) {
    SetPlayerOntoChain(0, 0, 8);
    func_800F666C_2FA1AC();
}

void func_800F67BC_2FA2FC(void) {
    unkUserData* temp_s1 = HuPrcCurrentGet()->user_data;
    playerMain* temp_s2 = GetPlayerStruct(-1);
    Vec3f* vec = &temp_s1->vec2;

    while (1) {
        HuPrcVSleep();
        func_800A0E80(vec, &temp_s2->playerObj->coords, &temp_s1->vec1);
        func_8003D408(vec);        
    }
}

void func_800F682C_2FA36C(void) {
    Object* temp_s0;
    playerMain* temp_s1;

    temp_s0 = HuPrcCurrentGet()->user_data;
    temp_s1 = GetPlayerStruct(-1);
    HuPrcSleep(0x28);
    
    while (1) {
        HuPrcVSleep();
        if (GetAbsSpaceIndexFromChainSpaceIndex(temp_s1->curChainIndex, temp_s1->curSpaceIndex) != 6) {
            continue;
        }
        
        func_8003E8B8(temp_s0, 0, 0, 6, 0);
        HuPrcSleep(0xC);
        PlaySound(0x9D);
        HuPrcSleep(0xC);
        PlaySound(0x9D);
        HuPrcSleep(0x12);
        PlaySound(0x9D);
        
        while (!(func_8003E940(temp_s0) & 1)) {
            HuPrcVSleep();
        }
        
        func_8003E8B8(temp_s0, -1, 0, 6, 2);
        HuPrcSleep(0xA);
        continue;    
    }
}

void func_800F6934_2FA474(void) {
    Object* temp_v0;

    if (D_800F6D60 == NULL) {
        temp_v0 = CreateObject(0xC, &D_800F6C5C);
        func_8003E174(temp_v0);
        D_800F6D60 = temp_v0;
        temp_v0->unk_0A |= 2;
        func_800A0D00(&temp_v0->xScale, 1.2f, 1.2f, 1.2f);
        func_800A0D50(&temp_v0->coords, &GetSpaceData(0)->coords);
        InitProcess(func_800F67BC_2FA2FC, 0x4800, 0, 0)->user_data = temp_v0;
        InitProcess(func_800F682C_2FA36C, 0x4800, 0, 0)->user_data = temp_v0;
    }
}

void func_800F69F4_2FA534(void) {
    D_800F6D60 = 0;
    func_800F6934_2FA474();
}

void func_8005B860(s32);
void func_8005BD1C(s32);

void func_800F6A14_2FA554(void) {
    func_8005B860(-1);
    func_8005BD1C(0);
}

void func_800F6A38_2FA578(void) {
    s32 temp_s0 = func_8005BAB0(0x4B5);
    s16 temp_s1 = func_8005B984(0);

    func_80070D90(temp_s0);
    if (temp_s1 == 0) {
        func_8005CD7C(2, 6, 1, 0);
        func_80058910(-1, 0);
    }
    EndProcess(NULL);
}

void func_800F6AB0_2FA5F0(void) {
    D_800ED154 = 6;
    func_8005B860(-2);
}

void func_800F6AD8_2FA618(void) {
    func_8005B860(0x20);
}

void func_800F6AF4_2FA634(void) {
    func_8005B860(0x21);
}

void func_800F6B10_2FA650(void) {
    func_8005B860(0x22);
}

void func_800F6B2C_2FA66C(void) {
    func_8005B860(0x23);
}

void func_800F6B48_2FA688(void) {
    func_8005B860(0x24);
}

void func_800F6B64_2FA6A4(void) {
    func_8005B860(0x25);
}

void func_800F6B80_2FA6C0(void) {
    func_8005B860(-1);
    func_8005BD10(0);
}

void func_800F6BA4_2FA6E4(void) {
    s16 temp_s0 = func_8005BAB0(0x4B6);
    s16 temp_s1 = func_8005B984(0);

    func_80070D90(temp_s0);

    if (temp_s1 == 0) {
        func_8005CD7C(4, 5, 1, 1);
        func_80058910(-1, 0);
    }

    EndProcess(NULL);
}
