#include "spaces.h"


extern s16 D_800D86B0;

extern s16 D_800D86EC;
extern s16 D_800D86EE;
extern s16 D_800D86F0;

INCLUDE_ASM(s32, "57330", func_80056730);

INCLUDE_ASM(s32, "57330", func_800567D4);

INCLUDE_ASM(s32, "57330", func_800568A4);

// INCLUDE_ASM(s32, "57330", func_80056984);
void func_80056984(void) {
    D_800D86B0 = 0;
}

INCLUDE_ASM(s32, "57330", func_80056990);

INCLUDE_ASM(s32, "57330", func_8005699C);

INCLUDE_ASM(s32, "57330", func_80056A08);

INCLUDE_ASM(s32, "57330", func_80056AF4);

INCLUDE_ASM(s32, "57330", func_80056B78);

INCLUDE_ASM(s32, "57330", func_80056E30);

INCLUDE_ASM(s32, "57330", func_80056E3C);

INCLUDE_ASM(s32, "57330", func_80056E48);

INCLUDE_ASM(s32, "57330", func_80056E6C);

INCLUDE_ASM(s32, "57330", func_80056F40);

INCLUDE_ASM(s32, "57330", func_80056FA8);

INCLUDE_ASM(s32, "57330", func_8005700C);

INCLUDE_ASM(s32, "57330", func_80057208);

INCLUDE_ASM(s32, "57330", func_8005727C);

INCLUDE_ASM(s32, "57330", func_800582E4);

INCLUDE_ASM(s32, "57330", func_8005835C);

INCLUDE_ASM(s32, "57330", func_800584F0);

INCLUDE_ASM(s32, "57330", ExecBoardScene);

INCLUDE_ASM(s32, "57330", func_800587BC);

INCLUDE_ASM(s32, "57330", func_800587EC);

// INCLUDE_ASM(s32, "57330", func_80058818);
void func_80058818(s16 arg0, s16 arg1) {
    D_800D86EC = 0x10;
    D_800D86EE = arg0;
    D_800D86F0 = arg1;
    func_80056984();
}

// INCLUDE_ASM(s32, "57330", func_8005884C);
extern void func_8004A510();                               /* extern */
extern void func_8004A520();                               /* extern */
extern void func_8004A7A4();                               /* extern */
extern void func_8004A7DC();                               /* extern */
extern void func_8004B5C4(f32);                            /* extern */
extern f32 func_8004B5D0();                                /* extern */
extern void func_8004B838(f32);                            /* extern */
extern f32 func_8004B844();                                /* extern */
void func_8005884C(Vec3f *coords) {
    f32 temp_f20;
    f32 temp_f22;

    func_8004A7DC();
    func_8004A7A4();
    temp_f22 = func_8004B844();
    func_8004B838(-1.0f);
    temp_f20 = func_8004B5D0();
    func_8004B5C4(1.0f);
    func_8004A510();
    if (coords == NULL) {
        coords = &GetPlayerStruct(-1)->playerObj->coords;
    }
    func_8004B5DC(coords);
    SleepVProcess();
    func_8004A520();
    func_8004B5C4(temp_f20);
    func_8004B838(temp_f22);
}