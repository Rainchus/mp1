#include "common.h"

#include "common.h"

extern char D_800CB110[];
extern char D_800CB11C[];
extern omObjData* D_800C5248_C5E48;
extern s32 D_800C524C_C5E4C;
extern u16 D_800C524E_C5E4E;
extern omObjData* D_800F50C0_F5150[32];
f32 _sinf(f32);

s32 CreateTextWindow(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_s1;

    temp_s1 = func_8006D010_6DC10(arg0, arg1, ((arg2 * 0xB) + 8), ((arg3 * 0xE) + 6), 0, 0);
    func_8006E154_6ED54(temp_s1, 0xC8);
    func_800717C0_723C0(temp_s1);
    func_8006DA1C_6E61C(temp_s1, 0x40, 0x40);
    return temp_s1;
}

void ShowTextWindow(s32 arg0) {
    s32 i;

    PlaySound(0x36);
    func_80071740_72340(arg0, 1);
    func_8006DEC8_6EAC8(arg0, 0, 0);
    func_8006E01C_6EC1C(arg0, 180.0f);
    func_8006DE20_6EA20(arg0, 0.0f, 0.0f);
    
    for (i = 0; i < 0xB5; i += 0x14) {
        HuPrcVSleep();
        func_8006E01C_6EC1C(arg0, 180.0f - i);
        func_8006DE20_6EA20(arg0, i / 180.0f, i / 180.0f);        
    }
    
    func_80071740_72340(arg0, 0);
}

void HideTextWindow(s32 arg0) {
    s32 i;

    PlaySound(0x37);
    
    for (i = 0xB4; i >= 0; i -= 0x14) {
        HuPrcVSleep();
        func_8006E01C_6EC1C(arg0, (0xB4 - i) * 2);
        func_8006DE20_6EA20(arg0, i / 180.0f, i / 180.0f);
    }
    
    func_80070D90_71990(arg0);
    HuPrcVSleep();
}

void func_8004DB9C_4E79C(s32 arg0) {
    D_800C5214_C5E14 = arg0;
    func_8004DBC8_4E7C8(arg0);
}

s32 func_8004DBBC_4E7BC(void) {
    return D_800C5214_C5E14;
}

void func_8004DBC8_4E7C8(s32 arg0) {
    D_800C5210_C5E10 = arg0;
}

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004DBD4_4E7D4);

INCLUDE_ASM("asm/nonmatchings/4E530", WaitForTextConfirmation);

void func_8004E0E8_4ECE8(s32 arg0) {
    func_8007155C_7215C(arg0, 0xF);
    func_800710A4_71CA4(-1, -1, -1, -1);
    
    while ((func_8006FCC0_708C0(arg0)) != 0) {
        HuPrcVSleep();
    }
}

void func_8004E154_4ED54(void) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(D_800F50C0_F5150); i++) {
        D_800F50C0_F5150[i] = 0;
    }

}

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004E184_4ED84);

void func_8004E248_4EE48(omObjData* arg0) {
    Object* temp_v0;
    unkGlobalStruct_00* temp_v1;

    temp_v1 = arg0->unk_50;
    arg0->work[1]--;
    
    if (temp_v1 == NULL) {
        if (arg0->work[1] == 0) {
            gPlayers[arg0->work[0]].playerObj->coords.x = arg0->trans.x;
            gPlayers[arg0->work[0]].playerObj->coords.y = arg0->trans.y;
            gPlayers[arg0->work[0]].playerObj->coords.z = arg0->trans.z;
            omDelObj(arg0);
            return;
        }
        temp_v0 = gPlayers[arg0->work[0]].playerObj;
        temp_v0->coords.x = temp_v0->coords.x + arg0->scale.x;
        temp_v0 = gPlayers[arg0->work[0]].playerObj;
        temp_v0->coords.y = temp_v0->coords.y + arg0->scale.y;
        temp_v0 = gPlayers[arg0->work[0]].playerObj;
        temp_v0->coords.z = temp_v0->coords.z + arg0->scale.z;
        return;
    }
    
    if (arg0->work[1] == 0) {
        temp_v1->unk_0C = arg0->trans.x;
        temp_v1->unk_10 = arg0->trans.y;
        temp_v1->unk_14 = arg0->trans.z;
        arg0->unk_50 = NULL;
        omDelObj(arg0);
        return;
    }
    
    temp_v1->unk_0C += arg0->scale.x;
    temp_v1->unk_10 += arg0->scale.y;
    temp_v1->unk_14 += arg0->scale.z;
}

omObjData* func_8004E3E0_4EFE0(s32 arg0, Vec3f* arg1, s32 arg2, void* arg3) { //fix arg3 type later
    omObjData* obj;
    s32 i;
    arg3 = (Object*)arg3;

    obj = omAddObj(0x1000, 0, 0, -1, &func_8004E248_4EE48);
    obj->work[0] = arg0;
    obj->work[1] = arg2;
    obj->trans.x = arg1->x;
    obj->trans.y = arg1->y;
    obj->trans.z = arg1->z;
    if (arg3 == NULL) {
        obj->scale.x = (arg1->x - gPlayers[arg0].playerObj->coords.x) / arg2;
        obj->scale.y = (arg1->y - gPlayers[arg0].playerObj->coords.y) / arg2;
        obj->scale.z = (arg1->z - gPlayers[arg0].playerObj->coords.z) / arg2;
    } else {
        obj->scale.x = (arg1->x - ((unkGlobalStruct_00*)arg3)->unk_0C) / arg2;
        obj->scale.y = (arg1->y - ((unkGlobalStruct_00*)arg3)->unk_10) / arg2;
        obj->scale.z = (arg1->z - ((unkGlobalStruct_00*)arg3)->unk_14) / arg2;
    }
    
    obj->unk_50 = (unkGlobalStruct_00* )arg3;

    for (i = 0; i < ARRAY_COUNT(D_800F50C0_F5150); i++) {
        if (D_800F50C0_F5150[i] == NULL) {
            D_800F50C0_F5150[i] = obj;
            return obj;
            break;
        }
    }
    return obj;
}

INCLUDE_RODATA("asm/nonmatchings/4E530", D_800CB090_CBC90);

INCLUDE_RODATA("asm/nonmatchings/4E530", D_800CB094_CBC94);

INCLUDE_RODATA("asm/nonmatchings/4E530", D_800CB09C_CBC9C);

INCLUDE_RODATA("asm/nonmatchings/4E530", D_800CB0A4_CBCA4);

INCLUDE_RODATA("asm/nonmatchings/4E530", D_800CB0AC_CBCAC);

INCLUDE_RODATA("asm/nonmatchings/4E530", D_800CB0B4_CBCB4);

INCLUDE_RODATA("asm/nonmatchings/4E530", D_800CB0BC_CBCBC);

INCLUDE_RODATA("asm/nonmatchings/4E530", D_800CB0C4_CBCC4);

INCLUDE_RODATA("asm/nonmatchings/4E530", D_800CB0CC_CBCCC);

INCLUDE_RODATA("asm/nonmatchings/4E530", D_800CB0D4_CBCD4);

INCLUDE_RODATA("asm/nonmatchings/4E530", D_800CB0DC_CBCDC);

INCLUDE_RODATA("asm/nonmatchings/4E530", D_800CB0E4_CBCE4);

INCLUDE_RODATA("asm/nonmatchings/4E530", D_800CB0EC_CBCEC);

void func_8004E564_4F164(omObjData* arg0) { //matches, needs rodata support
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f20_4;
    f32 temp_f20_5;
    Object* var_s0;
    Object* temp_v0;
    Object *new_var;

    var_s0 = (Object*)arg0->unk_50;
    arg0->work[1]--;
    
    if (var_s0 == NULL) {
        if (arg0->work[1] == 0) {
            gPlayers[arg0->work[0]].playerObj->coords.x = arg0->trans.x;
            gPlayers[arg0->work[0]].playerObj->coords.y = arg0->trans.y;
            gPlayers[arg0->work[0]].playerObj->coords.z = arg0->trans.z;
            omDelObj(arg0);
            return;
        }
        
        gPlayers[arg0->work[0]].playerObj->coords.x = gPlayers[arg0->work[0]].playerObj->coords.x + arg0->scale.x;
        gPlayers[arg0->work[0]].playerObj->coords.y = gPlayers[arg0->work[0]].playerObj->coords.y + arg0->scale.y;
        gPlayers[arg0->work[0]].playerObj->coords.z = gPlayers[arg0->work[0]].playerObj->coords.z + arg0->scale.z;   
        new_var = gPlayers[arg0->work[0]].playerObj;
        temp_v0 = new_var;
        temp_f20 = _sinf(arg0->work[1] * 180.0f / arg0->work[2] * 0.017453292519943295) * arg0->rot.x;
        temp_v0->coords.x += temp_f20 - (_sinf((arg0->work[1] + 1) * 180.0f / arg0->work[2] * 0.017453292519943295) * arg0->rot.x);
        temp_v0 = gPlayers[arg0->work[0]].playerObj;
        temp_f20_2 = _sinf(arg0->work[1] * 180.0f / arg0->work[2] * 0.017453292519943295) * arg0->rot.y;
        temp_v0->coords.y += temp_f20_2 - (_sinf((arg0->work[1] + 1) * 180.0f / arg0->work[2] * 0.017453292519943295) * arg0->rot.y);
        var_s0 = gPlayers[arg0->work[0]].playerObj;
        temp_f20_5 = _sinf(arg0->work[1] * 180.0f / arg0->work[2] * 0.017453292519943295)* arg0->rot.z;
        temp_f20_5 = temp_f20_5 - (_sinf(( (((arg0->work[1] + 1) * 180.0f) / arg0->work[2]) * 0.017453292519943295)) * arg0->rot.z);
        temp_f20_5 += var_s0->coords.z;
        var_s0->coords.z = temp_f20_5;
    } else if (arg0->work[1] == 0) {
        var_s0->coords.x = arg0->trans.x;
        var_s0->coords.y = arg0->trans.y;
        var_s0->coords.z = arg0->trans.z;
        arg0->unk_50 = NULL;
        omDelObj(arg0);
        return;
    } else {
        var_s0->coords.x += arg0->scale.x;
        var_s0->coords.y += arg0->scale.y;
        var_s0->coords.z += arg0->scale.z;

        temp_f20_3 = _sinf(arg0->work[1] * 180.0f / arg0->work[2] * 0.017453292519943295)* arg0->rot.x;
        var_s0->coords.x += temp_f20_3 - (_sinf(( (((arg0->work[1] + 1) * 180.0f) / arg0->work[2]) * 0.017453292519943295)) * arg0->rot.x);
        temp_f20_4 = _sinf(arg0->work[1] * 180.0f / arg0->work[2] * 0.017453292519943295)* arg0->rot.y;
        var_s0->coords.y += temp_f20_4 - (_sinf(( (((arg0->work[1] + 1) * 180.0f) / arg0->work[2]) * 0.017453292519943295)) * arg0->rot.y);
        temp_f20_5 = _sinf(arg0->work[1] * 180.0f / arg0->work[2] * 0.017453292519943295)* arg0->rot.z;
        temp_f20_5 = temp_f20_5 - (_sinf(( (((arg0->work[1] + 1) * 180.0f) / arg0->work[2]) * 0.017453292519943295)) * arg0->rot.z);
        temp_f20_5 += var_s0->coords.z;
        var_s0->coords.z = temp_f20_5;
    }
}

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004EA8C_4F68C);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004EC44_4F844);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004EE14_4FA14);

void func_8004F00C_4FC0C(Object* arg0, f32 arg1, f32 arg2) {
    arg0->unk_34 = arg1;
    arg0->unk_38 = arg2;
}

s32 func_8004F018_4FC18(Object* arg0) {
    if (!(arg0->unk_38 != 0.0f)) {
        return 0;
    } else {
        return 1;
    }
}

void func_8004F044_4FC44(Object* arg0) {
    while (func_8004F018_4FC18(arg0) != 0) {
        HuPrcVSleep();
    }
}

void func_8004F084_4FC84(omObjData* arg0) {
    f32 temp_f0;

    func_800264F8_270F8(arg0->mdlcnt, arg0->mtncnt, (_sinf((f32) (arg0->trans.x * 0.0174532925199432955)) / 2.0f) + 0.5f, "030-hata1", "hata2", 0);
    arg0->trans.x += 20.0f;
    if (arg0->trans.x >= 360.0f) {
        arg0->trans.x -= 360.0f;
    }
}

void func_8004F140_4FD40(s32 arg0) {
    omObjData* temp_v0;

    D_800C524C_C5E4C = LoadFormFile(0xA0076, 0x2AD);
    func_80026040_26C40(arg0);
    temp_v0 = omAddObj(0x1000, 0, 0, -1, &func_8004F084_4FC84);
    D_800C5248_C5E48 = temp_v0;
    temp_v0->trans.x = 0.0f;
    temp_v0->mdlcnt = arg0;
    temp_v0->mtncnt = D_800C524E_C5E4E;
    omSetStatBit(temp_v0, 0xA0);
}

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F1D0_4FDD0);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F234_4FE34);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F25C_4FE5C);

void func_8004F284_4FE84(void) {
}

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F28C_4FE8C);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F2AC_4FEAC);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F2EC_4FEEC);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F358_4FF58);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F40C_5000C);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F4D4_500D4);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F504_50104);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F548_50148);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F584_50184);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F5F0_501F0);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F628_50228);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F754_50354);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F790_50390);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F7C0_503C0);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F800_50400);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F830_50430);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F860_50460);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F898_50498);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F8DC_504DC);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F928_50528);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F954_50554);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004F9F4_505F4);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004FA48_50648);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004FA90_50690);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004FAB8_506B8);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004FB14_50714);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004FB50_50750);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004FBB4_507B4);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004FBEC_507EC);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004FCB0_508B0);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004FD68_50968);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004FEA0_50AA0);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004FEBC_50ABC);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004FF68_50B68);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8004FFA8_50BA8);

INCLUDE_ASM("asm/nonmatchings/4E530", func_800500A4_50CA4);

INCLUDE_ASM("asm/nonmatchings/4E530", func_80050160_50D60);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8005021C_50E1C);

INCLUDE_ASM("asm/nonmatchings/4E530", func_80050288_50E88);

INCLUDE_ASM("asm/nonmatchings/4E530", func_80050338_50F38);

INCLUDE_ASM("asm/nonmatchings/4E530", func_80050368_50F68);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8005038C_50F8C);

INCLUDE_ASM("asm/nonmatchings/4E530", func_800503B0_50FB0);

INCLUDE_ASM("asm/nonmatchings/4E530", func_8005049C_5109C);
