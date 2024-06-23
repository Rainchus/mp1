#include "MushroomMixup.h"

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F65E0_1784E0);

void func_800F6CA8_178BA8(void) {
    switch((D_800F5144 ^ 1) < 1) {
        case 0:
            break;
        default:
            func_800601D4(0x28);
            func_8002890C(0, 0, 0);
            omOvlReturnEx(1);
            break;
    }
}

#ifdef NON_EQUIVALENT
void func_800F6CF4_178BF4(void) {
    s16 loopInteriorIteration;
    s16 loopIteration;
    s16 var_v1;
    s32 randomByte;
    s32 arrayOrStructIndex;
    s32 conditionLessThanFour;

    for (loopIteration = 0; loopIteration < 4; loopIteration++) {
        // randomByte = (s32) rand8() % (4 - loopIteration); // first 0-3, then 0-2, etc.
        rand8();
        // loopInteriorIteration = 0;

        for (loopInteriorIteration = 0; loopInteriorIteration < 4; loopInteriorIteration++) {
loop_2:
        var_v1 = loopIteration;

        // run when not first loop
        if (loopIteration != 0) {
            arrayOrStructIndex = var_v1 * 2;
loop_4:
            if (*(&D_800FC8AC + arrayOrStructIndex) != loopInteriorIteration) {
                var_v1 -= 1;
                arrayOrStructIndex = var_v1 * 2;
                if (var_v1 != 0) {
                    goto loop_4;
                }
            }
            // if (var_v1 == 0) {
                // goto block_7;
            //     if (randomByte != 0) {
            //         randomByte -= 1;
            //     }
            // }
            // continue; // goto block_9;
        }
        
// block_7:
        // conditionLessThanFour = loopInteriorIteration < 4;
        // if (randomByte != 0) { // loop condition???
        //     randomByte -= 1;
// block_9:
            // loopInteriorIteration += 1;
            // conditionLessThanFour = loopInteriorIteration < 4;
            // if (conditionLessThanFour != FALSE) {
            //     goto loop_2;
            // }
        }
        // if (conditionLessThanFour == FALSE) {
            loopInteriorIteration = loopIteration;
        // }
        *(&D_800FC8AE + (loopIteration * 2)) = loopInteriorIteration;
    }
}
#else
INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F6CF4_178BF4);
#endif

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F6DF4_178CF4);

void func_800F7088_178F88(s16 arg0) {
    func_80025EB4(arg0, 1, 1);
    func_80026040(arg0);
}

void func_800F70C4_178FC4(void) {
    LoadFormBinary(ReadMainFS(0x2C0001), 0x20D);
}

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F70F0_178FF0);

void func_800F7188_179088(s16 arg0) {
    PlaySound((s32) arg0);
}

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F71A8_1790A8);

s32 func_800F7574_179474(void) {
    s32 index;
    s32 flags;

    index = 0; // goes from 0 -> 6

    // check if all flags are 1(?)
    flags = (s32) D_800FC98C; // is D_800FC98C a 1-byte array of length 6?
loop_1:
    if ((flags >> index) & 1) {
        index += 1;
        if (index >= NUM_OF_MUSHROOMS) {
            return TRUE;
        }
        goto loop_1;
    }
    return FALSE;
}

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F75B0_1794B0);

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F7FCC_179ECC);

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

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F82AC_17A1AC);

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F846C_17A36C);

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F84F0_17A3F0);

void func_800F8840_17A740(void) {
}

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F8848_17A748);

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F88AC_17A7AC);

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F8A58_17A958);

void func_800F9364_17B264(unkObjectStruct* arg0) {
    if (D_800FC994 != 0) {
        D_800F6524.x += D_800FC89C;
        D_800F6524.y += D_800FC99C;
        D_800F6524.z += D_800FC998;
        D_800EE98C += D_800FC988;
        D_800FC994 -= 1;
    }
    else {
        arg0->func_ptr = NULL;
    }
}

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F93F0_17B2F0);

#ifdef NON_EQUIVALENT
void func_800F9510_17B410(unkObjectStruct* arg0, s32 arg1) {
    // s16 a = arg0->unk_40->unk_00.signed16[0];
    f32 b = arg0->unk_18;
    f32 c = arg0->unk_1C;
    f32 d = arg0->unk_20;
    arg1 = arg0->unk_40->unk_00.signed32 * 2 + (arg1 * 2);
    return func_80025798(arg1, b, c, arg0->unk_20);
}
#else
INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F9510_17B410);
#endif

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F9548_17B448);

INCLUDE_ASM(s32, "ovl_1A_MushroomMixup/1784E0", func_800F9890_17B790);

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

void func_800F9E9C_17BD9C(unkObjectStruct* arg0) {
    arg0->unk_4C[0] = 0;
    arg0->unk_4C[1] = 0;
    arg0->func_ptr = &func_800F9CF0_17BBF0;
}
