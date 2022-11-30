#include "common.h"

//start of rodata 800F8B80
//bss 800F9160 - 800F91B0


s16 func_800F753C_2553AC(void);
s16 func_800F7564_2553D4(void);
s16 func_800F758C_2553FC(void);
s16 func_800F75B4_255424(void);
s16 func_800F75DC_25544C(void);
s16 func_800F7608_255478(void);
s16 func_800F7630_2554A0(void);
s16 func_800F7658_2554C8(void);
s16 func_800F7684_2554F4(void);
s16 func_800F76B0_255520(void);
s16 func_800F76D8_255548(void);
s16 func_800F7704_255574(void);
s16 func_800F7730_2555A0(void);

void func_800F7B6C_2559DC(void);
void func_800F7BA0_255A10(void);
void func_800F7BD4_255A44(void);
void func_800F7C08_255A78(void);
void func_800F7C3C_255AAC(void);
void func_800F8130_255FA0(void);
void func_800F8240_2560B0(void);
void func_800F8298_256108(void);
void func_800F8514_256384(void);
void func_800F8588_2563F8(void);
void func_800F88EC_25675C(void);
void func_800F8914_256784(void);
void func_800F893C_2567AC(void);
void func_800F8964_2567D4(void);
void func_800F898C_2567FC(void);
void func_800F89B4_256824(void);
void func_800F89D8_256848(void);
void func_800F89FC_25686C(void);
void func_800F8A30_2568A0(void);
void func_800F8A94_256904(void);


typedef struct {
    /* 0x0 */ s16 unk0;
    /* 0x2 */ s16 unk2;
} my_struct; // size 0x4

typedef struct EventTableUnkStruct {
    s16* spaceIDs;
    DecisionTreeNonLeafNode* decisionTree;
    s16 unk_08;
    s16 unk_0A;
} EventTableUnkStruct;

// extern my_struct D_800F8C18[]; // tbd how big it is :)

// extern s16* D_800F8ED8[];
extern s16 D_800F8F08[];
extern unkStructTest D_800ED154;
extern s16 D_800ED156;
extern s16 D_800ED158[];

// extern s32 D_800F8CA0[]; //ai decision struct
// extern s32 D_800F8D30[]; //ai decision struct
// extern s32 D_800F8D00[]; //ai decision struct
// extern s32 D_800F8CD0[]; //ai decision struct
// extern s32 D_800F8CA0[]; //ai decision struct
// extern s32 D_800F8C40[]; //ai decision struct
// extern s32 D_800F8C70[]; //ai decision struct
// extern s32 D_800F8D60[]; //ai decision struct
extern s16 D_800ED5C2;
extern s16 D_800ED172;
// extern s32 D_800F8BF0[];
// extern s16 D_800F8BC0[]; //more spaceIDs
// extern s16 D_800F8BD0[]; //spaceIDs
// extern s16 D_800F8BE0[];
extern s16 D_800ED5CA;
extern Vec3f D_800F9180;
extern Vec3f D_800F918C;
extern Vec3f D_800F9198;
extern Vec3f D_800F91A4;
extern Vec3f D_800F91B0;
extern f32 D_800F91B4;
extern EventTableEntry D_800F905C;
extern EventTableEntry D_800F9164;
extern s16 D_800F8BF8[];
extern Object* D_800F91BC;
extern Object* D_800F91C0[];
// extern s16 D_800F8C08[];
// extern s16 D_800F8C34[];
extern Object* D_800F91DC;
extern Object* D_800F91E0[];
// extern s16 D_800F8C38[];
extern Object* D_800F91E4;
// extern s16 D_800EE320;
extern s32 D_800F91E8;
extern s32 D_800F91EC;
extern s32 D_800F91F0;
extern s32 D_800F91F4;
extern s16 D_800EE320;
// extern s32 D_800F91E8;
// extern s32 D_800F91EC;
// extern s32 D_800F91F0;
// extern s32 D_800F91F4;
// extern s16 D_800ED5DC;
// extern ProcessHeader D_800F8F68;
// extern ProcessHeader D_800F8F8C;
// extern ProcessHeader D_800F8FB0;
// extern ProcessHeader D_800F8FD4;
// extern ProcessHeader D_800F8FF8;
// //extern s32 D_800F8BB0;
// extern void (*D_800F8D6C[16])();

void func_800F6D30_254BA0(void);
void InitBoard(void);
void func_800F6F68_254DD8(void);
void func_800F7070_254EE0(void);
void func_800F8B20_256990(void);

Object* func_800F7D6C_255BDC(s16);
void func_800F7E5C_255CCC(Object*);
s32 func_800F775C_2555CC(void);
s32 func_800F7794_255604(void);
void func_800F7B30_2559A0(s32, s32);
void func_800F6BD8_254A48(void);
void func_800F6E34_254CA4(void);
s16 func_800F6610_254480(void);
s16 func_800F67AC_25461C(s16);
void func_800F87E4_256654(EventTableUnkStruct*);
void func_800F7C70_255AE0(void);
void func_800F7D20_255B90(void);
void func_800F7F7C_255DEC(void);
Object* func_800F7D6C_255BDC(s16);
void func_800F7E5C_255CCC(Object*);
void func_800F7E78_255CE8(Object*);
void func_800F7EE0_255D50(Object*);
s32 func_800F7A60_2558D0(void);
s32 func_800F7AE8_255958(void);
s32 func_800F79BC_25582C(void);
s32 func_800F7A2C_25589C(void);
s32 func_800F78CC_25573C(void);
s32 func_800F7934_2557A4(void);
s32 func_800F77CC_25563C(void);
s32 func_800F784C_2556BC(void);
void func_800F7B30_2559A0(s32, s32);
void func_800F7224_255094(s16);
void func_800F709C_254F0C(s16);
void func_800F6E34_254CA4(void);
ProcessHeader* func_800F68E4_254754(s32*);
void func_800F6AA0_254910(ProcessHeader*);
void func_800F6B58_2549C8(ProcessHeader*);
void func_800F667C_2544EC(void);
void func_800F66C8_254538(void);
void func_800F671C_25458C(void);
void func_800F719C_25500C(void);
void func_800F732C_25519C(void);
void func_800F74D4_255344(void);
void func_800F667C_2544EC(void);
void func_800F7F4C_255DBC(void);
void func_800F6850_2546C0(void);
void func_800F6850_2546C0(void);
void func_800F68B8_254728(void);
