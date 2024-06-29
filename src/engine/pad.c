#include "engine/pad.h"

s32 func_80013770_14370(u16* arg0) {
    OSContStatus status[PAD_COUNT];
    u8 pattern;
    s16 index;

    osContInit(&D_800EE960_EE9F0, &pattern, status);
    D_800D12B4_D1344 = 0;
    D_800D12B2_D1342 = 0;
    D_800D12B0_D1340 = 0;
    D_800F3778_F3808 = 0;
    for (index = 0; index < PAD_COUNT; index++) {
        if ((pattern >> index) & 1) {
            if (!(status[index].errno & 8)) {
                D_800F3778_F3808++;
                if (D_800F3778_F3808 == arg0[0]) {
                    break;
                }
            }
        }
        D_800EDEB4_EDF44[index] = D_800F5460_F54F0[index] = D_800ECE08_ECE98[index] = D_800F338C_F341C[index] = 0;
        D_800F2CE2_F2D72[index] = D_800F33CC_F345C[index] = 0;
        D_800F3843_F38D3[index] = 0;
        D_800ECE14_ECEA4[index] = 0;
        D_800D12BA_D134A[index] = 0;
    }
    osContSetCh(arg0[0]);
    return 0;
}

s16 func_800138DC_144DC(s16 arg0, s32 arg1) {
    Vec3s sp10;
    s16 sp20;

    sp20 = arg0;
    func_800642FC_64EFC(&sp10, (void*)func_80013770_14370, (void*)&sp20, 1);
    D_800D12CC_D135C = 0;
    if (arg1 & 1) {
        func_80014174_14D74();
    }
    func_80013AEC_146EC(0x46, 0x46);
    osCreateMesgQueue(&D_800D12D0_D1360, &D_800D12E8_D1378, 1);
    osSendMesg(&D_800D12D0_D1360, NULL, 1);
    return D_800F3778_F3808;
}

s32 func_80013974_14574(s32 arg0) {
    osRecvMesg(&D_800D12D0_D1360, 0, 1);
    if (D_800D12B0_D1340 < 8) {
        osSendMesg(&D_800D12D0_D1360, 0, 1);

        osContStartReadData(&D_800EE960_EE9F0);
        osRecvMesg(&D_800EE960_EE9F0, 0, 1);

        osContGetReadData(&D_800D1170_D1200[D_800D12B4_D1344].pad);

        osRecvMesg(&D_800D12D0_D1360, 0, 1);

        D_800D12B0_D1340++;
        D_800D12B4_D1344++;
        if (D_800D12B4_D1344 >= 8) {
            D_800D12B4_D1344 = 0;
        }
    }
    osSendMesg(&D_800D12D0_D1360, 0, 1);

    return 0;
}

void func_80013A74_14674(void) {
    osRecvMesg(&D_800D12D0_D1360, NULL, 1);
    if (D_800D12B0_D1340 < 8) {
        func_800642FC_64EFC((Vec3s*) &D_800D1230_D12C0[D_800D12B4_D1344], func_80013974_14574, 0, 0);
    }
    osSendMesg(&D_800D12D0_D1360, NULL, 1);
}

void func_80013AEC_146EC(s8 arg0, s8 arg1) {
    D_800D12BE_D134E = arg0;
    D_800D12BF_D134F = arg1;
}

#ifdef NON_MATCHING
s16 func_80013B00_14700(void) {
    s16 var_a3;
    pad_unk_substruct* temp_v1_2;

    osRecvMesg(&D_800D12D0_D1360, NULL, 1);
    if (D_800D12B0_D1340 != 0) {
        D_800D12B0_D1340--;

        D_800D12B2_D1342++;
        if (D_800D12B2_D1342 >= 8) {
            D_800D12B2_D1342 = 0;
        }

        for (var_a3 = 0; var_a3 < PAD_COUNT; var_a3++) {
            temp_v1_2 = &D_800D1170_D1200[D_800D12B2_D1342].unk6;
            D_800D12BA_D134A[var_a3] = temp_v1_2->unk4 != 8;
            D_800EDEB4_EDF44[var_a3] = temp_v1_2->unk0;
            D_800ECE14_ECEA4[var_a3] = temp_v1_2->unk2;
            D_800F2CE2_F2D72[var_a3] = temp_v1_2->unk2;
            D_800F3843_F38D3[var_a3] = temp_v1_2->unk3;
            D_800F33CC_F345C[var_a3] = temp_v1_2->unk3;
            D_800F5460_F54F0[var_a3] = temp_v1_2->unk0 & (temp_v1_2->unk0 ^ D_800ECE08_ECE98[var_a3]);
            if (D_800ECE08_ECE98[var_a3] != temp_v1_2->unk0) {
                D_800F338C_F341C[var_a3] = D_800F5460_F54F0[var_a3];
                D_800D12B6_D1346[var_a3] = 0x1E;
            }
            else {
                D_800D12B6_D1346[var_a3] -= 1;
                if (!(D_800D12B6_D1346[var_a3] & 0xFF)) {
                    D_800F338C_F341C[var_a3] = temp_v1_2->unk0;
                    D_800D12B6_D1346[var_a3] = 0xA;
                }
                else {
                    D_800F338C_F341C[var_a3] = 0;
                }
            }
            if (((D_800ECE14_ECEA4[var_a3] + 9) & 0xFF) < 0x13U) {
                D_800ECE14_ECEA4[var_a3] = 0;
            }
            else if (D_800D12BE_D134E < D_800ECE14_ECEA4[var_a3]) {
                D_800ECE14_ECEA4[var_a3] = D_800D12BE_D134E;
            }
            else if (D_800ECE14_ECEA4[var_a3] < -D_800D12BE_D134E) {
                D_800ECE14_ECEA4[var_a3] = -D_800D12BE_D134E;
            }
            if (((D_800F3843_F38D3[var_a3] + 9) & 0xFF) < 0x13U) {
                D_800F3843_F38D3[var_a3] = 0;
            }
            else if (D_800D12BF_D134F < D_800F3843_F38D3[var_a3]) {
                D_800F3843_F38D3[var_a3] = D_800D12BF_D134F;
            }
            else {
                if (D_800F3843_F38D3[var_a3] < -D_800D12BF_D134F) {
                    D_800F3843_F38D3[var_a3] = -D_800D12BF_D134F;
                }
            }
            D_800ECE08_ECE98[var_a3] = temp_v1_2->unk0;
        }
    }
    osSendMesg(&D_800D12D0_D1360, NULL, 1);
    return D_800D12B0_D1340;
}
#else
INCLUDE_ASM("asm/nonmatchings/engine/pad", func_80013B00_14700);
#endif

#ifdef NON_MATCHING
s16 func_80013E84_14A84(void) {
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
    if ((func_80013B00_14700()) > 0) {
        for (var_a3 = 0; var_a3 < PAD_COUNT; var_a3++) {
            temp_a0 = &(&sp10[0])[var_a3];
            temp_a0->unk0 = D_800F5460_F54F0[var_a3];
            temp_a0->unk8 = D_800F338C_F341C[var_a3];
            D_800F2CE2_F2D72[var_a3] = D_800ECE14_ECEA4[var_a3];
            D_800F33CC_F345C[var_a3] = D_800F3843_F38D3[var_a3];
            temp_a0_2 = var_a3 * 8;
            *(temp_a0_2 + D_800F0A40_F0AD0) = D_800ECE14_ECEA4[var_a3];
            *(temp_a0_2 + D_800F5258_F52E8) = D_800F3843_F38D3[var_a3];
        }
        var_s0 = 1;
        while ((func_80013B00_14700()) != 0) {
            for (var_a3 = 0; var_a3 < PAD_COUNT; var_a3++) {
                temp_a0_3 = &(&sp10[0])[var_a3];
                temp_a0_3->unk0 |= D_800F5460_F54F0[var_a3];
                temp_a0_3->unk8 = (u16) (temp_a0_3->unk8 | D_800F338C_F341C[var_a3]);
                temp_a0_4 = &D_800F2CE2_F2D72[var_a3];
                *temp_a0_4 += (s8) (u8) D_800ECE14_ECEA4[var_a3];
                temp_a1_2 = &D_800F33CC_F345C[var_a3];
                *temp_a1_2 = (s8) (u8) D_800F3843_F38D3[var_a3] + (u16) *temp_a1_2;
                temp_a0_5 = var_a3 * 8;
                *(temp_a0_5 + D_800F0A40_F0AD0 + var_s0) = (u8) D_800ECE14_ECEA4[var_a3];
                *(temp_a0_5 + D_800F5258_F52E8 + var_s0) = (u8) D_800F3843_F38D3[var_a3];
                var_a3++;
            }
            var_s0 += 1;
        }
        do {
            temp_a0_6 = var_a3 + &sp10[0];
            *(var_a3 + D_800F5460_F54F0) = temp_a0_6->unk0;
            *(var_a3 + D_800F338C_F341C) = temp_a0_6->unk8;
            var_a3++;
        } while (var_a3 < PAD_COUNT);
    }
    D_800F5440_F54D0 = var_s0;
    return var_s0;
}
#else
INCLUDE_ASM("asm/nonmatchings/engine/pad", func_80013E84_14A84);
#endif

void func_80014158_14D58(void) {
    func_80013974_14574(0);
}

extern void func_8006407C_64C7C(functionListEntry * entry, s16 type, void * func);
void func_80014174_14D74(void) {
    if (D_800D12CC_D135C != 0) {
        func_800141C4_14DC4();
    }
    func_8006407C_64C7C((functionListEntry*) &D_800D12C0_D1350, 0, func_80014158_14D58);
    D_800D12CC_D135C = 1;
}

extern void func_80064158_64D58(void *entry);
void func_800141C4_14DC4(void) {
    if (D_800D12CC_D135C != 0) {
        func_80064158_64D58(&D_800D12C0_D1350);
    }
    D_800D12CC_D135C = 0;
}

u8 func_800141FC_14DFC(s16 arg0) {
    return D_800D12BA_D134A[arg0];
}

