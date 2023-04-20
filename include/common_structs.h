#ifndef _COMMON_STRUCTS_
#define _COMMON_STRUCTS_

#include "types.h"
#include "math.h"

typedef struct Vec2f {
               f32 x;
               f32 y;
} Vec2f;

typedef struct Vec2s {
               s16 x;
               s16 y;
} Vec2s;

typedef struct {
    u16 x, y;
} Vec2hu;

typedef struct Vec2w {
               s32 x;
               s32 y;
} Vec2w;

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
               f32 w;
} Vec4f;

typedef struct unk_Struct01 {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ char pad2[6];
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ char unk_14[4];
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ f32 unk_20;
    /* 0x24 */ s32 unk_24;
    /* 0x28 */ char unk_28[8];
    /* 0x30 */ s32 unk_30;
    /* 0x34 */ char unk_34[0x1C];
    /* 0x50 */ volatile s32 unk_50;
    /* 0x54 */ u16 unk_54;
    /* 0x58 */ f32 unk_58;
    /* 0x5C */ f32 unk_5C;
    /* 0x60 */ f32 unk_60;
    /* 0x64 */ f32 unk_64;
} unk_Struct01;

typedef struct unkGlobalStruct_00 {
/* 0x00 */ union {
        u16 unsigned16[2];
        s16 signed16[2];
        s32 signed32;
    } unk_00;
/* 0x04 */ union {
        f32 float32;
        u32 unsigned32;
        u16 unsigned16[2];
        u8 b[4];
    } unk_04;
/* 0x08 */ union {
        f32 float32;
        u32 unsigned32;
        u16 unsigned16[2];
        u8 b[4];
    } unk_08;
/* 0x0C */ union {
        f32 float32;
        s16 signed16[2];
    } unk_0C;
/* 0x10 */ union {
        f32 float32;
        s16 signed16[2];
    } unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ f32 unk_1C;
                union {
                    f32 floatingPoint;
                    u8 b[4];
                } unk_20;
    /* 0x24 */ f32 unk_24;
    /* 0x28 */ struct unkGlobalStruct_00* unk_28;
    /* 0x2C */ char unk_2C[0x8];
    /* 0x34 */ f32 unk_34;
    /* 0x38 */ f32 unk_38;
    /* 0x3C */ f32 unk_3C;
    /* 0x40 */ union {
        f32 float32;
        s32 signed32;
    } unk_40;
    /* 0x44 */ char unk_44[0xC];
    /* 0x50 */ f32 unk_50;
    /* 0x54 */ u8 unk_54[2];
    /* 0x56 */ s8 unk_56;
    /* 0x57 */ s8 unk_57;
    /* 0x58 */ s8 unk_58;
    /* 0x59 */ char unk_59[3];
    /* 0x5C */ s32 unk_5C;
    /* 0x60 */ f32 unk_60;
    /* 0x64 */ f32 unk_64;
    /* 0x68 */ struct unkGlobalStruct_00* unk_68;
    /* 0x6C */ char unk_6C[0x42];
    /* 0xAE */ u16 unkAE;
    /* 0xB0 */ u16 unk_B0;
    /* 0xB2 */ char unk_B2[1];
    /* 0xB3 */ s8 unk_B3;
    /* 0xB4 */ char unk_B4[0x08];
    /* 0xBC */ f32 unk_BC;
    /* 0xC0 */ char unk_C0[0x1C];
    /* 0xDC */ s32 unk_DC;
    /* 0xE0 */ s32 unk_E0;
    /* 0xE4 */ unk_Struct01* unk_E4;
} unkGlobalStruct_00; /* size = 0xE8 */

typedef struct unkObjectStruct {
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
} unkObjectStruct; //sizeof 0x54

typedef struct unkObjectStruct2 {
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
/* 0x50 */ volatile s32 unk_50;
/* 0x54 */ char unk_54[0x90];
/* 0xE4 */ unkObjectStruct* unk_E4;
} unkObjectStruct2; //sizeof 0x54

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
/* 0x00 */ struct Object* prev;
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
    /* 0x000 */ Vec3f pos;
    /* 0x00C */ f32 unkC;
    /* 0x010 */ f32 unk10;
    /* 0x014 */ f32 unk14;
    /* 0x018 */ f32 unk18;
    /* 0x01C */ f32 unk1C;
    /* 0x020 */ f32 unk20;
    /* 0x024 */ char pad24[0x1C];
    /* 0x040 */ f32 unk_40;
    /* 0x044 */ f32 unk_44;
    /* 0x048 */ f32 unk_48;
    /* 0x04C */ char pad4C[0xA8];
    /* 0x0F4 */ s32 unkF4;
    /* 0x0F8 */ char padF8[0x400];
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

typedef struct Object {
/* 0x00 */ struct Object *prev; // may be NULL
/* 0x04 */ struct Object *next;
/* 0x08 */ s16 unk_08;
/* 0x0A */ u16 unk_0A;
/* 0x0C */ Vec3f coords;
/* 0x18 */ Vec3f unk_18;
/* 0x24 */ f32 xScale;
/* 0x28 */ f32 yScale;
/* 0x2C */ f32 zScale;
/* 0x30 */ f32 unk_30;
/* 0x34 */ f32 unk_34;
/* 0x38 */ f32 unk_38;
/* 0x3C */ unk_Struct04* unk_3C;
/* 0x3C */ unk_Struct04* unk_40;
/* 0x44 */ f32 unk_44;
/* 0x48 */ f32 unk_48;
/* 0x4C */ s32 unk_4C;
/* 0x50 */ char unk_50[3];
/* 0x53 */ s8 unk_53;
/* 0x50 */ char unk_54[0x38];
/* 0x8C */ struct Object* unk_8C;
} Object; // //sizeof 0xAC? (this and mpSource_object are the same struct)

typedef struct playerMain {
/* 0x00 */ u8 unk_00;
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
/* 0x20 */ Object* playerObj; //ptr to playerObj on heap
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

//sprite related
typedef struct unk_800ECDE0 {
/* 0x00 */ s16 unk_00;
/* 0x02 */ s16 unk_02;
/* 0x04 */ s16 unk_04;
/* 0x06 */ s16 unk_06;
/* 0x08 */ s32 unk_08;
/* 0x0C */ s16 unk_0C;
/* 0x0E */ s16 unk_0E;
/* 0x10 */ f32 unk_10;
/* 0x14 */ f32 unk_14;
/* 0x18 */ s32 unk_18;
/* 0x1C */ s16 unk_1C;
/* 0x1E */ s16 unk_1E;
/* 0x20 */ s16 unk_20;
/* 0x22 */ s16 pad;
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
    struct Object* unk0;
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

typedef struct unk_Struct02 {
    char unk_00[0x0A];
    s16 unk_0A;
    s16* unk_0C;
} unk_Struct02;

typedef struct unk_ovl_2D_struct { //actually global??
    /* 0x00 */ s32 unk_00;
    /* 0x00 */ s32 unk_04;
    /* 0x00 */ s16 unk_08;
    /* 0x0A */ s16 unk_0A;
    /* 0x0C */ char unk_0C[0x3C];
    /* 0x48 */ f32 unk_48;
/* 0x4C */ union {
        f32 float32;
        u16 unsigned16[2];
        s16 signed16[2];
        s32 signed32;
    } unk_4C;
    /* 0x50 */ f32 unk_50;
    /* 0x54 */ char unk_54[0x18];
    /* 0x6C */ s32 unk_6C;
    /* 0x70 */ char pad70[0xC];
    /* 0x7C */ Mat4 unk7C; // Transformation Matrix
    /* 0x7C */ char padBC[0x4];
} unk_ovl_2D_struct;

typedef struct SubTextWindow {
    s8 unk0;
    char unk_01;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s16 unkC;
    s16 unkE;
} SubTextWindow;
typedef struct TextWindow {
/* 0x00 */ u8 unk_00;
/* 0x01 */ char unk_01;
/* 0x02 */ u8 unk_02;
/* 0x03 */ u8 unk_03;
/* 0x04 */ u8 unk_04;
/* 0x05 */ u8 unk_05;
/* 0x06 */ u8 unk_06;
/* 0x07 */ u8 unk_07;
/* 0x08 */ u8 unk_08;
/* 0x09 */ u8 unk_09;
/* 0x0A */ u8 unk_0A;
/* 0x0B */ char unk_0B[2];
/* 0x0D */ u8 unk_0D;
/* 0x0E */ u8 unk_0E;
/* 0x0F */ u8 unk_0F;
/* 0x10 */ s8 unk_10;
/* 0x11 */ char unk_11;
/* 0x12 */ u8 unk_12;
/* 0x13 */ u8 unk_13;
/* 0x14 */ char unk_14[4];
/* 0x18 */ s16 unk_18;
/* 0x1A */ s16 unk_1A;
/* 0x1C */ s16 unk_1C;
/* 0x1E */ char unk_1E[6];
/* 0x24 */ s16 unk_24;
/* 0x26 */ s16 unk_26;
/* 0x28 */ s16 unk_28;
/* 0x26 */ s16 unk_2A;
/* 0x2C */ s16 unk_2C;
/* 0x2E */ s16 unk_2E;
/* 0x30 */ s16 unk_30;
/* 0x32 */ s16 unk_32;
/* 0x34 */ s16 unk_34;
/* 0x36 */ char unk_36[0x2];
/* 0x38 */ s16 unk_38;
/* 0x3A */ char unk_3A[2];
/* 0x3C */ f32 unk_3C;
/* 0x40 */ char unk_40[2];
/* 0x42 */ s16 unk_42;
/* 0x44 */ s16 unk_44;
/* 0x46 */ s16 unk_46[20];
/* 0x6E */ s16 unk_6E;
/* 0x70 */ char unk_70[11];
/* 0x7B */ s8 unk_7B[5]; //unknown array size
/* 0x80 */ char unk_80[8];
/* 0x88 */ void* unk_88[5]; //unknown array size
/* 0x9C */ char unk_9C[0x14];
/* 0xB0 */ u8* stringPtr;
/* 0xB4 */ void* string;
/* 0xB8 */ u8 usingStringIDBool;
/* 0xB9 */ char unk_B9[7];
/* 0xC0 */ void* unk_C0[10];
/* 0xE8 */ unkGlobalStruct_00* unk_E8;
/* 0xEC */ f32 unk_EC;
/* 0xF0 */ f32 unk_F0;
/* 0xF4 */ SubTextWindow unk_F4[5]; //unknown size
/* 0x144 */ char unk_154[0x138];
} TextWindow; //sizeof 0x27C

typedef struct DecisionTreeNonLeafNode {
    u32 type;
    union {
        void (*func) ();
        u32 data;
    } node_data1;
    union {
        u32 data;
        s32 *node_data;
    } node_data2;
} DecisionTreeNonLeafNode;

typedef struct file_1ACF0_struct {
/* 0x00 */ Addr* unk_00;
/* 0x04 */ Addr* unk_04;
/* 0x08 */ char unk_08[0x14];
/* 0x1C */ s32 unk_1C;
/* 0x20 */ s32 unk_20;
/* 0x24 */ Addr* unk_24;
/* 0x28 */ Addr* unk_28;
/* 0x2C */ char unk_2C[0x14];
/* 0x40 */ s32 unk_40;
/* 0x44 */ s32 unk_44;
/* 0x48 */ s32 unk_48;
/* 0x4C */ s32 unk_4C;
/* 0x50 */ s32 unk_50;
/* 0x54 */ s32 unk_54;
} file_1ACF0_struct;

#endif