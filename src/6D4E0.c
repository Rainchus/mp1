#include "common.h"

#define mp1SpaceCharacter 0x10
#define mp1UnkCharacter 0x20

extern TextWindow* D_800ED4B0;
extern s8 D_800ED722;
extern s8 D_800F3718;
extern s8 D_800F64C4;

void func_800710E4(s16, s16, s16, s16, s32);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006C8E0);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006CB1C);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006CB6C);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006CBB0);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006CC18);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006CD0C);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006CD3C);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006CD70);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006CDA0);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006CDDC);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006CE0C);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006CE64);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006CEA0);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006D010);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006D650);

void LoadStringIntoWindow(s16 win_id, void* string_id, s16 a, s16 b) {
    void* text;
    s32 tempVar;
    TextWindow* textWindow = &D_800ED4B0[win_id];

    if (textWindow->string != NULL) {
        if (textWindow->usingStringIDBool != 0) {
            func_8005B838(textWindow->string);
        }
    }
    
    textWindow->unk_34 = 1;
    
    if ((u32) string_id > 0x80000000U) { //is a pointer
        textWindow->usingStringIDBool = 0;
        textWindow->stringPtr = string_id;
    } else {
        textWindow->usingStringIDBool = 1;
        text = func_8005B7E8((u32)string_id); //get string from index
        textWindow->string = text;
        textWindow->stringPtr = text;
    }
    
    if (!(a < 0)) {
        textWindow->unk_2C = a;
    }
    
    else if (a == -2) {
        textWindow->unk_2C = (textWindow->unk_18 - func_8006D99C(textWindow->stringPtr, textWindow->unk_05)) / 2;
    }
    
    if (b >= 0) {
        textWindow->unk_2E = b;
    } else if (b == -2) {
        tempVar = -(textWindow->unk_05 < 1);
        tempVar = (tempVar & 0x0C);
        textWindow->unk_2E = (textWindow->unk_1A - (tempVar | 8)) / 2;
    }
    
    textWindow->unk_00 = 1;
    textWindow->unk_10 = 0;
}

s16 func_8006D93C(u8* arg0) {
    s16 var_a1 = 0;

    for (; *arg0 != 0; arg0++) {
        if ((*arg0 >= mp1UnkCharacter) | (*arg0 == mp1SpaceCharacter)) {
            var_a1 += 1;
        }
        
        if (((*arg0 + 0x80) & 0xFF) < 2U) {
            var_a1 -= 1;
        }
    }
    return var_a1;
}

s16 func_8006D99C(u8* arg0, s16 arg1) {
    s16 var_v1 = 0;

    for (; *arg0 != 0; arg0++) {
        if ((u8)(*arg0 + 0x80) >= 2) {
                var_v1 += (arg1 == 0) ? D_800C5E34[*arg0] : D_800C5F34[*arg0];
        }
    }
    return var_v1;
}

void func_8006DA1C(s16 arg0, s32 arg1, s32 arg2) {
    TextWindow* textWindow = &D_800ED4B0[arg0];

    textWindow->unk_06 &= ~arg1;
    textWindow->unk_06 |= arg2;
}

void func_8006DA5C(s16 arg0, void* arg1, s8 arg2) {
    TextWindow* textWindow = &D_800ED4B0[arg0];

    if (textWindow->unk_88[arg2] != NULL) {
        if (textWindow->unk_7B[arg2] != 0) {
            func_8005B838(textWindow->unk_88[arg2]);
        }
    }
    
    if (0x80000000U < (u32) arg1) { //if arg1 is stringID
        textWindow->unk_7B[arg2] = 0;
        textWindow->unk_88[arg2] = arg1;
        return;
    }
    
    textWindow->unk_7B[arg2] = 1;
    textWindow->unk_88[arg2] = func_8005B7E8((s32)arg1);
}

s16 func_8006DB3C(s16 arg0, s32 arg1, s16 arg2, s16 arg3, s16 arg4) {
    TextWindow* temp_s3 = &D_800ED4B0[arg0];
    s16 temp_v0_3;
    s16 i;
    void* file;

    for (i = 12; i < 20; i++) {
       if (temp_s3->unk_46[i] == -1) {
           break;
        }
    }

    if (i == 20) {
        return -1;
    }
 
    file = ReadMainFS(arg1);
    temp_v0_3 = func_800678A4(file);
    temp_s3->unk_46[i] = temp_v0_3;
    HuMemDirectFree(file);
    func_80067208(temp_s3->unk_44, i, temp_v0_3, arg4);
    func_80066DC4(temp_s3->unk_44, i, arg2, arg3);
    func_80067598(temp_s3->unk_44, i, 0);
    return i;
}

s16 func_8006DC7C(s16 arg0, s32 arg1, s16 arg2, s16 arg3, s16 arg4) {
    TextWindow* temp_s0 = &D_800ED4B0[arg0];
    SubTextWindow* temp_v1;
    s32 temp_v0;

    temp_v0 = func_8006DB3C(arg0, arg1, arg2, arg3, arg4);
    temp_v1 = &temp_s0->unk_F4[temp_s0->unk_10];
    temp_v1->unk2 = arg2;
    temp_v1->unk4 = arg3;
    temp_v1->unk6 = 0;
    temp_v1->unk8 = 0;
    temp_v1->unk0 = 1;
    temp_s0->unk_10 += 1;
    return temp_v0;
}

void func_8006DD30(s16 arg0, u8 arg1) {
    TextWindow* textWindow = &D_800ED4B0[arg0];
    textWindow->unk_05 = arg1;
}

TextWindow* func_8006DD60(s16 arg0) {
    return &D_800ED4B0[arg0];
}

s16 func_8006DD8C(s16 arg0, s16 arg1) {
    TextWindow* textWindow = &D_800ED4B0[arg0];
    return textWindow->unk_46[arg1];
}

void func_8006DDC8(s16 arg0, s32 arg1, s16 arg2) {
    TextWindow* textWindow = &D_800ED4B0[arg0];
    func_80066DC4(textWindow->unk_44, 0, arg1, arg2);
}

void func_8006DE20(s16 arg0, f32 arg1, f32 arg2) {
    TextWindow* temp_s1 = &D_800ED4B0[arg0];
    s16 i;

    temp_s1->unk_EC = arg1;
    temp_s1->unk_F0 = arg2;

    for (i = 0; i < 11; i++) {
        func_80067354(temp_s1->unk_44, i, arg1, arg2);
    }
}

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006DEC8);

void func_8006E01C(s16 arg0, f32 arg1) {
    TextWindow* textWindow = &D_800ED4B0[arg0];
    func_800673B0(textWindow->unk_44, 0, arg1);
}

void func_8006E070(s16 arg0, s32 arg1) {
    TextWindow* textWindow = &D_800ED4B0[arg0];
    
    textWindow->unk_03 = arg1;
    textWindow->unk_04 = arg1;
}

void func_8006E0A4(s16 arg0, s32 arg1) {
    TextWindow* temp_s1 = &D_800ED4B0[arg0];
    s16 i;

    temp_s1->unk_38 = arg1;

    for (i = 0; i < 20; i++) {
        func_80067384(temp_s1->unk_44, i, arg1);
    }

    if (temp_s1->unk_42 != -1) {
        func_80067384(temp_s1->unk_44, 11, (arg1 - 1));
    }
}

void func_8006E154(s16 arg0, s16 arg1) {
    TextWindow* temp_s0 = &D_800ED4B0[arg0];
    
    if (arg1 == 0) {
        func_800674BC(temp_s0->unk_44, 0, 0x8000);
    } else {
        func_80067480(temp_s0->unk_44, 0, 0x8000);
    }
    
    func_8006752C(temp_s0->unk_44, 0, arg1);
}

void func_8006E1E4(s16 arg0, s32 arg1) {
    TextWindow* textWindow = &D_800ED4B0[arg0];
    s16 i;

    for (i = 1; i < 10; i++) {
        func_8006752C(textWindow->unk_44, i, arg1);
    }

    func_8006752C(textWindow->unk_44, 0xA, (0xFF - arg1));
}

void func_8006E288(s16 arg0, s8 arg1) {
    TextWindow* textWindow = &D_800ED4B0[arg0];
    textWindow->unk_02 = arg1;
}

void func_8006E2B8(s16 arg0, u8 arg1, u8 arg2, u8 arg3) {
    TextWindow* textWindow = &D_800ED4B0[arg0];
    func_800674F4(textWindow->unk_44, 1, arg1, arg2, arg3);
}

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006E318);

s32 func_8006E87C(TextWindow* arg0) {
    s32 var_v1;

    arg0->unk_2C = (u16) (arg0->unk_2C + (arg0->unk_13 + arg0->unk_09));
    
    if (D_800C5DF2 == 0) {
        var_v1 = arg0->unk_07;
    } else if (arg0->unk_05 == 8) {
        var_v1 = D_800C5F34[*arg0->stringPtr];
    } else {
        var_v1 = D_800C5E34[*arg0->stringPtr];
    }
    
    if ((var_v1 + arg0->unk_2C) > (arg0->unk_24 + arg0->unk_28)) {
        if (*arg0->stringPtr >= 0x20) {
            return func_8006E93C(arg0, arg0);
        }
    }
    return 1;
}

s32 func_8006E93C(TextWindow* arg0, void* arg1) {
    arg0->unk_2C = arg0->unk_24;
    arg0->unk_2E = arg0->unk_2E + (arg0->unk_08 + arg0->unk_0A);
    return ((arg0->unk_2E + arg0->unk_08) > (arg0->unk_26 + arg0->unk_2A)) ^ 1;
}

void func_8006E984(TextWindow* arg0) {
    s16 i;
    
    for (i = 1; i < 10; i++) {
        if (arg0->unk_C0[i] != NULL) {
            func_8009B770(arg0->unk_C0[i], 0, (arg0->unk_1C * arg0->unk_1A) / 2);
        }
    }

    if (arg0->unk_E8 != NULL) {
        func_8009B770(arg0->unk_E8, 0, arg0->unk_18 * arg0->unk_1A);
    }
    
    arg0->unk_2C = arg0->unk_24;
    arg0->unk_2E = arg0->unk_26;
    arg0->unk_6E = 0;
}

void func_8006EA44(s16 arg0) {
    TextWindow* textWindow = &D_800ED4B0[arg0];
    
    if ((D_800C5DF0 & 7) < 6) {
        func_8006EEB8(arg0, 255, 0, textWindow->unk_30, textWindow->unk_32);
        func_8006EEB8(arg0, 255, textWindow->unk_12, (textWindow->unk_30 - 1), (textWindow->unk_32 - 1));
        return;
    }
    
    func_8006F3BC(arg0, (textWindow->unk_30 - 1), (textWindow->unk_32 - 1), (textWindow->unk_07 + 1), textWindow->unk_08 + 1);
}

void func_8006EB40(s16 win_id) {
    func_8006E984(&D_800ED4B0[win_id]);
}

void func_8006EB80(void) {
    D_800ED722 = 1;
}

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006EB90);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006EEB8);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006F3BC);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006F718);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006F9B0);

s16 func_8006FCC0(s16 arg0) {
    return D_800ED4B0[arg0].unk_00;
}

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006FCF0);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8006FE4C);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8007094C);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_80070D90);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_80070ED4);

void func_80070FF8(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4) {
    func_800710E4(-(~arg0 == 0), -(~arg1 == 0), -(~arg2 == 0), -(~arg3 == 0), arg4);
    func_800710E4(arg0, arg1, arg2, arg3, 1);
}

void func_800710A4(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    func_800710E4(arg0, arg1, arg2, arg3, 1);
}

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_800710E4);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_80071154);

void func_80071264(void) {
    D_800F3718 = 0;
    D_800F64C4 = 0;
}

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_80071278);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_800713F0);

u8 func_800713F0(u8*);

void func_8007149C(u8* arg0, u8* arg1) {
    for (; *arg1 != 0; arg0++, arg1 += 2) {
        *arg0 = func_800713F0(arg1);
    }
    *arg0 = 0;
}

void func_800714F0(s16 arg0, u8 arg1, u8 arg2, u8 arg3) {
    TextWindow* textWindow = &D_800ED4B0[arg0];
    
    textWindow->unk_0D = arg1;
    textWindow->unk_0E = arg2;
    textWindow->unk_0F = arg3;
    func_800674F4(textWindow->unk_44, 0, arg1, arg2, arg3);
}

void func_8007155C(s16 arg0, s32 arg1) {
    TextWindow* temp_v1 = &D_800ED4B0[arg0];

    temp_v1->unk_01 = (temp_v1->unk_01 & 0xF0) | arg1;
}

void func_80071598(s16 arg0) {
    TextWindow* textWindow = &D_800ED4B0[arg0];
    s16 i;

    for (i = 0; i < 10; i++) {
        if (textWindow->unk_C0[i] != NULL) {
            func_800674BC(textWindow->unk_44, i, 0x8000);
        }
    }
    
    if (textWindow->unk_E8 != NULL) {
        func_800674BC(textWindow->unk_44, 0xA, 0x8000);
    }
    
    if (textWindow->unk_42 != -1) {
        func_800674BC(textWindow->unk_44, 0xB, 0x8000);
    }
    
    textWindow->unk_06 |= 8;
}

void func_8007166C(s16 arg0) {
    TextWindow* textWindow = &D_800ED4B0[arg0];
    s16 i;

    for (i = 0; i < 10; i++) {
        if (textWindow->unk_C0[i] != NULL) {
            func_80067480(textWindow->unk_44, i, 0x8000);
        }
    }
    
    if (textWindow->unk_E8 != NULL) {
        func_80067480(textWindow->unk_44, 0xA, 0x8000);
    }
    
    if (textWindow->unk_42 != -1) {
        func_80067480(textWindow->unk_44, 0xB, 0x8000);
    }
    
    textWindow->unk_06 &= ~0x8;
}

void func_80071740(s16 arg0, s32 arg1) {
    TextWindow* textWindow = &D_800ED4B0[arg0];

    if (arg1 != 0) {
        textWindow->unk_06 |= 0x10;
    } else {
        textWindow->unk_06 &= ~0x10;
    }
}

void func_80071788(s32 arg0, s16 arg1) {
    TextWindow* textWindow = &D_800ED4B0[arg0];
    textWindow->unk_F4[arg1].unk0 = 2;
}

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_800717C0);

s16 func_8007186C(s32 arg0) {
    return D_800ED4B0[arg0].unk_11;
}

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_80071894);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_800718DC);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_8007194C);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_80071C8C);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_80071DE0);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_80071E80);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_80071FF4);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_80072080);

INCLUDE_ASM("asm/nonmatchings/6D4E0", func_80072108);

INCLUDE_RODATA("asm/nonmatchings/6D4E0", D_800CB750);

INCLUDE_RODATA("asm/nonmatchings/6D4E0", D_800CB774);

INCLUDE_RODATA("asm/nonmatchings/6D4E0", D_800CB798);

INCLUDE_RODATA("asm/nonmatchings/6D4E0", D_800CB7BC);
