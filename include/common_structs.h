#ifndef _COMMON_STRUCTS_
#define _COMMON_STRUCTS_

#include "types.h"

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

typedef struct unk_Struct01 {
    /* 0x00 */ char unk_00[8];
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ char unk_14[0x10];
    /* 0x24 */ s32 unk_24;
} unk_Struct01;

typedef struct unkGlobalStruct_00 {
/* 0x00 */ union {
        u16 unsigned16[2];
        s16 signed16[2];
        s32 signed32;
    } unk_00;
/* 0x04 */ union {
        u16 unsigned16;
        u8 b[2];
    } unk_04;
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ s16 unk_08;
    /* 0x0A */ u16 unk_0A;

    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ f32 unk_1C;
                union {
                    f32 floatingPoint;
                    u8 b[4];
                } unk_20;
    /* 0x24 */ char unk_24[0x4];
    /* 0x28 */ struct unkGlobalStruct_00* unk_28;
    /* 0x2C */ char unk_2C[0x8];
    /* 0x34 */ f32 unk_34;
    /* 0x38 */ f32 unk_38;
    /* 0x3C */ f32 unk_3C;
    /* 0x40 */ s32 unk_40;
    // /* 0x42 */ u16 unk_42;
    /* 0x44 */ char unk_44[0xC];
    /* 0x50 */ f32 unk_50;
    /* 0x54 */ char unk_54[2];
    /* 0x56 */ s8 unk_56;
    /* 0x57 */ s8 unk_57;
    /* 0x58 */ s8 unk_58;
    /* 0x59 */ char unk_59[7];
    /* 0x60 */ f32 unk_60;
    /* 0x64 */ char unk_64[0x4C];
    /* 0xB0 */ u16 unk_B0;
    /* 0xB2 */ char unk_B2[1];
    /* 0xB3 */ s8 unk_B3;
    /* 0xB4 */ char unk_B4[0x30];
    /* 0xE4 */ unk_Struct01* unk_E4;
} unkGlobalStruct_00; /* size = 0xE8 */

typedef struct Object {
/* 0x00 */ char unk_00[0x0A];
/* 0x0A */ s16 unk_0A;
/* 0x0C */ char unk_0C[4];
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
/* 0x3C */ s16 unk_3C;
/* 0x3E */ char unk_3E[2];
/* 0x40 */ unkGlobalStruct_00* unk_40;
/* 0x44 */ u16 unk_44;
/* 0x46 */ char unk_46[2];
/* 0x48 */ unkGlobalStruct_00* unk_48;
/* 0x4C */ u8  unk_4C;
/* 0x4C */ u8  unk_4D;
/* 0x4C */ u8  unk_4E;
/* 0x4C */ u8  unk_4F;
/* 0x50 */ unkGlobalStruct_00* unk_50;
} Object; //sizeof 0x54

typedef struct jump_buf
{
    void *sp;
    void *func;
    u32 regs[21];
} jmp_buf;

typedef void (*process_func)();

typedef struct Process {
    /*0x00*/ struct Process *next;
    /*0x04*/ struct Process *youngest_child;
    /*0x08*/ struct Process *oldest_child;
    /*0x0C*/ struct Process *relative;
    /*0x10*/ struct Process *parent_oldest_child;
    /*0x14*/ struct Process *new_process;
    /*0x18*/ void *heap;
    /*0x1C*/ u16 exec_mode;
    /*0x1E*/ u16 stat;
    /*0x20*/ u16 priority;
    /*0x22*/ s16 dtor_idx;
    /*0x24*/ s32 sleep_time;
    /*0x28*/ void *base_sp;
    /*0x2C*/ jmp_buf prc_jump;
    /*0x88*/ process_func destructor;
    /*0x8C*/ void *user_data;
} Process;

typedef struct ProcessHeader { //?
/* 0x00 */ struct unk_Struct03* prev;
/* 0x04 */ Process* process;
/* 0x08 */ s16 unk_08;
/* 0x0A */ s16 unk_0A;
} ProcessHeader;

typedef struct unkProcessStruct {
           s16 unk0;
           s16 unk2;
           Process* processInstance;
           void (*unk8)();
} unkProcessStruct;

typedef struct unk_Struct00 {
    /* 0x000 */ Vec3f unk0;
    /* 0x00C */ char padC[0x34];
    /* 0x040 */ f32 unk_40;
    /* 0x044 */ f32 unk_44;
    /* 0x048 */ f32 unk_48;
    /* 0x04C */ char pad4C[0xEC];
} unk_Struct00;

typedef struct unk_Struct04 {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ char padC[0x18];
    /* 0x24 */ f32 unk_24;
    /* 0x28 */ f32 unk28;
    /* 0x2C */ f32 unk_2C;
    /* 0x30 */ char pad30[0x10];
    /* 0x40 */ s16* unk_40;
} unk_Struct04; /* size = 0x44 */

typedef struct unk_Struct03 {
/* 0x00 */ struct unk_Struct03 *prev; // may be NULL
/* 0x04 */ struct unk_Struct03 *next;
/* 0x08 */ s16 unk_08;
/* 0x0A */ u16 unk_0A;
/* 0x0C */ Vec3f coords;
/* 0x18 */ Vec3f unk_18;
/* 0x24 */ f32 unk_24;
/* 0x28 */ f32 unk_28;
/* 0x2C */ f32 unk_2C;
/* 0x30 */ f32 unk_30;
/* 0x34 */ f32 unk_34;
/* 0x38 */ f32 unk_38;
/* 0x3C */ unk_Struct04* unk_3C;
/* 0x3C */ unk_Struct04* unk_40;
/* 0x44 */ f32 unk_44;
/* 0x48 */ f32 unk_48;
/* 0x4C */ s32 unk_4C;
/* 0x50 */ char unk_50[0x3C];
/* 0x8C */ struct unk_Struct03* unk_8C;
} unk_Struct03; // //sizeof 0xAC? (this and mpSource_object are the same struct)

typedef struct playerMain {
/* 0x00 */ char unk_00;
/* 0x01 */ u8 cpuDifficulty;
/* 0x02 */ u8 cpuDifficultyCopy;
/* 0x03 */ u8 flags; //including CPU flag
/* 0x04 */ u8 characterID;
/* 0x05 */ char unk_05;
/* 0x06 */ u16 unk_06;
/* 0x08 */ s16 coinAmount;
/* 0x0A */ s16 miniGameCoins; //coins to give to player after minigame
/* 0x0C */ s16 starAmount;
/* 0x0E */ s16 curChainIndex;
/* 0x10 */ u16 curSpaceIndex;
/* 0x12 */ u16 nextChainIndex;
/* 0x14 */ u16 nextSpaceIndex;
/* 0x16 */ u8 poisonedFlag;
/* 0x17 */ u8 turn_status; //space type player landed on
/* 0x18 */ u8 playerIndex; //0, 1, 2, or 3
/* 0x19 */ char unk_19[3]; //likely padding
/* 0x1C */ Process* process; //some heap instance
/* 0x20 */ unk_Struct03* playerObj; //ptr to playerObj on heap
/* 0x24 */ u16 totalMinigameCoins;
/* 0x26 */ s16 coinPeak;
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

typedef struct unk_800ECDE0 {
/* 0x00 */ s16 unk_00;
/* 0x02 */ s16 unk_02;
/* 0x04 */ char unk_04[0x20];
} unk_800ECDE0;

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

typedef struct HeapNode {
    s32 size;
    u8 heap_constant;
    u8 used; // bool
    struct HeapNode* prev;
    struct HeapNode* next;
} HeapNode;

typedef struct board_overlay_entrypoint {
    s16 index;
    void* fn;
} board_overlay_entrypoint;

typedef struct GameStatus {
/* 0x00 */ s16 unk_00;
/* 0x02 */ s16 unk_02;
/* 0x04 */ s8 unk_04[2];
/* 0x06 */ s16 maxTurns;
/* 0x08 */ s16 currentTurn;
/* 0x0A */ s16 chosenStarSpaceIndex;
/* 0x0C */ s16 starSpaces[7];
/* 0x1A */ s16 unk_1A;
/* 0x1C */ s16 unk_1C;
} GameStatus;

typedef struct EventListEntry {
    s16 activation_type;
    s16 execution_type;
    void (*event_fn)();
} EventListEntry;

typedef struct EventTableEntry {
    s16 space_index;
    struct EventListEntry* event_list;
} EventTableEntry;

typedef struct SpaceData {
/* 0x00 */ s8 unk_00;
/* 0x01 */ u8 space_type; // enum board_space_type
/* 0x02 */ s16 unk_02;
/* 0x04 */ Vec3f coords;
/* 0x10 */ f32 sx;
/* 0x14 */ f32 sy;
/* 0x18*/  f32 sz;
/* 0x1C */ EventListEntry* event_list;
} SpaceData;

typedef struct ChainData {
    u16 len;
    s16* space_indices;
} ChainData;

typedef struct event_list_entry {
    s16 activation_type;
    s16 execution_type;
    void (*event_fn)();
} event_list_entry;

typedef struct event_table_entry {
    s16 space_index;
    struct event_list_entry* event_list;
} event_table_entry;


typedef struct mpSource_object_indirect2 {
    s16 unk0;
} mpSource_object_indirect2;

// Is this really just object? What is up with unk60?
typedef struct mpSource_object_indirect {
    s8 pad[24];

    /*0x18*/ f32 rot1;
    f32 rot2;
    f32 rot3;

    /*0x24*/ f32 unk36;
    f32 unk40;
    f32 unk44;

    /*0x30*/ f32 unk48;
    f32 funk52;
    f32 funk56;

    u16 unk60;
    struct mpSource_object_indirect2 *unk64;
    s16 unk68;
    s16 pad70;
    s32 pad72;
    u8 unk76;
} mpSource_object_indirect;


typedef struct mystery_struct_ret_func_80048224 {
    struct unk_Struct03* unk0;
    s8 pad[4];
    s16 unk8; // window id
} mystery_struct_ret_func_80048224;


typedef struct mpSource_object {
    /*0x00*/ struct object *prev; // may be NULL
    /*0x04*/ struct object *next;
    /*0x08*/ s8 pad1[2];
    /*0x0A*/ u16 unka;

    /*0x0C*/ Vec3f coords;

    /*0x18*/ f32 rot1;
    f32 rot2;
    f32 rot3;

    /*0x24*/ f32 unk36;
    f32 unk40;
    f32 unk44;

    /*0x30*/ f32 unk48;
    f32 funk52;
    f32 funk56;

    mpSource_object_indirect* unk60;
    void *unk64;
    s8 pad5[2];
    s16 unk70;
} mpSource_object;

typedef struct mpSource_f2b7cstruct {
    s8 pad[108];
    void *unk108;
    s8 pad112[12];
    void *unk124;
    s8 pad2[64];
} mpSource_f2b7cstruct;

typedef struct camera {
    Vec3f coords;
    f32 unk_0C;
} camera;

typedef struct unkStructTest {
/* 0x00 */ s16 unk_00[12];
/* 0x18 */ s16 unk_16;
/* 0x1A */ s16 unk_18;
/* 0x1C */ s16 unk_1A;
/* 0x1E */ s16 unk_1C;
} unkStructTest;

typedef struct unkGlobalStruct {
    f32 unk_00;
    s32 unk_04;
    f32 unk_08;
} unkGlobalStruct;

typedef struct unk_Struct02 {
    char unk_00[0x0A];
    s16 unk_0A;
    s16* unk_0C;
} unk_Struct02;

#endif