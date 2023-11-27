#include "common.h"
#include "WhackAPlant.h"

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F65E0_131FA0);

void func_800F6B8C_13254C(void) {
    s32 i = 0;
    
    for (i = 0; i < D_800F3778; i++) {}

}

void func_800F6BC4_132584(unkObjectStruct* arg0) {
    s16 temp_s2;
    s32 i;

    D_800FB740_137050 = 0;
    D_800FB69A_137050 = 0;
    D_800FB6F4_137050 = 0;
    D_800FB710_137050[1] = 0;

    for (i = 0; i < 9; i++) {
        temp_s2 = func_8001E00C((void*)-1, 0x68D, 8);
        D_800ECDE0[temp_s2].unk_02 = D_800FB6BA_137050;
        func_80025930(D_800ECDE0[temp_s2].unk_00, 0x60000000, 0x60000000);
        D_800FB6C0_137050[i] = temp_s2;
        D_800FB6EA_137050[i] = 0;
    }

    for (i = 0; i < 9; i++) {
        temp_s2 = func_8001E00C((void*)-1, 0x68D, 8);
        D_800ECDE0[temp_s2].unk_02 = D_800FB6BC_137050;
        func_80025930(D_800ECDE0[temp_s2].unk_00, 0x60000000, 0x60000000);
        D_800FB6D8_137050[i] = temp_s2;
        func_8001E2F8(temp_s2, 0xE0);
        func_8001E360(temp_s2, 0xFF, 0xFF, 0xBE);
    }

    D_800ED430 = 1;
    arg0->func_ptr = &func_800F6D54_132714;
}

void func_800F6D54_132714(void) {
    switch (D_800FB740_137050) {
    case 0:
        func_800FA078_135A38();
        break;
    case 1:
        break;
    case 2:
        func_800FA1E0_135BA0();
        break;
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F6DBC_13277C);

void func_800F6FE4_1329A4(unkObjectStruct* arg0) {
    unkGlobalStruct_00* temp_s0;
    
    D_800F2AF8[D_800ED440++] = arg0;
    temp_s0 = func_80023684(UNK_SIZE_2C, 0x7918);
    arg0->unk_50 = temp_s0;
    func_8009B770(temp_s0, 0, UNK_SIZE_2C);
    temp_s0->unk_04 = 1;
    temp_s0->unk_05 = 1;
    func_80009058(arg0, 170.0f, 170.0f, -320.0f, -320.0f, 320.0f, 320.0f);
    func_80008FB8(arg0, 0.5f);
    arg0->func_ptr = NULL;
}

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F70AC_132A6C);

void func_800F7570_132F30(unkObjectStruct* arg0) {
    unkGlobalStruct_00* temp_s1 = arg0->unk_50;

    if (D_800FB60A_136FCA < 0x69) {
        func_8005D95C(arg0, arg0->unk_18, arg0->unk_1C + PI, arg0->unk_20);
        func_80017DB0(arg0);
    } else {
        D_800FB710_137050[0] = 3;
        arg0->func_ptr = &func_800F7714_1330D4;
        func_800258EC(D_800FB6F8_137050->unk_40[0], 0x1C00, 0x400);
        temp_s1->unk_3C = 0.0f;
    }

    D_800FB60A_136FCA += 1;
    D_800FB724_137050.x = func_800AEAC0(D_800FB60C_136FCC) * D_800FB610_136FD0;
    D_800FB724_137050.z = func_800AEFD0(D_800FB60C_136FCC) * D_800FB610_136FD0;
    D_800FB724_137050.y = D_800FB614_136FD4 + 270.0f;
    D_800FB718_137050 = D_800FB618_136FD8 + 270.0f;
    D_800FB60C_136FCC -= 3.4285715f;
    D_800FB610_136FD0 = D_800FB610_136FD0 + 7.561905f;
    D_800FB614_136FD4 = D_800FB614_136FD4 + 7.6190476f;
    D_800FB618_136FD8 = D_800FB618_136FD8 + -2.5714285f;
}

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F7714_1330D4);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F7AE0_1334A0);

void func_800F7F90_133950(unkObjectStruct* arg0) {
    unkGlobalStruct_00* temp_s1 = arg0->unk_50;
    unk_Struct01* temp_v1 = temp_s1->unk_E4;

    if (D_800FB61C_136FDC < 0xF) {
        temp_s1->unk_3C += temp_v1->unk_08;
        arg0->unk_18 += temp_v1->unk_0C;
        arg0->unk_20 += temp_v1->unk_10;
        D_800FB61C_136FDC += 1;
        if (D_800FB61C_136FDC == 0xF) {
            func_800184BC(arg0, 0);
            arg0->unk_18 = arg0->unk_20 = 0.0f;
            if (D_800FB698_137050 == 0) {
                D_800FB730_137050 = 1;
            }
        }
    }
    func_80017DB0(arg0);
    func_8009ECB0(&D_800F2B7C[arg0->unk_40[0]].unk7C, 0.0f, temp_s1->unk_3C, 0.0f);
}

void func_800F8098_133A58(unkObjectStruct* arg0) {
    u16 temp = (++D_800FB61E_136FDE);
    if (temp < 0x5A) {
        arg0->unk_1C += -2.7777777f;
    }
    
    if (D_800FB620_136FE0 != 0) {
        u16 temp2 = (--D_800FB620_136FE0); 
        if (!temp2) {
            func_80060540(0x24B, 0);
        }
    }
    
    func_80017DB0(arg0);
}

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F8134_133AF4);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F82B4_133C74);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F8614_133FD4);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F87EC_1341AC);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F8A58_134418);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F8BE8_1345A8);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F92FC_134CBC);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F968C_13504C);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F97F8_1351B8);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F998C_13534C);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800F9AF4_1354B4);

void func_800F9D38_1356F8(unkObjectStruct* arg0) {
    D_800FB6A4_137050 = func_80019060(D_800FB6A2_137050, 0, 1);
    func_80018D84(D_800FB6A4_137050, 0x8000);
    D_800FB69E_137050 = func_80019060(D_800FB69C_137050, 0, 1);
    D_800FB6A0_137050 = func_80019060(D_800FB69C_137050, 0, 1);
    func_80018D84(D_800FB69E_137050, 0x8000);
    func_80018D84(D_800FB6A0_137050, 0x8000);
    SetBasicSpritePos(D_800FB6A4_137050, 0x8E, 0x20);
    SetBasicSpritePos(D_800FB69E_137050, 0xA2, 0x20);
    SetBasicSpritePos(D_800FB6A0_137050, 0xAA, 0x20);
    arg0->unk_4C[0] = 0;
    arg0->unk_4C[1] = 0;
    arg0->unk_4C[2] = 0;
    arg0->unk_4C[3] = 0;
    arg0->unk_34 = 1.0f;
    arg0->func_ptr = &func_800F9E44_135804;
}

void func_800F9E44_135804(unkObjectStruct* arg0) {
    s32 temp_v1;
    u32 temp_s0;
    s32 temp_s1;
    
    temp_v1 = arg0->unk_10;
    
    if (temp_v1 != 0) {
        arg0->unk_10 = 0;
        if (temp_v1 == 1) {
            arg0->unk_4C[0] += arg0->unk_4C[3];
            arg0->unk_4C[3] = 0;
            arg0->unk_4C[1] = 2;
            arg0->unk_34 = 1.0f;
        }
    }
    
    switch (arg0->unk_4C[1]) {
    case 2:
        arg0->unk_34 += 0.3f;
        if (arg0->unk_34 >= 2.4f) {
            arg0->unk_4C[1] = 4;
            arg0->unk_34 = 2.4f;
        }
        break;

    case 4:
        arg0->unk_34 -= 0.3f;
        if (arg0->unk_34 <= 1.0f) {
            arg0->unk_4C[1] = 0;
            arg0->unk_34 = 1.0f;
        }
        break;
    }

    temp_s1 = arg0->unk_4C[0];
    temp_s0 = arg0->unk_4C[0];
    temp_s0 = temp_s0 / 10;
    func_80018E50(D_800FB69E_137050, temp_s0, 0);
    func_80018E50(D_800FB6A0_137050, temp_s1 - (temp_s0 * 0xA), 0);
    SetBasicSpriteSize(D_800FB69E_137050, 1.0f, arg0->unk_34);
    SetBasicSpriteSize(D_800FB6A0_137050, 1.0f, arg0->unk_34);
    SetBasicSpritePos(D_800FB69E_137050, 0xA0, 32.0f - ((arg0->unk_34 - 1.0f) * 6.0f));
    SetBasicSpritePos(D_800FB6A0_137050, 0xB0, 32.0f - ((arg0->unk_34 - 1.0f) * 6.0f));
}

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800FA078_135A38);

INCLUDE_RODATA("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", D_800FB638_136FF8);

INCLUDE_RODATA("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", jtbl_800FB648_137008);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800FA1E0_135BA0);

void func_800FA668_136028(void) {
    if ((D_800FB608_136FC8 != 0) || (D_800F5144 != 0)) {
        func_800FB4C0_136E80(131);
        func_800601D4(40);
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800FA6AC_13606C);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800FA760_136120);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800FAF34_1368F4);

INCLUDE_ASM("asm/nonmatchings/ovl_0F_WhackAPlant/131FA0", func_800FB138_136AF8);
