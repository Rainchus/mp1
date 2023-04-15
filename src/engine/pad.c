#include "engine/pad.h"
#include "62140.h"

s32 func_80013770(u16* arg0) {
    OSContStatus status[PAD_COUNT];
    u8 pattern;
    s16 index;

    osContInit(&D_800EE960, &pattern, status);
    D_800D12B4 = 0;
    D_800D12B2 = 0;
    D_800D12B0 = 0;
    D_800F3778 = 0;
    for (index = 0; index < PAD_COUNT; index++) {
        if ((pattern >> index) & 1) {
            if (!(status[index].errno & 8)) {
                D_800F3778++;
                if (D_800F3778 == arg0[0]) {
                    break;
                }
            }
        }
        D_800EDEB4[index] = D_800F5460[index] = D_800ECE08[index] = D_800F338C[index] = 0;
        D_800F2CE2[index] = D_800F33CC[index] = 0;
        D_800F3843[index] = 0;
        D_800ECE14[index] = 0;
        D_800D12BA[index] = 0;
    }
    osContSetCh(arg0[0]);
    return 0;
}

s16 func_800138DC(s16 arg0, s32 arg1) {
    u8 sp10[0x10];
    s16 sp20;

    sp20 = arg0;
    func_800642FC(&sp10, &func_80013770, &sp20, 1);
    D_800D12CC = 0;
    if (arg1 & 1) {
        func_80014174();
    }
    func_80013AEC(0x46, 0x46);
    osCreateMesgQueue(&D_800D12D0, &D_800D12E8, 1);
    osSendMesg(&D_800D12D0, NULL, 1);
    return D_800F3778;
}

s32 func_80013974(s32 arg0) {
    osRecvMesg(&D_800D12D0, 0, 1);
    if (D_800D12B0 < 8) {
        osSendMesg(&D_800D12D0, 0, 1);

        osContStartReadData(&D_800EE960);
        osRecvMesg(&D_800EE960, 0, 1);

        osContGetReadData(&D_800D1170[D_800D12B4].pad);

        osRecvMesg(&D_800D12D0, 0, 1);

        D_800D12B0++;
        D_800D12B4++;
        if (D_800D12B4 >= 8) {
            D_800D12B4 = 0;
        }
    }
    osSendMesg(&D_800D12D0, 0, 1);

    return 0;
}

void func_80013A74(void) {
    osRecvMesg(&D_800D12D0, NULL, 1);
    if (D_800D12B0 < 8) {
        func_800642FC(&D_800D1230[D_800D12B4], func_80013974, 0, 0);
    }
    osSendMesg(&D_800D12D0, NULL, 1);
}

void func_80013AEC(s8 arg0, s8 arg1) {
    D_800D12BE = arg0;
    D_800D12BF = arg1;
}

#ifdef NON_MATCHING
s16 func_80013B00(void) {
    s16 var_a3;
    pad_unk_substruct* temp_v1_2;

    osRecvMesg(&D_800D12D0, NULL, 1);
    if (D_800D12B0 != 0) {
        D_800D12B0--;

        D_800D12B2++;
        if (D_800D12B2 >= 8) {
            D_800D12B2 = 0;
        }

        for (var_a3 = 0; var_a3 < PAD_COUNT; var_a3++) {
            temp_v1_2 = &D_800D1170[D_800D12B2].unk6;
            D_800D12BA[var_a3] = temp_v1_2->unk4 != 8;
            D_800EDEB4[var_a3] = temp_v1_2->unk0;
            D_800ECE14[var_a3] = temp_v1_2->unk2;
            D_800F2CE2[var_a3] = temp_v1_2->unk2;
            D_800F3843[var_a3] = temp_v1_2->unk3;
            D_800F33CC[var_a3] = temp_v1_2->unk3;
            D_800F5460[var_a3] = temp_v1_2->unk0 & (temp_v1_2->unk0 ^ D_800ECE08[var_a3]);
            if (D_800ECE08[var_a3] != temp_v1_2->unk0) {
                D_800F338C[var_a3] = D_800F5460[var_a3];
                D_800D12B6[var_a3] = 0x1E;
            }
            else {
                D_800D12B6[var_a3] -= 1;
                if (!(D_800D12B6[var_a3] & 0xFF)) {
                    D_800F338C[var_a3] = temp_v1_2->unk0;
                    D_800D12B6[var_a3] = 0xA;
                }
                else {
                    D_800F338C[var_a3] = 0;
                }
            }
            if (((D_800ECE14[var_a3] + 9) & 0xFF) < 0x13U) {
                D_800ECE14[var_a3] = 0;
            }
            else if (D_800D12BE < D_800ECE14[var_a3]) {
                D_800ECE14[var_a3] = D_800D12BE;
            }
            else if (D_800ECE14[var_a3] < -D_800D12BE) {
                D_800ECE14[var_a3] = -D_800D12BE;
            }
            if (((D_800F3843[var_a3] + 9) & 0xFF) < 0x13U) {
                D_800F3843[var_a3] = 0;
            }
            else if (D_800D12BF < D_800F3843[var_a3]) {
                D_800F3843[var_a3] = D_800D12BF;
            }
            else {
                if (D_800F3843[var_a3] < -D_800D12BF) {
                    D_800F3843[var_a3] = -D_800D12BF;
                }
            }
            D_800ECE08[var_a3] = temp_v1_2->unk0;
        }
    }
    osSendMesg(&D_800D12D0, NULL, 1);
    return D_800D12B0;
}
#else
INCLUDE_ASM(s32, "../src/engine/pad", func_80013B00);
#endif

#ifdef NON_MATCHING
s16 func_80013E84(void) {
    s16 var_a3;
    s16 var_s0;
    s16* temp_a1_2;
    s32 temp_a0_2;
    s32 temp_a0_5;
    u16* temp_a0;
    u16* temp_a0_3;
    u16* temp_a0_4;
    void* temp_a0_6;

    var_s0 = 0;
    if ((func_80013B00()) > 0) {
        for (var_a3 = 0; var_a3 < PAD_COUNT; var_a3++) {
            temp_a0 = &(&sp10[0])[var_a3];
            temp_a0->unk0 = D_800F5460[var_a3];
            temp_a0->unk8 = D_800F338C[var_a3];
            D_800F2CE2[var_a3] = D_800ECE14[var_a3];
            D_800F33CC[var_a3] = D_800F3843[var_a3];
            temp_a0_2 = var_a3 * 8;
            *(temp_a0_2 + D_800F0A40) = D_800ECE14[var_a3];
            *(temp_a0_2 + D_800F5258) = D_800F3843[var_a3];
        }
        var_s0 = 1;
        while ((func_80013B00()) != 0) {
            for (var_a3 = 0; var_a3 < PAD_COUNT; var_a3++) {
                temp_a0_3 = &(&sp10[0])[var_a3];
                temp_a0_3->unk0 |= D_800F5460[var_a3];
                temp_a0_3->unk8 = (u16) (temp_a0_3->unk8 | D_800F338C[var_a3]);
                temp_a0_4 = &D_800F2CE2[var_a3];
                *temp_a0_4 += (s8) (u8) D_800ECE14[var_a3];
                temp_a1_2 = &D_800F33CC[var_a3];
                *temp_a1_2 = (s8) (u8) D_800F3843[var_a3] + (u16) *temp_a1_2;
                temp_a0_5 = var_a3 * 8;
                *(temp_a0_5 + D_800F0A40 + var_s0) = (u8) D_800ECE14[var_a3];
                *(temp_a0_5 + D_800F5258 + var_s0) = (u8) D_800F3843[var_a3];
                var_a3++;
            }
            var_s0 += 1;
        }
        do {
            temp_a0_6 = var_a3 + &sp10[0];
            *(var_a3 + D_800F5460) = temp_a0_6->unk0;
            *(var_a3 + D_800F338C) = temp_a0_6->unk8;
            var_a3++;
        } while (var_a3 < PAD_COUNT);
    }
    D_800F5440 = var_s0;
    return var_s0;
}
#else
INCLUDE_ASM(s32, "../src/engine/pad", func_80013E84);
#endif

void func_80014158(void) {
    func_80013974(0);
}

extern void func_8006407C(functionListEntry * entry, s16 type, void * func);
void func_80014174(void) {
    if (D_800D12CC != 0) {
        func_800141C4();
    }
    func_8006407C(&D_800D12C0, 0, func_80014158);
    D_800D12CC = 1;
}

extern void func_80064158(void *entry);
void func_800141C4(void) {
    if (D_800D12CC != 0) {
        func_80064158(&D_800D12C0);
    }
    D_800D12CC = 0;
}

u8 func_800141FC(s16 arg0) {
    return D_800D12BA[arg0];
}

