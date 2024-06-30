#include "common.h"

void func_800F6B2C_TreasureDivers(omObjData*);
void func_800F6F18_TreasureDivers(omObjData*);
void func_800F7010_TreasureDivers(omObjData*);
void func_800F719C_TreasureDivers(omObjData*);
void func_800F7470_TreasureDivers(omObjData*);
void func_800F74E8_TreasureDivers(omObjData*);
void func_800F7560_TreasureDivers(omObjData*);
void func_800F75AC_TreasureDivers(omObjData*);
void func_800FA440_TreasureDivers(void);
void func_800FA678_TreasureDivers(Matrix4f);
void func_800FAA34_TreasureDivers(void*);
void func_800FBB0C_TreasureDivers(void);

s16 func_80076FF4(s16);
void guMtxL2F(Matrix4f, Mtx*);

extern omObjData* D_800F2AF8[];
extern omObjData* D_800F3FB0[];
extern s16 D_800FE6F2_TreasureDivers;
extern s16 D_800FE6F4_TreasureDivers;
extern s16 D_800FE6F6_TreasureDivers;
extern s16 D_800FE6F8_TreasureDivers;
extern s16 D_800FE6FA_TreasureDivers;
extern s16 D_800FE6FC_TreasureDivers;
extern s16 D_800FE6FE_TreasureDivers;
extern s16 D_800FE700_TreasureDivers;
extern s16 D_800FE702_TreasureDivers;
extern s16 D_800FE760_TreasureDivers;
extern omObjData* D_800FE764_TreasureDivers;
extern s16 D_800FE768_TreasureDivers;
extern omObjData* D_800FED08_TreasureDivers[];
extern s16 D_800FED30_TreasureDivers;
extern s32 D_800FED40_TreasureDivers[256];
extern Matrix4f D_800FF140_TreasureDivers;
extern s16 D_800FF180_TreasureDivers;
extern omObjData* D_800FF248_TreasureDivers;
extern omObjData* D_800FF24C_TreasureDivers[];
extern f32 D_800FF258_TreasureDivers;
extern s16 D_800FF25C_TreasureDivers;
extern Matrix4f D_800FFAE0_TreasureDivers;

// rodata (func_800F65E0_TreasureDivers)
extern const f64 D_800FE470_TreasureDivers; // 2.0

void func_800F65E0_TreasureDivers(void) {
    omObjData* temp_v0;
    omObjData* temp_v0_4;
    unk_Struct00* temp_s0_2;
    void* temp_v0_3;
    u8 temp_s0;
    s16 i;

    func_80029090(50);
    func_8001DE70(32);
    omInitObjMan(50, 0);
    func_80060088();

    temp_v0 = omAddObj(32730, 0, 0, -1, func_8005EB1C);
    omSetStatBit(temp_v0, 160);

    func_800178A0(1);

    temp_s0 = func_800178E8();
    func_80017660(temp_s0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 45.0f, 80.0f, 8000.0f);

    D_800F2BC0 = 0;
    D_800ED440 = 0;
    D_800FE6F2_TreasureDivers = 0;
    D_800FE6F4_TreasureDivers = 45;
    D_800FE6F8_TreasureDivers = 0;
    D_800FE6F6_TreasureDivers = 1;
    D_800FE6FA_TreasureDivers = 2700;
    D_800FE6FC_TreasureDivers = IsFlagSet(0x2B);

    for (i = 0; i < ARRAY_COUNT(D_800FED40_TreasureDivers); i++) {
        D_800FED40_TreasureDivers[i] = 0;
    }

    D_800FE702_TreasureDivers = 0;
    D_800FE700_TreasureDivers = 0;
    D_800FE6FE_TreasureDivers = 0;
    D_800FE760_TreasureDivers = -1;
    D_800FF180_TreasureDivers = 0;
    D_800FF25C_TreasureDivers = 0;
    D_800FED30_TreasureDivers = 0;

    temp_v0_3 = ReadMainFS(0x160014);
    func_800FAA34_TreasureDivers(temp_v0_3);
    FreeMainFS(temp_v0_3);
    func_800FA440_TreasureDivers();
    func_8005EB1C(temp_v0);

    temp_s0_2 = D_800C3110;
    D_800FF258_TreasureDivers = func_800AEAC0(temp_s0_2->unk_40 / 2.0) / func_800AEFD0(temp_s0_2->unk_40 / 2.0);

    guMtxL2F(D_800FF140_TreasureDivers, &temp_s0_2->unk_138);
    guMtxL2F(D_800FFAE0_TreasureDivers, &temp_s0_2->unk_138);
    func_800FA678_TreasureDivers(D_800FFAE0_TreasureDivers);
    func_800FBB0C_TreasureDivers();

    D_800FE768_TreasureDivers = func_80076FF4(124);
    D_800FF248_TreasureDivers = omAddObj(10, 0, 0, -1, &func_800F6B2C_TreasureDivers);

    D_800F2AF8[D_800ED440++] = temp_v0_4 = omAddObj(2, 9, 0, -1, &func_800F7010_TreasureDivers);
    omSetStatBit(temp_v0_4, 160);

    D_800F2AF8[D_800ED440++] = omAddObj(2, 6, 0, -1, &func_800F7560_TreasureDivers);

    for (i = 0; i < 4; i++) {
        D_800F3FB0[D_800F2BC0++] = omAddObj(3, 1, 50, -1, &func_800F719C_TreasureDivers);
    }

    for (i = 0; i < 10; i++) {
        D_800FED08_TreasureDivers[D_800FF25C_TreasureDivers++] = omAddObj(4, 1, 0, -1, &func_800F75AC_TreasureDivers);
    }

    D_800FF24C_TreasureDivers[D_800FED30_TreasureDivers++] = temp_v0_4 = omAddObj(5, 3, 0, -1, &func_800F7470_TreasureDivers);
    omSetStatBit(temp_v0_4, 160);

    D_800FF24C_TreasureDivers[D_800FED30_TreasureDivers++] = temp_v0_4 = omAddObj(5, 2, 0, -1, &func_800F74E8_TreasureDivers);
    omSetStatBit(temp_v0_4, 160);

    D_800FE764_TreasureDivers = omAddObj(0, 0, 0, -1, &func_800F6F18_TreasureDivers);

    func_800234B8(0, 128, 128, 128);
    func_800234B8(1, 255, 255, 255);
    func_80023504(1, 0.0f, 128.0f, 128.0f);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F6B2C_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F6B60_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F6EBC_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F6F18_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F6F90_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F7010_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F719C_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F7470_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F74E8_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F7560_TreasureDivers);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", D_800FE494_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F75AC_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F78BC_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F78D8_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F8B98_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F92A0_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F9580_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F9668_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F9728_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F98B8_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F9BAC_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F9CB0_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F9E08_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800F9E9C_TreasureDivers);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_04_TreasureDivers/EE9A0", func_800FA084_TreasureDivers);
