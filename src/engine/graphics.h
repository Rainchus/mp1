
#ifndef __GRAPHICS_H
#define __GRAPHICS_H

#include "PR/os.h"

void func_8001AB84_1B784(void**, u16, u16); // Init graphics frame buffer pool                        
void func_8001ABAC_1B7AC(u64**); // Set gThreadStacks
void func_8001ABE8_1B7E8(s32*); // Set graphics state
void func_8001ABF4_1B7F4(u32); // Set unk swap chain state
void func_8001A7DC_1B3DC(void*); // Swap Chain Loop

// TODO: Move to respective header files
typedef struct {
    s32 unk00;
    OSMesgQueue *unk04;
    s32 unk08;
} unkSchedStruct;

typedef struct {
    u8 unk00[0x20];
} unkGraphicsMessage2; // OSMesg

void func_800639F8_645F8(unkSchedStruct*, OSMesgQueue*, s32);
void func_80061414_62014();
void func_800613E8_61FE8();


#endif