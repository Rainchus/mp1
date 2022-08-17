#include "common.h"

extern s16 D_800D6470;
extern s16 D_800D6472[];
extern void* D_800D6478;

void func_800456C4(void);
void func_8004B730(Vec3f*, Vec2f*);

void func_80045500(Object* arg0) {
    Vec3f sp10;
    Vec2f sp20;

    sp10.x = (gPlayers[arg0->unk_4F].playerObj)->coords.x;
    sp10.y = (gPlayers[arg0->unk_4F].playerObj)->coords.y + 250.0f;
    sp10.z = (gPlayers[arg0->unk_4F].playerObj)->coords.z;
    func_8004B730(&sp10, &sp20);
    if (arg0->unk_4C < 30) {
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
    arg0->unk_4C++;
}

void func_80045680(void) {
    s32 i;

    D_800D6470 = -1;
    
    for (i = 0; i < 2; i++) {
        D_800D6472[i] = -1;
    }
    
    D_800D6478 = 0;
}

void func_800456C4(void) {
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

INCLUDE_ASM(s32, "46100", ShowPlayerCoinChange); //https://decomp.me/scratch/4lcr7
