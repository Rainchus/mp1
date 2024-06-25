#include "common.h"

extern s16 D_800D6470_D6500;
extern s16 D_800D6472_D6502[];
extern omObjData* D_800D6478_D6508;

void func_80045500_46100(omObjData* arg0) {
    Vec3f sp10;
    Vec2f sp20;

    sp10.x = (gPlayers[arg0->work[3]].playerObj)->coords.x;
    sp10.y = (gPlayers[arg0->work[3]].playerObj)->coords.y + 250.0f;
    sp10.z = (gPlayers[arg0->work[3]].playerObj)->coords.z;
    func_8004B730_4C330(&sp10, &sp20);
    if (arg0->work[0] < 30) {
        if (arg0->rot.x > 0.0f) {
            arg0->trans.y -= 0.5f;
        } else {
            arg0->trans.y += 0.5f;
        }
        func_80066DC4_679C4(D_800D6470_D6500, 0, (sp20.x - 16.0f), (sp20.y + arg0->trans.y));
    } else {
        func_800456C4_462C4();
        return;
    }
    arg0->work[0]++;
}

void func_80045680_46280(void) {
    s32 i;

    D_800D6470_D6500 = -1;
    
    for (i = 0; i < 2; i++) {
        D_800D6472_D6502[i] = -1;
    }
    
    D_800D6478_D6508 = 0;
}

void func_800456C4_462C4(void) {
    s32 i;

    if (D_800D6470_D6500 != -1) {
        func_80064D38_65938(D_800D6470_D6500);
        D_800D6470_D6500 = -1;
    }
    
    for (i = 0; i < 2; i++) {
        if (D_800D6472_D6502[i] != -1) {
            func_80067704_68304(D_800D6472_D6502[i]);
            D_800D6472_D6502[i] = -1;
        }
    }  
    
    if (D_800D6478_D6508 != NULL) {
        omDelObj(D_800D6478_D6508);
        D_800D6478_D6508 = NULL;
    }
}

void ShowPlayerCoinChange(s32 arg0, s32 arg1) {
    Vec3f sp18;
    Vec2f sp28;
    void* temp_s0;
    s16 temp_s5;
    s32 var_s4 = 0;

    if (D_800D6470_D6500 == -1) {
        sp18.x = (gPlayers[arg0].playerObj)->coords.x;
        sp18.y = (gPlayers[arg0].playerObj)->coords.y + 250.0f;
        sp18.z = (gPlayers[arg0].playerObj)->coords.z;
        func_8004B730_4C330(&sp18, &sp28);
        D_800D6478_D6508 = omAddObj(-0x8000, 0, 0, -1, &func_80045500_46100);
        D_800D6478_D6508->work[0] = 0;
        D_800D6478_D6508->rot.x = arg1;
        D_800D6478_D6508->trans.x = sp28.x - 16.0f;
        D_800D6478_D6508->trans.y = 0.0f;
        D_800D6478_D6508->work[3] = arg0;
        temp_s5 = func_80064EF4_65AF4(4, 5);
        D_800D6470_D6500 = temp_s5;
        temp_s0 = ReadMainFS(0xA0013);
        D_800D6472_D6502[0] = func_800678A4_684A4(temp_s0);
        FreeMainFS(temp_s0);
        
        if (arg1 > 0) {
            temp_s0 = ReadMainFS(0xA0035);
        } else {
            temp_s0 = ReadMainFS(0xA0036);
        }
        
        D_800D6472_D6502[1] = func_800678A4_684A4(temp_s0);
        FreeMainFS(temp_s0);
        func_80067208_67E08(temp_s5, var_s4, D_800D6472_D6502[0], 0);
        func_80067384_67F84(temp_s5, var_s4, 0x2010);
        func_800674BC_680BC(temp_s5, var_s4, 0x1000);
        func_80066DC4_679C4(temp_s5, var_s4, (sp28.x - 16.0f), sp28.y);
        func_80067354_67F54(temp_s5, var_s4, 0.5f, 0.5f);
        var_s4++;
        func_80067208_67E08(temp_s5, var_s4, D_800D6472_D6502[1], 0);
        func_800672B0_67EB0(temp_s5, var_s4, 1);
        if (arg1 > 0) {
            func_800672DC_67EDC(temp_s5, var_s4, 10, 0);
        } else {
            func_800672DC_67EDC(temp_s5, var_s4, 11, 0);
        }
        
        func_80067384_67F84(temp_s5, var_s4, 0x2010);
        func_800674BC_680BC(temp_s5, var_s4, 0x1000);
        func_80066DC4_679C4(temp_s5, var_s4, 0x10, 0);
        
        var_s4++;
        
        arg1 = (arg1 < 0) ? -arg1 : arg1;
        
        if (arg1 >= 10) {
            func_80067208_67E08(temp_s5, var_s4, D_800D6472_D6502[1], 0);
            func_800672B0_67EB0(temp_s5, var_s4, 1);
            func_800672DC_67EDC(temp_s5, var_s4, (arg1 / 10), 0);
            func_80067384_67F84(temp_s5, var_s4, 0x2010);
            func_800674BC_680BC(temp_s5, var_s4, 0x1000);
            func_80066DC4_679C4(temp_s5, var_s4, 0x20, 0);
            var_s4++;
        }
        
        arg1 -= ((arg1 / 10) * 10);
        
        func_80067208_67E08(temp_s5, var_s4, D_800D6472_D6502[1], 0);
        func_800672B0_67EB0(temp_s5, var_s4, 1);
        func_800672DC_67EDC(temp_s5, var_s4, arg1, 0);
        func_80067384_67F84(temp_s5, var_s4, 0x2010);
        func_800674BC_680BC(temp_s5, var_s4, 0x1000);
        func_80066DC4_679C4(temp_s5, var_s4, var_s4 * 16, 0);
    }
}