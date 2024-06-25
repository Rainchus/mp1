#include "common.h"

void func_800622BC_62EBC(u16, u16, s32);
extern s32 D_800ECB24_ECBB4;


typedef s32 func_ptr(void);
s16 GetCurrentPlayerIndex();                        /* extern */
playerMain* GetPlayerStruct(s32);                           /* extern */
s16 GetTurnsElapsed();                              /* extern */
s32 IsFlagSet(s32);                     /* extern */
s32 PlayerHasCoins(s32 playerIndex, u32 coinAmount);
s16 RNGPercentChance(s8);                             /* extern */
s32 func_8004FEBC_50ABC(s16);                             /* extern */
extern s16 D_800ED154_ED1E4[32]; //board ram
extern s32 D_800F3FF0_F4080;
extern s16 D_800C4C30_C5830[7];

s16 RunDecisionTree(DecisionTreeNonLeafNode* currentNode) {
    s32 loopIndex;
    DecisionTreeNonLeafNode* tempNode;
    s32 tempVal1;
    s16 tempVal2;
    u32 tempVal3;
    u32 tempVal4;
    u8 tempVal5;

    s32 phi_v0;
    s32 phi_s0;
    s32 phi_s0_2;
    s32 phi_v0_2;
    s32 phi_a0;
    s32 phi_a1;

    DecisionTreeNonLeafNode* phi_s1 = currentNode;
    s32 bitMask = 1;
    s16* boardFeatureArray = D_800C4C30_C5830;
    s16* playerDataArray = D_800ED154_ED1E4;

    for (;;phi_s1++) {
        switch ((phi_s1->type >> 24)) {
        case 1:
            if (PlayerHasCoins(-1, phi_s1->node_data1.data) != 0) {
                break;
            }
            continue;
        case 2:
            for (loopIndex = 0; loopIndex < 7; loopIndex++) {
                if ((bitMask << loopIndex) & phi_s1->node_data1.data) {
                    if (!IsFlagSet(boardFeatureArray[loopIndex])) {
                        break;
                    }
                }
            }
            if (loopIndex == 7) {
                continue;
            }
            break;

        case 3:
            if (((bitMask << (D_800F3FF0_F4080 - 1)) & phi_s1->node_data1.data)) {
                break;
            }
            continue;
        case 4:
            tempVal4 = phi_s1->node_data1.data;
            tempVal1 = (tempVal4 >> 0x14);
            tempVal2 = phi_s1->node_data1.data;
            tempVal3 = (tempVal4 >> 0x10) & 0xF;
            tempVal1 &= 0xF;

            switch (tempVal3) {
            case 0:
                if (playerDataArray[tempVal1] == tempVal2) {
                    break;
                }
                continue;
            case 1:
                if (playerDataArray[tempVal1] != tempVal2) {
                    break;
                }
                continue;
            case 2:
                if ((playerDataArray[tempVal1] < tempVal2)) {
                    break;
                }
                continue;
            case 3:
                if ((playerDataArray[tempVal1] <= tempVal2)) {
                    break;
                }
                continue;
            case 4:
                if ((playerDataArray[tempVal1] > tempVal2)) {
                    break;
                }
                continue;
            case 5:
                if ((playerDataArray[tempVal1] < tempVal2)) {
                    continue;
                }
                break;
            }
            break;
        case 5:
            if (((bitMask << func_8004FEBC_50ABC(GetCurrentPlayerIndex())) & phi_s1->node_data1.data)) {
                break;
            }
            continue;
        case 6:
            if (((func_ptr*)phi_s1->node_data1.data)() != 0) {
                break;
            }
            continue;
        case 7:
            if ((u32) GetTurnsElapsed() < (u32) phi_s1->node_data1.data) {
                continue;
            }
        case 0:
            break;
        }
        if ((s32)phi_s1->node_data2.data < 0) {
            phi_s1 = (DecisionTreeNonLeafNode*)phi_s1->node_data2.data - 1;
        } else {
            if (GetPlayerStruct(-1)->cpuDifficultyCopy == 0) {
                phi_a0 = phi_s1->node_data2.data & 0xFF;
            } else {
                phi_a0 = (phi_s1->node_data2.data >> 8);
            }
            if (RNGPercentChance(phi_a0) != 0) {
                tempVal2 = (phi_s1->node_data2.data >> 16) & 1;
            } else {
                tempVal2 = ((phi_s1->node_data2.data >> 16) ^ 1) & 1;
            }
            return tempVal2;
        }
    }
}

void func_8003ECB0_3F8B0(u16 arg0, u16 arg1, s32 arg2, u8 arg3, u8 arg4) {
    D_800ECB24_ECBB4 = arg4;
    func_800622BC_62EBC((arg0 + 1), (arg1 + 1), (arg2));
    D_800ECB24_ECBB4 = arg3;
    func_800622BC_62EBC(arg0, arg1, arg2);
}


INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003ED30_3F930);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003EDDC_3F9DC);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003EE3C_3FA3C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003EE58_3FA58);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003EE68_3FA68);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003EF98_3FB98);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003F008_3FC08);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003F07C_3FC7C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003F1C0_3FDC0);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003F384_3FF84);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003F400_40000);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003F7FC_403FC);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003FA5C_4065C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003FC94_40894);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003FCD4_408D4);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003FD68_40968);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003FEFC_40AFC);

INCLUDE_RODATA("asm/nonmatchings/3F5B0", D_800CAC08_CB808);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8004017C_40D7C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80040590_41190);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800405DC_411DC);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8004068C_4128C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800406E4_412E4);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80040724_41324);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80040764_41364);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80040780_41380);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80040D9C_4199C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041048_41C48);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800410E8_41CE8);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041158_41D58);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800411C8_41DC8);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041250_41E50);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041370_41F70);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800413B0_41FB0);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8004157C_4217C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8004158C_4218C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800415B0_421B0);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800415CC_421CC);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800415E8_421E8);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041604_42204);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041624_42224);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041644_42244);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041664_42264);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041684_42284);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800417B4_423B4);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041978_42578);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800419D8_425D8);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041A38_42638);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041C04_42804);

INCLUDE_RODATA("asm/nonmatchings/3F5B0", D_800CACA8_CB8A8);

INCLUDE_RODATA("asm/nonmatchings/3F5B0", D_800CACC4_CB8C4);

INCLUDE_RODATA("asm/nonmatchings/3F5B0", D_800CACDC_CB8DC);

INCLUDE_RODATA("asm/nonmatchings/3F5B0", D_800CACF4_CB8F4);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041C64_42864);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041F24_42B24);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041F84_42B84);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041FE0_42BE0);
