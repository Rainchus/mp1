#include "KeyPaWay.h"

void func_800F65E0_1F62C0(void) {
    void* temp_s0;
    s32 i;

    InitObjSystem(60, 0);
    func_80060088();
    D_800EE984 = 0;
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    func_8001DE70(15);
    func_80029090(1);
    func_80009500();
    D_800FF538 = 0;
    
    for (i = 0; i < 4; i++) {
        if (!(gPlayers[i].unk_06 & 1)) {
            D_800FF538 += 1;
        }
    }
    
    func_800178A0(1);
    D_800FF564.x = 0;
    D_800FF564.y = -100.0f;
    D_800FF564.z = 1880.0f;
    D_800FF584.x = 0;
    D_800FF584.y = 300.0f;
    D_800FF584.z = 700.0f;
    D_800FF598.x = 0;
    D_800FF598.y = 1.0f;
    D_800FF598.z = 0;
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, &func_800FE33C_1FE01C), 0xA0);
    func_80023448(3);
    func_800234B8(0, 44, 44, 64);
    func_800234B8(1, 96, 96, 16);
    func_80023504(1, 100.0f, 80.0f, 100.0f);
    func_800234B8(2, 0, 0, 0);
    func_80023504(2, 100.0f, 80.0f, 100.0f);
    func_800234B8(3, 0, 0, 0);
    func_80023504(3, 100.0f, 80.0f, 100.0f);
    func_8005D98C(0, 4);
    func_8005D98C(1, 5);
    D_800FF548 = func_8005DB44(1);
    D_800FF594 = func_8005DB44(0);
    func_8005D8B8(func_8005D384(100, 0, 0, -1, &func_800FE2E8_1FDFC8), 0xA0);
    func_8005D384(10, 11, 37, 0, &func_800F8C54_1F8934);
    func_8005D384(10, 11, 37, 0, &func_800F8C70_1F8950);
    func_8005D384(10, 11, 37, 0, &func_800F8C8C_1F896C);
    func_8005D384(10, 11, 37, 0, &func_800F8CA8_1F8988);
    D_800FF558 = func_8005D384(15, 0, 0, -1, &func_800FA7E0_1FA4C0);
    func_8005D384(20, 6, 4, 1, &func_800FA3B0_1FA090);
    func_8005D384(20, 6, 4, 1, &func_800FA3D0_1FA0B0);
    func_8005D384(20, 6, 4, 1, &func_800FA3F0_1FA0D0);
    func_8005D384(20, 6, 4, 1, &func_800FA410_1FA0F0);
    func_8005D384(20, 6, 4, 1, &func_800FA430_1FA110);
    D_800FF590 = func_8005D384(30, 2, 0, -1, &func_800F76C8_1F73A8);
    D_800FF550 = func_8005D384(40, 10, 0, -1, &func_800F842C_1F810C);
    D_800FF554 = func_8005D384(40, 11, 0, -1, &func_800F8918_1F85F8);
    D_800FF560 = func_8005D384(50, 1, 0, -1, &func_800FB9D4_1FB6B4);
    func_8005D384(0, 0, 0, -1, &func_800F6BD8_1F68B8);
    D_800FF53C = func_8005D384(6, 6, 0, -1, &func_800F747C_1F715C);
    func_8005D384(0x2710, 0, 0, -1, &func_800FCC6C_1FC94C);
    D_800FF574 = func_8005D384(60, 0, 0, -1, &func_800FE710_1FE3F0);
    D_800FF55C = func_8005D384(40, 2, 0, -1, &func_800F6D98_1F6A78);
    D_800FF55C->unk_50 = func_80023684(sizeof(unkKeyPaWayStruct), 0x7918);
    func_8007B168(&D_800FF3B0, 1);
    temp_s0 = ReadMainFS(42);
    D_800FF534 = func_80039084(temp_s0);
    FreePerm(temp_s0);
    temp_s0 = ReadMainFS(38);
    D_800FF536 = func_80039084(temp_s0);
    FreePerm(temp_s0);
    D_800FF526 = IsFlagSet(43);
    D_800FF5A4 = 0;
    SetFadeInTypeAndTime(0, 16);
}

void func_800F6BD8_1F68B8(unkObjectStruct* arg0) {
    s32 i;

    D_800FF580 = 0;
    D_800FF544 = 0;
    D_800FF540 = 0;
    D_800FF532 = 30;
    D_800FF530 = 30;
    D_800FF514 = 0;
    D_800FF54C = 0;
    
    for (i = 0; i < 4; i++) {
        D_800FF516[i] = 0;
    }
    
    D_800ED430 = 1;
    arg0->func_ptr = &func_800F6C58_1F6938;
}


INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F6C58_1F6938);

void func_800F6D98_1F6A78(unkObjectStruct* arg0) {
    unkKeyPaWayStruct* temp_v0;

    temp_v0 = arg0->unk_50;
    temp_v0->unk_04 = 0;
    temp_v0->unk_08 = 0;
    arg0->unk_40[0] = LoadFormFile(0x400011, 0xD);
    arg0->unk_40[1] = LoadFormFile(0x400010, 0xD);
    func_80026040(arg0->unk_40[0]);
    arg0->func_ptr = NULL;
}

void func_800F6E04_1F6AE4(u16 arg0, f32 arg1, f32 arg2, f32 arg3) {
    unkKeyPaWayStruct* temp_v0;

    temp_v0 = D_800FF55C->unk_50;
    temp_v0->unk_04 = arg1;
    temp_v0->unk_08 = arg2;
    temp_v0->unk_0C = arg3;
    temp_v0->unk_00 = arg0;
    func_800258EC(D_800FF55C->unk_40[0], 4, 0);
    func_8005D8B8(D_800FF55C, 0xA0);
    D_800FF55C->func_ptr = &func_800F6E6C_1F6B4C;
}

void func_800F6E6C_1F6B4C(unkObjectStruct* arg0) {
    unkKeyPaWayStruct* temp_s0 = arg0->unk_50;
    f32 temp_f0;
    
    if (temp_s0->unk_00 != 0) {
        temp_s0->unk_00 -= 1;
    } else if ((func_8005FD5C() + D_800F64F8) == 0) {
        temp_f0 = temp_s0->unk_04 + temp_s0->unk_08;
        temp_s0->unk_04 = temp_f0;
        if (temp_s0->unk_0C < temp_f0) {
            temp_s0->unk_04 = temp_s0->unk_0C;
        }
    }
    func_80026174(arg0->unk_40[0], arg0->unk_40[1], temp_s0->unk_04);
}

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F6F10_1F6BF0);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F7134_1F6E14);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F747C_1F715C);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F76C8_1F73A8);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F7840_1F7520);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F7AE0_1F77C0);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F842C_1F810C);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F8514_1F81F4);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F8678_1F8358);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F8918_1F85F8);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F8A28_1F8708);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F8B94_1F8874);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F8C54_1F8934);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F8C70_1F8950);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F8C8C_1F896C);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F8CA8_1F8988);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F8CC4_1F89A4);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F92B8_1F8F98);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F9620_1F9300);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800F9A90_1F9770);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FA3B0_1FA090);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FA3D0_1FA0B0);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FA3F0_1FA0D0);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FA410_1FA0F0);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FA430_1FA110);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FA450_1FA130);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FA59C_1FA27C);

void func_800FA7E0_1FA4C0(unkObjectStruct* arg0) {
    arg0->unk_4C[0] = 0;
    arg0->func_ptr = &func_800FA7F4_1FA4D4;
}

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FA7F4_1FA4D4);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FAAF4_1FA7D4);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FAF28_1FAC08);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FB38C_1FB06C);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FB498_1FB178);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FB748_1FB428);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FB9D4_1FB6B4);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FBAD4_1FB7B4);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FBC98_1FB978);

void func_800FCC6C_1FC94C(void) {
    if ((D_800FF3A4 != 0) || (D_800F5144 != 0)) {
        func_800FE320_1FE000(0x83);
        func_800601D4(0x28);
    }
}

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FCCB0_1FC990);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FDA7C_1FD75C);

INCLUDE_ASM(s32, "ovl_2C_KeyPaWay/1F62C0", func_800FDE64_1FDB44);

unkObjectStruct* func_800FDFAC_1FDC8C(unkObjectStruct* arg0) {
    unkObjectStruct* sp10[6]; //likely some unknown struct
    unkObjectStruct* temp_s0;
    u16 var_a0;
    s32 i;
    unkObjectStruct* temp_s5 = arg0;
    u16 var_s3 = 15;
    unkObjectStruct* var_s4 = NULL;
    unkGlobalStruct_00* temp_s2;

    for (i = 0; i < 4; i++) {
        temp_s0 = D_800FF594[i];
        if (temp_s0 == temp_s5) {
            continue;
        } else {
            temp_s2 = temp_s0->unk_50;
            var_a0 = func_800FDE64_1FDB44(temp_s0->unk_18, temp_s0->unk_20, 700.0f, sp10);
            if ((var_a0 < var_s3) && (temp_s2->unkAE == 0)) {
                var_s3 = var_a0;
                var_s4 = temp_s0;
            }
        }
    }
    return var_s4;
}

unkObjectStruct* func_800FE06C_1FDD4C(unkObjectStruct* arg0) {
    unkObjectStruct* temp_s0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 var_f20 = 100000.0f;
    s32 i;

    for (i = 0; i < 4; i++) {
        temp_s0 = D_800FF594[i];
        if (temp_s0 != arg0) {
            temp_f0 = 0.0f - temp_s0->unk_18;
            temp_f0 *= temp_f0;
            temp_f12 = -850.0f - temp_s0->unk_20;
            temp_f0_2 = func_800B1750((temp_f0) + SQ(temp_f12));
            if (temp_f0_2 < var_f20) {
                var_f20 = temp_f0_2;
            }
        }        
    }
    return temp_s0;
}

s32 func_800FE134_1FDE14(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f2;
    f32 temp3 = 0.0f;
    f32 temp = 200.0f;
    f32 temp_f0 = -850.0f;
    f32 temp2 = 115.0f;
    
    temp_f2 = temp3 - arg0;
    temp_f2 *= temp_f2;
    temp_f0 = temp_f0 - arg2;
    temp_f22 = func_800B1750(temp_f2 + SQ(temp_f0));
    temp_f20 = arg3 + temp2;
    
    if ((temp_f22 <= func_800B1750(temp_f20 * temp_f20)) && (arg1 <= temp)) {
        return 1;
    } else {
        return 0;
    }
}

f32 func_800FE1F0_1FDED0(f32 arg0, f32 arg1) {
    f32 var_f12 = fabsf(arg0 - arg1);

    if (var_f12 > 180.0f) {
        var_f12 = 360.0f - var_f12;
    }

    return var_f12;
}
