#include "common.h"

extern char D_800CB110[];
extern char D_800CB11C[];
extern f64 D_800CB128;
extern unkObjectStruct* D_800C5248;
extern s32 D_800C524C;
extern u16 D_800C524E;
extern unkObjectStruct* D_800F50C0[];

s32 CreateTextWindow(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_s1;

    temp_s1 = func_8006D010(arg0, arg1, ((arg2 * 0xB) + 8), ((arg3 * 0xE) + 6), 0, 0);
    func_8006E154(temp_s1, 0xC8);
    func_800717C0(temp_s1);
    func_8006DA1C(temp_s1, 0x40, 0x40);
    return temp_s1;
}

void ShowTextWindow(s32 arg0) {
    s32 i;

    PlaySound(0x36);
    func_80071740(arg0, 1);
    func_8006DEC8(arg0, 0, 0);
    func_8006E01C(arg0, 180.0f);
    func_8006DE20(arg0, 0.0f, 0.0f);
    
    for (i = 0; i < 0xB5; i += 0x14) {
        SleepVProcess();
        func_8006E01C(arg0, 180.0f - i);
        func_8006DE20(arg0, i / 180.0f, i / 180.0f);        
    }
    
    func_80071740(arg0, 0);
}

void HideTextWindow(s32 arg0) {
    s32 i;

    PlaySound(0x37);
    
    for (i = 0xB4; i >= 0; i -= 0x14) {
        SleepVProcess();
        func_8006E01C(arg0, (0xB4 - i) * 2);
        func_8006DE20(arg0, i / 180.0f, i / 180.0f);
    }
    
    func_80070D90(arg0);
    SleepVProcess();
}

void func_8004DB9C(s32 arg0) {
    D_800C5214 = arg0;
    func_8004DBC8(arg0);
}

s32 func_8004DBBC(void) {
    return D_800C5214;
}

void func_8004DBC8(s32 arg0) {
    D_800C5210 = arg0;
}

INCLUDE_ASM(s32, "4E530", func_8004DBD4);

INCLUDE_ASM(s32, "4E530", WaitForTextConfirmation);

void func_8004E0E8(s32 arg0) {
    func_8007155C(arg0, 0xF);
    func_800710A4(-1, -1, -1, -1);
    
    while ((func_8006FCC0(arg0)) != 0) {
        SleepVProcess();
    }
}

void func_8004E154(void) {
    s32 i;

    for (i = 0; i < 32; i++) {
        D_800F50C0[i] = 0;
    }

}

INCLUDE_ASM(s32, "4E530", func_8004E184);

void func_8004E248(unkObjectStruct* arg0) {
    Object* temp_v0;
    unkGlobalStruct_00* temp_v1;

    temp_v1 = arg0->unk_50;
    arg0->unk_4C[1]--;
    
    if (temp_v1 == NULL) {
        if (arg0->unk_4C[1] == 0) {
            gPlayers[arg0->unk_4C[0]].playerObj->coords.x = arg0->unk_18;
            gPlayers[arg0->unk_4C[0]].playerObj->coords.y = arg0->unk_1C;
            gPlayers[arg0->unk_4C[0]].playerObj->coords.z = arg0->unk_20;
            func_8005D718(arg0);
            return;
        }
        temp_v0 = gPlayers[arg0->unk_4C[0]].playerObj;
        temp_v0->coords.x = temp_v0->coords.x + arg0->unk_30;
        temp_v0 = gPlayers[arg0->unk_4C[0]].playerObj;
        temp_v0->coords.y = temp_v0->coords.y + arg0->unk_34;
        temp_v0 = gPlayers[arg0->unk_4C[0]].playerObj;
        temp_v0->coords.z = temp_v0->coords.z + arg0->unk_38;
        return;
    }
    
    if (arg0->unk_4C[1] == 0) {
        temp_v1->unk_0C = arg0->unk_18;
        temp_v1->unk_10 = arg0->unk_1C;
        temp_v1->unk_14 = arg0->unk_20;
        arg0->unk_50 = NULL;
        func_8005D718(arg0);
        return;
    }
    
    temp_v1->unk_0C += arg0->unk_30;
    temp_v1->unk_10 += arg0->unk_34;
    temp_v1->unk_14 += arg0->unk_38;
}

unkObjectStruct* func_8004E3E0(s32 arg0, Vec3f* arg1, s32 arg2, void* arg3) { //fix arg3 type later
    unkObjectStruct* obj;
    s32 i;
    arg3 = (Object*)arg3;

    obj = func_8005D384(0x1000, 0, 0, -1, &func_8004E248);
    obj->unk_4C[0] = arg0;
    obj->unk_4C[1] = arg2;
    obj->unk_18 = arg1->x;
    obj->unk_1C = arg1->y;
    obj->unk_20 = arg1->z;
    if (arg3 == NULL) {
        obj->unk_30 = (arg1->x - gPlayers[arg0].playerObj->coords.x) / arg2;
        obj->unk_34 = (arg1->y - gPlayers[arg0].playerObj->coords.y) / arg2;
        obj->unk_38 = (arg1->z - gPlayers[arg0].playerObj->coords.z) / arg2;
    } else {
        obj->unk_30 = (arg1->x - ((unkGlobalStruct_00*)arg3)->unk_0C) / arg2;
        obj->unk_34 = (arg1->y - ((unkGlobalStruct_00*)arg3)->unk_10) / arg2;
        obj->unk_38 = (arg1->z - ((unkGlobalStruct_00*)arg3)->unk_14) / arg2;
    }
    
    obj->unk_50 = (unkGlobalStruct_00* )arg3;

    for (i = 0; i < 32; i++) {
        if (D_800F50C0[i] == NULL) {
            D_800F50C0[i] = obj;
            return obj;
            break;
        }
    }
    return obj;
}

#ifdef NON_MATCHING
void func_8004E564(unkObjectStruct* arg0) { //matches, needs rodata support
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f20_4;
    f32 temp_f20_5;
    Object* var_s0;
    Object* temp_v0;
    Object *new_var;

    var_s0 = (Object*)arg0->unk_50;
    arg0->unk_4D--;
    
    if (var_s0 == NULL) {
        if (arg0->unk_4D == 0) {
            gPlayers[arg0->unk_4C].playerObj->coords.x = arg0->unk_18;
            gPlayers[arg0->unk_4C].playerObj->coords.y = arg0->unk_1C;
            gPlayers[arg0->unk_4C].playerObj->coords.z = arg0->unk_20;
            func_8005D718(arg0);
            return;
        }
        
        gPlayers[arg0->unk_4C].playerObj->coords.x = gPlayers[arg0->unk_4C].playerObj->coords.x + arg0->unk_30;
        gPlayers[arg0->unk_4C].playerObj->coords.y = gPlayers[arg0->unk_4C].playerObj->coords.y + arg0->unk_34;
        gPlayers[arg0->unk_4C].playerObj->coords.z = gPlayers[arg0->unk_4C].playerObj->coords.z + arg0->unk_38;   
        new_var = gPlayers[arg0->unk_4C].playerObj;
        temp_v0 = new_var;
        temp_f20 = func_80088060(arg0->unk_4D * 180.0f / arg0->unk_4E * 0.017453292519943295) * arg0->unk_24;
        temp_v0->coords.x += temp_f20 - (func_80088060((arg0->unk_4D + 1) * 180.0f / arg0->unk_4E * 0.017453292519943295) * arg0->unk_24);
        temp_v0 = gPlayers[arg0->unk_4C].playerObj;
        temp_f20_2 = func_80088060(arg0->unk_4D * 180.0f / arg0->unk_4E * 0.017453292519943295) * arg0->unk_28;
        temp_v0->coords.y += temp_f20_2 - (func_80088060((arg0->unk_4D + 1) * 180.0f / arg0->unk_4E * 0.017453292519943295) * arg0->unk_28);
        var_s0 = gPlayers[arg0->unk_4C].playerObj;
        temp_f20_5 = func_80088060(arg0->unk_4D * 180.0f / arg0->unk_4E * 0.017453292519943295)* arg0->unk_2C;
        temp_f20_5 = temp_f20_5 - (func_80088060(( (((arg0->unk_4D + 1) * 180.0f) / arg0->unk_4E) * 0.017453292519943295)) * arg0->unk_2C);
        temp_f20_5 += var_s0->coords.z;
        var_s0->coords.z = temp_f20_5;
    } else if (arg0->unk_4D == 0) {
        var_s0->coords.x = arg0->unk_18;
        var_s0->coords.y = arg0->unk_1C;
        var_s0->coords.z = arg0->unk_20;
        arg0->unk_50 = NULL;
        func_8005D718(arg0);
        return;
    } else {
        var_s0->coords.x += arg0->unk_30;
        var_s0->coords.y += arg0->unk_34;
        var_s0->coords.z += arg0->unk_38;

        temp_f20_3 = func_80088060(arg0->unk_4D * 180.0f / arg0->unk_4E * 0.017453292519943295)* arg0->unk_24;
        var_s0->coords.x += temp_f20_3 - (func_80088060(( (((arg0->unk_4D + 1) * 180.0f) / arg0->unk_4E) * 0.017453292519943295)) * arg0->unk_24);
        temp_f20_4 = func_80088060(arg0->unk_4D * 180.0f / arg0->unk_4E * 0.017453292519943295)* arg0->unk_28;
        var_s0->coords.y += temp_f20_4 - (func_80088060(( (((arg0->unk_4D + 1) * 180.0f) / arg0->unk_4E) * 0.017453292519943295)) * arg0->unk_28);
        temp_f20_5 = func_80088060(arg0->unk_4D * 180.0f / arg0->unk_4E * 0.017453292519943295)* arg0->unk_2C;
        temp_f20_5 = temp_f20_5 - (func_80088060(( (((arg0->unk_4D + 1) * 180.0f) / arg0->unk_4E) * 0.017453292519943295)) * arg0->unk_2C);
        temp_f20_5 += var_s0->coords.z;
        var_s0->coords.z = temp_f20_5;
    }
}
#else
INCLUDE_ASM(s32, "4E530", func_8004E564)
#endif

INCLUDE_ASM(s32, "4E530", func_8004EA8C);

INCLUDE_ASM(s32, "4E530", func_8004EC44);

INCLUDE_ASM(s32, "4E530", func_8004EE14);

void func_8004F00C(Object* arg0, f32 arg1, f32 arg2) {
    arg0->unk_34 = arg1;
    arg0->unk_38 = arg2;
}

s32 func_8004F018(Object* arg0) {
    if (!(arg0->unk_38 != 0.0f)) {
        return 0;
    } else {
        return 1;
    }
}

void func_8004F044(Object* arg0) {
    while (func_8004F018(arg0) != 0) {
        SleepVProcess();
    }
}

void func_8004F084(unkObjectStruct* arg0) {
    f32 temp_f0;

    func_800264F8(arg0->unk_3C, arg0->unk_44, (sinf((f32) (arg0->unk_18 * D_800CB128)) / 2.0f) + 0.5f, D_800CB110, D_800CB11C, 0);
    arg0->unk_18 += 20.0f;
    if (arg0->unk_18 >= 360.0f) {
        arg0->unk_18 -= 360.0f;
    }
}

void func_8004F140(s32 arg0) {
    unkObjectStruct* temp_v0;

    D_800C524C = LoadFormFile(0xA0076, 0x2AD);
    func_80026040(arg0);
    temp_v0 = func_8005D384(0x1000, 0, 0, -1, &func_8004F084);
    D_800C5248 = temp_v0;
    temp_v0->unk_18 = 0.0f;
    temp_v0->unk_3C = arg0;
    temp_v0->unk_44 = D_800C524E;
    func_8005D8B8(temp_v0, 0xA0);
}

INCLUDE_ASM(s32, "4E530", func_8004F1D0);

INCLUDE_ASM(s32, "4E530", func_8004F234);

INCLUDE_ASM(s32, "4E530", func_8004F25C);

void func_8004F284(void) {
}

INCLUDE_ASM(s32, "4E530", func_8004F28C);

INCLUDE_ASM(s32, "4E530", func_8004F2AC);

INCLUDE_ASM(s32, "4E530", func_8004F2EC);

INCLUDE_ASM(s32, "4E530", func_8004F358);

INCLUDE_ASM(s32, "4E530", func_8004F40C);

INCLUDE_ASM(s32, "4E530", func_8004F4D4);

INCLUDE_ASM(s32, "4E530", func_8004F504);

INCLUDE_ASM(s32, "4E530", func_8004F548);

INCLUDE_ASM(s32, "4E530", func_8004F584);

INCLUDE_ASM(s32, "4E530", func_8004F5F0);

INCLUDE_ASM(s32, "4E530", func_8004F628);

INCLUDE_ASM(s32, "4E530", func_8004F754);

INCLUDE_ASM(s32, "4E530", func_8004F790);

INCLUDE_ASM(s32, "4E530", func_8004F7C0);

INCLUDE_ASM(s32, "4E530", func_8004F800);

INCLUDE_ASM(s32, "4E530", func_8004F830);

INCLUDE_ASM(s32, "4E530", func_8004F860);

INCLUDE_ASM(s32, "4E530", func_8004F898);

INCLUDE_ASM(s32, "4E530", func_8004F8DC);

INCLUDE_ASM(s32, "4E530", func_8004F928);

INCLUDE_ASM(s32, "4E530", func_8004F954);

INCLUDE_ASM(s32, "4E530", func_8004F9F4);

INCLUDE_ASM(s32, "4E530", func_8004FA48);

INCLUDE_ASM(s32, "4E530", func_8004FA90);

INCLUDE_ASM(s32, "4E530", func_8004FAB8);

INCLUDE_ASM(s32, "4E530", func_8004FB14);

INCLUDE_ASM(s32, "4E530", func_8004FB50);

INCLUDE_ASM(s32, "4E530", func_8004FBB4);

INCLUDE_ASM(s32, "4E530", func_8004FBEC);

INCLUDE_ASM(s32, "4E530", func_8004FCB0);

INCLUDE_ASM(s32, "4E530", func_8004FD68);

INCLUDE_ASM(s32, "4E530", func_8004FEA0);

INCLUDE_ASM(s32, "4E530", func_8004FEBC);

INCLUDE_ASM(s32, "4E530", func_8004FF68);

INCLUDE_ASM(s32, "4E530", func_8004FFA8);

INCLUDE_ASM(s32, "4E530", func_800500A4);

INCLUDE_ASM(s32, "4E530", func_80050160);

INCLUDE_ASM(s32, "4E530", func_8005021C);

INCLUDE_ASM(s32, "4E530", func_80050288);

INCLUDE_ASM(s32, "4E530", func_80050338);

INCLUDE_ASM(s32, "4E530", func_80050368);

INCLUDE_ASM(s32, "4E530", func_8005038C);

INCLUDE_ASM(s32, "4E530", func_800503B0);

INCLUDE_ASM(s32, "4E530", func_8005049C);
