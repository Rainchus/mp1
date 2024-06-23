#include "common.h"

extern s16 D_800D6470;
extern s16 D_800D6472[];
extern unkObjectStruct* D_800D6478;

void func_80045500(unkObjectStruct* arg0) {
    Vec3f sp10;
    Vec2f sp20;

    sp10.x = (gPlayers[arg0->unk_4C[3]].playerObj)->coords.x;
    sp10.y = (gPlayers[arg0->unk_4C[3]].playerObj)->coords.y + 250.0f;
    sp10.z = (gPlayers[arg0->unk_4C[3]].playerObj)->coords.z;
    func_8004B730(&sp10, &sp20);
    if (arg0->unk_4C[0] < 30) {
        if (arg0->unk_24 > 0.0f) {
            arg0->unk_1C -= 0.5f;
        } else {
            arg0->unk_1C += 0.5f;
        }
        func_80066DC4(D_800D6470, 0, (sp20.x - 16.0f), (sp20.y + arg0->unk_1C));
    } else {
        func_800456C4();
        return;
    }
    arg0->unk_4C[0]++;
}

void func_80045680() {
    s32 i;

    D_800D6470 = -1;
    
    for (i = 0; i < 2; i++) {
        D_800D6472[i] = -1;
    }
    
    D_800D6478 = 0;
}

void func_800456C4() {
    s32 i;

    if (D_800D6470 != -1) {
        func_80064D38(D_800D6470);
        D_800D6470 = -1;
    }
    
    for (i = 0; i < 2; i++) {
        if (D_800D6472[i] != -1) {
            func_80067704(D_800D6472[i]);
            D_800D6472[i] = -1;
        }
    }  
    
    if (D_800D6478 != NULL) {
        func_8005D718(D_800D6478);
        D_800D6478 = NULL;
    }
}

void ShowPlayerCoinChange(s32 arg0, s32 arg1) {
    Vec3f sp18;
    Vec2f sp28;
    void* temp_s0;
    s16 temp_s5;
    s32 var_s4 = 0;

    if (D_800D6470 == -1) {
        sp18.x = (gPlayers[arg0].playerObj)->coords.x;
        sp18.y = (gPlayers[arg0].playerObj)->coords.y + 250.0f;
        sp18.z = (gPlayers[arg0].playerObj)->coords.z;
        func_8004B730(&sp18, &sp28);
        D_800D6478 = func_8005D384(-0x8000, 0, 0, -1, &func_80045500);
        D_800D6478->unk_4C[0] = 0;
        D_800D6478->unk_24 = arg1;
        D_800D6478->unk_18 = sp28.x - 16.0f;
        D_800D6478->unk_1C = 0.0f;
        D_800D6478->unk_4C[3] = arg0;
        temp_s5 = func_80064EF4(4, 5);
        D_800D6470 = temp_s5;
        temp_s0 = ReadMainFS(0xA0013);
        D_800D6472[0] = func_800678A4(temp_s0);
        FreeMainFS(temp_s0);
        
        if (arg1 > 0) {
            temp_s0 = ReadMainFS(0xA0035);
        } else {
            temp_s0 = ReadMainFS(0xA0036);
        }
        
        D_800D6472[1] = func_800678A4(temp_s0);
        FreeMainFS(temp_s0);
        func_80067208(temp_s5, var_s4, D_800D6472[0], 0);
        func_80067384(temp_s5, var_s4, 0x2010);
        func_800674BC(temp_s5, var_s4, 0x1000);
        func_80066DC4(temp_s5, var_s4, (sp28.x - 16.0f), sp28.y);
        func_80067354(temp_s5, var_s4, 0.5f, 0.5f);
        var_s4++;
        func_80067208(temp_s5, var_s4, D_800D6472[1], 0);
        func_800672B0(temp_s5, var_s4, 1);
        if (arg1 > 0) {
            func_800672DC(temp_s5, var_s4, 10, 0);
        } else {
            func_800672DC(temp_s5, var_s4, 11, 0);
        }
        
        func_80067384(temp_s5, var_s4, 0x2010);
        func_800674BC(temp_s5, var_s4, 0x1000);
        func_80066DC4(temp_s5, var_s4, 0x10, 0);
        
        var_s4++;
        
        arg1 = (arg1 < 0) ? -arg1 : arg1;
        
        if (arg1 >= 10) {
            func_80067208(temp_s5, var_s4, D_800D6472[1], 0);
            func_800672B0(temp_s5, var_s4, 1);
            func_800672DC(temp_s5, var_s4, (arg1 / 10), 0);
            func_80067384(temp_s5, var_s4, 0x2010);
            func_800674BC(temp_s5, var_s4, 0x1000);
            func_80066DC4(temp_s5, var_s4, 0x20, 0);
            var_s4++;
        }
        
        arg1 -= ((arg1 / 10) * 10);
        
        func_80067208(temp_s5, var_s4, D_800D6472[1], 0);
        func_800672B0(temp_s5, var_s4, 1);
        func_800672DC(temp_s5, var_s4, arg1, 0);
        func_80067384(temp_s5, var_s4, 0x2010);
        func_800674BC(temp_s5, var_s4, 0x1000);
        func_80066DC4(temp_s5, var_s4, var_s4 * 16, 0);
    }
}
