#include "common.h"

typedef struct unkUserData {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
} unkUserData;

extern s16 D_800D64F8_D6588;
extern u8 D_800D6500_D6590;
extern s16 D_800D6502_D6592;
extern Vec2s D_800D6504_D6594;
extern omObjData* D_800D6508_D6598;
extern omObjData* D_800D650C_D659C;
extern unkCommonStruct0 D_800D6490_D6520[];
extern s32 D_800D6658_D66E8;
extern s16 D_800D65FC_D668C[];
extern s16 D_800D6654_D66E4;
extern s16 D_800D652C_D65BC[];
extern Vec2s D_800D6650_D66E0;
extern s16 D_800D6594_D6624[];
extern unkCommonStruct0 D_800D6518_D65A8[];
extern unkCommonStruct0 D_800D6580_D6610[];
extern unkCommonStruct0 D_800D65E8_D6678[];
extern s8 D_800D6510_D65A0;
extern s16 D_800D64A4_D6534[];
extern s32 D_800D64FC_D658C;
extern s32 D_800F383C_F38CC;
extern s8 D_800C4EF6_C5AF6;
extern s8 D_800C4EF0_C5AF0[];
extern char* D_800C4ED0_C5AD0[];
extern s8 D_800C4EEC_C5AEC[];
extern s32 D_800D64FC_D658C;


void func_80046720_47320(void) {
    D_800D64F8_D6588 = -1;
    D_800D6500_D6590 = 0;
    D_800D6502_D6592 = -1;
    D_800D6504_D6594.x = D_800D6504_D6594.y = -1;
    D_800D6508_D6598 = 0;
    D_800D650C_D659C = 0;
}

void func_80046760_47360(void) {
    if (D_800D6500_D6590 & 0x20) {
        func_80077044_77C44(D_800D6490_D6520);
    }
    
    if (D_800D6500_D6590 & 0x10) {
        func_80064D38_65938(D_800D6502_D6592);
        func_80067704_68304(D_800D6504_D6594.x);
        func_80067704_68304(D_800D6504_D6594.y);
    }
    
    if (D_800D6508_D6598 != NULL) {
        omDelObj(D_800D6508_D6598);
        D_800D6508_D6598 = NULL;
    }
    
    if (D_800D650C_D659C != NULL) {
        omDelObj(D_800D650C_D659C);
        D_800D650C_D659C = NULL;
    }
    
    D_800D6500_D6590 &= 0xCF;
}

const char D_800CAF90_CBB90[] = "1PLAYER  GAME";
const char D_800CAFA0_CBBA0[] = "  2  VS  2  GAME";
const char D_800CAFB4_CBBB4[] = "  1  VS  3  GAME";
const char D_800CAFC8_CBBC8[] = "4PLAYER  GAME";
const char D_800CAFD8_CBBD8[] = "TURN";
const char D_800CAFE0_CBBE0[] = "TURNS";
const char D_800CAFE8_CBBE8[] = "LAST";

void func_80046828_47428(omObjData* arg0) {
    Vec2s* temp;
    s32 i;
    
    switch (arg0->work[0]) {
    case 0:
        arg0->rot.x =  arg0->rot.x + 30.0f;
        arg0->scale.x = _sinf(arg0->rot.x * 0.0174532925199432955) * 0.5f + 1.0f;
        
        for (i = 1; (((D_800D6658_D66E8 + 1) / 10) + 1) >= i; i++) {
            func_80067354_67F54(D_800D65FC_D668C[D_800D6654_D66E4], i, arg0->scale.x, arg0->scale.x);
        }
        
        if (arg0->rot.x >= 360.0f) {
            arg0->rot.x -=  360.0f;
        }

        return;
    case 1:
        
        for (i = 1; (((D_800D6658_D66E8 + 1) / 10) + 1) >= i; i++) {
            func_8006752C_6812C(D_800D65FC_D668C[D_800D6654_D66E4], i, arg0->work[1]);
        }

        for (i = 1; i < 5; i++) {
            func_8006752C_6812C(D_800D652C_D65BC[D_800D6650_D66E0.x], i, arg0->work[1]);
            func_8006752C_6812C(D_800D6594_D6624[D_800D6650_D66E0.y], i, arg0->work[1]);
        }

        arg0->work[1] -=  0xA;
        
        if (arg0->work[1] == 0) {
            arg0->work[0] = 2;
            return;
        }
        break;
    case 2:
        func_80077044_77C44(D_800D6518_D65A8);
        func_80077044_77C44(D_800D6580_D6610);
        func_80077044_77C44(D_800D65E8_D6678);
        D_800D650C_D659C = 0;
        omDelObj(arg0);
        break;
    }
}

INCLUDE_ASM("asm/nonmatchings/47320", func_80046B24_47724);

INCLUDE_ASM("asm/nonmatchings/47320", func_80046E84_47A84);

void func_800471FC_47DFC(void) {
    D_800D6510_D65A0 = 1;
}

void func_8004720C_47E0C(omObjData* arg0) {
    arg0->trans.y = 74.0f - (_sinf((f32) ((f64) arg0->rot.y * 0.0174532925199432955)) * 5.0f);
    arg0->rot.y += 8.0f;
    
    if (arg0->rot.y >= 360.0f) {
        arg0->rot.y -=  360.0f;
    }
    
    func_80066DC4_679C4(D_800D64A4_D6534[D_800D64F8_D6588], 0, (arg0->trans.x + arg0->rot.x), arg0->trans.y);
    func_80066DC4_679C4(D_800D6502_D6592, 0, (s32)arg0->trans.x + 0x54, (s32)arg0->trans.y - 0x23);
}

void func_80047348_47F48(omObjData* arg0) {
    arg0->trans.x -= 19.0f;
    
    if (arg0->trans.x == 80.0f) {
        arg0->func_ptr = &func_8004720C_47E0C;
        D_800D64FC_D658C = D_800F383C_F38CC;
        arg0->scale.x = arg0->trans.x;
        arg0->scale.y = arg0->trans.y;
        arg0->rot.y = 0.0f;
    }
    
    func_80066DC4_679C4(D_800D64A4_D6534[D_800D64F8_D6588], 0, arg0->trans.x + arg0->rot.x, arg0->trans.y);
    func_80066DC4_679C4(D_800D6502_D6592, 0, (s32)arg0->trans.x + 0x54, (s32) arg0->trans.y - 0x23);
}

void func_8004746C_4806C(s32 arg0) {
    void* temp_v0_2;
    u16 temp[] = {0x0016, 0x0017, 0x0018, 0x0019, 0x001A, 0x001B, 0x001C, 0x001D, 0x001E};

    if (arg0 == -1) {
        arg0 = 0;
    } else if (arg0 == 4) {
        arg0 = 7;
    } else if (arg0 == 5) {
        arg0 = 8;
    } else {
        arg0 = gPlayers[arg0].characterID + 1;
    }
    
    D_800D6502_D6592 = func_80064EF4_65AF4(2, 5);
    func_80067598_68198(D_800D6502_D6592, 0, -1);
    func_80067598_68198(D_800D6502_D6592, 1, 0);
    temp_v0_2 = ReadMainFS(0xA0015);
    D_800D6504_D6594.x = func_800678A4_684A4(temp_v0_2);
    FreeMainFS(temp_v0_2);
    temp_v0_2 = ReadMainFS(temp[arg0] + 0xA0000);
    D_800D6504_D6594.y = func_800678A4_684A4(temp_v0_2);
    FreeMainFS(temp_v0_2);
    func_80067208_67E08(D_800D6502_D6592, 0, D_800D6504_D6594.x, 0);
    func_80067384_67F84(D_800D6502_D6592, 0, 0x10);
    func_800674BC_680BC(D_800D6502_D6592, 0, 0x1000);
    func_80066DC4_679C4(D_800D6502_D6592, 0, 0x1D4, 0x41);
    func_80067208_67E08(D_800D6502_D6592, 1, D_800D6504_D6594.y, 0);
    func_80067384_67F84(D_800D6502_D6592, 1, 0xF);
    func_800674BC_680BC(D_800D6502_D6592, 1, 0x180C);
    func_8006752C_6812C(D_800D6502_D6592, 1, 0x100);
    func_80066DC4_679C4(D_800D6502_D6592, 1, 0, -0xA);
}

void func_80047694_48294(s32 arg0) {
    omObjData* temp_v0;

    if (!(D_800D6500_D6590 & 4)) {
        func_8004746C_4806C(arg0);
        temp_v0 = omAddObj(-0x8000, 0, 0, -1, &func_80046E84_47A84);
        D_800D6508_D6598 = temp_v0;
        temp_v0->trans.x = 380.0f;
        temp_v0->trans.y = 100.0f;
        
        if (arg0 >= 4) {
            temp_v0->rot.x = D_800C4EF6_C5AF6;
        } else {
            temp_v0->rot.x = D_800C4EF0_C5AF0[gPlayers[arg0].characterID];
        }

        temp_v0->mdlcnt = 0;
        temp_v0->rot.z = 0.001f;
        temp_v0->work[0] = 0;
        temp_v0->work[1] = 0x2D;
        temp_v0->work[2] = 0x2D;
        temp_v0->work[3] = 0;
        D_800D64FC_D658C = 0;
        D_800D6500_D6590 = 0x15;
        D_800D6510_D65A0 = 0;
        PlaySound(0x32);
    }
}

INCLUDE_ASM("asm/nonmatchings/47320", func_800477AC_483AC);

void func_800479B8_485B8(s32 arg0) {
    omObjData* obj;
    void* file;
    u16 copyTempTest[] = {0x0017, 0x0018, 0x0019, 0x001A, 0x001B, 0x001C, 0x001D};

    D_800D6502_D6592 = func_80064EF4_65AF4(1, 5);
    
    if (arg0 == 6) {
        file = ReadMainFS(copyTempTest[6] | 0xA0000);
    } else {
        file = ReadMainFS(copyTempTest[gPlayers[arg0].characterID] | 0xA0000);
    }
    D_800D6504_D6594.x = func_800678A4_684A4(file);
    FreeMainFS(file);
    func_80067208_67E08(D_800D6502_D6592, 0, D_800D6504_D6594.x, 0U);
    func_80067384_67F84(D_800D6502_D6592, 0, 0x10);
    func_800674BC_680BC(D_800D6502_D6592, 0, 0x1000U);
    func_80066DC4_679C4(D_800D6502_D6592, 0, 0xA0, 0x78);
    obj = omAddObj(-0x8000, 0, 0, -1, &func_80046B24_47724);
    D_800D6508_D6598 = obj;
    obj->scale.x = 0.0f;
    obj->rot.x = 180.0f;
    obj->work[2] = 0x1E;
    obj->work[0] = 1;
    obj->work[1] = 0xC;
    if (D_800D650C_D659C != NULL) {
        obj->work[1] = 0x18;
    }
    obj->work[3] = arg0;
}

s32 func_80047B68_48768(void) {
    return D_800D6500_D6590 & 4;
}

void func_80047B78(void) {
    func_80064D38_65938(D_800D6502_D6592);
    func_80067704_68304(D_800D6504_D6594.x);
    func_80067704_68304(D_800D6504_D6594.y);
    omDelObj(D_800D6508_D6598);
    D_800D6508_D6598 = NULL;
    D_800D6500_D6590 &= ~0x3C;
}

void func_80047BE0_487E0(s32 arg0) {
    s32 var_s1;

    if (!(D_800D6500_D6590 & 4) && ((var_s1 = func_80054FE4_55BE4(), (((~var_s1 == 0) | (arg0 != 0)) == 0)) || (var_s1 = 3, (arg0 != 0)))) {
        func_8004746C_4806C(-1);
        D_800D64F8_D6588 = func_80076740_77340(D_800D6490_D6520, (char*) D_800C4ED0_C5AD0[var_s1], 0, 0, 0);
        func_80066DC4_679C4(D_800D64A4_D6534[D_800D64F8_D6588], 0, 0x1C0, 0x4A);
        D_800D6508_D6598 = omAddObj(-0x8000, 0, 0, -1, &func_80047348_47F48);
        D_800D6508_D6598->trans.x = 384.0f;
        D_800D6508_D6598->trans.y = 74.0f;
        D_800D6508_D6598->rot.x = D_800C4EEC_C5AEC[var_s1];
        D_800D64FC_D658C = 0;
        D_800D6500_D6590 = 54;
        
        if (var_s1 == 3) {
            func_8004388C_4448C(3);
        } else {
            func_8004388C_4448C(-1);
        }
        
        PlaySound(0x32);
    }
}

s32 func_80047D38_48938(void) {
    return D_800D6500_D6590 & 0xC;
}

void func_80047D48_48948(void) {
    func_80064D38_65938(D_800D6502_D6592);
    func_80067704_68304(D_800D6504_D6594.x);
    func_80067704_68304(D_800D6504_D6594.y);
    omDelObj(D_800D6508_D6598);
    D_800D6508_D6598 = NULL;
    func_80077044_77C44(D_800D6490_D6520);
    D_800D6500_D6590 &= ~0x3C;
}

void func_80047DBC(void) {
    unkUserData* temp_s0;

    temp_s0 = HuPrcCurrentGet()->user_data;
    while (1) {
        switch (temp_s0->unk0) {
        case 0:
            func_800479B8_485B8(temp_s0->unk4);
            temp_s0->unk0++;
            break;
        case 1:
            if (D_800D6502_D6592 == -1) {
                EndProcess(NULL);
            }
            break;
        }
        
        HuPrcVSleep();       
    }
}

Process* func_80047E54_48A54(void) {
    Process* temp_v0;
    unkUserData* temp_v0_2;

    temp_v0 = omAddPrcObj(func_80047DBC, 0, 0, 0x40);
    temp_v0_2 = HuMemMemoryAlloc(temp_v0->heap, sizeof(unkUserData));
    temp_v0->user_data = temp_v0_2;
    temp_v0_2->unk0 = 0;
    temp_v0_2->unk4 = 6;
    return temp_v0;
}

Process* func_80047EAC(void) {
    Process* temp_v0;
    unkUserData* temp_v0_2;

    temp_v0 = omAddPrcObj(func_80047DBC, 0, 0, 0x40);
    temp_v0_2 = HuMemMemoryAlloc(temp_v0->heap, sizeof(unkUserData));
    temp_v0->user_data = temp_v0_2;
    temp_v0_2->unk0 = 0;
    temp_v0_2->unk4 = 5;
    return temp_v0;
}

void func_80047F04(void) {
    unkUserData* temp_s0 = HuPrcCurrentGet()->user_data;
    
    while (1) {  
        switch (temp_s0->unk0) {
        case 0:
            PlaySound(0x5A);
            if (temp_s0->unk4 == 0) {
                D_800D6658_D66E8 = D_800ED5C6_ED656.x - D_800ED5C6_ED656.y;
                switch (D_800D6658_D66E8) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 9:
                        func_800477AC_483AC();
                        break;
                }
            }
            func_800479B8_485B8(temp_s0->unk4);
            temp_s0->unk0++;
            break;
        case 1:
            if (D_800D6502_D6592 == -1) {
                EndProcess(NULL);
            }
            break;
        }
        
        HuPrcVSleep();        
    }
}

Process* func_80048000_48C00(s32 arg0) {
    Process* temp_v0;
    unkUserData* temp_v0_2;

    temp_v0 = omAddPrcObj(func_80047F04, 0, 0, 0x40);
    temp_v0_2 = HuMemMemoryAlloc(temp_v0->heap, sizeof(unkUserData));
    temp_v0->user_data = temp_v0_2;
    temp_v0_2->unk0 = 0;
    temp_v0_2->unk4 = arg0;
    return temp_v0;
}

void func_80048060(void) {
    s32 temp_v0;
    s32 temp_v1;
    unkUserData* temp_s0;

    temp_s0 = HuPrcCurrentGet()->user_data;
    D_800D6658_D66E8 = D_800ED5C6_ED656.x - D_800ED5C6_ED656.y;
    switch (D_800D6658_D66E8) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 9:
            break;
        default:
            temp_s0->unk0 = 1;
    }

    while (1) {
        switch (temp_s0->unk0) {
            case 0:
                PlaySound(0x59);
                func_800477AC_483AC();
                temp_s0->unk0 += 1;
                break;
            case 1:
                if (D_800D6508_D6598 == 0) {
                    EndProcess(0);
                }
                break;

        } 
        HuPrcVSleep();    
    }
}

Process* func_80048134(void) {
    Process* temp_v0;
    unkUserData* temp_v0_2;

    temp_v0 = omAddPrcObj(func_80048060, 0, 0, 64);
    temp_v0_2 = HuMemMemoryAlloc(temp_v0->heap, sizeof(unkUserData));
    temp_v0->user_data = temp_v0_2;
    temp_v0_2->unk0 = 0;
    return temp_v0;
}
