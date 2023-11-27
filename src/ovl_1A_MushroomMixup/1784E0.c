#include "common.h"
#include "MushroomMixup.h"

#define NUM_OF_MUSHROOMS 7

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F65E0_1784E0);

void func_800F6CA8_178BA8(void) {
    switch((D_800F5144 ^ 1) < 1) {
        case 0:
            break;
        default:
            func_800601D4(0x28);
            func_8002890C(0, 0, 0);
            func_8005DFB8(1);
            break;
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F6CF4_178BF4);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F6DF4_178CF4);

void func_800F7088_178F88(s16 arg0) {
    func_80025EB4(arg0, 1, 1);
    func_80026040(arg0);
}

void func_800F70C4_178FC4(void) {
    LoadFormBinary(ReadMainFS(0x2C0001), 0x20D);
}

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F70F0_178FF0);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F7188_179088);

INCLUDE_RODATA("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", D_800FC740_17E640);

INCLUDE_RODATA("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", D_800FC794_17E694);

INCLUDE_RODATA("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", D_800FC7B0_17E6B0);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F71A8_1790A8);

s32 func_800F7574_179474(void) {
    s32 index;
    s32 flags;

    index = 0; // goes from 0 -> 6

    // check if all flags are 1(?)
    flags = (s32) D_800FC98C_17E710; // is D_800FC98C_17E710 a 1-byte array of length 6?
    while (1) {
        if ((flags >> index) & 1) {
            index += 1;
            if (index >= NUM_OF_MUSHROOMS) {
                return TRUE;
            }
        } else {
             return FALSE;
        }   
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F75B0_1794B0);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F7FCC_179ECC);

u8 func_800F8260_17A160(unkObjectStruct* arg0) {
    s32 var_a1;

    var_a1 = 0;
    if ((arg0->unk_1C < 50.0f) && (arg0->unk_4C[2] != 1)) {
        arg0->unk_4C[2] = 1;
    }
    if (arg0->unk_4C[2] != 0) {
        var_a1 = 1;
    }
    return var_a1;
}

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F82AC_17A1AC);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F846C_17A36C);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F84F0_17A3F0);

void func_800F8840_17A740(void) {
}

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F8848_17A748);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F88AC_17A7AC);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F8A58_17A958);

void func_800F9364_17B264(unkObjectStruct* arg0) {
    if (D_800FC994_17E710 != 0) {
        D_800F6524.x += D_800FC89C_17E710;
        D_800F6524.y += D_800FC99C_17E710;
        D_800F6524.z += D_800FC998_17E710;
        D_800EE98C += D_800FC988_17E710;
        D_800FC994_17E710 -= 1;
    }
    else {
        arg0->func_ptr = NULL;
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F93F0_17B2F0);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F9510_17B410);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F9548_17B448);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F9890_17B790);

void func_800F9CF0_17BBF0(unkObjectStruct* arg0) {
    u8 temp_v0;
    u8 temp_v0_2;

    switch (arg0->unk_4C[0]) {
    case 0:
        temp_v0 = arg0->unk_4C[1];
        arg0->unk_4C[1] = temp_v0 + 1;
        if (temp_v0 >= 0x2E) {
            arg0->unk_4C[0] = 1;
            arg0->unk_4C[1] = 0;
        }
        D_800EE98C = 2766.0f;
        D_800F33EC.y = 309.0f;
        D_800F33EC.x = 0.0f;
        D_800F33EC.z = 0.0f;
        D_800F6524.x = 4.0f;
        D_800F6524.y = 188.0f;
        D_800F6524.z = -219.0f;
        return;
    case 1:
        temp_v0_2 = arg0->unk_4C[1];
        arg0->unk_4C[1] = temp_v0_2 + 1;
        if (temp_v0_2 < 0x1E) {
            D_800EE98C += 36.666668f;
            D_800F6524.x += 2.0f;
            return;
        }
        arg0->unk_4C[0] = 2;
    case 2:
        D_800EE98C = 3866.0f;
        D_800F33EC.y = 309.0f;
        D_800F33EC.x = 0.0f;
        D_800F33EC.z = 0.0f;
        D_800F6524.x = 64.0f;
        D_800F6524.y = 188.0f;
        D_800F6524.z = -214.0f;
        arg0->func_ptr = NULL;
        return;
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F9E9C_17BD9C);
// void func_800F9E9C_17BD9C(unkObjectStruct* arg0) {
//     arg0->unk_4C[0] = 0;
//     arg0->unk_4C[1] = 0;
//     arg0->func_ptr = &func_800F9CF0_17BBF0;
// }

//there should be a file split here, but something weird with the data/rodata occurs

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800F9EC0_17BDC0);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FA320_17C220);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FA3C4_17C2C4);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FA454_17C354);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FA53C_17C43C);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FA664_17C564);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FAAE8_17C9E8);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FABE4_17CAE4);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FAF90_17CE90);

void func_800FB0FC_17CFFC(unkObjectStruct* arg0) {
    func_80025B34(arg0->unk_40[0]);
}

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FB11C_17D01C);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FB238_17D138);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FBB8C_17DA8C);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FBE30_17DD30);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FBE90_17DD90);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FBEEC_17DDEC);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FBF4C_17DE4C);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FBFB0_17DEB0);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC068_17DF68);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC114_17E014);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC1C0_17E0C0);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC26C_17E16C);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC318_17E218);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC3C4_17E2C4);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC46C_17E36C);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC4A4_17E3A4);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC4FC_17E3FC);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC554_17E454);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC5AC_17E4AC);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC604_17E504);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC65C_17E55C);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC6C8_17E5C8);

INCLUDE_ASM("asm/nonmatchings/ovl_1A_MushroomMixup/1784E0", func_800FC6E4_17E5E4);
