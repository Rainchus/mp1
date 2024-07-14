#include "engine/process.h"
#include "293260.h"

Vec3f D_800F6DB0_BowserToadSwapPlacesMarioBoard = {0.0f, -190.0f, -500.0f};
Vec3f D_800F6DBC_BowserToadSwapPlacesMarioBoard = {0.0f, -190.0f, -500.0f};

s32 D_800F6DC8_BowserToadSwapPlacesMarioBoard[] = {0x00000001, 0x000A006A};
s32 D_800F6DD0_BowserToadSwapPlacesMarioBoard[] = {0x00000001, 0x00070004};

void func_800F65E0_BowserToadSwapPlacesMarioBoard(void) {
    D_800F6DF0_BowserToadSwapPlacesMarioBoard = D_800ED5DC;
    omInitObjMan(50, 10);
    func_800F6CE8_BowserToadSwapPlacesMarioBoard();
    func_800F6B1C_BowserToadSwapPlacesMarioBoard();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    omAddPrcObj(func_800F692C_BowserToadSwapPlacesMarioBoard, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F6AC8_BowserToadSwapPlacesMarioBoard);
    SetFadeInTypeAndTime(4, 16);
}

//very odd need for temps?
void func_800F66AC_BowserToadSwapPlacesMarioBoard(f32 arg0) {
    Object* temp_s0;
    Object* var_s0;
    Vec3f* temp;

    if (D_800ED100.boardRam[0] != 0) {
        temp_s0 = D_800F6DF4_BowserToadSwapPlacesMarioBoard;
        temp = &D_800F6DBC_BowserToadSwapPlacesMarioBoard;
        temp_s0->coords.x = temp->x + (sinf(arg0 * 0.017453292519943295) * 200.0f);
        temp_s0 = D_800F6DF4_BowserToadSwapPlacesMarioBoard;
        temp_s0->coords.z = (cosf(arg0 * 0.017453292519943295) * 200.0f) + D_800F6DBC_BowserToadSwapPlacesMarioBoard.z;
        temp_s0 = D_800F6DF4_BowserToadSwapPlacesMarioBoard;
        temp_s0->unk_18.x = sinf(arg0 * 0.017453292519943295);
        temp_s0 = D_800F6DF4_BowserToadSwapPlacesMarioBoard;
        temp_s0->unk_18.z = cosf(arg0 * 0.017453292519943295);
        temp_s0 = D_800F6DFC_BowserToadSwapPlacesMarioBoard;
        temp_s0->unk_18.x = sinf(arg0 * 0.017453292519943295);
        temp_s0 = D_800F6DFC_BowserToadSwapPlacesMarioBoard;
        temp_s0->unk_18.z = cosf(arg0 * 0.017453292519943295);
        temp_s0 = D_800F6DF8_BowserToadSwapPlacesMarioBoard;
        temp_s0->coords.x = temp->x - (sinf(arg0 * 0.017453292519943295) * 200.0f);
        temp_s0 = D_800F6DF8_BowserToadSwapPlacesMarioBoard;
        temp_s0->coords.z = temp->z - (cosf(arg0 * 0.017453292519943295) * 200.0f);
        temp_s0 = D_800F6DF8_BowserToadSwapPlacesMarioBoard;
        temp_s0->unk_18.x = -sinf(arg0 * 0.017453292519943295);
        var_s0 = D_800F6DF8_BowserToadSwapPlacesMarioBoard;
        var_s0->unk_18.z = -cosf(arg0 * 0.017453292519943295);
    } else {
        temp_s0 = D_800F6DF8_BowserToadSwapPlacesMarioBoard;
        temp = &D_800F6DBC_BowserToadSwapPlacesMarioBoard;
        temp_s0->coords.x = (sinf(arg0 * 0.017453292519943295) * 200.0f) + temp->x;
        temp_s0 = D_800F6DF8_BowserToadSwapPlacesMarioBoard;
        temp_s0->coords.z = (cosf(arg0 * 0.017453292519943295) * 200.0f) + D_800F6DBC_BowserToadSwapPlacesMarioBoard.z;
        temp_s0 = D_800F6DF8_BowserToadSwapPlacesMarioBoard;
        temp_s0->unk_18.x = sinf(arg0 * 0.017453292519943295);
        temp_s0 = D_800F6DF8_BowserToadSwapPlacesMarioBoard;
        temp_s0->unk_18.z = cosf(arg0 * 0.017453292519943295);
        temp_s0 = D_800F6DFC_BowserToadSwapPlacesMarioBoard;
        temp_s0->unk_18.x = sinf(arg0 * 0.017453292519943295);
        temp_s0 = D_800F6DFC_BowserToadSwapPlacesMarioBoard;
        temp_s0->unk_18.z = cosf(arg0 * 0.017453292519943295);
        temp_s0 = D_800F6DF4_BowserToadSwapPlacesMarioBoard;
        temp_s0->coords.x = temp->x - (sinf(arg0 * 0.017453292519943295) * 200.0f);
        temp_s0 = D_800F6DF4_BowserToadSwapPlacesMarioBoard;
        temp_s0->coords.z = D_800F6DBC_BowserToadSwapPlacesMarioBoard.z - (cosf(arg0 * 0.017453292519943295) * 200.0f);
        temp_s0 = D_800F6DF4_BowserToadSwapPlacesMarioBoard;
        temp_s0->unk_18.x = -sinf(arg0 * 0.017453292519943295);
        var_s0 = D_800F6DF4_BowserToadSwapPlacesMarioBoard;
        var_s0->unk_18.z = -cosf(arg0 * 0.017453292519943295);
    }
}

void func_800F692C_BowserToadSwapPlacesMarioBoard(void) {
    s32 i;
    f32 var_f20;
    
    HuPrcSleep(26);
    PlaySound(226);

    if (D_800ED100.boardRam[0] != 0) {
        PlaySound(1131);
    } else {
        PlaySound(1127);
    }
    
    for (var_f20 = 0.0f; var_f20 >= -180.0f; var_f20 -= 5.0f) {
        func_800F66AC_BowserToadSwapPlacesMarioBoard(var_f20);
        HuPrcVSleep();
    }

    PlaySound(228);
    
    D_800ED100.boardRam[0] = (D_800ED100.boardRam[0] + 1) & 1;
    
    if (D_800ED100.boardRam[0] == 0) {
        PlaySound(1126);
        func_8003E81C(D_800F6DF8_BowserToadSwapPlacesMarioBoard, 0, 2);
        
        for (i = 0; i < 2; i++) {
            func_8004F00C(D_800F6DF8_BowserToadSwapPlacesMarioBoard, 40.0f, -5.0f);
            func_8004F044(D_800F6DF8_BowserToadSwapPlacesMarioBoard);            
        }

    } else {
        PlaySound(1130);
        func_8003E81C(D_800F6DF4_BowserToadSwapPlacesMarioBoard, 0, 2);
        HuPrcSleep(40);
    }
    
    D_800F5144 = 1;
    
    while(1) {
        HuPrcVSleep();
    }
    
}

void func_800F6A84_BowserToadSwapPlacesMarioBoard(void) {
    if (func_80072718() == 0) {
        func_800F6D88_BowserToadSwapPlacesMarioBoard();
        func_800F6CB0_BowserToadSwapPlacesMarioBoard();
        func_80054654();
        omOvlReturnEx(1);
    }
}

void func_800F6AC8_BowserToadSwapPlacesMarioBoard(omObjData* arg0) {
    if (D_800F5144 != 0) {
        if (D_800ED100.boardRam[0] != 0) {
            func_800726AC(3, 16);
        } else {
            func_800726AC(2, 16);
        }
        arg0->func_ptr = &func_800F6A84_BowserToadSwapPlacesMarioBoard;
    }
}

void func_800F6B1C_BowserToadSwapPlacesMarioBoard(void) {
    func_8003DAA8();
    D_800F6DFC_BowserToadSwapPlacesMarioBoard = CreateObject(20, NULL);
    VEC3F_COPY_TO_OBJ(D_800F6DFC_BowserToadSwapPlacesMarioBoard, D_800F6DB0_BowserToadSwapPlacesMarioBoard);
    D_800F6DFC_BowserToadSwapPlacesMarioBoard->xScale = D_800F6DFC_BowserToadSwapPlacesMarioBoard->yScale = D_800F6DFC_BowserToadSwapPlacesMarioBoard->zScale = 1.5f;
    func_80025F60(*D_800F6DFC_BowserToadSwapPlacesMarioBoard->unk_3C->unk_40, 0);
    D_800F6DF4_BowserToadSwapPlacesMarioBoard = CreateObject(108, D_800F6DC8_BowserToadSwapPlacesMarioBoard);
    D_800F6DF4_BowserToadSwapPlacesMarioBoard->coords.x = D_800F6DBC_BowserToadSwapPlacesMarioBoard.x;
    D_800F6DF4_BowserToadSwapPlacesMarioBoard->coords.y = D_800F6DBC_BowserToadSwapPlacesMarioBoard.y;
    D_800F6DF4_BowserToadSwapPlacesMarioBoard->coords.z = D_800F6DBC_BowserToadSwapPlacesMarioBoard.z + 200.0f;
    D_800F6DF4_BowserToadSwapPlacesMarioBoard->xScale = D_800F6DF4_BowserToadSwapPlacesMarioBoard->yScale = D_800F6DF4_BowserToadSwapPlacesMarioBoard->zScale = 1.5f;
    D_800F6DF8_BowserToadSwapPlacesMarioBoard = CreateObject(7, D_800F6DD0_BowserToadSwapPlacesMarioBoard);
    D_800F6DF8_BowserToadSwapPlacesMarioBoard->coords.x = D_800F6DBC_BowserToadSwapPlacesMarioBoard.x;
    D_800F6DF8_BowserToadSwapPlacesMarioBoard->coords.y = D_800F6DBC_BowserToadSwapPlacesMarioBoard.y;
    D_800F6DF8_BowserToadSwapPlacesMarioBoard->coords.z = D_800F6DBC_BowserToadSwapPlacesMarioBoard.z + 200.0f;
    func_800258EC(*D_800F6DF4_BowserToadSwapPlacesMarioBoard->unk_40->unk_40, 0x180, 0x80);
    func_800258EC(*D_800F6DF8_BowserToadSwapPlacesMarioBoard->unk_40->unk_40, 0x180, 0x80);
    func_80025AD4(*D_800F6DF4_BowserToadSwapPlacesMarioBoard->unk_40->unk_40);
    func_80025AD4(*D_800F6DF8_BowserToadSwapPlacesMarioBoard->unk_40->unk_40);
    func_800F66AC_BowserToadSwapPlacesMarioBoard(0);
}

void func_800F6CB0_BowserToadSwapPlacesMarioBoard(void) {
    DestroyObject(D_800F6DF4_BowserToadSwapPlacesMarioBoard);
    DestroyObject(D_800F6DF8_BowserToadSwapPlacesMarioBoard);
    DestroyObject(D_800F6DFC_BowserToadSwapPlacesMarioBoard);
}


void func_800F6CE8_BowserToadSwapPlacesMarioBoard(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(FE2310_ROM_START);
    LoadBackgroundIndex(51);
}

void func_800F6D88_BowserToadSwapPlacesMarioBoard(void) {
    func_8004A140();
    func_80049F0C();
}

