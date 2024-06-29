#include "common.h"

typedef struct unkUserData {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
} unkUserData;

extern s16 D_800D64F8;
extern u8 D_800D6500;
extern s16 D_800D6502;
extern Vec2s D_800D6504;
extern omObjData* D_800D6508;
extern omObjData* D_800D650C;
extern unkCommonStruct0 D_800D6490[];
extern s32 D_800D6658;
extern s16 D_800D65FC[];
extern s16 D_800D6654;
extern s16 D_800D652C[];
extern Vec2s D_800D6650;
extern s16 D_800D6594[];
extern unkCommonStruct0 D_800D6518[];
extern unkCommonStruct0 D_800D6580[];
extern unkCommonStruct0 D_800D65E8[];
extern s8 D_800D6510;
extern s16 D_800D64A4[];
extern s32 D_800D64FC;
extern s32 D_800F383C;
extern s8 D_800C4EF6;
extern s8 D_800C4EF0[];
extern char* D_800C4ED0[];
extern s8 D_800C4EEC[];
extern s32 D_800D64FC;


void func_80046720(void) {
    D_800D64F8 = -1;
    D_800D6500 = 0;
    D_800D6502 = -1;
    D_800D6504.x = D_800D6504.y = -1;
    D_800D6508 = 0;
    D_800D650C = 0;
}

void func_80046760(void) {
    if (D_800D6500 & 0x20) {
        func_80077044(D_800D6490);
    }
    
    if (D_800D6500 & 0x10) {
        func_80064D38(D_800D6502);
        func_80067704(D_800D6504.x);
        func_80067704(D_800D6504.y);
    }
    
    if (D_800D6508 != NULL) {
        omDelObj(D_800D6508);
        D_800D6508 = NULL;
    }
    
    if (D_800D650C != NULL) {
        omDelObj(D_800D650C);
        D_800D650C = NULL;
    }
    
    D_800D6500 &= 0xCF;
}

const char D_800CAF90[] = "1PLAYER  GAME";
const char D_800CAFA0[] = "  2  VS  2  GAME";
const char D_800CAFB4[] = "  1  VS  3  GAME";
const char D_800CAFC8[] = "4PLAYER  GAME";
const char D_800CAFD8[] = "TURN";
const char D_800CAFE0[] = "TURNS";
const char D_800CAFE8[] = "LAST";

void func_80046828(omObjData* arg0) {
    Vec2s* temp;
    s32 i;
    
    switch (arg0->work[0]) {
    case 0:
        arg0->rot.x =  arg0->rot.x + 30.0f;
        arg0->scale.x = _sinf(arg0->rot.x * 0.0174532925199432955) * 0.5f + 1.0f;
        
        for (i = 1; (((D_800D6658 + 1) / 10) + 1) >= i; i++) {
            func_80067354(D_800D65FC[D_800D6654], i, arg0->scale.x, arg0->scale.x);
        }
        
        if (arg0->rot.x >= 360.0f) {
            arg0->rot.x -=  360.0f;
        }

        return;
    case 1:
        
        for (i = 1; (((D_800D6658 + 1) / 10) + 1) >= i; i++) {
            func_8006752C(D_800D65FC[D_800D6654], i, arg0->work[1]);
        }

        for (i = 1; i < 5; i++) {
            func_8006752C(D_800D652C[D_800D6650.x], i, arg0->work[1]);
            func_8006752C(D_800D6594[D_800D6650.y], i, arg0->work[1]);
        }

        arg0->work[1] -=  0xA;
        
        if (arg0->work[1] == 0) {
            arg0->work[0] = 2;
            return;
        }
        break;
    case 2:
        func_80077044(D_800D6518);
        func_80077044(D_800D6580);
        func_80077044(D_800D65E8);
        D_800D650C = 0;
        omDelObj(arg0);
        break;
    }
}

INCLUDE_ASM("asm/nonmatchings/47320", func_80046B24);

INCLUDE_ASM("asm/nonmatchings/47320", func_80046E84);

void func_800471FC(void) {
    D_800D6510 = 1;
}

void func_8004720C(omObjData* arg0) {
    arg0->trans.y = 74.0f - (_sinf((f32) ((f64) arg0->rot.y * 0.0174532925199432955)) * 5.0f);
    arg0->rot.y += 8.0f;
    
    if (arg0->rot.y >= 360.0f) {
        arg0->rot.y -=  360.0f;
    }
    
    func_80066DC4(D_800D64A4[D_800D64F8], 0, (arg0->trans.x + arg0->rot.x), arg0->trans.y);
    func_80066DC4(D_800D6502, 0, (s32)arg0->trans.x + 0x54, (s32)arg0->trans.y - 0x23);
}

void func_80047348(omObjData* arg0) {
    arg0->trans.x -= 19.0f;
    
    if (arg0->trans.x == 80.0f) {
        arg0->func_ptr = &func_8004720C;
        D_800D64FC = D_800F383C;
        arg0->scale.x = arg0->trans.x;
        arg0->scale.y = arg0->trans.y;
        arg0->rot.y = 0.0f;
    }
    
    func_80066DC4(D_800D64A4[D_800D64F8], 0, arg0->trans.x + arg0->rot.x, arg0->trans.y);
    func_80066DC4(D_800D6502, 0, (s32)arg0->trans.x + 0x54, (s32) arg0->trans.y - 0x23);
}

void func_8004746C(s32 arg0) {
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
    
    D_800D6502 = func_80064EF4(2, 5);
    func_80067598(D_800D6502, 0, -1);
    func_80067598(D_800D6502, 1, 0);
    temp_v0_2 = ReadMainFS(0xA0015);
    D_800D6504.x = func_800678A4(temp_v0_2);
    FreeMainFS(temp_v0_2);
    temp_v0_2 = ReadMainFS(temp[arg0] + 0xA0000);
    D_800D6504.y = func_800678A4(temp_v0_2);
    FreeMainFS(temp_v0_2);
    func_80067208(D_800D6502, 0, D_800D6504.x, 0);
    func_80067384(D_800D6502, 0, 0x10);
    func_800674BC(D_800D6502, 0, 0x1000);
    func_80066DC4(D_800D6502, 0, 0x1D4, 0x41);
    func_80067208(D_800D6502, 1, D_800D6504.y, 0);
    func_80067384(D_800D6502, 1, 0xF);
    func_800674BC(D_800D6502, 1, 0x180C);
    func_8006752C(D_800D6502, 1, 0x100);
    func_80066DC4(D_800D6502, 1, 0, -0xA);
}

void func_80047694(s32 arg0) {
    omObjData* temp_v0;

    if (!(D_800D6500 & 4)) {
        func_8004746C(arg0);
        temp_v0 = omAddObj(-0x8000, 0, 0, -1, &func_80046E84);
        D_800D6508 = temp_v0;
        temp_v0->trans.x = 380.0f;
        temp_v0->trans.y = 100.0f;
        
        if (arg0 >= 4) {
            temp_v0->rot.x = D_800C4EF6;
        } else {
            temp_v0->rot.x = D_800C4EF0[gPlayers[arg0].characterID];
        }

        temp_v0->mdlcnt = 0;
        temp_v0->rot.z = 0.001f;
        temp_v0->work[0] = 0;
        temp_v0->work[1] = 0x2D;
        temp_v0->work[2] = 0x2D;
        temp_v0->work[3] = 0;
        D_800D64FC = 0;
        D_800D6500 = 0x15;
        D_800D6510 = 0;
        PlaySound(0x32);
    }
}

INCLUDE_ASM("asm/nonmatchings/47320", func_800477AC);

void func_800479B8(s32 arg0) {
    omObjData* obj;
    void* file;
    u16 copyTempTest[] = {0x0017, 0x0018, 0x0019, 0x001A, 0x001B, 0x001C, 0x001D};

    D_800D6502 = func_80064EF4(1, 5);
    
    if (arg0 == 6) {
        file = ReadMainFS(copyTempTest[6] | 0xA0000);
    } else {
        file = ReadMainFS(copyTempTest[gPlayers[arg0].characterID] | 0xA0000);
    }
    D_800D6504.x = func_800678A4(file);
    FreeMainFS(file);
    func_80067208(D_800D6502, 0, D_800D6504.x, 0U);
    func_80067384(D_800D6502, 0, 0x10);
    func_800674BC(D_800D6502, 0, 0x1000U);
    func_80066DC4(D_800D6502, 0, 0xA0, 0x78);
    obj = omAddObj(-0x8000, 0, 0, -1, &func_80046B24);
    D_800D6508 = obj;
    obj->scale.x = 0.0f;
    obj->rot.x = 180.0f;
    obj->work[2] = 0x1E;
    obj->work[0] = 1;
    obj->work[1] = 0xC;
    if (D_800D650C != NULL) {
        obj->work[1] = 0x18;
    }
    obj->work[3] = arg0;
}

s32 func_80047B68(void) {
    return D_800D6500 & 4;
}

void func_80047B78(void) {
    func_80064D38(D_800D6502);
    func_80067704(D_800D6504.x);
    func_80067704(D_800D6504.y);
    omDelObj(D_800D6508);
    D_800D6508 = NULL;
    D_800D6500 &= ~0x3C;
}

void func_80047BE0(s32 arg0) {
    s32 var_s1;

    if (!(D_800D6500 & 4) && ((var_s1 = func_80054FE4(), (((~var_s1 == 0) | (arg0 != 0)) == 0)) || (var_s1 = 3, (arg0 != 0)))) {
        func_8004746C(-1);
        D_800D64F8 = func_80076740(D_800D6490, (char*) D_800C4ED0[var_s1], 0, 0, 0);
        func_80066DC4(D_800D64A4[D_800D64F8], 0, 0x1C0, 0x4A);
        D_800D6508 = omAddObj(-0x8000, 0, 0, -1, &func_80047348);
        D_800D6508->trans.x = 384.0f;
        D_800D6508->trans.y = 74.0f;
        D_800D6508->rot.x = D_800C4EEC[var_s1];
        D_800D64FC = 0;
        D_800D6500 = 54;
        
        if (var_s1 == 3) {
            func_8004388C(3);
        } else {
            func_8004388C(-1);
        }
        
        PlaySound(0x32);
    }
}

s32 func_80047D38(void) {
    return D_800D6500 & 0xC;
}

void func_80047D48(void) {
    func_80064D38(D_800D6502);
    func_80067704(D_800D6504.x);
    func_80067704(D_800D6504.y);
    omDelObj(D_800D6508);
    D_800D6508 = NULL;
    func_80077044(D_800D6490);
    D_800D6500 &= ~0x3C;
}

void func_80047DBC(void) {
    unkUserData* temp_s0;

    temp_s0 = HuPrcCurrentGet()->user_data;
    while (1) {
        switch (temp_s0->unk0) {
        case 0:
            func_800479B8(temp_s0->unk4);
            temp_s0->unk0++;
            break;
        case 1:
            if (D_800D6502 == -1) {
                EndProcess(NULL);
            }
            break;
        }
        
        HuPrcVSleep();       
    }
}

Process* func_80047E54(void) {
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
                D_800D6658 = D_800ED5C6.x - D_800ED5C6.y;
                switch (D_800D6658) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 9:
                        func_800477AC();
                        break;
                }
            }
            func_800479B8(temp_s0->unk4);
            temp_s0->unk0++;
            break;
        case 1:
            if (D_800D6502 == -1) {
                EndProcess(NULL);
            }
            break;
        }
        
        HuPrcVSleep();        
    }
}

Process* func_80048000(s32 arg0) {
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
    D_800D6658 = D_800ED5C6.x - D_800ED5C6.y;
    switch (D_800D6658) {
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
                func_800477AC();
                temp_s0->unk0 += 1;
                break;
            case 1:
                if (D_800D6508 == 0) {
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
