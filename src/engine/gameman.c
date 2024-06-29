#include "common.h"
#include "engine/process.h"

void func_8001DFC0_1EBC0(void);
void func_80025658_26258(s32, s32);
void func_8002B6C8_2C2C8(void);
void func_800621D8_62DD8(void);
void omMain(void);
void func_80018B2C_1972C(void);
void func_8001E5A0_1F1A0(s32);
void func_800247FC_253FC(void*, s32);
void func_80052CCC_538CC(s32, s32);
void func_800594E4_5A0E4(s32, s32);
extern s8 D_800ED558_ED5E8[];
extern s16 D_800F3778_F3808;
extern s32 D_800ED538_ED5C8;
s32 IsFlagSet(s32);
void func_8000B00C_BC0C(s32, s32, void*, s32);
void* func_8000B2BC_BEBC(void);
void func_8000B364_BF64(s32);
void func_8000BE98_CA98(Addr*, Addr*, s32, s32, s32);
void func_80010C30_11830(Addr*, s32, s32, s32);
void func_8001A3DC_1AFDC(void);
void func_8001A428_1B028(void);
void func_8001A454_1B054(void);
void func_8001A498_1B098(void);
void func_80023B40_24740(void* (*)(s32), void (*)(void*), u16, u16, s32, s32);
void func_8003B710_3C310(void);
s32 func_8005B0C4_5BCC4(void);
void func_8005B6D0_5C2D0(Addr*);
void func_80062140_62D40(void);
void func_80072190_72D90(void);
extern Addr D_1778BC0;
extern Addr D_1832AE0;
extern Addr D_1BB8460;
extern Addr D_1CECC60;
extern Addr D_1CED490;
extern s16 D_800C599E_C659E;
extern s16 D_800C59A0_C65A0;
extern f32 D_800ED6C0_ED750[];
extern u16 D_800ED726_ED7B6;
extern Process* D_800F2BD0_F2C60;
extern Process* D_800F3700_F3790;
extern u8 D_800F3705_F3795;
extern u16 D_800F3F30_F3FC0;
extern Vec3f D_800F52F8_F5388[];
extern u16 D_800F64EC_F657C;
extern Vec3f D_800F6550_F65E0[];
extern Addr D_FCB860;

void func_8001A0F0_1ACF0(void) {
    file_1ACF0_struct* temp_s1;
    s32 temp_s0;
    s32 i;
    
    HuPrcVSleep();
    D_800F33EC_F347C.y = 325.0f;
    D_800F33EC_F347C.x = 0.0f;
    D_800F33EC_F347C.z = 0.0f;
    D_800EE98C_EEA1C = 2250.0f;
    D_800F6524_F65B4.x = D_800F6524_F65B4.y = D_800F6524_F65B4.z = D_800F33EC_F347C.x;
    
    for (i = 0; i < 4; i++) {
        D_800F6550_F65E0[i].x = 325.0f;
        D_800F6550_F65E0[i].y = D_800F6550_F65E0[i].z = 0.0f;
        D_800ED6C0_ED750[i] = 2250.0f;
        D_800F52F8_F5388[i].x = D_800F52F8_F5388[i].y = D_800F52F8_F5388[i].z = 0.0f;
    }
    
    D_800F3705_F3795 = 3;
    D_800F3F30_F3FC0 = 0x1000;
    D_800ED726_ED7B6 = 0x2004;
    D_800F64EC_F657C = 0x180;
    func_80072190_72D90();
    func_80023B40_24740(HuMemDirectMalloc, HuMemDirectFree, D_800F3F30_F3FC0, D_800ED726_ED7B6, D_800F64EC_F657C, D_800F3705_F3795);
    InitCameras(1);
    func_80062140_62D40();
    func_8005B6D0_5C2D0(&D_FCB860);
    func_8003B710_3C310();
    D_800F2BD0_F2C60 = HuPrcCreate(func_8001A3DC_1AFDC, 0xF000, 0x3000, 0);
    HuPrcCreate(func_8001A428_1B028, 0x4000, 0x3000, 0);
    D_800F3700_F3790 = HuPrcCreate(func_8001A454_1B054, 0x1000, 0x3000, 0);
    func_8001A498_1B098();
    temp_s0 = func_8005B0C4_5BCC4();
    temp_s1 = func_8000B2BC_BEBC();
    
    if (temp_s0 == 1) {
        omOvlCallEx(0x68, 0, 0x81);
    } else {
        omOvlCallEx(0x67, 0, 0x81);
    }
    
    func_80010C30_11830(&D_1BB8460, 0, 0, 0);
    func_8000BE98_CA98(&D_1778BC0, &D_1832AE0, 0, 0, 0);
    D_800C59A0_C65A0 = 1;
    D_800C599E_C659E = 1;
    temp_s1->unk_24 = &D_1CECC60;
    temp_s1->unk_28 = &D_1CED490;
    temp_s1->unk_40 = 0x14;
    func_8000B00C_BC0C(0x6E, 0, (void*)0x802E0000, 0x80000);
    
    if (IsFlagSet(0x10) != 0) {
        func_8000B364_BF64(0);
    } else {
        func_8000B364_BF64(1);
    }

    HuPrcKill(HuPrcCurrentGet());
    
    while (1) {
        HuPrcVSleep();
    }
    
}

void func_8001A3DC_1AFDC(void) {
    while (1) {
        HuPrcVSleep();
        func_8002B6C8_2C2C8();
        func_8001DFC0_1EBC0();
        func_80025658_26258(0x02000000, 0x3D0800);
        func_800621D8_62DD8();        
    }
}

void func_8001A428_1B028(void) {
    while (1) {
        HuPrcVSleep();
        omMain();       
    }
}

void func_8001A454_1B054(void) {
    while (1) {
        HuPrcVSleep();
        func_80018B2C_1972C();
        func_8001E5A0_1F1A0(2);
        func_800247FC_253FC(&D_800ED538_ED5C8, 2);        
    }
}

void func_8001A498_1B098(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if (i < D_800F3778_F3808) {
            D_800ED558_ED5E8[i] = 0;
            gPlayers[i].unk_06 = gPlayers[i].unk_06 & ~1;
        } else {
            D_800ED558_ED5E8[i] = 1;
            gPlayers[i].unk_06 = gPlayers[i].unk_06 | 1;
        }
        
        gPlayers[i].flags = i;
        gPlayers[i].coinAmount = 10;
        gPlayers[i].miniGameCoins = 0;
        gPlayers[i].unk_00 = i;
        func_80052CCC_538CC(i, 1);
        gPlayers[i].starAmount = 0;
    }
    
    func_800594E4_5A0E4(0, 0x4650);
    func_800594E4_5A0E4(1, 0xE10);
    func_800594E4_5A0E4(2, 0xE10);
    func_800594E4_5A0E4(3, 0x4650);
    func_800594E4_5A0E4(5, 0xE10);
    func_800594E4_5A0E4(6, 0xE10);
    func_800594E4_5A0E4(7, 0xE10);
}
