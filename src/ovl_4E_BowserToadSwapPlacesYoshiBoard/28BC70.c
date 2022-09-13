#include "common.h"
#include "28BC70.h"

unk_Struct03* D_800F7840_28CED0 = NULL;
unk_Struct03* D_800F7844_28CED4 = NULL;
unk_Struct03* D_800F7848_28CED8 = NULL;
unk_Struct03* D_800F784C_28CEDC = NULL;
s32 D_800F7850_28CEE0 = -1;
Object* D_800F7854_28CEE4 = NULL;
unk_Struct03* D_800F7858_28CEE8 = NULL;
Object* D_800F785C_28CEEC = NULL;

Vec3f D_800F7860_28CEF0 = {0.0f, 0.0f, 1120.0f};
Vec3f D_800F786C_28CEFC = {-250.0f, 0.0f, 80.0f};
Vec3f D_800F7878_28CF08 = {0.0f, -100.0f, -6000.0f};
Vec3f D_800F7884_28CF14 = {0.0f, 0.0f, 1120.0f};
Vec3f D_800F7890_28CF20 = {-6000.0f, 0.0f, -6000.0f};
Vec3f D_800F789C_28CF2C[] = {{-1500.0f, 0.0f, -2500.0f}, {-500.0f, 0.0f, -1500.0f}};
Vec3f D_800F78B4_28CF44 = {-2500.0f, 0.0f, -3500.0f};
Vec3f D_800F78C0_28CF50 = {700.0f, 0.0f, -6000.0f};
Vec3f D_800F78CC_28CF5C = {-300.0f, 0.0f, -300.0f};
Vec3f D_800F78D8_28CF68 = {0.0f, 0.0f, 1120.0f};
Vec3f D_800F78E4_28CF74 = {-800.0f, 0.0f, -300.0f};

s32 D_800F78F0_28CF80[] = { 0x00000003, 0x000A0068, 0x000A006A, 0x000A006C }; //cheep cheep (probaby some type of struct)
s32 D_800F7900_28CF90[] = { 0x00000002, 0x00070006, 0x00070008, 0x00000000 }; //toad

void func_800F65E0_28BC70(void) {
    D_800F7960 = D_800ED5DD;
    func_8005CF30(0x32, 0xA);
    func_800F7764_28CDF4();
    func_800F73C0_28CA50();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(func_800F67BC_28BE4C, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F737C_28CA0C);
    SetFadeInTypeAndTime(4, 0x10);
}

void func_800F66B4_28BD44(Object* arg0) {
    func_800264F8(*D_800F7848_28CED8->unk_3C->unk_40, D_800F7850_28CEE0, arg0->unk_18, "pukuSa-bmerge1", "pukuSa-bmerge2", 0);
}

void func_800F6708_28BD98(Object* arg0) {
    unk_Struct03* temp_s0;

    temp_s0 = D_800F7858_28CEE8;
    temp_s0->unk_18.x = func_80088060(arg0->unk_18 * (0.017453292519943295));
    temp_s0 = D_800F7858_28CEE8;
    temp_s0->unk_18.z = func_800855C0(arg0->unk_18 * (0.017453292519943295));
    arg0->unk_18 += 5.0f;
    if (arg0->unk_18 >= 360.0f) {
        arg0->unk_18 -= 360.0f;
    }
}

void func_800F67BC_28BE4C(void) {
    Vec3f sp18 = {0.0f, 0.0f, 0.0f};
    Vec3f sp28 = {200.0f, 0.0f, 0.0f};
    unk_Struct04* temp_s0;
    unk_Struct04* temp_s0_2;
    s32 temp_s1, temp_s3, temp_s4;
    s32 i;
    s32 var_s2;

    func_8004F8DC();
    temp_s3 = func_8004F954(0xA0146, 0xA);
    func_8004FA90(temp_s3, 5.0f, 5.0f, 5.0f);
    temp_s4 = func_8004F954(0xA0148, 0x16);
    func_8004FA90(temp_s4, 5.0f, 5.0f, 5.0f);
    func_800421E0();
    SleepProcess(0x1A);
    func_8004F9F4(temp_s3, D_800F7848_28CED8->coords.x - 100.0f, D_800F7848_28CED8->coords.y + 100.0f, D_800F7848_28CED8->coords.z + 1000.0f, 1);
    func_8004F9F4(temp_s3, D_800F7848_28CED8->coords.x + 100.0f, D_800F7848_28CED8->coords.y + 100.0f, D_800F7848_28CED8->coords.z + 1000.0f, 1);
    PlaySound(0xB2);
    func_8004EA8C(D_800F7848_28CED8, &D_800F7884_28CF14, 0x2D, &sp18);
    func_8004F00C(D_800F7848_28CED8, 30.0f, -1.3f);
    
    for (i = 0; i < 0x37; i++) {
        temp_s0 = D_800F7848_28CED8->unk_3C;
        temp_s0->unk_24 = -func_80088060( ((i * 6) + 0x1E) * (0.017453292519943295)) * 30.0f;
        if (i == 10) {
            func_8004EE14(0, &D_800F7878_28CF08, 0x14, D_800F7840_28CED0);
        }

        if (i == 0x2D) {
            PlaySound(0xAE);
        }

        if ((i < 0x2D) == 0) {
            D_800F7854_28CEE4->unk_18 = 1.0f - ((i - 0x2D) / 10.0f);
            D_800F7840_28CED0->coords.y += 5.0f;
            D_800F7840_28CED0->unk_0A |= 1;
            
        }
        SleepVProcess();
    }

    D_800F7848_28CED8->unk_3C->unk_24 = 0.0f;
    D_800F7854_28CEE4->unk_18 = 0.0f;
    SleepProcess(0xA);
    func_800A0D00(&D_800F7840_28CED0->xScale, 0.5f, 0.5f, 0.5f);
    func_8004EE14(0, &D_800F7890_28CF20, 0x28, D_800F7848_28CED8);
    func_8004EE14(0, &D_800F7890_28CF20, 0x28, D_800F7840_28CED0);
    
    for (i = 0, var_s2 = 0; i < 3;) { //strange for loop that only increments if i is 0?
        temp_s0_2 = D_800F7848_28CED8->unk_3C;
        temp_s0_2->unk_24 = -func_80088060((var_s2 * (0.017453292519943295))) * 20.0f;
        temp_s0 = D_800F7840_28CED0->unk_3C;
        temp_s0->unk_24 = -func_80088060((var_s2 * (0.017453292519943295))) * 20.0f;
        
        if (func_8004F018(D_800F7848_28CED8) == 0) {
            if (i != 2) {
                func_8004F00C(D_800F7848_28CED8, 60.0f, -5.0f);
                func_8004F00C(D_800F7840_28CED0, 60.0f, -5.0f);
            }
            
            if (i == 0) {
                PlaySound(0xB0);
            }
            i++;
        }
        
        var_s2 += 0x28;
        SleepVProcess();
    }

    func_8004EA8C(D_800F7848_28CED8, &D_800F7890_28CF20, 0x2D, &sp18);
    func_8004F00C(D_800F7848_28CED8, 60.0f, -1.3f);
    func_8004EA8C(D_800F7840_28CED0, &D_800F7890_28CF20, 0x2D, &sp18);
    func_8004F00C(D_800F7840_28CED0, 60.0f, -1.3f);
    SleepProcess(0x14);
    func_8004EA8C(D_800F7844_28CED4, &D_800F78CC_28CF5C, 0x2D, &sp28);
    func_8004EA8C(D_800F784C_28CEDC, &D_800F78CC_28CF5C, 0x2D, &sp28);
    
    for (i = 0; i < 0x2D; i++) {
        if (!(i & 1)) {
            func_8004F9F4(temp_s3, D_800F784C_28CEDC->coords.x, D_800F784C_28CEDC->coords.y, D_800F784C_28CEDC->coords.z, 1);
            func_8004F9F4(temp_s4, D_800F784C_28CEDC->coords.x, D_800F784C_28CEDC->coords.y, D_800F784C_28CEDC->coords.z, 4);
        }
        SleepVProcess();
    }

    D_800F7844_28CED4->unk_0A &= ~0x1;
    func_8004E3E0(0, &D_800F78D8_28CF68, 0x14, D_800F7844_28CED4);
    func_8004E3E0(0, &D_800F78E4_28CF74, 5, D_800F784C_28CEDC);
    PlaySound(0xB5);
    func_8004F00C(D_800F7844_28CED4, 30.0f, -3.5f);

    for (i = 0; i < 5; i++) {
        func_8004F9F4(temp_s3, D_800F784C_28CEDC->coords.x, D_800F784C_28CEDC->coords.y, D_800F784C_28CEDC->coords.z, 1);
        func_8004F9F4(temp_s4, D_800F784C_28CEDC->coords.x, D_800F784C_28CEDC->coords.y, D_800F784C_28CEDC->coords.z, 4);
        SleepVProcess();        
    }

    func_8003E664(D_800F784C_28CEDC);
    SleepProcess(0xD);
    PlaySound(0xB7);
    SleepProcess(0xA);
    func_800726AC(0, 4);
    SleepProcess(6);
    func_8004A140();
    func_8003E694(D_800F7844_28CED4);
    func_8003E694(D_800F784C_28CEDC);
    D_800F7844_28CED4 = NULL;
    D_800F784C_28CEDC = NULL;
    SleepProcess(5);
    func_8003E5E0(D_800F7858_28CEE8);
    D_800ED15C.unk_02 = (D_800ED15C.unk_02 + 1) & 1;

    if (!(D_800ED15C.unk_02 & 1)) {
        LoadBackgroundIndex(0x16);
    } else {
        LoadBackgroundIndex(0x17);
    }
    
    SetFadeInTypeAndTime(0, 4);
    SleepProcess(4);
    func_800A0D00(&D_800F7840_28CED0->xScale, 0.5f, 0.5f, 0.5f);
    D_800F7840_28CED0->unk_30 = 80.0f;
    func_8003E5E0(D_800F7840_28CED0);
    D_800F7848_28CED8->unk_0A |= 1;
    D_800F7848_28CED8->unk_3C->unk_24 = 0.0f;
    D_800F7840_28CED0->unk_3C->unk_24 = 0.0f;
    func_800A0D00(&D_800F7848_28CED8->coords, D_800F789C_28CF2C[0].x, D_800F789C_28CF2C[0].y, D_800F789C_28CF2C[0].z);
    func_8004CCD0(&D_800F7848_28CED8->coords, &D_800F789C_28CF2C[1], &D_800F7848_28CED8->unk_18);
    func_800A0D00(&D_800F7840_28CED0->coords, D_800F789C_28CF2C[0].x, D_800F789C_28CF2C[0].y, D_800F789C_28CF2C[0].z);
    func_8004CCD0(&D_800F7840_28CED0->coords, &D_800F789C_28CF2C[1], &D_800F7840_28CED0->unk_18);
    func_8004E3E0(0, &D_800F789C_28CF2C[1], 0xF, D_800F7848_28CED8);
    func_8004E3E0(0, &D_800F789C_28CF2C[1], 0xF, D_800F7840_28CED0);

    for (i = 0; i < 15; i++) {
        func_8004F9F4(temp_s3, D_800F7848_28CED8->coords.x, D_800F7848_28CED8->coords.y + 100.0f, D_800F7848_28CED8->coords.z, 1);
        SleepVProcess();
    }

    D_800F7840_28CED0->coords.y -= 30.0f;

    for (i = 0; i < 5; i++) {
        SleepVProcess();
    }
    
    func_80025EB4(*D_800F7848_28CED8->unk_3C->unk_40, 2, 1);

    for (i = 0; i >= -0x1E; i -= 2) {
        D_800F7848_28CED8->unk_3C->unk_24 = i;
        SleepVProcess();
    }
    
    SleepProcess(5);

    for (; i <= 0; i += 10) {
        D_800F7848_28CED8->unk_3C->unk_24 = i;
        D_800F7854_28CEE4->unk_18 = (i / 30.0f) + 1.0f;
        SleepVProcess();
    }
    
    PlaySound(0xAC);
    func_8004F4D4(D_800F7840_28CED0, 0, 0);
    func_8004F40C(D_800F7840_28CED0, -1, 2);
    D_800F7840_28CED0->unk_0A &= ~0x1;
    func_8004CCD0(&D_800F7840_28CED0->coords, &D_800F7860_28CEF0, &D_800F7840_28CED0->unk_18);
    func_800A0D00(&D_800F7840_28CED0->xScale, 0.5f, 0.5f, 0.5f);
    func_8004E3E0(0, &D_800F7860_28CEF0, 0xA, D_800F7840_28CED0);
    
    func_8004F00C(D_800F7840_28CED0, 10.0f, -3.0f);

    for (i = 0; i < 10; i++) {
        func_800A0D00(&D_800F7840_28CED0->xScale, (i / 20.0f) + 0.5f, (i / 20.0f) + 0.5f, (i / 20.0f) + 0.5f);
        SleepVProcess();
    }
    
    func_800A0D00(&D_800F7840_28CED0->xScale, 1.0f, 1.0f, 1.0f);
    func_8004EE14(0, D_800F32A0, 0x1E, D_800F7840_28CED0);
    func_80025EB4(*D_800F7848_28CED8->unk_3C->unk_40, 1, 2);
    func_8004EE14(0, &D_800F78B4_28CF44, 0x14, D_800F7848_28CED8);

    for (i = 0; i < 20; i++) {
        SleepVProcess();
    }
    
    func_8004E3E0(0, &D_800F78B4_28CF44, 0xA, D_800F7848_28CED8);

    for (i = 0; i < 10; i++) {
        func_8004F9F4(temp_s3, D_800F7848_28CED8->coords.x, D_800F7848_28CED8->coords.y + 100.0f, D_800F7848_28CED8->coords.z, 1);
        SleepVProcess();
    }

    temp_s1 = CreateTextWindow(0x60, 0x3C, 0xB, 3);
    LoadStringIntoWindow(temp_s1, (void* )0x1C3, -1, -1);
    func_8006E070(temp_s1, 0);
    ShowTextWindow(temp_s1);
    func_8004DBD4(temp_s1, D_800F7960);
    HideTextWindow(temp_s1);
    D_800F5144 = 1;
    while (1) {
        SleepVProcess();
    }
}


void func_800F7330_28C9C0(void) {
    if (func_80072718() == 0) {
        func_800F7818_28CEA8();
        func_800F7680_28CD10();
        func_80054654();
        func_80070ED4();
        func_8005DFB8(1);
    }
}

void func_800F737C_28CA0C(Object* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(4, 16);
        arg0->func_ptr = &func_800F7330_28C9C0;
    }
}

void func_800F73C0_28CA50(void) {
    func_8003DAA8();
    func_8004F2AC();
    D_800F7844_28CED4 = func_8003DBE0(6, &D_800F78F0_28CF80);
    func_800A0D00(&D_800F7844_28CED4->xScale, 1.5f, 1.5f, 1.5f);
    func_800A0D00(&D_800F7844_28CED4->coords, D_800F78C0_28CF50.x, D_800F78C0_28CF50.y, D_800F78C0_28CF50.z);
    D_800F7844_28CED4->unk_30 = 130.0f;
    D_800F7844_28CED4->unk_0A |= 1;
    D_800F784C_28CEDC = func_8003DBE0(0x70, NULL);
    func_800A0D00(&D_800F784C_28CEDC->coords, D_800F78C0_28CF50.x, D_800F78C0_28CF50.y, D_800F78C0_28CF50.z);
    D_800F784C_28CEDC->unk_30 = 130.0f;
    D_800F7840_28CED0 = func_8003DBE0(7, &D_800F7900_28CF90);
    func_800A0D00(&D_800F7840_28CED0->coords, D_800F7860_28CEF0.x, D_800F7860_28CEF0.y, D_800F7860_28CEF0.z);
    D_800F7848_28CED8 = func_8003DBE0(0x5C, NULL);
    func_800A0D00(&D_800F7848_28CED8->coords, D_800F7878_28CF08.x, D_800F7878_28CF08.y, D_800F7878_28CF08.z);
    func_80025930(*D_800F7848_28CED8->unk_3C->unk_40, 0x20000, 0x20000);
    func_80025AD4(*D_800F7848_28CED8->unk_3C->unk_40);
    D_800F7850_28CEE0 = LoadFormFile(0xA00B1, 0x2AD) & 0xFFFF;
    func_80025930(D_800F7850_28CEE0, 0x20000, 0x20000);
    func_80025AD4(D_800F7850_28CEE0);
    func_80026040(*D_800F7848_28CED8->unk_3C->unk_40);
    D_800F7854_28CEE4 = func_8005D384(0x1000, 0, 0, -1, &func_800F66B4_28BD44);
    D_800F7854_28CEE4->unk_18 = 1.0f;
    D_800F7858_28CEE8 = func_8003DBE0(0x71, NULL);
    func_800A0D00(&D_800F7858_28CEE8->coords, -1500.0f, 0.0f, -1500.0f);
    func_800A0D00(&D_800F7858_28CEE8->xScale, 5.0f, 1.0f, 5.0f);
    func_800258EC(*D_800F7858_28CEE8->unk_3C->unk_40, 0x80000, 0x80000);
    func_80025AD4(*D_800F7858_28CEE8->unk_3C->unk_40);
    func_8003E664(D_800F7858_28CEE8);
    D_800F785C_28CEEC = func_8005D384(0x1000, 0, 0, -1, &func_800F6708_28BD98);
    D_800F785C_28CEEC->unk_18 = 0.0f;
}

void func_800F7680_28CD10(void) {
    if (D_800F7844_28CED4 != NULL) {
        func_8003E694(D_800F7844_28CED4);
    }
    
    if (D_800F7848_28CED8 != NULL) {
        func_8003E694(D_800F7848_28CED8);
    }
    
    if (D_800F7840_28CED0 != NULL) {
        func_8003E694(D_800F7840_28CED0);
    }
    
    if (D_800F784C_28CEDC != NULL) {
        func_8003E694(D_800F784C_28CEDC);
    }

    if (D_800F7858_28CEE8 != NULL) {
        func_8003E694(D_800F7858_28CEE8);
    }
    
    if (D_800F7850_28CEE0 != -1) {
        func_8002456C(D_800F7850_28CEE0);
    }
    
    if (D_800F7854_28CEE4 != NULL) {
        func_8005D718(D_800F7854_28CEE4);
    }

    if (D_800F785C_28CEEC != NULL) {
        func_8005D718(D_800F785C_28CEEC);
    }
    
    func_8004F2EC();
}

void func_800F7764_28CDF4(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    if (D_800ED15E == 0) {
        LoadBackgroundIndex(0x16);
    } else {
        LoadBackgroundIndex(0x17);
    }
}

void func_800F7818_28CEA8(void) {
    func_8004A140();
    func_80049F0C();
}
