#include "spaces.h"

INCLUDE_ASM(s32, "spaces", func_8004B860);

INCLUDE_ASM(s32, "spaces", func_8004B92C);

INCLUDE_ASM(s32, "spaces", func_8004B994);

INCLUDE_ASM(s32, "spaces", func_8004B9B8);

INCLUDE_ASM(s32, "spaces", func_8004B9D4);

INCLUDE_ASM(s32, "spaces", func_8004BA04);

INCLUDE_ASM(s32, "spaces", func_8004BDEC);

INCLUDE_ASM(s32, "spaces", func_8004BDFC);

INCLUDE_ASM(s32, "spaces", func_8004C100);

INCLUDE_ASM(s32, "spaces", GetSpaceData);

s16 GetAbsSpaceIndexFromChainSpaceIndex(u16 chainIndex, u16 spaceIndex);
INCLUDE_ASM(s32, "spaces", GetAbsSpaceIndexFromChainSpaceIndex);

s16 GetChainLength(u16 chainIndex);
INCLUDE_ASM(s32, "spaces", GetChainLength);

INCLUDE_ASM(s32, "spaces", GetChainSpaceIndexFromAbsSpaceIndex);

INCLUDE_ASM(s32, "spaces", func_8004C2CC);

/* Pick random space of type arg0. */
s16 func_8004C3B8(s8);
INCLUDE_ASM(s32, "spaces", func_8004C3B8);

void SetSpaceType(s16 spaceIndex, u8 spaceType) {
    SpaceData *space;

    space = GetSpaceData(spaceIndex);
    space->spaceType = spaceType;
}

/* Change spaces of old type to new type on a given chain */
void func_8004C4BC(u16 chainIndex, u16 oldType, u8 newType) {
    s32 chainLen;
    s16 absIndex;
    SpaceData *space;
    s32 i;

    chainLen = GetChainLength(chainIndex);
    for (i = 0; i < chainLen; i++) {
        absIndex = GetAbsSpaceIndexFromChainSpaceIndex(chainIndex, i);
        space = GetSpaceData(absIndex);
        if (space->spaceType == oldType) {
            space->spaceType = newType;
        }
    }
}

INCLUDE_ASM(s32, "spaces", func_8004C558);

INCLUDE_ASM(s32, "spaces", func_8004C61C);

INCLUDE_ASM(s32, "spaces", func_8004C660);

INCLUDE_ASM(s32, "spaces", func_8004C71C);

/* Space process */
void func_8004C760() {
   Process *process;
   SpaceData *space;
   f32 fval;

   process = GetCurrentProcess();
   space = GetSpaceData((s16)(s32)process->user_data);

   fval = 0.0f;
   if (D_800C4FD0 != NULL) {
      do {
         SleepVProcess();

         fval += 0.1f;
         if (fval >= 1.0f) {
               fval = 1.0f;
         }

         space->sx = fval;
         space->sz = fval;
      } while (!(fval >= 1.0f) && D_800C4FD0 != NULL);
   }

   EndProcess(NULL);
}

/* Start process with spaceIndex as data */
void func_8004C81C(s16 spaceIndex) {
   Process *process;
   process = InitProcess(func_8004C760, 0xEF00, 0, 0);
   process->user_data = (void *)(s32)spaceIndex;
}

/* Set space's event list.*/
void func_8004C860(s16 spaceIndex, EventListEntry *eventList) {
    switch (spaceIndex) {
        case -2:
            D_800D8144 = eventList;
            return;

        case -3:
            D_800D8148 = eventList;
            return;

        case -4:
            D_800D814C = eventList;
            return;

        case -5:
            D_800D8150 = eventList;
            return;
    }

    {
        SpaceData *space;
        space = GetSpaceData(spaceIndex);
        space->eventList = eventList;
    }
}

void EventTableHydrate(EventTableEntry *table) {
    while (table->spaceIndex != -1) {
        func_8004C860(table->spaceIndex, table->eventList);
        table++;
    }
}

s32 ExecuteEventForSpace(s16 spaceIndex, s16 activationType) {
    EventListEntry *eventList;
    s16 currSpaceIndex;
    s32 ret;

    switch (spaceIndex) {
        case -2:
            eventList = D_800D8144;
            break;
        case -3:
            eventList = D_800D8148;
            break;
        case -4:
            eventList = D_800D814C;
            break;
        case -5:
            eventList = D_800D8150;
            break;
        default:
            eventList = GetSpaceData(spaceIndex)->eventList;
            break;
    }

    ret = 0;
    currSpaceIndex = GetCurrentSpaceIndex();
    SetCurrentSpaceIndex(spaceIndex);

    if (eventList != NULL) {
        while (eventList->activationType != 0) {
            if (eventList->activationType == activationType) {
                D_800D8154 = 0;

                switch (eventList->executionType) {
                    case 1:
                        eventList->eventFunc();
                        break;
                    case 2:
                        {
                            Process *currProcess = GetCurrentProcess();
                            Process *spaceProcess = InitProcess(eventList->eventFunc, 0x4800, 0, 0);
                            LinkChildProcess(currProcess, spaceProcess);
                            WaitForChildProcess();
                        }
                        break;
                }

                ret = ret | D_800D8154;
            }
            eventList++;
        }
    }
    SetCurrentSpaceIndex(currSpaceIndex);
    return ret;
}

/* Set space event global return flags. */
void func_8004CB20(s32 unk) {
    D_800D8154 = unk;
}

void SetCurrentSpaceIndex(s16 spaceIndex) {
    D_800ED5E0 = spaceIndex;
}

s16 GetCurrentSpaceIndex() {
    return D_800ED5E0;
}

/* Pick random chance time space. */
s16 func_8004CB44(void) {
    return func_8004C3B8(SPACE_TYPE_CHANCE);
}