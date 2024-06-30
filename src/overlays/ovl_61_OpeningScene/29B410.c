#include "common.h"
#include "29B410.h"
#include "engine/process.h"

void func_800F65E0_OpeningScene(void) {
    Vec3s sp18;
    Vec3s sp28;
    omObjData* temp_s0;

    func_80062450();
    D_800C5972 = 0;
    D_800C59A6 = -1;
    D_800F64F2 = 1;
    InitCameras(1);
    func_80029090(1);
    func_8001DE70(25);
    omInitObjMan(50, 20);
    func_80060088();
    func_8006CEA0();
    func_8005AD18();
    
    sp18 = D_800FD4A0_OpeningScene;
    sp28 = D_800FD4AC_OpeningScene;

    func_800FB670_OpeningScene(&sp18, &sp28, 1200.0f);
    func_800FB7F8_OpeningScene(20.0f, 80.0f, 8000.0f);
    temp_s0 = omAddObj(0x7FDA, 0, 0, -1, func_800FB810_OpeningScene);
    omSetStatBit(temp_s0, 0xA0);
    func_800FB810_OpeningScene(temp_s0);
    func_80023448(3);
    func_800234B8(0, 0x78, 0x78, 0x78);
    func_800234B8(1, 0x40, 0x40, 0x60);
    func_80023504(1, 50.0f, 50.0f, 100.0f);
    func_800234B8(2, 0, 0, 0);
    func_800234B8(3, 0, 0, 0);
    D_800FD730_OpeningScene[1] = omAddPrcObj(&func_800FB86C_OpeningScene, 0x300, 0x2000, 0);
}

//what section are the D_80110450 ish addresses?

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800F6788_OpeningScene);

// void func_800F6788_OpeningScene(omObjData* arg0) {
//     s32 pad[2]; //required to match stack alignment
    
//     if (arg0->work[1] != 0) {
//         arg0->work[1]--;
//         return;
//     }
    
//     arg0->work[0]++;
    
//     if (arg0->work[0] >= 7) {
//         arg0->work[0] = 0;
//     }
    
//     arg0->work[1] = 0x50;
    
//     func_800FBD48_OpeningScene(D_80110460_OpeningScene, D_80110448_OpeningScene[arg0->work[0]] + 12, 40.0f);
// }

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800F6804_OpeningScene);

// omObjData* func_800F6804_OpeningScene(unkGlobalStruct_00* arg0) {
//     omObjData* temp_s0;

//     temp_s0 = omAddObj(0x1000, 0, 0, -1, &func_800F6788_OpeningScene);
//     omSetRot(temp_s0, 0, 0, 0);
//     omSetSca(temp_s0, arg0->unk_18 + arg0->unk_0C, arg0->unk_1C + arg0->unk_10, arg0->unk_20.floatingPoint + arg0->unk_14);
//     omSetTra(temp_s0, D_80110450_OpeningScene->unk_0C, D_80110450_OpeningScene->unk_10, D_80110450_OpeningScene->unk_14);
//     temp_s0->work[0] = 2;
//     temp_s0->work[1] = 48;
//     temp_s0->unk_50 = arg0;
//     return temp_s0;
// }

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800F68D4_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800F69F0_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD4D0_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD4DC_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD4E8_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800F6AB8_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800F7E50_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800F86D0_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800F8D3C_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800F916C_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800F983C_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800F98F0_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FA990_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FAEFC_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FB358_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD508_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD514_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD520_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD52C_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD538_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD544_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD550_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD55C_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD568_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD574_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD58C_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD5A4_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD5B0_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD5BC_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD5C8_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD5D4_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD5E0_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD5EC_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD600_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD60C_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD618_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD624_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD630_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD684_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD69C_OpeningScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", D_800FD6A8_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FB40C_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FB608_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FB670_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FB79C_OpeningScene);

void func_800FB7F8_OpeningScene(f32 x, f32 y, f32 z) {
    D_800FD6F4_OpeningScene.x = x;
    D_800FD6F4_OpeningScene.y = y;
    D_800FD6F4_OpeningScene.z = z;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FB810_OpeningScene);

void func_800FB864_OpeningScene(void) {
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FB86C_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FB91C_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FB97C_OpeningScene);

s32 func_800FBAC0_OpeningScene(void) {
    func_800178A0(1);
    func_800FC394_OpeningScene(0);
    LoadBackgroundData(&D_FE2310);
    func_8004B1B8();
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FBAFC_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FBB94_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FBC9C_OpeningScene);

Object* func_800FBCC0_OpeningScene(s32 arg0, void* arg1) {
    Object* temp_v0;

    temp_v0 = CreateObject(arg0, arg1);
    func_80025F60(*temp_v0->unk_3C->unk_40, 0x800);
    func_80025F60(*temp_v0->unk_40->unk_40, 0x400);
    return temp_v0;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FBD14_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FBD48_OpeningScene);

void func_800FBD7C_OpeningScene(void) {
    func_8004E184();
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FBD98_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FBEA8_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FBEEC_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC0BC_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC0EC_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC110_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC134_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC17C_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC1F0_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC264_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC2B8_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC394_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC48C_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC4C0_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC4F4_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC528_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC5CC_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC6BC_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC724_OpeningScene);

void func_800FC758_OpeningScene(void) {
    func_800FC724_OpeningScene();
    HuPrcSleep(2);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC77C_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FC850_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FCAB0_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FCB9C_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FCC3C_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FCD20_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FCDCC_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FCE9C_OpeningScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_61_OpeningScene/29B410", func_800FCECC_OpeningScene);

void func_800FCEE8_OpeningScene(f32 arg0) {
    D_800FD794_OpeningScene = arg0;
}
