#ifndef _SPACES_H_
#define _SPACES_H_

#include "common.h"

#define SPACE_INDEX_NFIVE     -5
#define SPACE_INDEX_NFOUR     -4
#define SPACE_INDEX_NTHREE    -3
#define SPACE_INDEX_NTWO      -2
#define SPACE_INDEX_INVALID   -1

#define SPACE_TYPE_INVISIBLE   0
#define SPACE_TYPE_BLUE        1
#define SPACE_TYPE_RED         2
#define SPACE_TYPE_MINIGAME    3
#define SPACE_TYPE_HAPPENING   4
#define SPACE_TYPE_STAR        5
#define SPACE_TYPE_CHANCE      6
#define SPACE_TYPE_START       7
#define SPACE_TYPE_MUSHROOM    8
#define SPACE_TYPE_BOWSER      9

typedef struct {
    s16 activationType;
    s16 executionType;
    void (*eventFunc)();
} EventListEntry;

typedef struct EventTableEntry {
    s16 spaceIndex;
    EventListEntry* eventList;
} EventTableEntry;

typedef struct {
    s8 unk0;
    u8 spaceType;
    s16 unk2;
    Vec3f coords;
    f32 sx, sy, sz;
    EventListEntry *eventList;
} SpaceData;

typedef struct ChainData {
    u16 len;
    s16* spaceIndices;
} ChainData;

void SetSpaceType(s16, u8);
void EventTableHydrate(EventTableEntry *table);
SpaceData* GetSpaceData(s16 spaceID);
void SetCurrentSpaceIndex(s16 spaceIndex);
s16 GetCurrentSpaceIndex();

extern u16 *D_800C4FD0; // File/Board?

extern u16 D_800D8100; // Total spaces in board
extern u8 D_800C51B0[]; // Space type mapping?

extern EventListEntry *D_800D8144; // -2
extern EventListEntry *D_800D8148; // -3
extern EventListEntry *D_800D814C; // -4
extern EventListEntry *D_800D8150; // -5

extern u16 D_800D8102; // Size of D_800D810C
extern u16 D_800D8104; // Size of D_800D8110

extern SpaceData *D_800D8108;
extern ChainData *D_800D810C;
extern ChainData *D_800D8110;

extern u32 D_800D8154; // Optional space event completion flags
extern s16 D_800ED5E0; // currSpaceIndex

extern u16 D_800F3290; // UNK

extern s16 D_800D8140; // UNK
extern u32 D_800C4FD4[10];
extern u32 D_800C4FFC[10];
extern u32 D_800C5024[10];
extern void *D_800D8118[10];

#endif
