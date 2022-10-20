#include "common.h"

void func_800AF2E0(f32, f32*, f32*);

typedef struct unkFloatStruct {
/* 0x00 */ f32 unk_00;
/* 0x04 */ f32 unk_04;
/* 0x08 */ f32 unk_08;
/* 0x0C */ f32 unk_0C;
/* 0x10 */ f32 unk_10;
/* 0x14 */ f32 unk_14;
} unkFloatStruct;

void func_800A2770(Matrix4f arg0, u16* perspNorm, unkFloatStruct* arg2) {
    f32 sp10;
    f32 sp14;
    f32 sp18;
    f32 sp1C;
    f32 sp20;
    f32 temp_f0_3;

    func_800AF2E0(arg2->unk_00 * 0.5f, &sp1C, &sp20);
    sp10 = (sp20 / sp1C) * arg2->unk_10;
    sp14 = arg2->unk_10 / (arg2->unk_08 - arg2->unk_0C);
    sp18 = arg2->unk_08 + arg2->unk_0C;
    
    arg0[0][0] = sp10 / arg2->unk_04;
    arg0[1][1] = sp10;
    arg0[2][2] = sp18 * sp14;
    arg0[2][3] = -arg2->unk_10;
    arg0[3][2]= (arg2->unk_08 + arg2->unk_08) * arg2->unk_0C * sp14;
    arg0[0][1] = arg0[0][2] = arg0[0][3] = arg0[1][0] = arg0[1][2] =
    arg0[1][3] = arg0[2][0] = arg0[2][1] = arg0[3][0] = arg0[3][1] = arg0[3][3] = 0.0f;
    
    if (perspNorm != NULL) {
        if (sp18 <= 2.0f) {
            *perspNorm = -1;
            return;
        }
        
        *perspNorm = 131072.0f / sp18;
        
        if (*perspNorm == 0) {
            *perspNorm = 1;
        }
    }
}
