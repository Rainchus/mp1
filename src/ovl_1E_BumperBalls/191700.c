#include "common.h"
#include "191700.h"

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F65E0_191700);

void func_800F6A60_191B80(Object* arg0) {
    D_800FCFF4 = 0;
    D_800FCD28 = 0;
    D_800FCD24 = 0;
    D_800FCD16 = 60;
    D_800FCD14_13D784 = 30;
    D_800FCD0E = 0;
    D_800FCD10 = 4;
    arg0->func_ptr = (*func_800F6AB4_191BD4);
}

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F6AB4_191BD4);

void func_800F6D98_191EB8(Object* arg0) {
    arg0->unk_40->unk_00 = LoadFormFile(0x310000, 0x20289);
    arg0->unk_40->unk_02 = LoadFormFile(0x380002, 0x48D);
    arg0->unk_40->unk_04 = LoadFormFile(0x380003, 0x48D);
    func_800FB2EC_19640C();
    arg0->func_ptr = (*func_800F6E10_191F30);
}

void func_800F6E10_191F30(Object* arg0) { //unused arg?
    func_800FC618_197738();
}

void func_800F6E2C_191F4C(s32 arg0) {
    LoadFormFile(0x310002, 0x69D);
    func_800F6EBC_191FDC(arg0, 0);
}

void func_800F6E68_191F88 (s32 arg0) {
    func_800F6EBC_191FDC(arg0, 1);
}

void func_800F6E84_191FA4 (s32 arg0) {
    func_800F6EBC_191FDC(arg0, 2);
}

void func_800F6EA0_191FC0 (s32 arg0) {
    func_800F6EBC_191FDC(arg0, 3);
}

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F6EBC_191FDC);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F74E8_192608);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F7EC4_192FE4);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F821C_19333C);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F8304_193424);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F8384_1934A4);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F84AC_1935CC);

void func_800F8538_193658(s32 arg0) {
    func_800F85A8_1936C8(arg0, 0);
}

void func_800F8554_193674(s32 arg0) {
    func_800F85A8_1936C8(arg0, 1);
}

void func_800F8570_193690(s32 arg0) {
    func_800F85A8_1936C8(arg0, 2);
}

void func_800F858C_1936AC(s32 arg0) {
    func_800F85A8_1936C8(arg0, 3);
}

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F85A8_1936C8);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F87F4_193914);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F8D68_193E88);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F8E40_193F60);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F9588_1946A8);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F95CC_1946EC);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F98CC_1949EC);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F9A7C_194B9C);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F9B70_194C90);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F9CA8_194DC8);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F9CC8_194DE8);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F9EE0_195000);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800F9F30_195050);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800FA36C_19548C);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800FA3A0_1954C0);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800FA510_195630);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800FA5A4_1956C4);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800FA950_195A70);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800FAB54_195C74);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800FAE60_195F80);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800FB1E0_196300);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800FB298_1963B8);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800FB2D0_1963F0);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800FB2EC_19640C);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800FBA20_196B40);

INCLUDE_ASM(s32, "ovl_1E_BumperBalls/191700", func_800FC618_197738);
