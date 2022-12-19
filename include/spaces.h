#ifndef _SPACES_H_
#define _SPACES_H_

#include "common.h"


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

void SetSpaceType(s16, u8);
void EventTableHydrate(EventTableEntry *table);
SpaceData* GetSpaceData(s32 spaceID);
void SetCurrentSpaceIndex(s16 spaceIndex);
s16 GetCurrentSpaceIndex();

extern u16 *D_800C4FD0; // File

extern EventListEntry *D_800D8144;
extern EventListEntry *D_800D8148;
extern EventListEntry *D_800D814C;
extern EventListEntry *D_800D8150;

extern u32 D_800D8154; // Optional space event completion flags
extern s16 D_800ED5E0; // currSpaceIndex

#endif
