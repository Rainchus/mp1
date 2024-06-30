#include "engine/process.h"
#include "28BC70.h"

Object* D_800F7840_BowserToadSwapPlacesYoshiBoard = NULL;
Object* D_800F7844_BowserToadSwapPlacesYoshiBoard = NULL;
Object* D_800F7848_BowserToadSwapPlacesYoshiBoard = NULL;
Object* D_800F784C_BowserToadSwapPlacesYoshiBoard = NULL;
s32 D_800F7850_BowserToadSwapPlacesYoshiBoard = -1;
omObjData* D_800F7854_BowserToadSwapPlacesYoshiBoard = NULL;
Object* D_800F7858_BowserToadSwapPlacesYoshiBoard = NULL;
omObjData* D_800F785C_BowserToadSwapPlacesYoshiBoard = NULL;

Vec3f D_800F7860_BowserToadSwapPlacesYoshiBoard = {0.0f, 0.0f, 1120.0f};
Vec3f D_800F786C_BowserToadSwapPlacesYoshiBoard = {-250.0f, 0.0f, 80.0f};
Vec3f D_800F7878_BowserToadSwapPlacesYoshiBoard = {0.0f, -100.0f, -6000.0f};
Vec3f D_800F7884_BowserToadSwapPlacesYoshiBoard = {0.0f, 0.0f, 1120.0f};
Vec3f D_800F7890_BowserToadSwapPlacesYoshiBoard = {-6000.0f, 0.0f, -6000.0f};
Vec3f D_800F789C_BowserToadSwapPlacesYoshiBoard[] = {{-1500.0f, 0.0f, -2500.0f}, {-500.0f, 0.0f, -1500.0f}};
Vec3f D_800F78B4_BowserToadSwapPlacesYoshiBoard = {-2500.0f, 0.0f, -3500.0f};
Vec3f D_800F78C0_BowserToadSwapPlacesYoshiBoard = {700.0f, 0.0f, -6000.0f};
Vec3f D_800F78CC_BowserToadSwapPlacesYoshiBoard = {-300.0f, 0.0f, -300.0f};
Vec3f D_800F78D8_BowserToadSwapPlacesYoshiBoard = {0.0f, 0.0f, 1120.0f};
Vec3f D_800F78E4_BowserToadSwapPlacesYoshiBoard = {-800.0f, 0.0f, -300.0f};

s32 D_800F78F0_BowserToadSwapPlacesYoshiBoard[] = { 0x00000003, 0x000A0068, 0x000A006A, 0x000A006C }; //cheep cheep (probaby some type of struct)
s32 D_800F7900_BowserToadSwapPlacesYoshiBoard[] = { 0x00000002, 0x00070006, 0x00070008, 0x00000000 }; //toad

void func_800F65E0_BowserToadSwapPlacesYoshiBoard(void) {
    D_800F7960_BowserToadSwapPlacesYoshiBoard = D_800ED5DC;
    omInitObjMan(0x32, 0xA);
    func_800F7764_BowserToadSwapPlacesYoshiBoard();
    func_800F73C0_BowserToadSwapPlacesYoshiBoard();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(func_800F67BC_BowserToadSwapPlacesYoshiBoard, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F737C_BowserToadSwapPlacesYoshiBoard);
    SetFadeInTypeAndTime(4, 0x10);
}

void func_800F66B4_BowserToadSwapPlacesYoshiBoard(omObjData* arg0) {
    func_800264F8(*D_800F7848_BowserToadSwapPlacesYoshiBoard->unk_3C->unk_40, D_800F7850_BowserToadSwapPlacesYoshiBoard, arg0->trans.x, "pukuSa-bmerge1", "pukuSa-bmerge2", 0);
}

void func_800F6708_BowserToadSwapPlacesYoshiBoard(omObjData* arg0) {
    Object* temp_s0;

    temp_s0 = D_800F7858_BowserToadSwapPlacesYoshiBoard;
    temp_s0->unk_18.x = sinf(arg0->trans.x * (0.017453292519943295));
    temp_s0 = D_800F7858_BowserToadSwapPlacesYoshiBoard;
    temp_s0->unk_18.z = cosf(arg0->trans.x * (0.017453292519943295));
    arg0->trans.x += 5.0f;
    if (arg0->trans.x >= 360.0f) {
        arg0->trans.x -= 360.0f;
    }
}

void func_800F67BC_BowserToadSwapPlacesYoshiBoard(void) {
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
    HuPrcSleep(0x1A);
    func_8004F9F4(temp_s3, D_800F7848_BowserToadSwapPlacesYoshiBoard->coords.x - 100.0f, D_800F7848_BowserToadSwapPlacesYoshiBoard->coords.y + 100.0f, D_800F7848_BowserToadSwapPlacesYoshiBoard->coords.z + 1000.0f, 1);
    func_8004F9F4(temp_s3, D_800F7848_BowserToadSwapPlacesYoshiBoard->coords.x + 100.0f, D_800F7848_BowserToadSwapPlacesYoshiBoard->coords.y + 100.0f, D_800F7848_BowserToadSwapPlacesYoshiBoard->coords.z + 1000.0f, 1);
    PlaySound(0xB2);
    func_8004EA8C(D_800F7848_BowserToadSwapPlacesYoshiBoard, &D_800F7884_BowserToadSwapPlacesYoshiBoard, 0x2D, &sp18);
    func_8004F00C(D_800F7848_BowserToadSwapPlacesYoshiBoard, 30.0f, -1.3f);
    
    for (i = 0; i < 0x37; i++) {
        temp_s0 = D_800F7848_BowserToadSwapPlacesYoshiBoard->unk_3C;
        temp_s0->unk_24 = -sinf( ((i * 6) + 0x1E) * (0.017453292519943295)) * 30.0f;
        if (i == 10) {
            func_8004EE14(0, &D_800F7878_BowserToadSwapPlacesYoshiBoard, 0x14, D_800F7840_BowserToadSwapPlacesYoshiBoard);
        }

        if (i == 0x2D) {
            PlaySound(0xAE);
        }

        if ((i < 0x2D) == 0) {
            D_800F7854_BowserToadSwapPlacesYoshiBoard->trans.x = 1.0f - ((i - 0x2D) / 10.0f);
            D_800F7840_BowserToadSwapPlacesYoshiBoard->coords.y += 5.0f;
            D_800F7840_BowserToadSwapPlacesYoshiBoard->unk_0A |= 1;
            
        }
        HuPrcVSleep();
    }

    D_800F7848_BowserToadSwapPlacesYoshiBoard->unk_3C->unk_24 = 0.0f;
    D_800F7854_BowserToadSwapPlacesYoshiBoard->trans.x = 0.0f;
    HuPrcSleep(0xA);
    func_800A0D00(&D_800F7840_BowserToadSwapPlacesYoshiBoard->xScale, 0.5f, 0.5f, 0.5f);
    func_8004EE14(0, &D_800F7890_BowserToadSwapPlacesYoshiBoard, 0x28, D_800F7848_BowserToadSwapPlacesYoshiBoard);
    func_8004EE14(0, &D_800F7890_BowserToadSwapPlacesYoshiBoard, 0x28, D_800F7840_BowserToadSwapPlacesYoshiBoard);
    
    for (i = 0, var_s2 = 0; i < 3;) { //strange for loop that only increments if i is 0?
        temp_s0_2 = D_800F7848_BowserToadSwapPlacesYoshiBoard->unk_3C;
        temp_s0_2->unk_24 = -sinf((var_s2 * (0.017453292519943295))) * 20.0f;
        temp_s0 = D_800F7840_BowserToadSwapPlacesYoshiBoard->unk_3C;
        temp_s0->unk_24 = -sinf((var_s2 * (0.017453292519943295))) * 20.0f;
        
        if (func_8004F018(D_800F7848_BowserToadSwapPlacesYoshiBoard) == 0) {
            if (i != 2) {
                func_8004F00C(D_800F7848_BowserToadSwapPlacesYoshiBoard, 60.0f, -5.0f);
                func_8004F00C(D_800F7840_BowserToadSwapPlacesYoshiBoard, 60.0f, -5.0f);
            }
            
            if (i == 0) {
                PlaySound(0xB0);
            }
            i++;
        }
        
        var_s2 += 0x28;
        HuPrcVSleep();
    }

    func_8004EA8C(D_800F7848_BowserToadSwapPlacesYoshiBoard, &D_800F7890_BowserToadSwapPlacesYoshiBoard, 0x2D, &sp18);
    func_8004F00C(D_800F7848_BowserToadSwapPlacesYoshiBoard, 60.0f, -1.3f);
    func_8004EA8C(D_800F7840_BowserToadSwapPlacesYoshiBoard, &D_800F7890_BowserToadSwapPlacesYoshiBoard, 0x2D, &sp18);
    func_8004F00C(D_800F7840_BowserToadSwapPlacesYoshiBoard, 60.0f, -1.3f);
    HuPrcSleep(0x14);
    func_8004EA8C(D_800F7844_BowserToadSwapPlacesYoshiBoard, &D_800F78CC_BowserToadSwapPlacesYoshiBoard, 0x2D, &sp28);
    func_8004EA8C(D_800F784C_BowserToadSwapPlacesYoshiBoard, &D_800F78CC_BowserToadSwapPlacesYoshiBoard, 0x2D, &sp28);
    
    for (i = 0; i < 0x2D; i++) {
        if (!(i & 1)) {
            func_8004F9F4(temp_s3, D_800F784C_BowserToadSwapPlacesYoshiBoard->coords.x, D_800F784C_BowserToadSwapPlacesYoshiBoard->coords.y, D_800F784C_BowserToadSwapPlacesYoshiBoard->coords.z, 1);
            func_8004F9F4(temp_s4, D_800F784C_BowserToadSwapPlacesYoshiBoard->coords.x, D_800F784C_BowserToadSwapPlacesYoshiBoard->coords.y, D_800F784C_BowserToadSwapPlacesYoshiBoard->coords.z, 4);
        }
        HuPrcVSleep();
    }

    D_800F7844_BowserToadSwapPlacesYoshiBoard->unk_0A &= ~0x1;
    func_8004E3E0(0, &D_800F78D8_BowserToadSwapPlacesYoshiBoard, 0x14, D_800F7844_BowserToadSwapPlacesYoshiBoard);
    func_8004E3E0(0, &D_800F78E4_BowserToadSwapPlacesYoshiBoard, 5, D_800F784C_BowserToadSwapPlacesYoshiBoard);
    PlaySound(0xB5);
    func_8004F00C(D_800F7844_BowserToadSwapPlacesYoshiBoard, 30.0f, -3.5f);

    for (i = 0; i < 5; i++) {
        func_8004F9F4(temp_s3, D_800F784C_BowserToadSwapPlacesYoshiBoard->coords.x, D_800F784C_BowserToadSwapPlacesYoshiBoard->coords.y, D_800F784C_BowserToadSwapPlacesYoshiBoard->coords.z, 1);
        func_8004F9F4(temp_s4, D_800F784C_BowserToadSwapPlacesYoshiBoard->coords.x, D_800F784C_BowserToadSwapPlacesYoshiBoard->coords.y, D_800F784C_BowserToadSwapPlacesYoshiBoard->coords.z, 4);
        HuPrcVSleep();        
    }

    func_8003E664(D_800F784C_BowserToadSwapPlacesYoshiBoard);
    HuPrcSleep(0xD);
    PlaySound(0xB7);
    HuPrcSleep(0xA);
    func_800726AC(0, 4);
    HuPrcSleep(6);
    func_8004A140();
    DestroyObject(D_800F7844_BowserToadSwapPlacesYoshiBoard);
    DestroyObject(D_800F784C_BowserToadSwapPlacesYoshiBoard);
    D_800F7844_BowserToadSwapPlacesYoshiBoard = NULL;
    D_800F784C_BowserToadSwapPlacesYoshiBoard = NULL;
    HuPrcSleep(5);
    func_8003E5E0(D_800F7858_BowserToadSwapPlacesYoshiBoard);
    D_800ED100.boardRam[5] = (D_800ED100.boardRam[5] + 1) & 1;

    if (!(D_800ED100.boardRam[5] & 1)) {
        LoadBackgroundIndex(0x16);
    } else {
        LoadBackgroundIndex(0x17);
    }
    
    SetFadeInTypeAndTime(0, 4);
    HuPrcSleep(4);
    func_800A0D00(&D_800F7840_BowserToadSwapPlacesYoshiBoard->xScale, 0.5f, 0.5f, 0.5f);
    D_800F7840_BowserToadSwapPlacesYoshiBoard->unk_30 = 80.0f;
    func_8003E5E0(D_800F7840_BowserToadSwapPlacesYoshiBoard);
    D_800F7848_BowserToadSwapPlacesYoshiBoard->unk_0A |= 1;
    D_800F7848_BowserToadSwapPlacesYoshiBoard->unk_3C->unk_24 = 0.0f;
    D_800F7840_BowserToadSwapPlacesYoshiBoard->unk_3C->unk_24 = 0.0f;
    func_800A0D00(&D_800F7848_BowserToadSwapPlacesYoshiBoard->coords, D_800F789C_BowserToadSwapPlacesYoshiBoard[0].x, D_800F789C_BowserToadSwapPlacesYoshiBoard[0].y, D_800F789C_BowserToadSwapPlacesYoshiBoard[0].z);
    func_8004CCD0(&D_800F7848_BowserToadSwapPlacesYoshiBoard->coords, &D_800F789C_BowserToadSwapPlacesYoshiBoard[1], &D_800F7848_BowserToadSwapPlacesYoshiBoard->unk_18);
    func_800A0D00(&D_800F7840_BowserToadSwapPlacesYoshiBoard->coords, D_800F789C_BowserToadSwapPlacesYoshiBoard[0].x, D_800F789C_BowserToadSwapPlacesYoshiBoard[0].y, D_800F789C_BowserToadSwapPlacesYoshiBoard[0].z);
    func_8004CCD0(&D_800F7840_BowserToadSwapPlacesYoshiBoard->coords, &D_800F789C_BowserToadSwapPlacesYoshiBoard[1], &D_800F7840_BowserToadSwapPlacesYoshiBoard->unk_18);
    func_8004E3E0(0, &D_800F789C_BowserToadSwapPlacesYoshiBoard[1], 0xF, D_800F7848_BowserToadSwapPlacesYoshiBoard);
    func_8004E3E0(0, &D_800F789C_BowserToadSwapPlacesYoshiBoard[1], 0xF, D_800F7840_BowserToadSwapPlacesYoshiBoard);

    for (i = 0; i < 15; i++) {
        func_8004F9F4(temp_s3, D_800F7848_BowserToadSwapPlacesYoshiBoard->coords.x, D_800F7848_BowserToadSwapPlacesYoshiBoard->coords.y + 100.0f, D_800F7848_BowserToadSwapPlacesYoshiBoard->coords.z, 1);
        HuPrcVSleep();
    }

    D_800F7840_BowserToadSwapPlacesYoshiBoard->coords.y -= 30.0f;

    for (i = 0; i < 5; i++) {
        HuPrcVSleep();
    }
    
    func_80025EB4(*D_800F7848_BowserToadSwapPlacesYoshiBoard->unk_3C->unk_40, 2, 1);

    for (i = 0; i >= -0x1E; i -= 2) {
        D_800F7848_BowserToadSwapPlacesYoshiBoard->unk_3C->unk_24 = i;
        HuPrcVSleep();
    }
    
    HuPrcSleep(5);

    for (; i <= 0; i += 10) {
        D_800F7848_BowserToadSwapPlacesYoshiBoard->unk_3C->unk_24 = i;
        D_800F7854_BowserToadSwapPlacesYoshiBoard->trans.x = (i / 30.0f) + 1.0f;
        HuPrcVSleep();
    }
    
    PlaySound(0xAC);
    func_8004F4D4(D_800F7840_BowserToadSwapPlacesYoshiBoard, 0, 0);
    func_8004F40C(D_800F7840_BowserToadSwapPlacesYoshiBoard, -1, 2);
    D_800F7840_BowserToadSwapPlacesYoshiBoard->unk_0A &= ~0x1;
    func_8004CCD0(&D_800F7840_BowserToadSwapPlacesYoshiBoard->coords, &D_800F7860_BowserToadSwapPlacesYoshiBoard, &D_800F7840_BowserToadSwapPlacesYoshiBoard->unk_18);
    func_800A0D00(&D_800F7840_BowserToadSwapPlacesYoshiBoard->xScale, 0.5f, 0.5f, 0.5f);
    func_8004E3E0(0, &D_800F7860_BowserToadSwapPlacesYoshiBoard, 0xA, D_800F7840_BowserToadSwapPlacesYoshiBoard);
    
    func_8004F00C(D_800F7840_BowserToadSwapPlacesYoshiBoard, 10.0f, -3.0f);

    for (i = 0; i < 10; i++) {
        func_800A0D00(&D_800F7840_BowserToadSwapPlacesYoshiBoard->xScale, (i / 20.0f) + 0.5f, (i / 20.0f) + 0.5f, (i / 20.0f) + 0.5f);
        HuPrcVSleep();
    }
    
    func_800A0D00(&D_800F7840_BowserToadSwapPlacesYoshiBoard->xScale, 1.0f, 1.0f, 1.0f);
    func_8004EE14(0, D_800F32A0, 0x1E, D_800F7840_BowserToadSwapPlacesYoshiBoard);
    func_80025EB4(*D_800F7848_BowserToadSwapPlacesYoshiBoard->unk_3C->unk_40, 1, 2);
    func_8004EE14(0, &D_800F78B4_BowserToadSwapPlacesYoshiBoard, 0x14, D_800F7848_BowserToadSwapPlacesYoshiBoard);

    for (i = 0; i < 20; i++) {
        HuPrcVSleep();
    }
    
    func_8004E3E0(0, &D_800F78B4_BowserToadSwapPlacesYoshiBoard, 0xA, D_800F7848_BowserToadSwapPlacesYoshiBoard);

    for (i = 0; i < 10; i++) {
        func_8004F9F4(temp_s3, D_800F7848_BowserToadSwapPlacesYoshiBoard->coords.x, D_800F7848_BowserToadSwapPlacesYoshiBoard->coords.y + 100.0f, D_800F7848_BowserToadSwapPlacesYoshiBoard->coords.z, 1);
        HuPrcVSleep();
    }

    temp_s1 = CreateTextWindow(0x60, 0x3C, 0xB, 3);
    LoadStringIntoWindow(temp_s1, (void* )0x1C3, -1, -1);
    func_8006E070(temp_s1, 0);
    ShowTextWindow(temp_s1);
    func_8004DBD4(temp_s1, D_800F7960_BowserToadSwapPlacesYoshiBoard);
    HideTextWindow(temp_s1);
    D_800F5144 = 1;
    while (1) {
        HuPrcVSleep();
    }
}


void func_800F7330_BowserToadSwapPlacesYoshiBoard(void) {
    if (func_80072718() == 0) {
        func_800F7818_BowserToadSwapPlacesYoshiBoard();
        func_800F7680_BowserToadSwapPlacesYoshiBoard();
        func_80054654();
        func_80070ED4();
        omOvlReturnEx(1);
    }
}

void func_800F737C_BowserToadSwapPlacesYoshiBoard(omObjData* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(4, 16);
        arg0->func_ptr = &func_800F7330_BowserToadSwapPlacesYoshiBoard;
    }
}

void func_800F73C0_BowserToadSwapPlacesYoshiBoard(void) {
    func_8003DAA8();
    func_8004F2AC();
    D_800F7844_BowserToadSwapPlacesYoshiBoard = CreateObject(6, &D_800F78F0_BowserToadSwapPlacesYoshiBoard);
    func_800A0D00(&D_800F7844_BowserToadSwapPlacesYoshiBoard->xScale, 1.5f, 1.5f, 1.5f);
    func_800A0D00(&D_800F7844_BowserToadSwapPlacesYoshiBoard->coords, D_800F78C0_BowserToadSwapPlacesYoshiBoard.x, D_800F78C0_BowserToadSwapPlacesYoshiBoard.y, D_800F78C0_BowserToadSwapPlacesYoshiBoard.z);
    D_800F7844_BowserToadSwapPlacesYoshiBoard->unk_30 = 130.0f;
    D_800F7844_BowserToadSwapPlacesYoshiBoard->unk_0A |= 1;
    D_800F784C_BowserToadSwapPlacesYoshiBoard = CreateObject(0x70, NULL);
    func_800A0D00(&D_800F784C_BowserToadSwapPlacesYoshiBoard->coords, D_800F78C0_BowserToadSwapPlacesYoshiBoard.x, D_800F78C0_BowserToadSwapPlacesYoshiBoard.y, D_800F78C0_BowserToadSwapPlacesYoshiBoard.z);
    D_800F784C_BowserToadSwapPlacesYoshiBoard->unk_30 = 130.0f;
    D_800F7840_BowserToadSwapPlacesYoshiBoard = CreateObject(7, &D_800F7900_BowserToadSwapPlacesYoshiBoard);
    func_800A0D00(&D_800F7840_BowserToadSwapPlacesYoshiBoard->coords, D_800F7860_BowserToadSwapPlacesYoshiBoard.x, D_800F7860_BowserToadSwapPlacesYoshiBoard.y, D_800F7860_BowserToadSwapPlacesYoshiBoard.z);
    D_800F7848_BowserToadSwapPlacesYoshiBoard = CreateObject(0x5C, NULL);
    func_800A0D00(&D_800F7848_BowserToadSwapPlacesYoshiBoard->coords, D_800F7878_BowserToadSwapPlacesYoshiBoard.x, D_800F7878_BowserToadSwapPlacesYoshiBoard.y, D_800F7878_BowserToadSwapPlacesYoshiBoard.z);
    func_80025930(*D_800F7848_BowserToadSwapPlacesYoshiBoard->unk_3C->unk_40, 0x20000, 0x20000);
    func_80025AD4(*D_800F7848_BowserToadSwapPlacesYoshiBoard->unk_3C->unk_40);
    D_800F7850_BowserToadSwapPlacesYoshiBoard = LoadFormFile(0xA00B1, 0x2AD) & 0xFFFF;
    func_80025930(D_800F7850_BowserToadSwapPlacesYoshiBoard, 0x20000, 0x20000);
    func_80025AD4(D_800F7850_BowserToadSwapPlacesYoshiBoard);
    func_80026040(*D_800F7848_BowserToadSwapPlacesYoshiBoard->unk_3C->unk_40);
    D_800F7854_BowserToadSwapPlacesYoshiBoard = omAddObj(0x1000, 0, 0, -1, &func_800F66B4_BowserToadSwapPlacesYoshiBoard);
    D_800F7854_BowserToadSwapPlacesYoshiBoard->trans.x = 1.0f;
    D_800F7858_BowserToadSwapPlacesYoshiBoard = CreateObject(0x71, NULL);
    func_800A0D00(&D_800F7858_BowserToadSwapPlacesYoshiBoard->coords, -1500.0f, 0.0f, -1500.0f);
    func_800A0D00(&D_800F7858_BowserToadSwapPlacesYoshiBoard->xScale, 5.0f, 1.0f, 5.0f);
    func_800258EC(*D_800F7858_BowserToadSwapPlacesYoshiBoard->unk_3C->unk_40, 0x80000, 0x80000);
    func_80025AD4(*D_800F7858_BowserToadSwapPlacesYoshiBoard->unk_3C->unk_40);
    func_8003E664(D_800F7858_BowserToadSwapPlacesYoshiBoard);
    D_800F785C_BowserToadSwapPlacesYoshiBoard = omAddObj(0x1000, 0, 0, -1, &func_800F6708_BowserToadSwapPlacesYoshiBoard);
    D_800F785C_BowserToadSwapPlacesYoshiBoard->trans.x = 0.0f;
}

void func_800F7680_BowserToadSwapPlacesYoshiBoard(void) {
    if (D_800F7844_BowserToadSwapPlacesYoshiBoard != NULL) {
        DestroyObject(D_800F7844_BowserToadSwapPlacesYoshiBoard);
    }
    
    if (D_800F7848_BowserToadSwapPlacesYoshiBoard != NULL) {
        DestroyObject(D_800F7848_BowserToadSwapPlacesYoshiBoard);
    }
    
    if (D_800F7840_BowserToadSwapPlacesYoshiBoard != NULL) {
        DestroyObject(D_800F7840_BowserToadSwapPlacesYoshiBoard);
    }
    
    if (D_800F784C_BowserToadSwapPlacesYoshiBoard != NULL) {
        DestroyObject(D_800F784C_BowserToadSwapPlacesYoshiBoard);
    }

    if (D_800F7858_BowserToadSwapPlacesYoshiBoard != NULL) {
        DestroyObject(D_800F7858_BowserToadSwapPlacesYoshiBoard);
    }
    
    if (D_800F7850_BowserToadSwapPlacesYoshiBoard != -1) {
        func_8002456C(D_800F7850_BowserToadSwapPlacesYoshiBoard);
    }
    
    if (D_800F7854_BowserToadSwapPlacesYoshiBoard != NULL) {
        omDelObj(D_800F7854_BowserToadSwapPlacesYoshiBoard);
    }

    if (D_800F785C_BowserToadSwapPlacesYoshiBoard != NULL) {
        omDelObj(D_800F785C_BowserToadSwapPlacesYoshiBoard);
    }
    
    func_8004F2EC();
}

void func_800F7764_BowserToadSwapPlacesYoshiBoard(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    if (D_800ED100.boardRam[5] == 0) {
        LoadBackgroundIndex(0x16);
    } else {
        LoadBackgroundIndex(0x17);
    }
}

void func_800F7818_BowserToadSwapPlacesYoshiBoard(void) {
    func_8004A140();
    func_80049F0C();
}
