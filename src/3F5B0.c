#include "common.h"

void func_800622BC(u16, u16, s32);
extern s32 D_800ECB24;


#ifdef NON_MATCHING
typedef s32 func_ptr(void);
s16 GetCurrentPlayerIndex();                        /* extern */
playerMain* GetPlayerStruct(s32);                           /* extern */
s16 GetTurnsElapsed();                              /* extern */
s32 IsFlagSet(s32);                     /* extern */
s32 PlayerHasCoins(s32 playerIndex, u32 coinAmount);
s16 RNGPercentChance(s8);                             /* extern */
s32 func_8004FEBC(s16);                             /* extern */
extern s16 D_800ED154[32]; //board ram
extern s32 D_800F3FF0;
extern s16 D_800C4C30[7];

//RunDecisionTree
//https://decomp.me/scratch/hUXdw
s16 RunDecisionTree(DecisionTreeNonLeafNode* arg0) {
    s32 temp_s0;
    DecisionTreeNonLeafNode* temp_v0_2;
    s32 temp_v1_2;
    s16 temp_a1;
    u32 temp_a0;
    u32 temp_v0;
    u8 temp_v1;
    
    s32 phi_v0;
    s32 phi_s0;
    s32 phi_s0_2;
    s32 phi_v0_2;
    s32 phi_a0;
    s32 phi_a1;

    DecisionTreeNonLeafNode* phi_s1 = arg0;
    s32 phi_s3 = 1;
    s16* tempArray = D_800C4C30;
    s16* phi_s2 = D_800ED154;
    
    while (1) {
        startLoop:
        switch ((phi_s1->type >> 24)) {
        case 1:                                         /* switch 1 */
            if (PlayerHasCoins(-1, phi_s1->node_data) != 0) {
                goto afterLoop;
            }
            break;
        case 2:                                         /* switch 1 */
            for (phi_s0 = 0; phi_s0 < 7; phi_s0++) {
                if ((phi_s3 << phi_s0) & phi_s1->node_data) {
                    if (!IsFlagSet(tempArray[phi_s0])) {
                        break;
                    }
                }
            }
            if (phi_s0 == 7) {
                break;
            }
            goto afterLoop;

            
        case 3:                                         /* switch 1 */
            if (((phi_s3 << (D_800F3FF0 - 1)) & phi_s1->node_data)) {
                goto afterLoop;
            }
            break;
        case 4:                                         /* switch 1 */
            temp_v0 = phi_s1->node_data;
            temp_v1_2 = (temp_v0 >> 0x14);
            temp_a1 = phi_s1->node_data;
            
            temp_a0 = (temp_v0 >> 0x10) & 0xF;
            
            temp_v1_2 &= 0xF;


            switch (temp_a0) {                          /* switch 2 */
            case 0:                                     /* switch 2 */
                if (phi_s2[temp_v1_2] == temp_a1) {
                    goto afterLoop;
                }
                break;
            case 1:                                     /* switch 2 */
                if (phi_s2[temp_v1_2] != temp_a1) {
                    goto afterLoop;
                }
                break;
            case 2:                                     /* switch 2 */
                if ((phi_s2[temp_v1_2] < temp_a1)) {
                    goto afterLoop;
                }
                break;
            case 3:                                     /* switch 2 */
                if ((phi_s2[temp_v1_2] <= temp_a1)) {
                    goto afterLoop;
                }
                break;
            case 4:                                     /* switch 2 */
                if ((phi_s2[temp_v1_2] > temp_a1)) {
                    goto afterLoop;
                }
                break;
            case 5:                                     /* switch 2 */
                if ((phi_s2[temp_v1_2] >= temp_a1)) {
                    goto afterLoop;
                }
                break;
            default:
                goto afterLoop;
            }
            //end of switch 2

            break;
        case 5:                                         /* switch 1 */
            if (((phi_s3 << func_8004FEBC(GetCurrentPlayerIndex())) & phi_s1->node_data)) {
                goto afterLoop;
            }
            break;
        case 6:                                         /* switch 1 */
            if (((func_ptr*)phi_s1->node_data)() != 0) {
                goto afterLoop;
            }
            break;
        case 7:                                         /* switch 1 */
            if ((u32) GetTurnsElapsed() < (u32) phi_s1->node_data) {
                break;
            }

            goto afterLoop;
        case 0:
        default:
            afterLoop:
            if ((s32)phi_s1->next_grouper_ptr >= 0) {
                goto afterLoop2;
            }
            phi_s1 = (DecisionTreeNonLeafNode*)phi_s1->next_grouper_ptr - 1;
            goto addC;
        }
        phi_s1++;
    }
afterLoop2:

    if (GetPlayerStruct(-1)->cpuDifficultyCopy == 0) {
        phi_a0 = phi_s1->next_grouper_ptr & 0xFF;
    } else {
        phi_a0 = (phi_s1->next_grouper_ptr >> 8);
    }

    if (RNGPercentChance(phi_a0) != 0) {
        temp_a1 = (phi_s1->next_grouper_ptr >> 16) & 1;
    } else {
        temp_a1 = ((phi_s1->next_grouper_ptr >> 16) ^ 1) & 1;
    }
    return temp_a1;
addC:
    phi_s1++;
    goto startLoop;
}
#else
INCLUDE_ASM(s32, "3F5B0", RunDecisionTree);
#endif

void func_8003ECB0(u16 arg0, u16 arg1, s32 arg2, u8 arg3, u8 arg4) {
    D_800ECB24 = arg4;
    func_800622BC((arg0 + 1), (arg1 + 1), (arg2));
    D_800ECB24 = arg3;
    func_800622BC(arg0, arg1, arg2);
}

INCLUDE_ASM(s32, "3F5B0", func_8003ED30);

INCLUDE_ASM(s32, "3F5B0", func_8003EDDC);

INCLUDE_ASM(s32, "3F5B0", func_8003EE3C);

INCLUDE_ASM(s32, "3F5B0", func_8003EE58);

INCLUDE_ASM(s32, "3F5B0", func_8003EE68);

INCLUDE_ASM(s32, "3F5B0", func_8003EF98);

INCLUDE_ASM(s32, "3F5B0", func_8003F008);

INCLUDE_ASM(s32, "3F5B0", func_8003F07C);

INCLUDE_ASM(s32, "3F5B0", func_8003F1C0);

INCLUDE_ASM(s32, "3F5B0", func_8003F384);

INCLUDE_ASM(s32, "3F5B0", func_8003F400);

INCLUDE_ASM(s32, "3F5B0", func_8003F7FC);

INCLUDE_ASM(s32, "3F5B0", func_8003FA5C);

INCLUDE_ASM(s32, "3F5B0", func_8003FC94);

INCLUDE_ASM(s32, "3F5B0", func_8003FCD4);

INCLUDE_ASM(s32, "3F5B0", func_8003FD68);

INCLUDE_ASM(s32, "3F5B0", func_8003FEFC);

INCLUDE_ASM(s32, "3F5B0", func_8004017C);

INCLUDE_ASM(s32, "3F5B0", func_80040590);

INCLUDE_ASM(s32, "3F5B0", func_800405DC);

INCLUDE_ASM(s32, "3F5B0", func_8004068C);

INCLUDE_ASM(s32, "3F5B0", func_800406E4);

INCLUDE_ASM(s32, "3F5B0", func_80040724);

INCLUDE_ASM(s32, "3F5B0", func_80040764);

INCLUDE_ASM(s32, "3F5B0", func_80040780);

INCLUDE_ASM(s32, "3F5B0", func_80040D9C);

INCLUDE_ASM(s32, "3F5B0", func_80041048);

INCLUDE_ASM(s32, "3F5B0", func_800410E8);

INCLUDE_ASM(s32, "3F5B0", func_80041158);

INCLUDE_ASM(s32, "3F5B0", func_800411C8);

INCLUDE_ASM(s32, "3F5B0", func_80041250);

INCLUDE_ASM(s32, "3F5B0", func_80041370);

INCLUDE_ASM(s32, "3F5B0", func_800413B0);

INCLUDE_ASM(s32, "3F5B0", func_8004157C);

INCLUDE_ASM(s32, "3F5B0", func_8004158C);

INCLUDE_ASM(s32, "3F5B0", func_800415B0);

INCLUDE_ASM(s32, "3F5B0", func_800415CC);

INCLUDE_ASM(s32, "3F5B0", func_800415E8);

INCLUDE_ASM(s32, "3F5B0", func_80041604);

INCLUDE_ASM(s32, "3F5B0", func_80041624);

INCLUDE_ASM(s32, "3F5B0", func_80041644);

INCLUDE_ASM(s32, "3F5B0", func_80041664);

INCLUDE_ASM(s32, "3F5B0", func_80041684);

INCLUDE_ASM(s32, "3F5B0", func_800417B4);

INCLUDE_ASM(s32, "3F5B0", func_80041978);

INCLUDE_ASM(s32, "3F5B0", func_800419D8);

INCLUDE_ASM(s32, "3F5B0", func_80041A38);

INCLUDE_ASM(s32, "3F5B0", func_80041C04);

INCLUDE_ASM(s32, "3F5B0", func_80041C64);

INCLUDE_ASM(s32, "3F5B0", func_80041F24);

INCLUDE_ASM(s32, "3F5B0", func_80041F84);

INCLUDE_ASM(s32, "3F5B0", func_80041FE0);
