#include "engine/process.h"
#include "289BA0.h"

Object* D_800F74F0_PiranhaPlantStarStealPeachBoard = 0;
Object* D_800F74F4_PiranhaPlantStarStealPeachBoard = 0;
Object* D_800F74F8_PiranhaPlantStarStealPeachBoard = 0;
Object* D_800F74FC_PiranhaPlantStarStealPeachBoard = 0;
s32 D_800F7500_PiranhaPlantStarStealPeachBoard = -1;
s32 D_800F7504_PiranhaPlantStarStealPeachBoard = -1;
s32 D_800F7508_PiranhaPlantStarStealPeachBoard = -1;
s32 D_800F750C_PiranhaPlantStarStealPeachBoard = -1;
void* D_800F7510_PiranhaPlantStarStealPeachBoard = 0;

//bss
extern u8 D_800F75E0_PiranhaPlantStarStealPeachBoard;
extern Object* D_800F75E4_PiranhaPlantStarStealPeachBoard;

Vec3f D_800F7514_PiranhaPlantStarStealPeachBoard = { -80.0f, 0.0f, 1310.0f };
Vec3f D_800F7520_PiranhaPlantStarStealPeachBoard = { -280.0f, -400.0f, 1310.0f };
Vec3f D_800F752C_PiranhaPlantStarStealPeachBoard = { 115.0f, 0.0f, 1520.0f };
Vec3f D_800F7538_PiranhaPlantStarStealPeachBoard = { -145.0f, 0.0f, 1440.0f };
Vec3f D_800F7544_PiranhaPlantStarStealPeachBoard = { 450.0f, 0.0f, 785.0f };
Vec3f D_800F7550_PiranhaPlantStarStealPeachBoard = { -80.0f, 0.0f, 785.0f };

static s16 D_800F755C_PiranhaPlantStarStealPeachBoard[] = {
    0x0000, 0x0002, 0x0001, 0x000A, 0x0001, 0x000F
};

static s16 D_800F7568_PiranhaPlantStarStealPeachBoard[] = {
    0x0000, 0x0002, 0x0002, 0x000A, 0x0002, 0x000F
};

static s16 D_800F7574_PiranhaPlantStarStealPeachBoard[] = {
    0x0000, 0x0002, 0x0006, 0x000A, 0x0006, 0x000F
};

static s16 D_800F7580_PiranhaPlantStarStealPeachBoard[] = {
    0x0000, 0x0002, 0x0003, 0x000A, 0x0003, 0x000F
};

static s16 D_800F758C_PiranhaPlantStarStealPeachBoard[] = {
    0x0000, 0x0002, 0x0004, 0x000A, 0x0004, 0x000F
};

static s16 D_800F7598_PiranhaPlantStarStealPeachBoard[] = {
    0x0000, 0x0002, 0x0005, 0x000A, 0x0005, 0x000F
};

static s16* D_800F75A4_PiranhaPlantStarStealPeachBoard[] = {
    D_800F755C_PiranhaPlantStarStealPeachBoard, D_800F7568_PiranhaPlantStarStealPeachBoard, D_800F7574_PiranhaPlantStarStealPeachBoard, D_800F7580_PiranhaPlantStarStealPeachBoard, D_800F758C_PiranhaPlantStarStealPeachBoard, D_800F7598_PiranhaPlantStarStealPeachBoard
};

static s32 D_800F75BC_PiranhaPlantStarStealPeachBoard[] = { 00000003, 0x0000004A, 0x00000049, 0x0000004E, 0x00000000 };

void func_800F65E0_PiranhaPlantStarStealPeachBoard(void) {
    D_800F75E0_PiranhaPlantStarStealPeachBoard = D_800ED5DC;
    omInitObjMan(0x32, 0x32);
    func_800F741C_PiranhaPlantStarStealPeachBoard();
    func_800F718C_PiranhaPlantStarStealPeachBoard();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(func_800F66B4_PiranhaPlantStarStealPeachBoard, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F7020_PiranhaPlantStarStealPeachBoard);
    SetFadeInTypeAndTime(1, 0x10);
}

void func_800F66B4_PiranhaPlantStarStealPeachBoard(void) {
    Vec3f sp10;
    f32 var_f22;
    f32 var_f24;
    s32 windowID;
    Object* temp_s0_2;
    s32 i;
    u8 new_var;
    f32 *new_var3;

    func_800421E0();
    HuPrcSleep(0x1A);
    
    if (gPlayers[D_800F75E0_PiranhaPlantStarStealPeachBoard].starAmount == 0) {
        func_8004EE14(0, &D_800F7550_PiranhaPlantStarStealPeachBoard, 5, D_800F74F0_PiranhaPlantStarStealPeachBoard);
        HuPrcSleep(0x14);
        PlaySound(0x96);
        sp10.x = D_800F74F8_PiranhaPlantStarStealPeachBoard->coords.x - 100.0f;
        sp10.y = D_800F74F8_PiranhaPlantStarStealPeachBoard->coords.y;
        sp10.z = D_800F74F8_PiranhaPlantStarStealPeachBoard->coords.z;
        func_8004CCD0(&D_800F74F8_PiranhaPlantStarStealPeachBoard->coords, &sp10, &D_800F74F8_PiranhaPlantStarStealPeachBoard->unk_18);
        var_f22 = D_800F7544_PiranhaPlantStarStealPeachBoard.x;

        for (; var_f22 >= 295.0f; var_f22 -= 50.0f) {
            D_800F74F8_PiranhaPlantStarStealPeachBoard->coords.x = var_f22;
            HuPrcVSleep();
        }

        func_8004EE14(0, &D_800F7544_PiranhaPlantStarStealPeachBoard, 0xA, D_800F75E4_PiranhaPlantStarStealPeachBoard);
        D_800F74F8_PiranhaPlantStarStealPeachBoard->coords.x = 295.0f;
        HuPrcVSleep();
        func_8004EE14(0, &D_800F75E4_PiranhaPlantStarStealPeachBoard->coords, 0xA, D_800F74F8_PiranhaPlantStarStealPeachBoard);
        HuPrcSleep(0xA);
        windowID = CreateTextWindow(0x6E, 0x28, 0xF, 4);
        LoadStringIntoWindow(windowID, (void*)0x1A2, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0x435);
        func_8004DBD4(windowID, D_800F75E0_PiranhaPlantStarStealPeachBoard);
        HideTextWindow(windowID);
        PlaySound(0x97);
        var_f22 = D_800F74F8_PiranhaPlantStarStealPeachBoard->coords.x;

        for (; var_f22 <= D_800F7544_PiranhaPlantStarStealPeachBoard.x; var_f22 += 50.0f) {
            D_800F74F8_PiranhaPlantStarStealPeachBoard->coords.x = var_f22;
            HuPrcVSleep();
        }   
        
    } else {
        func_8004F4D4(D_800F74F0_PiranhaPlantStarStealPeachBoard, 0, 0);
        func_8004F40C(D_800F74F0_PiranhaPlantStarStealPeachBoard, 1, 2);
        for (i = 0; i < 45; i++) {
            if (i == 0xF) {
                PlaySound(0x9D);
            } else if (i == 0x1E) {
                PlaySound(0x9D);
            }
            HuPrcVSleep();
        }

        func_8003E81C(D_800F75E4_PiranhaPlantStarStealPeachBoard, 0, 0);
        D_800F750C_PiranhaPlantStarStealPeachBoard = LoadFormFile(0x1E, 0x6B9);
        func_80025798(D_800F750C_PiranhaPlantStarStealPeachBoard, D_800F75E4_PiranhaPlantStarStealPeachBoard->coords.x, D_800F75E4_PiranhaPlantStarStealPeachBoard->coords.y, D_800F75E4_PiranhaPlantStarStealPeachBoard->coords.z);
        func_80025830(D_800F750C_PiranhaPlantStarStealPeachBoard, 0.5f, 0.5f, 0.5f);
        func_80055994(D_800F75E0_PiranhaPlantStarStealPeachBoard, 2);
        gPlayers[D_800F75E0_PiranhaPlantStarStealPeachBoard].starAmount -= 1;
        func_80060618(0x44A, new_var = D_800F75E0_PiranhaPlantStarStealPeachBoard); //func_80060618(0x44A, D_800F75E0_PiranhaPlantStarStealPeachBoard);
        func_800503B0(D_800F75E0_PiranhaPlantStarStealPeachBoard, 6);
        PlaySound(0x6D);
        PlaySound(0x44);
        D_800F74FC_PiranhaPlantStarStealPeachBoard = CreateObject(0x40, NULL);
        D_800F74FC_PiranhaPlantStarStealPeachBoard->coords.x = D_800F752C_PiranhaPlantStarStealPeachBoard.x;
        D_800F74FC_PiranhaPlantStarStealPeachBoard->coords.y = D_800F752C_PiranhaPlantStarStealPeachBoard.y + 200.0f;
        D_800F74FC_PiranhaPlantStarStealPeachBoard->coords.z = D_800F752C_PiranhaPlantStarStealPeachBoard.z;
        D_800F74FC_PiranhaPlantStarStealPeachBoard->xScale = 0.5f;
        D_800F74FC_PiranhaPlantStarStealPeachBoard->yScale = 0.5f;
        D_800F74FC_PiranhaPlantStarStealPeachBoard->zScale = 0.5f;
        D_800F7510_PiranhaPlantStarStealPeachBoard = func_80042728(D_800F74FC_PiranhaPlantStarStealPeachBoard, 0);
        var_f22 = 0.0f;
        var_f24 = 7.0f;
        for(i = 0; i < 0x15F; i += 5) {
            
            temp_s0_2 = D_800F74FC_PiranhaPlantStarStealPeachBoard;
                //temp_s0_2->coords.x = D_800F752C_PiranhaPlantStarStealPeachBoard.x + (sinf((i * 5) * (M_PI/180)) * var_f24) ;
            new_var3 = &D_800F752C_PiranhaPlantStarStealPeachBoard.x;
            temp_s0_2->coords.x = (*new_var3) + (sinf((i * 5) * (M_PI/180)) * var_f24);
            
            temp_s0_2 = D_800F74FC_PiranhaPlantStarStealPeachBoard;
            temp_s0_2->coords.y = D_800F752C_PiranhaPlantStarStealPeachBoard.y + 200.0f + (i / 2);
            
            temp_s0_2->coords.z = D_800F752C_PiranhaPlantStarStealPeachBoard.z + (cosf((i * 5) * (M_PI/180)) * var_f24);
            temp_s0_2 = D_800F74FC_PiranhaPlantStarStealPeachBoard;
            
            temp_s0_2->unk_18.x = sinf(var_f22 * (M_PI/180));
            temp_s0_2 = D_800F74FC_PiranhaPlantStarStealPeachBoard;
            
            temp_s0_2->unk_18.z = cosf(var_f22 * (M_PI/180));
            
            if (i == 0x78) {
                func_8004E3E0(0, &D_800F7520_PiranhaPlantStarStealPeachBoard, 0x32, D_800F74F0_PiranhaPlantStarStealPeachBoard);
            }
            if (i == 0x4B) {
                PlaySound(0x9E);
                D_800F7508_PiranhaPlantStarStealPeachBoard = LoadFormFile(0x1D, 0x6B9);
                func_80025798(D_800F7508_PiranhaPlantStarStealPeachBoard, D_800F75E4_PiranhaPlantStarStealPeachBoard->coords.x, D_800F75E4_PiranhaPlantStarStealPeachBoard->coords.y, D_800F75E4_PiranhaPlantStarStealPeachBoard->coords.z);
            }
            HuPrcVSleep();
            var_f22 += 10.0f;
            var_f24 += 0.0f;
        }
        
        func_800726AC(0, 0x10);
        HuPrcSleep(0x1A);
        DestroyObject(D_800F75E4_PiranhaPlantStarStealPeachBoard);
        DestroyObject(D_800F74F0_PiranhaPlantStarStealPeachBoard);
        DestroyObject(D_800F74F4_PiranhaPlantStarStealPeachBoard);
        D_800F74F0_PiranhaPlantStarStealPeachBoard = NULL;
        D_800F74F4_PiranhaPlantStarStealPeachBoard = NULL;
        func_800F7120_PiranhaPlantStarStealPeachBoard();
        D_800F75E4_PiranhaPlantStarStealPeachBoard = CreateObject(func_80052F04(D_800ED100.boardRam[D_800ED100.boardRam[14]]), D_800F75A4_PiranhaPlantStarStealPeachBoard[gPlayers[D_800ED100.boardRam[D_800ED100.boardRam[14]]].characterID]);
        D_800F75E4_PiranhaPlantStarStealPeachBoard->coords.x = 0.0f;
        D_800F75E4_PiranhaPlantStarStealPeachBoard->coords.y = D_800F752C_PiranhaPlantStarStealPeachBoard.y;
        D_800F75E4_PiranhaPlantStarStealPeachBoard->coords.z = D_800F752C_PiranhaPlantStarStealPeachBoard.z;
        func_80021B14(*D_800F75E4_PiranhaPlantStarStealPeachBoard->unk_3C->unk_40, gPlayers[D_800ED100.boardRam[D_800ED100.boardRam[14]]].characterID, 0x80);
        func_8004CCD0(&D_800F75E4_PiranhaPlantStarStealPeachBoard->coords, &D_800F32A0->coords, &D_800F75E4_PiranhaPlantStarStealPeachBoard->unk_18);
        SetFadeInTypeAndTime(0, 0x10);
        HuPrcSleep(0x1A);
        func_800500A4();
        PlaySound(0x44);
        var_f22 = 0.0f;

        for (i = 0x15E; i >= 0; i -= 0x0A) {
            temp_s0_2 = D_800F74FC_PiranhaPlantStarStealPeachBoard;
            temp_s0_2->coords.x = 0.0f;
            temp_s0_2->coords.y = D_800F752C_PiranhaPlantStarStealPeachBoard.y + 200.0f + (i / 2);
            temp_s0_2->coords.z = D_800F752C_PiranhaPlantStarStealPeachBoard.z;
            var_f22 += 10.0f;
            temp_s0_2->unk_18.x = sinf(var_f22 * (M_PI/180));
            temp_s0_2 = D_800F74FC_PiranhaPlantStarStealPeachBoard;
            temp_s0_2->unk_18.z = cosf(var_f22 * (M_PI/180));
            HuPrcVSleep();
        }
        
        PlaySound(0x474);
        func_800503B0(D_800ED100.boardRam[D_800ED100.boardRam[14]], 4);
        DestroyObject(D_800F74FC_PiranhaPlantStarStealPeachBoard);
        D_800F74FC_PiranhaPlantStarStealPeachBoard = NULL;
        func_800427D4(D_800F7510_PiranhaPlantStarStealPeachBoard);
        D_800F7510_PiranhaPlantStarStealPeachBoard = NULL;
        func_8003E81C(D_800F75E4_PiranhaPlantStarStealPeachBoard, 1, 0U);
        func_80021CDC(*D_800F75E4_PiranhaPlantStarStealPeachBoard->unk_3C->unk_40, gPlayers[D_800ED100.boardRam[D_800ED100.boardRam[14]]].characterID, 0x81);
        func_80055994(D_800ED100.boardRam[D_800ED100.boardRam[14]], 1);

        if (gPlayers[D_800ED100.boardRam[D_800ED100.boardRam[14]]].starAmount < 99) {
            gPlayers[D_800ED100.boardRam[D_800ED100.boardRam[14]]].starAmount++;
        }
        
        HuPrcSleep(0x24);
        func_80060468(0x443, gPlayers[D_800ED100.boardRam[D_800ED100.boardRam[14]]].characterID);
        HuPrcSleep(0x30);
        func_80050160();
        D_800ED100.boardRam[D_800ED100.boardRam[14]] = -1;
    }
    
    D_800F5144 = 1;
    
    while (1) {
        HuPrcVSleep();
    }
    
}

void func_800F6FD4_PiranhaPlantStarStealPeachBoard(void) {
    if (func_80072718() == 0) {
        func_800F74C4_PiranhaPlantStarStealPeachBoard();
        func_800F7348_PiranhaPlantStarStealPeachBoard();
        func_80054654();
        func_80070ED4();
        omOvlReturnEx(1);
    }
}

void func_800F7020_PiranhaPlantStarStealPeachBoard(omObjData* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(1, 0x10);
        arg0->func_ptr = &func_800F6FD4_PiranhaPlantStarStealPeachBoard;
    }
}

void func_800F7064_PiranhaPlantStarStealPeachBoard(void) {
    void* temp_s0;

    D_800F7500_PiranhaPlantStarStealPeachBoard = func_80064EF4(1, 5);
    temp_s0 = ReadMainFS(0xA0101);
    D_800F7504_PiranhaPlantStarStealPeachBoard = func_800678A4(temp_s0);
    FreeMainFS(temp_s0);
    func_80067208(D_800F7500_PiranhaPlantStarStealPeachBoard, 0, D_800F7504_PiranhaPlantStarStealPeachBoard, 0);
    func_80067384(D_800F7500_PiranhaPlantStarStealPeachBoard, 0, 0x47F4);
    func_800674BC(D_800F7500_PiranhaPlantStarStealPeachBoard, 0, 0x1000U);
    func_80066DC4(D_800F7500_PiranhaPlantStarStealPeachBoard, 0, 0xA0, 0x78);
}

void func_800F7120_PiranhaPlantStarStealPeachBoard(void) {
    if (D_800F7500_PiranhaPlantStarStealPeachBoard != -1) {
        func_80064D38(D_800F7500_PiranhaPlantStarStealPeachBoard);
        D_800F7500_PiranhaPlantStarStealPeachBoard = -1;
    }
    if (D_800F7504_PiranhaPlantStarStealPeachBoard != -1) {
        func_80067704(D_800F7504_PiranhaPlantStarStealPeachBoard);
        D_800F7504_PiranhaPlantStarStealPeachBoard = -1;
    }
}

void func_800F718C_PiranhaPlantStarStealPeachBoard(void) {
    func_8003DAA8();
    func_8004F2AC();
    D_800F74F0_PiranhaPlantStarStealPeachBoard = CreateObject(0xC, &D_800F75BC_PiranhaPlantStarStealPeachBoard);
    func_800A0D00(&D_800F74F0_PiranhaPlantStarStealPeachBoard->coords, D_800F7514_PiranhaPlantStarStealPeachBoard.x, D_800F7514_PiranhaPlantStarStealPeachBoard.y, D_800F7514_PiranhaPlantStarStealPeachBoard.z);
    func_800A0D00(&D_800F74F0_PiranhaPlantStarStealPeachBoard->unk_18, 1.0f, 0.0f, 0.0f);
    D_800F74F8_PiranhaPlantStarStealPeachBoard = CreateObject(0xB, NULL);
    D_800F74F8_PiranhaPlantStarStealPeachBoard->coords.x = D_800F7544_PiranhaPlantStarStealPeachBoard.x;
    D_800F74F8_PiranhaPlantStarStealPeachBoard->coords.y = D_800F7544_PiranhaPlantStarStealPeachBoard.y;
    D_800F74F8_PiranhaPlantStarStealPeachBoard->coords.z = D_800F7544_PiranhaPlantStarStealPeachBoard.z;
    func_8004CCD0(&D_800F74F8_PiranhaPlantStarStealPeachBoard->coords, &D_800F32A0->coords, &D_800F74F8_PiranhaPlantStarStealPeachBoard->unk_18);
    D_800F75E4_PiranhaPlantStarStealPeachBoard = CreateObject(func_80052F04(D_800F75E0_PiranhaPlantStarStealPeachBoard), D_800F75A4_PiranhaPlantStarStealPeachBoard[gPlayers[D_800F75E0_PiranhaPlantStarStealPeachBoard].characterID]);
    D_800F75E4_PiranhaPlantStarStealPeachBoard->coords.x = D_800F752C_PiranhaPlantStarStealPeachBoard.x;
    D_800F75E4_PiranhaPlantStarStealPeachBoard->coords.y = D_800F752C_PiranhaPlantStarStealPeachBoard.y;
    D_800F75E4_PiranhaPlantStarStealPeachBoard->coords.z = D_800F752C_PiranhaPlantStarStealPeachBoard.z;
    func_8004CCD0(&D_800F75E4_PiranhaPlantStarStealPeachBoard->coords, &D_800F74F0_PiranhaPlantStarStealPeachBoard->coords, &D_800F75E4_PiranhaPlantStarStealPeachBoard->unk_18);
    D_800F74F4_PiranhaPlantStarStealPeachBoard = CreateObject((gPlayers[D_800ED100.boardRam[D_800ED100.boardRam[14]]].characterID + 0x1D), NULL);
    D_800F74F4_PiranhaPlantStarStealPeachBoard->coords.x = D_800F7538_PiranhaPlantStarStealPeachBoard.x;
    D_800F74F4_PiranhaPlantStarStealPeachBoard->coords.y = D_800F7538_PiranhaPlantStarStealPeachBoard.y;
    D_800F74F4_PiranhaPlantStarStealPeachBoard->coords.z = D_800F7538_PiranhaPlantStarStealPeachBoard.z;
    D_800F74F4_PiranhaPlantStarStealPeachBoard->unk_3C->unk_2C = 10.0f;
}

void func_800F7348_PiranhaPlantStarStealPeachBoard(void) {
    DestroyObject(D_800F75E4_PiranhaPlantStarStealPeachBoard);
    DestroyObject(D_800F74F8_PiranhaPlantStarStealPeachBoard);
    
    if (D_800F74F0_PiranhaPlantStarStealPeachBoard != NULL) {
        DestroyObject(D_800F74F0_PiranhaPlantStarStealPeachBoard);
    }
    
    if (D_800F74F4_PiranhaPlantStarStealPeachBoard != NULL) {
        DestroyObject(D_800F74F4_PiranhaPlantStarStealPeachBoard);
    }
    
    if (D_800F74FC_PiranhaPlantStarStealPeachBoard != NULL) {
        DestroyObject(D_800F74FC_PiranhaPlantStarStealPeachBoard);
    }
    
    if (D_800F7510_PiranhaPlantStarStealPeachBoard != NULL) {
        func_800427D4(D_800F7510_PiranhaPlantStarStealPeachBoard);
    }
    
    if (D_800F7508_PiranhaPlantStarStealPeachBoard != -1) {
        func_8002456C(D_800F7508_PiranhaPlantStarStealPeachBoard);
    }
    
    if (D_800F750C_PiranhaPlantStarStealPeachBoard != -1) {
        func_8002456C(D_800F750C_PiranhaPlantStarStealPeachBoard);
    }
    func_8004F2EC();
}

void func_800F741C_PiranhaPlantStarStealPeachBoard(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(FE2310_ROM_START);
    LoadBackgroundIndex(9);
    func_800F7064_PiranhaPlantStarStealPeachBoard();
}

void func_800F74C4_PiranhaPlantStarStealPeachBoard(void) {
    func_8004A140();
    func_80049F0C();
    func_800F7120_PiranhaPlantStarStealPeachBoard();
}
