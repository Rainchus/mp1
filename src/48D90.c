#include "PR/os.h"
#include "engine/mallocblock.h"
#include "engine/data.h"
#include "engine/process.h"

typedef struct {
    u16        unk0;
    s16        unk2;
    void*      data;
    HuArchive* archive;
    s32        dirTblSize;
    u8*        bytes;
} unk20;

typedef struct unkStruct19 {
s32 unk0;
s32 unk4;
s32 unk8;
s32 unkC;
f32 unk_10;
f32 unk_14;
f32 unk_18;
f32 unk_1C;
f32 unk_20;
f32 unk_24;
f32 unk_28;
f32 unk_2C;
char unk_30[0x0C];
} unkStruct19; //sizeof 0x3C

typedef struct unkStruct17 {
s32 unk_00;
char unk_04[0x0C];
} unkStruct17;

extern s32 *D_800C4F74; // offsets
extern u8* D_800D6728; // bytestream

extern unkStruct19* D_800C4F78;
extern s8   D_800C4F7C;
void func_80028E8C(s32, void*);
void func_8004A7A4(void);
void func_8004AFFC(void);
void func_8004B7F8(s32);
void func_8004ACEC(void);
void func_8004A19C(s16, s16); 
extern s32* D_800C4F70;
extern s32* D_800C4F74;
extern unkStruct19* D_800C4F78;
extern s32 D_800D6720;
extern s16 D_800D6730;
extern s16 D_800D6732;
extern s16 D_800D6734;
extern s16 D_800D6736;
extern s16 D_800D6738;
extern s32 D_800F6598;
extern f32 D_800D672C;
extern s16 D_800D6730;
extern s16 D_800D6732;
extern s16 D_800D6734;
extern s16 D_800D6736;
extern s16 D_800D6738;
extern s32 D_800D673C;
extern unk20 D_800D6740[40];
extern unk20 *D_800D6A60[6][6]; // Have no clue what this is

extern OSMesgQueue D_800D6AF0;
extern OSMesg D_800D6B08;
extern OSThread D_800D6BA8;
extern OSThread D_800D7560;
extern s32 D_800D7710;
extern OSMesgQueue D_800D7F20;
extern OSMesg D_800D7F38;
extern OSMesgQueue D_800D7FD8;
extern OSMesg D_800D7FF0;
extern OSMesgQueue D_800D8090;
extern OSMesg D_800D80A8;

extern Process *D_800D80B0;
extern f32 D_800D80B4;
extern f32 D_800D80B8;
extern Vec2f D_800D80BC;
extern Vec2f D_800D80C4; // offset coordinates?
extern Vec3f D_800D80CC;
extern Vec3f D_800D80D8;
extern Vec3f D_800D80E4;
extern Vec3f D_800D80F0;


INCLUDE_ASM(s32, "48D90", func_80048190);

INCLUDE_ASM(s32, "48D90", func_800481F8);

INCLUDE_ASM(s32, "48D90", func_80048224);

INCLUDE_ASM(s32, "48D90", func_8004847C);

INCLUDE_ASM(s32, "48D90", func_800484C4);

INCLUDE_ASM(s32, "48D90", func_80048540);

INCLUDE_ASM(s32, "48D90", func_8004858C);

INCLUDE_ASM(s32, "48D90", func_80049328);

INCLUDE_ASM(s32, "48D90", func_80049334);

INCLUDE_ASM(s32, "48D90", func_80049340);

INCLUDE_ASM(s32, "48D90", func_8004935C);

INCLUDE_ASM(s32, "48D90", func_80049414);

INCLUDE_ASM(s32, "48D90", func_80049478);

INCLUDE_ASM(s32, "48D90", func_80049640);

INCLUDE_ASM(s32, "48D90", func_80049904);

INCLUDE_ASM(s32, "48D90", func_800499CC);

INCLUDE_ASM(s32, "48D90", func_80049E60);

extern s32 D_800D6724;
void LoadBackgroundData(Addr* arg0) {
    s32 temp_s0;
    s32* temp_v0;
    s32* temp_v0_2;

    D_800D6720 = arg0;
    temp_v0 = MallocTemp(0x10);
    func_80061FE8((u8*) arg0, temp_v0, 0x10);
    D_800D6724 = *temp_v0;
    FreeTemp(temp_v0);
    temp_s0 = D_800D6724 * 4;
    temp_v0_2 = MallocTemp(temp_s0);
    D_800C4F70 = temp_v0_2;
    func_80061FE8((u8*)arg0 + 4, temp_v0_2, temp_s0);
    D_800D673C = MallocTemp(0x2C0);
}

INCLUDE_ASM(s32, "48D90", func_80049F0C);

//INCLUDE_ASM(s32, "48D90", LoadBackgroundIndex);

void LoadBackgroundIndex(s32 arg0) {
    unkStruct17* temp_v0;
    s32 temp_s0;
    
    D_800F6598 = arg0;
    D_800D6728 = (u8*)(D_800D6720 + D_800C4F70[arg0]);
    temp_v0 = MallocTemp(sizeof(unkStruct17));
    func_80061FE8(&D_800D6728[0], temp_v0, 0x10);
    arg0 = temp_v0->unk_00;
    FreeTemp(temp_v0);
    temp_s0 = arg0 * 4;
    D_800C4F74 = MallocTemp(temp_s0);
    func_80061FE8(&D_800D6728[4], D_800C4F74, temp_s0);
    D_800C4F78 = MallocTemp(sizeof(unkStruct19));
    func_80061FE8(&D_800D6728[*D_800C4F74], D_800C4F78, 0x3C);
    D_800C4F78->unk_18 = (f32) (D_800C4F78->unk_18 * 5.0f);
    D_800C4F78->unk_1C = (f32) (D_800C4F78->unk_1C * 5.0f);
    D_800C4F78->unk_20 = (f32) (D_800C4F78->unk_20 * 5.0f);
    D_800C4F78->unk_24 = (f32) (D_800C4F78->unk_24 * 5.0f);
    D_800C4F78->unk_28 = (f32) (D_800C4F78->unk_28 * 5.0f);
    D_800C4F78->unk_2C = (f32) (D_800C4F78->unk_2C * 5.0f);
    D_800D6734 = 0;
    D_800D6732 = 0;
    D_800D6736 = (D_800C4F78->unk0 * D_800C4F78->unk8) / 2;
    D_800D6738 = (D_800C4F78->unk4 * D_800C4F78->unkC) / 2;
    D_800D6730 = 1;
    func_80028E8C(0, &func_8004ACEC);
    func_8004A7A4();
    func_8004A510();
    func_8004AFFC();
    func_8004B5C4(1.0f);
    func_8004B7F8(0xFF);
    func_8004B838(-1.0f);
}

INCLUDE_ASM(s32, "48D90", func_8004A140);

INCLUDE_ASM(s32, "48D90", func_8004A19C);

u16 func_8004A1B0(Vec2f* arg0, f32 arg1) {
    u16 ret = 0;

    if (arg0->x <= ((-D_800D6736 + 160.0f) / arg1) + 160.0f) {
        arg0->x =  ((-D_800D6736 + 160.0f) / arg1) + 160.0f;
        ret |= 1;
    }

    if (arg0->x >= ((D_800D6736 - 160.0f) / arg1) + 160.0f) {
        arg0->x =  ((D_800D6736 - 160.0f) / arg1) + 160.0f;
        ret |= 2;
    }

    if (arg0->y <= ((-D_800D6738 + 120.0f) / arg1) + 120.0f) {
        arg0->y =  ((-D_800D6738 + 120.0f) / arg1) + 120.0f;
        ret |= 4;
    }

    if (arg0->y >= ((D_800D6738 - 120.0f) / arg1) + 120.0f) {
        arg0->y =  ((D_800D6738 - 120.0f) / arg1) + 120.0f;
        ret |= 8;
    }

    return ret;
}

void func_8004A2E8(u16 arg0) {
    s16 var_v0;

    if (arg0) {
        var_v0 = (u16) D_800D6730 | 1;
    } else {
        var_v0 = (u16) D_800D6730 & 0xFFFE;
    }
    D_800D6730 = var_v0;
}

void func_8004A31C(void) {
    unk20* sp10;

    while (TRUE) {
        osRecvMesg(&D_800D6AF0, (OSMesg) &sp10, 1);
        if (sp10 == NULL) break;
        func_80061FE8(sp10->bytes, sp10->archive, sp10->dirTblSize);
        osSendMesg(&D_800D7F20, sp10, 0);
    }
    osSendMesg(&D_800D8090, (OSMesg) 1, 0);
    osDestroyThread(NULL);
}

extern void func_8007F54C(void*, void*, s32, s32); /* extern */
extern void func_8007FAC0();                       /* extern */
void func_8004A394(void) {
    unk20* sp10;

    func_8007FAC0();
    while (TRUE) {
        osRecvMesg(&D_800D7F20, (OSMesg) &sp10, 1);
        if (sp10 == NULL) break;
        func_8007F54C(sp10->archive, sp10->data, 0x40, D_800D673C);
        osSendMesg(&D_800D7FD8, sp10, 0);
    }
    osSendMesg(&D_800D8090, (OSMesg )2, 0);
    osDestroyThread(0);
}

void func_8004A41C(void) {
    osCreateMesgQueue(&D_800D6AF0, &D_800D6B08, 0x28);
    osCreateMesgQueue(&D_800D7F20, &D_800D7F38, 0x28);
    osCreateMesgQueue(&D_800D7FD8, &D_800D7FF0, 0x28);
    osCreateMesgQueue(&D_800D8090, &D_800D80A8, 2);
    D_800D7710 = 1;
    osCreateThread(&D_800D7560, 0x64, &func_8004A394, 0, &D_800D7F20, 1);
    osStartThread(&D_800D7560);
    osCreateThread(&D_800D6BA8, 0x65, &func_8004A31C, 0, &D_800D7560, 4);
    osStartThread(&D_800D6BA8);
}

void func_8004A510(void) {
    D_800D7710 = 3;
}

void func_8004A520(void) {
    D_800D7710 = 1;
}

void func_8004A530(void) {
    if (osGetThreadPri(&D_800D7560) != D_800D7710) {
        osSetThreadPri(&D_800D7560, D_800D7710);
    }
}

void func_8004A56C(void) {
    unk20* mesg;
    while (osRecvMesg(&D_800D7FD8, (OSMesg) &mesg, 0) == 0) {
        if (mesg) {
            FreeTemp(mesg->archive);
            mesg->archive = NULL;
        }
    }
}

void func_8004A5BC(void) {
    HuArchive* pArchive;
    s32 i;
    unk20* unkFile;

    osJamMesg(&D_800D6AF0, 0, 0);
    osJamMesg(&D_800D7F20, 0, 0);
    func_8004A510();
    func_8004A530();
    osRecvMesg(&D_800D8090, 0, 1);
    osRecvMesg(&D_800D8090, 0, 1);
    for (i = 0; i < 40; i++) {
        unkFile = &D_800D6740[i];
        pArchive = unkFile->archive;
        if (pArchive != NULL) {
            FreeTemp(pArchive);
            unkFile->archive = NULL;
        }
    }
}

void func_8004A684(void) {
    unk20* var_s0;
    s32 i;

    var_s0 = D_800D6740;
    for(i = 0; i < 40; i++) {
        var_s0->unk0 = 0;
        var_s0->unk2 = -1;
        var_s0->data = HuMemAlloc(0x1800);
        var_s0->archive = NULL;
        var_s0++;       
    }
    bzero(&D_800D6A60, sizeof(Object));
}

void func_8004A6F8(void) {
    unk20* var_v1;
    s32 i;

    var_v1 = D_800D6740;
    for(i = 0; i < 40; i++) {
        if ((var_v1->archive == NULL) && 
             ((u16) var_v1->unk0 == 0)) {
            var_v1->unk2 = -1;
        }
        var_v1->unk0 = 0;
        var_v1++;
    }
}

void func_80023728(void*);  
void func_8004A73C(void) {
    unk20* unkFile;
    void* pData;
    s32 i;

    unkFile = D_800D6740;
    for (i = 0; i < 40; i++) {
        unkFile->unk0 = 0;
        unkFile->unk2 = -1;
        pData = unkFile->data;
        if (pData != NULL) {
            func_80023728(pData);
            unkFile->data = NULL;
        }
        unkFile++;
    }
}

void func_8004A7A4(void) {
    func_8004A684();
    func_8004A41C();
    D_800D6730 |= 4;
}

void func_8004A7DC(void) {
    func_8004A5BC();
    func_8004A73C();
    D_800D6730 &= 0xFFFB;
}

u16 func_8004A814(s32 arg0, s32 arg1) {
    return (D_800C4F78->unkC - arg1 - 1) * D_800C4F78->unk8 + arg0 + 1;
}

/* Get size of table */
u32 func_8004A844(u16 arg0) {
    return D_800C4F74[arg0 + 1] - D_800C4F74[arg0];
}

/* Get file bytes */
u8* func_8004A868(u16 arg0) {
    return D_800D6728 + D_800C4F74[arg0];
}

/* Find or create file object */
unk20* func_8004A890(u16 arg0) {
    unk20* var_s1;
    unk20* var_v1;
    s32 i;
    
    var_s1 = NULL;
    for (var_v1 = D_800D6740, i = 0; i < 40; var_v1++, i++) {
        if (var_v1->unk2 == -1) {
            var_s1 = var_v1;
        } else if (var_v1->unk2 == arg0) {
            var_v1->unk0 = 1;
            return var_v1;
        }
    }
    
    if (var_s1) {
        u32 tblSize;
        var_s1->unk0 = 1;
        var_s1->unk2 = arg0;
        var_s1->bytes = func_8004A868(arg0);
    
        tblSize = func_8004A844(arg0);
        var_s1->dirTblSize = tblSize;
        var_s1->archive = MallocTemp(tblSize);
        osSendMesg(&D_800D6AF0, var_s1, 0);
    }
    return var_s1;
}

// INCLUDE_ASM(s32, "48D90", func_8004A950);
void func_8004A950(void) {
    s32 var_s1;
    u32 var_s2;
    s32 i, j;

    var_s2 = ((D_800D6738 + D_800D6734) - 0x78) / 48;
    for (i = 0; i < 6; var_s2++, i++) {
        s32 temp = D_800D6736 + D_800D6732 - 0xA0;
        if (temp < 0) {
            temp = D_800D6736 + D_800D6732 - 0x61;
        }
        var_s1 = temp >> 6;
        for (j = 0; j < 6; var_s1++, j++) {
            if (((((u32) var_s1 >> 0x1F) | (var_s2 >> 0x1F)) != 0) ||
                ((var_s1 < D_800C4F78->unk8) == 0) ||
                ((s32) var_s2 >= D_800C4F78->unkC)) {
                D_800D6A60[j][i] = NULL;
            } else {
                D_800D6A60[j][i] = func_8004A890(func_8004A814(var_s1, var_s2));      
            }
        } 
    }
}

INCLUDE_ASM(s32, "48D90", func_8004AAA8);

INCLUDE_ASM(s32, "48D90", func_8004ACEC);

void func_8001D57C(s32);                                         /* extern */
void func_8005D900(Process*, s32);                               /* extern */
void func_8004B208();                                            /* extern */
void func_8004AFFC(void) {
    f32 temp_f2;
    Process *temp_v0;
    f32 *pFloat = (f32*) D_800C4F78;

    temp_f2 = (D_800C4F78->unk4 * D_800C4F78->unkC) / 240.0f;
    D_800D80B8 = temp_f2;
    D_800D80CC.x = pFloat[6];
    D_800D80CC.y = pFloat[7];
    D_800D80CC.z = pFloat[8];
    D_800D80D8.x = pFloat[9];
    D_800D80D8.y = pFloat[10];
    D_800D80D8.z = pFloat[11];
    D_800D80E4.x = pFloat[12];
    D_800D80E4.y = pFloat[13];
    D_800D80E4.z = pFloat[14];
    D_800D80F0.x = (temp_f2 * 640.0f);
    D_800D80F0.y = (temp_f2 * 480.0f);
    D_800D80F0.z = 511.0f;
    D_800D80C4.x = 640.0f;
    D_800D80C4.y = 480.0f;
    D_800D80BC.x = 159.5f;
    D_800D80BC.y = 119.5f;
    D_800D80B4 = 1.0f;
    temp_v0 = InitProcess(&func_8004B208, 0x1001, 0, 0);
    D_800D80B0 = temp_v0;
    func_8005D900(temp_v0, 0x80);
    func_8001D494(0, ((f32*)D_800C4F78)[4], 80.0f, 8000.0f);
    func_8001D420(0, &D_800D80CC, &D_800D80D8, &D_800D80E4);
    func_8001D57C(0);
}

void func_8004B1B8(void) {
    if (D_800D80B0) {
        EndProcess(D_800D80B0);
        D_800D80B0 = NULL;
    }
}

void func_8004B1EC(void) {
    func_8004B1B8();
}

void func_8004B208(void) {
    Vec3f vec2;
    Vec2hu halfs;
    Vec3f vec;
    f32 temp_f4;
    f32 var_f2, var_f0;

    while (TRUE) {
        f32 temp_f0 = func_800A13C0(&D_800D80CC, &D_800D80D8);
        if (temp_f0 < 5000.0f) {
            var_f2 = 80.0f;
            var_f0 = 8000.0f;
        } else if (temp_f0 < 15000.0f) {
            var_f2 = 1000.0f;
            var_f0 = 20000.0f;
        } else {
            var_f2 = 3000.0f;
            var_f0 = 28000.0f;
        }
        func_8001D494(0, ((f32*)D_800C4F78)[4], var_f2, var_f0);
        func_8001D420(0, &D_800D80CC, &D_800D80D8, &D_800D80E4);
        func_8001D57C(0);
        vec.x = ((((D_800D80BC.x - 160.0f) * D_800D80B8 * -4.0f) + 640.0f) - D_800D80C4.x) / D_800D80B4;
        vec.y = ((((D_800D80BC.y - 120.0f) * D_800D80B8 * -4.0f) + 480.0f) - D_800D80C4.y) / D_800D80B4;
        vec.z = 0;
        temp_f4 = func_800A1200(&vec) / 4.0f;
        if (temp_f4 <= 1.0f) {
            D_800D6730 = (u16) D_800D6730 & 0xFFFD;
            D_800D80C4.x = ((D_800D80BC.x - 160.0f) * D_800D80B8 * -4.0f) + 640.0f;
            D_800D80C4.y = ((D_800D80BC.y - 120.0f) * D_800D80B8 * -4.0f) + 480.0f;
        } else {
            D_800D6730 = (u16) D_800D6730 | 2;
            if ((D_800D672C >= 0.0f) && (D_800D672C < temp_f4)) {
                func_8003D408((Vec3f* ) &vec);
                func_800A0F00((Vec3f* ) &vec, D_800D672C * 4.0f, (Vec3f* ) &vec);
            }
            D_800D80C4.x += vec.x;
            D_800D80C4.y = D_800D80C4.y + vec.y;
        }
        halfs.x = (u16) (s32) (D_800D80C4.x / 4.0f);
        halfs.y = (u16) (s32) (D_800D80C4.y / 4.0f);
        vec2.x = (f32) (((s32) (D_800D80C4.x / 4.0f) << 0x10) >> 0xE);
        vec2.y = (f32) (((s32) (D_800D80C4.y / 4.0f) << 0x10) >> 0xE);
        vec2.z = 511.5f;
        func_8001D520(0, &D_800D80F0, &vec2);
        func_8004A19C( -halfs.x + 0xA0, -halfs.y + 0x78);
        HuPrcVSleep();
    }
}

void func_8004B5C4(f32 arg0) {
    D_800D80B4 = arg0;
}

f32 func_8004B5D0(void) {
    return D_800D80B4;
}

u16 func_8004B5DC(Vec3f* coords3D) {
    Convert3DTo2D(0, coords3D, &D_800D80BC);
    return func_8004A1B0(&D_800D80BC, D_800D80B8);
}

u16 func_8004B61C(Vec2f* arg0) {
    D_800D80BC.x = (arg0->x / D_800D80B8) + 160.0f;
    D_800D80BC.y = (arg0->y / D_800D80B8) + 120.0f;
    return func_8004A1B0(&D_800D80BC, D_800D80B8);
}

void func_8004B68C(Vec2f* arg0) {
    arg0->x = (f32) ((D_800D80BC.x - 160.0f) * D_800D80B8);
    arg0->y = (f32) ((D_800D80BC.y - 120.0f) * D_800D80B8);
}

void func_8004B6D8(Vec2f* arg0) {
    arg0->x = -((D_800D80C4.x / 4.0f) - 160.0f);
    arg0->y = -((D_800D80C4.y / 4.0f) - 120.0f);
}

void func_8004B730(Vec3f* coords3D, Vec2f* offsetCoords2D) {
    Vec2f coords2D;
    Vec2f offset;

    Convert3DTo2D(0, coords3D, &coords2D);
    coords2D.x = ((coords2D.x - 160.0f) * D_800D80B8) + 160.0f;
    coords2D.y = ((coords2D.y - 120.0f) * D_800D80B8) + 120.0f;
    offset.x = (D_800D80C4.x / 4.0f) - 160.0f;
    offset.y = (D_800D80C4.y / 4.0f) - 120.0f;
    offsetCoords2D->x = coords2D.x + offset.x;
    offsetCoords2D->y = coords2D.y + offset.y;
}

void func_8004B7F8(s32 arg0) {
    D_800C4F7C = arg0;
}

void func_8004B804(s16 flag) {
    if (flag) {
        D_800D6730 |= 8;
    } else {
        D_800D6730 &= 0xFFF7;
    }
}

void func_8004B838(f32 arg0) {
    D_800D672C = arg0;
}

f32 func_8004B844(void) {
    return D_800D672C;
}

s32 func_8004B850(void) {
    return D_800D6730 & 2;
}
