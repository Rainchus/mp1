#include "common.h"

typedef s32 func_ptr(void);
s16 GetCurrentPlayerIndex(void);
playerMain* GetPlayerStruct(s32);
s16 GetTurnsElapsed(void);
s32 IsFlagSet(s32);
s32 PlayerHasCoins(s32 playerIndex, u32 coinAmount);
s16 RNGPercentChance(s8);
s32 func_8004FEBC(s16);
extern s16 D_800ED154[32]; //board ram
extern s32 D_800F3FF0;
extern s16 D_800C4C30[7];

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
    s16* boardFeatureArray = D_800C4C30;
    s16* playerDataArray = D_800ED154;

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
            if (((bitMask << (D_800F3FF0 - 1)) & phi_s1->node_data1.data)) {
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
            if (((bitMask << func_8004FEBC(GetCurrentPlayerIndex())) & phi_s1->node_data1.data)) {
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


INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003ECB0);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003ED30);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003EDDC);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003EE3C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003EE58);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003EE68);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003EF98);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003F008);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003F07C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003F1C0);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003F384);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003F400);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003F7FC);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003FA5C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003FC94);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003FCD4);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003FD68);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8003FEFC);

INCLUDE_RODATA("asm/nonmatchings/3F5B0", D_800CAC08);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8004017C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80040590);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800405DC);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8004068C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800406E4);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80040724);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80040764);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80040780);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80040D9C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041048);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800410E8);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041158);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800411C8);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041250);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041370);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800413B0);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8004157C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_8004158C);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800415B0);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800415CC);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800415E8);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041604);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041624);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041644);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041664);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041684);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800417B4);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041978);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_800419D8);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041A38);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041C04);

INCLUDE_RODATA("asm/nonmatchings/3F5B0", D_800CACA8);

INCLUDE_RODATA("asm/nonmatchings/3F5B0", D_800CACC4);

INCLUDE_RODATA("asm/nonmatchings/3F5B0", D_800CACDC);

INCLUDE_RODATA("asm/nonmatchings/3F5B0", D_800CACF4);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041C64);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041F24);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041F84);

INCLUDE_ASM("asm/nonmatchings/3F5B0", func_80041FE0);
