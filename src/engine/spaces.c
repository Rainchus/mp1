#include "process.h"
#include "spaces.h"


void LoadSpaceTextures(s16 type) {
    int i;
    u32 *ptr;

    D_800D8140 = type;
    switch (type) {
        case 0:
            ptr = D_800C4FD4;
            break;
        case 1:
            ptr = D_800C4FFC;
            break;
        default:
            ptr = D_800C5024;
            break;
    }

    for (i = 0; i < SPACE_TYPE_TOTAL; i++) {
        if (ptr[i] != 0) {
            D_800D8118[i] = ReadMainFS(ptr[i]);
        }
        else {
            D_800D8118[i] = NULL;
        }
    }
}

/* HuMemMemoryFree D_800D8118. */
void FreeSpaceTextures(void) {
    s32 i;
    for (i = 0; i < SPACE_TYPE_TOTAL; i++) {
        if (D_800D8118[i] != NULL) {
            FreeMainFS(D_800D8118[i]);
        }
        D_800D8118[i] = NULL;
    }
}

/* Set board as 0? */
void LoadInitialSpaceTextures(void) {
    LoadSpaceTextures(0);
    D_800C4FD0 = NULL;
}

void FreeSpaceTexturesWrapper(void) {
    FreeSpaceTextures();
}

/* HuMemMemoryFree and then set D_800D8118 */
void ChangeSpaceTextures(s16 type) {
    FreeSpaceTextures();
    LoadSpaceTextures(type);
}

/* Rendering */
// TODO: https://decomp.me/scratch/Ccp3B ~90%
void RenderSpaces(void **displayList, void *param_2, u8 param_3);
INCLUDE_ASM(s32, "engine/spaces", RenderSpaces);

/* Get pointer to space data section */
u8 *GetSpaceDataStream(u8 *byteSteam, s32 metaDataOffset) {
    u16* pDataOffset = (u16*) &byteSteam[metaDataOffset];
    return &byteSteam[*pDataOffset];
}

void func_80028E8C(s16, void*); // Unk
/* Load Board Related Data From File */
s32 LoadBoardSpaces(s16 dir, s16 file) {
    //struct board_def *boarddef;
    u16* pDataStream;
    SpaceData *pSpaceData;
    ChainData *pChainData;
    u8* chainOffsets;
    s16* chainValues;
    s32 i, j;

    D_800C4FD0 = ReadMainFS((dir << 16) | file);
    if (D_800C4FD0 != NULL) {
        /* Reset special space event lists */
        D_800D8144 = NULL;
        D_800D8148 = NULL;
        D_800D814C = NULL;
        D_800D8150 = NULL;
        pDataStream = (u16*) D_800C4FD0;
        D_800D8100 = *pDataStream++;
        D_800D8102 = *pDataStream++;
        D_800D8104 = *pDataStream++;

        /* Load space data */
        D_800D8108 = (SpaceData*) MallocTemp(D_800D8100 * sizeof(SpaceData));
        pDataStream = (u16*) GetSpaceDataStream(D_800C4FD0, 6);
        for (i = 0, pSpaceData = D_800D8108; i < D_800D8100; i++, pSpaceData++) {
            Vec3f *pos;
            pSpaceData->unk0 = 1;
            pSpaceData->unk2 = *pDataStream++;
            pSpaceData->spaceType = *pDataStream++;
            pos = (Vec3f*) pDataStream;
            pSpaceData->coords.x = pos->x * 5.0f;
            pSpaceData->coords.y = pos->y * 5.0f;
            pSpaceData->coords.z = pos->z * 5.0f;
            pDataStream = (u16*) (++pos);
            pSpaceData->sx = 1.0f;
            pSpaceData->sy = 1.0f;
            pSpaceData->sz = 1.0f;
            pSpaceData->eventList = NULL;
        }

        /* Load chain data 1 */
        D_800D810C = (ChainData*) MallocTemp(D_800D8102 * sizeof(ChainData));
        chainOffsets = GetSpaceDataStream(D_800C4FD0, 8);
        for (i = 0, pChainData = D_800D810C; i < D_800D8102; i++, pChainData++) {
            pDataStream = (u16*) GetSpaceDataStream(chainOffsets, i * 2);
            pChainData->len = *pDataStream;
            pDataStream++;

            pChainData->spaceIndices = (s16*)MallocTemp( (s16) pChainData->len * sizeof(s16));
            chainValues = pChainData->spaceIndices;
            for(j = 0; j < (s16) pChainData->len; j++) {
                *chainValues++ = *pDataStream++;
            }
        }

        /* Load chain data 2 */
        D_800D8110 = (ChainData*) MallocTemp(D_800D8104  * sizeof(ChainData));
        chainOffsets = GetSpaceDataStream(D_800C4FD0, 10);
        for (i = 0, pChainData = D_800D8110; i < D_800D8104; i++, pChainData++) {
            pDataStream = (u16*) GetSpaceDataStream(chainOffsets, i * 2);
            pChainData->len = *pDataStream;
            pDataStream++;

            pChainData->spaceIndices = (s16*)MallocTemp( (s16)pChainData->len * sizeof(s16));
            chainValues = pChainData->spaceIndices;
            for(j = 0; j < (s16) pChainData->len; j++) {
                *chainValues++ = *pDataStream++;
            }
        }

        FreeMainFS(D_800C4FD0);
        func_80028E8C(1, RenderSpaces);
        D_800F3290 = 1;
    }
    return 0;
}

/* HuMemMemoryFree board temps */
void FreeBoardSpaces(void) {
   s32 i;
   ChainData *chainData;

   if (D_800C4FD0 != NULL) {
      D_800C4FD0 = NULL;
      D_800F3290 = 0;

      // HuMemMemoryFree space data
      FreeTemp(D_800D8108);

      // HuMemMemoryFree both chain data
      for (i = 0, chainData = D_800D810C; i < D_800D8102; i++, chainData++) {
         FreeTemp(chainData->spaceIndices);
      }
      FreeTemp(D_800D810C);

      for (i = 0, chainData = D_800D8110; i < D_800D8104; i++, chainData++) {
         FreeTemp(chainData->spaceIndices);
      }
      FreeTemp(D_800D8110);

      func_80028E8C(1, NULL);
   }
}

SpaceData *GetSpaceData(s16 index) {
    return &D_800D8108[index];
}

s16 GetAbsSpaceIndexFromChainSpaceIndex(u16 chainIndex, u16 spaceIndex) {
    return D_800D8110[chainIndex].spaceIndices[spaceIndex];
}

s16 GetChainLength(u16 chainIndex) {
    return D_800D8110[chainIndex].len;
}

s16 GetChainSpaceIndexFromAbsSpaceIndex(s16 absIndex, s32 chainIndex) {
    s32 i;
    for (i = 0; i < GetChainLength(chainIndex); i++) {
        if (GetAbsSpaceIndexFromChainSpaceIndex(chainIndex, i) == absIndex) {
            return i;
        }
    }
    return SPACE_INDEX_INVALID;
}

s16 GetRandomSpaceOfTypeInChain(u16 type, u16 chainIndex) {
   u8 randByte;
   s32 i;
   SpaceData *space;
   s32 chainLen;

   chainLen = GetChainLength(chainIndex);
   randByte = (rand8() % 30) + 1;

   i = 0;
   while (TRUE) {
      s16 absIndex = GetAbsSpaceIndexFromChainSpaceIndex(chainIndex, i);
      space = GetSpaceData(absIndex);

      // Get Nth space in chain of type
      if ((D_800C51B0[space->spaceType & 0xf] & type) != 0)
         if (--randByte == 0) {
            break;
      }
      // Wrap around
      if (++i >= chainLen) {
         i = 0;
      }
   }

   return i;
}

s16 GetRandomSpaceOfType(u16 type) {
   u8 randByte;
   s32 i;
   SpaceData *space;

   randByte = rand8() % D_800D8100;

   i = 0;
   while (TRUE) {
      space = GetSpaceData(i);
      // Get Nth space that matches type
      if ((D_800C51B0[space->spaceType & 0xf] & type) != 0)
         if (--randByte == 0) {
            break;
      }
      // Wrap around
      if (++i >= D_800D8100) {
         i = 0;
      }
   }

   return i;
}


void SetSpaceType(s16 spaceIndex, u8 spaceType) {
    SpaceData *space;

    space = GetSpaceData(spaceIndex);
    space->spaceType = spaceType;
}

/* Change spaces of old type to new type on a given chain */
void SetSpaceTypeInChain(u16 chainIndex, u16 oldType, u8 newType) {
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

/* Space process */
void SpaceStepAnim(void) {
   Process *process;
   SpaceData *space;
   f32 fval;

   process = HuPrcCurrentGet();
   space = GetSpaceData((s16)(s32)process->user_data);

   fval = 1.4f;
   if (D_800C4FD0 != NULL) {
      do {
         HuPrcVSleep();
         fval -= 0.05f;
         if (fval <= 1.0f) {
            fval = 1.0f;
         }

         space->sx = fval;
         space->sz = fval;
      }
      while (!(fval <= 1.0f) && D_800C4FD0 != NULL);
   }

   EndProcess(NULL);
}

/* Init Space Process. */
void SetSpaceStepAnim(s16 spaceIndex) {
   Process *process;
   process = InitProcess(SpaceStepAnim, 0xEF00, 0, 0);
   process->user_data = (void *)(s32)spaceIndex;
}

/* Space process */
void SpaceDisappearAnim(void) {
   Process *process;
   SpaceData *space;
   f32 fval;

   process = HuPrcCurrentGet();
   space = GetSpaceData((s16)(s32)process->user_data);

   fval = 1.0f;
   if (D_800C4FD0 != NULL) {
      do {
         HuPrcVSleep();
         fval -= 0.1f;
         if (fval <= 0.0f) {
            fval = 0.0f;
         }

         space->sx = fval;
         space->sz = fval;
      }
      while (!(fval <= 0.0f) && D_800C4FD0 != NULL);
   }

    EndProcess(NULL);
}

/* Init Space Process. */
void SetSpaceDisappearAnim(s16 spaceIndex) {
   Process *process;
   process = InitProcess(SpaceDisappearAnim, 0xEF00, 0, 0);
   process->user_data = (void *)(s32)spaceIndex;
}

/* Space process */
void SpaceSpawnAnim(void) {
   Process *process;
   SpaceData *space;
   f32 fval;

   process = HuPrcCurrentGet();
   space = GetSpaceData((s16)(s32)process->user_data);

   fval = 0.0f;
   if (D_800C4FD0 != NULL) {
      do {
         HuPrcVSleep();

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

/* Init Space process. */
void SetSpaceSpawnAnim(s16 spaceIndex) {
   Process *process;
   process = InitProcess(SpaceSpawnAnim, 0xEF00, 0, 0);
   process->user_data = (void *)(s32)spaceIndex;
}

void SetSpaceEventList(s16 index, EventListEntry *eventList) {
   /* Event index. */
   switch (index) {
      case EVENT_INDEX_NEWTURN:
         D_800D8144 = eventList;
         return;
      case EVENT_INDEX_UNUSED:
         D_800D8148 = eventList;
         return;
      case EVENT_INDEX_PLAYERTURN:
         D_800D814C = eventList;
         return;
      case EVENT_INDEX_PLAYERDICE:
         D_800D8150 = eventList;
         return;
    }

    {
      /* Default is event from space index. */
      SpaceData *space;
      space = GetSpaceData(index);
      space->eventList = eventList;
    }
}

void EventTableHydrate(EventTableEntry *table) {
   while (table->spaceIndex != -1) {
      SetSpaceEventList(table->spaceIndex, table->eventList);
      table++;
   }
}

s32 ExecuteEventForSpace(s16 index, s16 activationType) {
   EventListEntry *eventList;
   s16 currSpaceIndex;
   s32 ret;

   /* Event index. */
   switch (index) {
      case EVENT_INDEX_NEWTURN:
         eventList = D_800D8144;
         break;
      case EVENT_INDEX_UNUSED:
         eventList = D_800D8148;
         break;
      case EVENT_INDEX_PLAYERTURN:
         eventList = D_800D814C;
         break;
      case EVENT_INDEX_PLAYERDICE:
         eventList = D_800D8150;
         break;
      default:
         /* Default is event from space index. */
         eventList = GetSpaceData(index)->eventList;
         break;
   }

   ret = 0;
   currSpaceIndex = GetCurrentSpaceIndex();
   SetCurrentSpaceIndex(index);

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
                     Process *currProcess = HuPrcCurrentGet();
                     Process *spaceProcess = InitProcess(eventList->eventFunc, 0x4800, 0, 0);
                     HuPrcChildLink(currProcess, spaceProcess);
                     HuPrcChildWatch();
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
void SetEventReturnFlag(s32 flags) {
    D_800D8154 = flags;
}

void SetCurrentSpaceIndex(s16 spaceIndex) {
    D_800ED5E0 = spaceIndex;
}

s16 GetCurrentSpaceIndex(void) {
    return D_800ED5E0;
}

/* Pick random chance time space. */
s16 GetRandomChanceSpace(void) {
    return GetRandomSpaceOfType(SPACE_TYPE_CHANCE);
}