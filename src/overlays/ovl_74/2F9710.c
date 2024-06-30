#include "common.h"
#include "spaces.h"
#include "engine/process.h"

typedef struct testStruct2 {
s16 unk_00;
u16 unk_02;
} testStruct2;

typedef struct unkUserData {
char unk_00[0x0C];
Vec3f vec1;
Vec3f vec2;
} unkUserData;

void func_8005B860(s32);
extern testStruct2 D_800F6F00_name_74[];
void func_8005C3FC(s32, s32);
void func_8005CC3C(void);
void func_800F6610_name_74(void);
void func_800F68E8_name_74(void);
void func_800F6988_name_74(void);
void func_800F6C88_name_74(void);
extern EventTableEntry D_800F6FD0_name_74;
void func_800F666C_name_74(void);
void func_800F683C_name_74(void);
void func_800F67CC_name_74(void);
extern Object* D_800F7020_name_74;
extern Object* D_800F7024_name_74;
void func_800F6908_name_74(void);

void func_800F6610_name_74(void) {
    testStruct2* temp = D_800F6F00_name_74;
    for (; temp->unk_00 >= 0; temp++) {
        if (func_8005CE48(temp->unk_02) != 0) {
            SetSpaceType(temp->unk_00, 1);
        }
    }
}

void func_800F666C_name_74(void) {
    Object* temp_v1;
    playerMain* player;

    omInitObjMan(0x50, 0x28);
    func_80060088();
    InitCameras(2);
    func_80023448(1);
    func_800234B8(0, 0x78, 0x78, 0x78);
    func_800234B8(1, 0x40, 0x40, 0x60);
    func_80023504(1, -100.0f, 100.0f, 300.0f);
    func_8005C3FC(0x51, 0x50);
    func_80052E84(0);
    player = GetPlayerStruct(0);
    func_8003E174(player->playerObj);
    player->playerObj->unk_0A |= 2;
    func_800F68E8_name_74();
    func_800F6988_name_74();
    func_800F6C88_name_74();
    EventTableHydrate(&D_800F6FD0_name_74);
    func_800F6610_name_74();
    func_8005CC3C();
    func_80060128(0x46);
}

void func_800F6758_name_74(void) {
    func_800F666C_name_74();
}

void func_800F6774_name_74(void) {
    SetPlayerOntoChain(0, 0, 0);
    func_800F666C_name_74();
}

void func_800F67A0_name_74(void) {
    SetPlayerOntoChain(0, 0, 7);
    func_800F666C_name_74();
}

void func_800F67CC_name_74(void) {
    unkUserData* temp_s1 = HuPrcCurrentGet()->user_data;
    playerMain* temp_s2 = GetPlayerStruct(-1);
    Vec3f* vec = &temp_s1->vec2;

    while (1) {
        HuPrcVSleep();
        func_800A0E80(vec, &temp_s2->playerObj->coords, &temp_s1->vec1);
        func_8003D408(vec);        
    }
}

void func_800F683C_name_74(void) {
    Object* obj;

    if (D_800F7020_name_74 == NULL) {
        obj = CreateObject(0x6AU, NULL);
        func_8003E174(obj);
        D_800F7020_name_74 = obj;
        obj->unk_0A |= 2;
        func_800A0D00(&obj->xScale, 0.6f, 0.6f, 0.6f);
        obj->unk_30 = 100.0f;
        func_800A0D50(&obj->coords, &GetSpaceData(0)->coords);
        omAddPrcObj(func_800F67CC_name_74, 0x4800, 0, 0)->user_data = obj;
    }
}

void func_800F68E8_name_74(void) {
    D_800F7020_name_74 = 0;
    func_800F683C_name_74();
}

void func_800F6908_name_74(void) {
    Object* temp_v0;

    if (D_800F7024_name_74 == NULL) {
        temp_v0 = CreateObject(0xEU, NULL);
        func_8003E174(temp_v0);
        D_800F7024_name_74 = temp_v0;
        temp_v0->unk_0A |= 2;
        func_800A0D00(&temp_v0->xScale, 1.4f, 1.4f, 1.4f);
        func_800A0D50(&temp_v0->coords, &GetSpaceData(1)->coords);
    }
}

void func_800F6988_name_74(void) {
    D_800F7024_name_74 = 0;
    func_800F6908_name_74();
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_74/2F9710", func_800F69A8_name_74);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_74/2F9710", func_800F6B7C_name_74);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_74/2F9710", func_800F6C88_name_74);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_74/2F9710", func_800F6CE8_name_74);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_74/2F9710", func_800F6D0C_name_74);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_74/2F9710", func_800F6D84_name_74);

void func_800F6DA0_name_74(void) {
    func_8005B860(0x1B);
    PlaySound(0x94);
}

void func_800F6DC4_name_74(void) {
    func_8005B860(0x1C);
}

void func_800F6DE0_name_74(void) {
    func_8005B860(0x1D);
    PlaySound(0xBF);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_74/2F9710", func_800F6E04_name_74);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_74/2F9710", func_800F6E20_name_74);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_74/2F9710", func_800F6E3C_name_74);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_74/2F9710", func_800F6E60_name_74);
