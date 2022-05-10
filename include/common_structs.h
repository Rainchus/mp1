#ifndef _COMMON_STRUCTS_
#define _COMMON_STRUCTS_

#include "types.h"

typedef struct playerMain {
/* 0x00 */ char unk_00;
/* 0x01 */ u8 cpuDifficulty;
/* 0x02 */ u8 cpuDifficultyCopy;
/* 0x03 */ u8 flags; //including CPU flag
/* 0x04 */ u8 characterID;
/* 0x05 */ char unk_05;
/* 0x06 */ u16 unk_06;
/* 0x08 */ u16 coinAmount;
/* 0x0A */ s16 miniGameCoins; //coins to give to player after minigame
/* 0x0C */ u16 starAmount;
/* 0x0E */ u16 curChainIndex;
/* 0x10 */ u16 curSpaceIndex;
/* 0x12 */ u16 nextChainIndex;
/* 0x14 */ u16 nextSpaceIndex;
/* 0x16 */ u8 poisonedFlag;
/* 0x17 */ u8 turn_status; //space type player landed on
/* 0x18 */ u8 playerIndex; //0, 1, 2, or 3
/* 0x19 */ char unk_19[3]; //likely padding
/* 0x1C */ void* unk_1C; //some heap instance
/* 0x20 */ void* playerObj; //ptr to playerObj on heap
/* 0x24 */ u16 totalMinigameCoins;
/* 0x26 */ u16 totalCoins;
/* 0x28 */ u8 happeningSpacesTotal;
/* 0x29 */ u8 redSpacesTotal;
/* 0x2A */ u8 blueSpacesTotal;
/* 0x2B */ u8 minigameSpacesTotal;
/* 0x2C */ u8 chanceSpacesTotal;
/* 0x2D */ u8 mushroomSpacesTotal;
/* 0x2E */ u8 bowserSpacesTotal;
/* 0x2F */ char unk_2F;
} playerMain; //sizeof 0x30
//P1 800F32B0, P2 800F32E0, P3 800F3310, P4 800F3340

typedef struct unk_Struct00 {
/* 0x00 */ char unk_00[0x40];
/* 0x40 */ f32 unk_40;
/* 0x44 */ char unk_44[0xF4];
} unk_Struct00; //sizeof 0x138

typedef struct unkGlobalStruct_00 {
/* 0x00 */ u16 unk_00;
/* 0x02 */ u16 unk_02;
/* 0x04 */ union {
                u16 unsigned16;
                u8 b[2];
            } unk_04;
/* 0x06 */ char unk_06[0x4];
/* 0x0A */ u16 unk_0A;
/* 0x0A */ char unk_0C[0x30];
/* 0x3C */ f32 unk_3C;
/* 0x40 */ char unk_40[2];
/* 0x42 */ u16 unk_42;
/* 0x44 */ char unk_44[0xC];
/* 0x50 */ f32 unk_50;
/* 0x54 */ char unk_54[4];
/* 0x58 */ s8 unk_58;
/* 0x59 */ char unk_59[0x57];
/* 0xB0 */ u16 unk_B0;
/* 0xB2 */ char unk_B2[1];
/* 0xB3 */ s8 unk_B3;
} unkGlobalStruct_00;

typedef struct Object {
/* 0x00 */ char unk_00[0x10];
/* 0x10 */ s32 unk_10;
/* 0x14 */ void* func_ptr;
/* 0x18 */ f32 unk_18;
/* 0x1C */ f32 unk_1C;
/* 0x20 */ f32 unk_20;
/* 0x24 */ f32 unk_24;
/* 0x28 */ f32 unk_28;
/* 0x2C */ f32 unk_2C;
/* 0x30 */ f32 unk_30;
/* 0x34 */ f32 unk_34;
/* 0x38 */ f32 unk_38;
/* 0x3C */ char unk_3C[4];
/* 0x40 */ unkGlobalStruct_00* unk_40;
/* 0x44 */ char unk_44[0x4];
/* 0x48 */ unkGlobalStruct_00* unk_48;
/* 0x4C */ u8  unk_4C;
/* 0x4C */ u8  unk_4D;
/* 0x4C */ u8  unk_4E;
/* 0x4C */ u8  unk_4F;
/* 0x50 */ unkGlobalStruct_00* unk_50;
} Object; //sizeof 0x54

typedef struct unk_800ECDE0 {
/* 0x00 */ s16 unk_00;
/* 0x02 */ s16 unk_02;
/* 0x04 */ char unk_04[0x20];
} unk_800ECDE0;

typedef struct Vec2f {
               f32 x;
               f32 y;
} Vec2f;

typedef struct Vec2s {
               s32 x;
               s32 y;
} Vec2s;

typedef struct Vec3f {
               f32 x;
               f32 y;
               f32 z;
} Vec3f;

typedef struct Vec3s {
               s32 x;
               s32 y;
               s32 z;
} Vec3s;

typedef struct Vec4f {
               f32 x;
               f32 y;
               f32 z;
               f32 yaw;
} Vec4f;

typedef struct viewAngle {
/* 0x00 */ f32 y;
/* 0x04 */ f32 x;
/* 0x08 */ f32 z;
} viewAngle;

typedef struct cameraPosition {
/* 0x00 */ f32 x;
/* 0x04 */ f32 y;
/* 0x08 */ f32 z;
} cameraPosition;

#endif