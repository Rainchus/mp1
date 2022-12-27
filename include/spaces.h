#ifndef _SPACES_H_
#define _SPACES_H_

#include "common.h"

#define EVENT_INDEX_PLAYERDICE   -5
#define EVENT_INDEX_PLAYERTURN   -4
#define EVENT_INDEX_UNUSED       -3
#define EVENT_INDEX_NEWTURN      -2
#define SPACE_INDEX_INVALID      -1

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
#define SPACE_TYPE_TOTAL      10

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

void LoadInitialSpaceTextures();
void ChangeSpaceTextures(s16 type);
s32 LoadBoardSpaces(s16 dir, s16 file);
void FreeBoardSpaces();
void SetSpaceType(s16, u8);
void EventTableHydrate(EventTableEntry *table);
SpaceData* GetSpaceData(s16 spaceID);
void SetCurrentSpaceIndex(s16 spaceIndex);
s16 GetCurrentSpaceIndex();
void SetEventReturnFlag(s32 flags);
void SetSpaceStepAnim(s16 spaceIndex);
void SetSpaceSpawnAnim(s16 spaceIndex);
void SetSpaceDisappearAnim(s16 spaceIndex);


extern u8 *D_800C4FD0; // Space data bytestream

extern u8 D_800C51B0[SPACE_TYPE_TOTAL]; // Space type mapping?

extern EventListEntry *D_800D8144; // EVENT_INDEX_NEWTURN
extern EventListEntry *D_800D8148; // EVENT_INDEX_UNUSED
extern EventListEntry *D_800D814C; // EVENT_INDEX_PLAYERTURN
extern EventListEntry *D_800D8150; // EVENT_INDEX_PLAYERDICE

extern u16 D_800D8100; // Size of D_800D8108 (Total spaces in board)
extern u16 D_800D8102; // Size of D_800D810C
extern u16 D_800D8104; // Size of D_800D8110

extern SpaceData *D_800D8108;
extern ChainData *D_800D810C;
extern ChainData *D_800D8110;

extern u32 D_800D8154; // Optional event completion flags
extern s16 D_800ED5E0; // currSpaceIndex

extern u16 D_800F3290; // D_800C4FD0 is loaded (boolean)

extern s16 D_800D8140; // Space texture set type
extern u32 D_800C4FD4[SPACE_TYPE_TOTAL]; // Space Texture Files Set 0
extern u32 D_800C4FFC[SPACE_TYPE_TOTAL]; // Space Texture Files Set 1
extern u32 D_800C5024[SPACE_TYPE_TOTAL]; // Space Texture Files Set Default
extern void *D_800D8118[SPACE_TYPE_TOTAL]; // Loaded Space Texture bytestreams

#endif
