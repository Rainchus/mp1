#include "PR/os.h"
#include "engine/mallocblock.h"
#include "engine/data.h"
#include "engine/process.h"

typedef struct {
/* 0x00 */ u16        unk0;
/* 0x02 */ s16        unk2;
/* 0x04 */ void*      data;
/* 0x08 */ HuArchive* archive;
/* 0x0C */ s32        dirTblSize;
/* 0x10 */ u8*        bytes;
} unk20;

typedef struct unkStruct19 {
/* 0x00 */ s32 unk0;
/* 0x04 */ s32 unk4;
/* 0x08 */ s32 unk8;
/* 0x0C */ s32 unkC;
/* 0x10 */ f32 unk_10;
/* 0x14 */ f32 unk_14;
/* 0x18 */ f32 unk_18;
/* 0x1C */ f32 unk_1C;
/* 0x20 */ f32 unk_20;
/* 0x24 */ f32 unk_24;
/* 0x28 */ f32 unk_28;
/* 0x2C */ f32 unk_2C;
/* 0x30 */ char unk_30[0x0C];
} unkStruct19; //sizeof 0x3C

typedef struct unkStruct17 {
/* 0x00 */ s32 unk_00;
/* 0x04 */ char unk_04[0x0C];
} unkStruct17;

typedef struct Unk800D673C {
    char unk_00[0x2C0];
} Unk800D673C;

extern Unk800D673C* D_800D673C_D67CC;

extern s32 D_800D6724_D67B4;

extern s32 *D_800C4F74_C5B74; // offsets
extern u8* D_800D6728_D67B8; // bytestream

extern unkStruct19* D_800C4F78_C5B78;
extern s8 D_800C4F7C_C5B7C;
extern s32* D_800C4F70_C5B70;
extern s32* D_800C4F74_C5B74;
extern Addr* D_800D6720_D67B0;
extern s16 D_800D6730_D67C0;
extern s16 D_800D6732_D67C2;
extern s16 D_800D6734_D67C4;
extern s16 D_800D6736_D67C6;
extern s16 D_800D6738_D67C8;
extern s32 D_800F6598_F6628;
extern f32 D_800D672C_D67BC;
extern unk20 D_800D6740_D67D0[40];
extern unk20 *D_800D6A60_D6AF0[6][6]; // Have no clue what this is

extern OSMesgQueue D_800D6AF0_D6B80;
extern OSMesg D_800D6B08_D6B98;
extern OSThread D_800D6BA8_D6C38;
extern OSThread D_800D7560_D75F0;
extern s32 D_800D7710_D77A0;
extern OSMesgQueue D_800D7F20_D7FB0;
extern OSMesg D_800D7F38_D7FC8;
extern OSMesgQueue D_800D7FD8_D8068;
extern OSMesg D_800D7FF0_D8080;
extern OSMesgQueue D_800D8090_D8120;
extern OSMesg D_800D80A8_D8138;

extern Process *D_800D80B0_D8140;
extern f32 D_800D80B4_D8144;
extern f32 D_800D80B8_D8148;
extern Vec2f D_800D80BC_D814C;
extern Vec2f D_800D80C4_D8154; // offset coordinates?
extern Vec3f D_800D80CC_D815C;
extern Vec3f D_800D80D8_D8168;
extern Vec3f D_800D80E4_D8174;
extern Vec3f D_800D80F0_D8180;

void func_80028E8C_29A8C(s32, void*);
void func_8004A7A4_4B3A4(void);
void func_8004AFFC_4BBFC(void);
void func_8004B7F8_4C3F8(s32);
void func_8004ACEC_4B8EC(void);
void func_8004A19C_4AD9C(s16, s16); 
extern void func_8007F54C_8014C(void*, void*, s32, Unk800D673C*);
extern void func_8007FAC0_806C0(void);

INCLUDE_ASM("asm/nonmatchings/48D90", func_80048190_48D90);

INCLUDE_ASM("asm/nonmatchings/48D90", func_800481F8_48DF8);

INCLUDE_ASM("asm/nonmatchings/48D90", func_80048224_48E24);

INCLUDE_ASM("asm/nonmatchings/48D90", func_8004847C_4907C);

INCLUDE_ASM("asm/nonmatchings/48D90", func_800484C4_490C4);

INCLUDE_ASM("asm/nonmatchings/48D90", func_80048540_49140);

INCLUDE_ASM("asm/nonmatchings/48D90", func_8004858C_4918C);

INCLUDE_ASM("asm/nonmatchings/48D90", func_80049328_49F28);

INCLUDE_ASM("asm/nonmatchings/48D90", func_80049334_49F34);

INCLUDE_ASM("asm/nonmatchings/48D90", func_80049340_49F40);

INCLUDE_ASM("asm/nonmatchings/48D90", func_8004935C_49F5C);

INCLUDE_ASM("asm/nonmatchings/48D90", func_80049414_4A014);

INCLUDE_ASM("asm/nonmatchings/48D90", func_80049478_4A078);

INCLUDE_ASM("asm/nonmatchings/48D90", func_80049640_4A240);

INCLUDE_ASM("asm/nonmatchings/48D90", func_80049904_4A504);

INCLUDE_ASM("asm/nonmatchings/48D90", func_800499CC_4A5CC);

INCLUDE_ASM("asm/nonmatchings/48D90", func_80049E60_4AA60);

void LoadBackgroundData(Addr* arg0) {
    s32 temp_s0;
    s32* temp_v0;
    s32* temp_v0_2;

    D_800D6720_D67B0 = arg0;
    temp_v0 = MallocTemp(0x10);
    func_80061FE8_62BE8((u8*) arg0, temp_v0, 0x10);
    D_800D6724_D67B4 = *temp_v0;
    FreeTemp(temp_v0);
    temp_s0 = D_800D6724_D67B4 * 4;
    temp_v0_2 = MallocTemp(temp_s0);
    D_800C4F70_C5B70 = temp_v0_2;
    func_80061FE8_62BE8((u8*)arg0 + 4, temp_v0_2, temp_s0);
    D_800D673C_D67CC = MallocTemp(sizeof(Unk800D673C));
}

INCLUDE_ASM("asm/nonmatchings/48D90", func_80049F0C_4AB0C);

void LoadBackgroundIndex(s32 arg0) {
    unkStruct17* temp_v0;
    s32 temp_s0;
    
    D_800F6598_F6628 = arg0;
    D_800D6728_D67B8 = (u8*)((u8*)D_800D6720_D67B0 + D_800C4F70_C5B70[arg0]);
    temp_v0 = MallocTemp(sizeof(unkStruct17));
    func_80061FE8_62BE8(&D_800D6728_D67B8[0], temp_v0, 0x10);
    arg0 = temp_v0->unk_00;
    FreeTemp(temp_v0);
    temp_s0 = arg0 * 4;
    D_800C4F74_C5B74 = MallocTemp(temp_s0);
    func_80061FE8_62BE8(&D_800D6728_D67B8[4], D_800C4F74_C5B74, temp_s0);
    D_800C4F78_C5B78 = MallocTemp(sizeof(unkStruct19));
    func_80061FE8_62BE8(&D_800D6728_D67B8[*D_800C4F74_C5B74], D_800C4F78_C5B78, 0x3C);
    D_800C4F78_C5B78->unk_18 = (f32) (D_800C4F78_C5B78->unk_18 * 5.0f);
    D_800C4F78_C5B78->unk_1C = (f32) (D_800C4F78_C5B78->unk_1C * 5.0f);
    D_800C4F78_C5B78->unk_20 = (f32) (D_800C4F78_C5B78->unk_20 * 5.0f);
    D_800C4F78_C5B78->unk_24 = (f32) (D_800C4F78_C5B78->unk_24 * 5.0f);
    D_800C4F78_C5B78->unk_28 = (f32) (D_800C4F78_C5B78->unk_28 * 5.0f);
    D_800C4F78_C5B78->unk_2C = (f32) (D_800C4F78_C5B78->unk_2C * 5.0f);
    D_800D6734_D67C4 = 0;
    D_800D6732_D67C2 = 0;
    D_800D6736_D67C6 = (D_800C4F78_C5B78->unk0 * D_800C4F78_C5B78->unk8) / 2;
    D_800D6738_D67C8 = (D_800C4F78_C5B78->unk4 * D_800C4F78_C5B78->unkC) / 2;
    D_800D6730_D67C0 = 1;
    func_80028E8C_29A8C(0, &func_8004ACEC_4B8EC);
    func_8004A7A4_4B3A4();
    func_8004A510_4B110();
    func_8004AFFC_4BBFC();
    func_8004B5C4_4C1C4(1.0f);
    func_8004B7F8_4C3F8(0xFF);
    func_8004B838_4C438(-1.0f);
}

INCLUDE_ASM("asm/nonmatchings/48D90", func_8004A140_4AD40);

INCLUDE_ASM("asm/nonmatchings/48D90", func_8004A19C_4AD9C);

u16 func_8004A1B0_4ADB0(Vec2f* arg0, f32 arg1) {
    u16 ret = 0;

    if (arg0->x <= ((-D_800D6736_D67C6 + 160.0f) / arg1) + 160.0f) {
        arg0->x =  ((-D_800D6736_D67C6 + 160.0f) / arg1) + 160.0f;
        ret |= 1;
    }

    if (arg0->x >= ((D_800D6736_D67C6 - 160.0f) / arg1) + 160.0f) {
        arg0->x =  ((D_800D6736_D67C6 - 160.0f) / arg1) + 160.0f;
        ret |= 2;
    }

    if (arg0->y <= ((-D_800D6738_D67C8 + 120.0f) / arg1) + 120.0f) {
        arg0->y =  ((-D_800D6738_D67C8 + 120.0f) / arg1) + 120.0f;
        ret |= 4;
    }

    if (arg0->y >= ((D_800D6738_D67C8 - 120.0f) / arg1) + 120.0f) {
        arg0->y =  ((D_800D6738_D67C8 - 120.0f) / arg1) + 120.0f;
        ret |= 8;
    }

    return ret;
}

void func_8004A2E8_4AEE8(u16 arg0) {
    s16 var_v0;

    if (arg0) {
        var_v0 = (u16) D_800D6730_D67C0 | 1;
    } else {
        var_v0 = (u16) D_800D6730_D67C0 & 0xFFFE;
    }
    D_800D6730_D67C0 = var_v0;
}

void func_8004A31C_4AF1C(void) {
    unk20* sp10;

    while (TRUE) {
        osRecvMesg(&D_800D6AF0_D6B80, (OSMesg) &sp10, 1);
        if (sp10 == NULL) break;
        func_80061FE8_62BE8(sp10->bytes, sp10->archive, sp10->dirTblSize);
        osSendMesg(&D_800D7F20_D7FB0, sp10, 0);
    }
    osSendMesg(&D_800D8090_D8120, (OSMesg) 1, 0);
    osDestroyThread(NULL);
}

void func_8004A394_4AF94(void) {
    unk20* sp10;

    func_8007FAC0_806C0();
    while (TRUE) {
        osRecvMesg(&D_800D7F20_D7FB0, (OSMesg) &sp10, 1);
        if (sp10 == NULL) break;
        func_8007F54C_8014C(sp10->archive, sp10->data, 0x40, D_800D673C_D67CC);
        osSendMesg(&D_800D7FD8_D8068, sp10, 0);
    }
    osSendMesg(&D_800D8090_D8120, (OSMesg )2, 0);
    osDestroyThread(0);
}

void func_8004A41C_4B01C(void) {
    osCreateMesgQueue(&D_800D6AF0_D6B80, &D_800D6B08_D6B98, 0x28);
    osCreateMesgQueue(&D_800D7F20_D7FB0, &D_800D7F38_D7FC8, 0x28);
    osCreateMesgQueue(&D_800D7FD8_D8068, &D_800D7FF0_D8080, 0x28);
    osCreateMesgQueue(&D_800D8090_D8120, &D_800D80A8_D8138, 2);
    D_800D7710_D77A0 = 1;
    osCreateThread(&D_800D7560_D75F0, 0x64, (void*)&func_8004A394_4AF94, 0, &D_800D7F20_D7FB0, 1);
    osStartThread(&D_800D7560_D75F0);
    osCreateThread(&D_800D6BA8_D6C38, 0x65, (void*)&func_8004A31C_4AF1C, 0, &D_800D7560_D75F0, 4);
    osStartThread(&D_800D6BA8_D6C38);
}

void func_8004A510_4B110(void) {
    D_800D7710_D77A0 = 3;
}

void func_8004A520_4B120(void) {
    D_800D7710_D77A0 = 1;
}

void func_8004A530_4B130(void) {
    if (osGetThreadPri(&D_800D7560_D75F0) != D_800D7710_D77A0) {
        osSetThreadPri(&D_800D7560_D75F0, D_800D7710_D77A0);
    }
}

void func_8004A56C_4B16C(void) {
    unk20* mesg;
    while (osRecvMesg(&D_800D7FD8_D8068, (OSMesg) &mesg, 0) == 0) {
        if (mesg) {
            FreeTemp(mesg->archive);
            mesg->archive = NULL;
        }
    }
}

void func_8004A5BC_4B1BC(void) {
    HuArchive* pArchive;
    s32 i;
    unk20* unkFile;

    osJamMesg(&D_800D6AF0_D6B80, 0, 0);
    osJamMesg(&D_800D7F20_D7FB0, 0, 0);
    func_8004A510_4B110();
    func_8004A530_4B130();
    osRecvMesg(&D_800D8090_D8120, 0, 1);
    osRecvMesg(&D_800D8090_D8120, 0, 1);
    for (i = 0; i < 40; i++) {
        unkFile = &D_800D6740_D67D0[i];
        pArchive = unkFile->archive;
        if (pArchive != NULL) {
            FreeTemp(pArchive);
            unkFile->archive = NULL;
        }
    }
}

void func_8004A684_4B284(void) {
    unk20* var_s0;
    s32 i;

    var_s0 = D_800D6740_D67D0;
    for(i = 0; i < 40; i++) {
        var_s0->unk0 = 0;
        var_s0->unk2 = -1;
        var_s0->data = func_80023668_24268(0x1800);
        var_s0->archive = NULL;
        var_s0++;       
    }
    bzero(&D_800D6A60_D6AF0, sizeof(Object));
}

void func_8004A6F8_4B2F8(void) {
    unk20* var_v1;
    s32 i;

    var_v1 = D_800D6740_D67D0;
    for(i = 0; i < 40; i++) {
        if ((var_v1->archive == NULL) && 
             ((u16) var_v1->unk0 == 0)) {
            var_v1->unk2 = -1;
        }
        var_v1->unk0 = 0;
        var_v1++;
    }
}

void func_80023728_24328(void*);

void func_8004A73C_4B33C(void) {
    unk20* unkFile;
    void* pData;
    s32 i;

    unkFile = D_800D6740_D67D0;
    for (i = 0; i < 40; i++) {
        unkFile->unk0 = 0;
        unkFile->unk2 = -1;
        pData = unkFile->data;
        if (pData != NULL) {
            func_80023728_24328(pData);
            unkFile->data = NULL;
        }
        unkFile++;
    }
}

void func_8004A7A4_4B3A4(void) {
    func_8004A684_4B284();
    func_8004A41C_4B01C();
    D_800D6730_D67C0 |= 4;
}

void func_8004A7DC_4B3DC(void) {
    func_8004A5BC_4B1BC();
    func_8004A73C_4B33C();
    D_800D6730_D67C0 &= 0xFFFB;
}

u16 func_8004A814_4B414(s32 arg0, s32 arg1) {
    return (D_800C4F78_C5B78->unkC - arg1 - 1) * D_800C4F78_C5B78->unk8 + arg0 + 1;
}

/* Get size of table */
u32 func_8004A844_4B444(u16 arg0) {
    return D_800C4F74_C5B74[arg0 + 1] - D_800C4F74_C5B74[arg0];
}

/* Get file bytes */
u8* func_8004A868_4B468(u16 arg0) {
    return D_800D6728_D67B8 + D_800C4F74_C5B74[arg0];
}

/* Find or create file object */
unk20* func_8004A890_4B490(u16 arg0) {
    unk20* var_s1;
    unk20* var_v1;
    s32 i;
    
    var_s1 = NULL;
    for (var_v1 = D_800D6740_D67D0, i = 0; i < 40; var_v1++, i++) {
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
        var_s1->bytes = func_8004A868_4B468(arg0);
    
        tblSize = func_8004A844_4B444(arg0);
        var_s1->dirTblSize = tblSize;
        var_s1->archive = MallocTemp(tblSize);
        osSendMesg(&D_800D6AF0_D6B80, var_s1, 0);
    }
    return var_s1;
}

void func_8004A950_4B550(void) {
    s32 var_s1;
    u32 var_s2;
    s32 i, j;

    var_s2 = ((D_800D6738_D67C8 + D_800D6734_D67C4) - 0x78) / 48;
    for (i = 0; i < 6; var_s2++, i++) {
        s32 temp = D_800D6736_D67C6 + D_800D6732_D67C2 - 0xA0;
        if (temp < 0) {
            temp = D_800D6736_D67C6 + D_800D6732_D67C2 - 0x61;
        }
        var_s1 = temp >> 6;
        for (j = 0; j < 6; var_s1++, j++) {
            if (((((u32) var_s1 >> 0x1F) | (var_s2 >> 0x1F)) != 0) ||
                ((var_s1 < D_800C4F78_C5B78->unk8) == 0) ||
                ((s32) var_s2 >= D_800C4F78_C5B78->unkC)) {
                D_800D6A60_D6AF0[j][i] = NULL;
            } else {
                D_800D6A60_D6AF0[j][i] = func_8004A890_4B490(func_8004A814_4B414(var_s1, var_s2));      
            }
        } 
    }
}

INCLUDE_ASM("asm/nonmatchings/48D90", func_8004AAA8_4B6A8);

INCLUDE_ASM("asm/nonmatchings/48D90", func_8004ACEC_4B8EC);

void func_8001D57C_1E17C(s32);
void omPrcSetStatBit(Process*, s32);
void func_8004B208_4BE08(void);

void func_8004AFFC_4BBFC(void) {
    f32 temp_f2;
    Process *temp_v0;
    f32 *pFloat = (f32*) D_800C4F78_C5B78;

    temp_f2 = (D_800C4F78_C5B78->unk4 * D_800C4F78_C5B78->unkC) / 240.0f;
    D_800D80B8_D8148 = temp_f2;
    D_800D80CC_D815C.x = pFloat[6];
    D_800D80CC_D815C.y = pFloat[7];
    D_800D80CC_D815C.z = pFloat[8];
    D_800D80D8_D8168.x = pFloat[9];
    D_800D80D8_D8168.y = pFloat[10];
    D_800D80D8_D8168.z = pFloat[11];
    D_800D80E4_D8174.x = pFloat[12];
    D_800D80E4_D8174.y = pFloat[13];
    D_800D80E4_D8174.z = pFloat[14];
    D_800D80F0_D8180.x = (temp_f2 * 640.0f);
    D_800D80F0_D8180.y = (temp_f2 * 480.0f);
    D_800D80F0_D8180.z = 511.0f;
    D_800D80C4_D8154.x = 640.0f;
    D_800D80C4_D8154.y = 480.0f;
    D_800D80BC_D814C.x = 159.5f;
    D_800D80BC_D814C.y = 119.5f;
    D_800D80B4_D8144 = 1.0f;
    temp_v0 = omAddPrcObj(&func_8004B208_4BE08, 0x1001, 0, 0);
    D_800D80B0_D8140 = temp_v0;
    omPrcSetStatBit(temp_v0, 0x80);
    func_8001D494_1E094(0, ((f32*)D_800C4F78_C5B78)[4], 80.0f, 8000.0f);
    func_8001D420_1E020(0, &D_800D80CC_D815C, &D_800D80D8_D8168, &D_800D80E4_D8174);
    func_8001D57C_1E17C(0);
}

void func_8004B1B8_4BDB8(void) {
    if (D_800D80B0_D8140) {
        EndProcess(D_800D80B0_D8140);
        D_800D80B0_D8140 = NULL;
    }
}

void func_8004B1EC_4BDEC(void) {
    func_8004B1B8_4BDB8();
}

void func_8004B208_4BE08(void) {
    Vec3f vec2;
    Vec2hu halfs;
    Vec3f vec;
    f32 temp_f4;
    f32 var_f2, var_f0;

    while (TRUE) {
        f32 temp_f0 = func_800A13C0_A1FC0(&D_800D80CC_D815C, &D_800D80D8_D8168);
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
        func_8001D494_1E094(0, ((f32*)D_800C4F78_C5B78)[4], var_f2, var_f0);
        func_8001D420_1E020(0, &D_800D80CC_D815C, &D_800D80D8_D8168, &D_800D80E4_D8174);
        func_8001D57C_1E17C(0);
        vec.x = ((((D_800D80BC_D814C.x - 160.0f) * D_800D80B8_D8148 * -4.0f) + 640.0f) - D_800D80C4_D8154.x) / D_800D80B4_D8144;
        vec.y = ((((D_800D80BC_D814C.y - 120.0f) * D_800D80B8_D8148 * -4.0f) + 480.0f) - D_800D80C4_D8154.y) / D_800D80B4_D8144;
        vec.z = 0;
        temp_f4 = func_800A1200_A1E00(&vec) / 4.0f;
        if (temp_f4 <= 1.0f) {
            D_800D6730_D67C0 = (u16) D_800D6730_D67C0 & 0xFFFD;
            D_800D80C4_D8154.x = ((D_800D80BC_D814C.x - 160.0f) * D_800D80B8_D8148 * -4.0f) + 640.0f;
            D_800D80C4_D8154.y = ((D_800D80BC_D814C.y - 120.0f) * D_800D80B8_D8148 * -4.0f) + 480.0f;
        } else {
            D_800D6730_D67C0 = (u16) D_800D6730_D67C0 | 2;
            if ((D_800D672C_D67BC >= 0.0f) && (D_800D672C_D67BC < temp_f4)) {
                func_8003D408_3E008((Vec3f* ) &vec);
                func_800A0F00_A1B00((Vec3f* ) &vec, D_800D672C_D67BC * 4.0f, (Vec3f* ) &vec);
            }
            D_800D80C4_D8154.x += vec.x;
            D_800D80C4_D8154.y = D_800D80C4_D8154.y + vec.y;
        }
        halfs.x = (u16) (s32) (D_800D80C4_D8154.x / 4.0f);
        halfs.y = (u16) (s32) (D_800D80C4_D8154.y / 4.0f);
        vec2.x = (f32) (((s32) (D_800D80C4_D8154.x / 4.0f) << 0x10) >> 0xE);
        vec2.y = (f32) (((s32) (D_800D80C4_D8154.y / 4.0f) << 0x10) >> 0xE);
        vec2.z = 511.5f;
        func_8001D520_1E120(0, &D_800D80F0_D8180, &vec2);
        func_8004A19C_4AD9C( -halfs.x + 0xA0, -halfs.y + 0x78);
        HuPrcVSleep();
    }
}

void func_8004B5C4_4C1C4(f32 arg0) {
    D_800D80B4_D8144 = arg0;
}

f32 func_8004B5D0_4C1D0(void) {
    return D_800D80B4_D8144;
}

u16 func_8004B5DC_4C1DC(Vec3f* coords3D) {
    Convert3DTo2D(0, coords3D, &D_800D80BC_D814C);
    return func_8004A1B0_4ADB0(&D_800D80BC_D814C, D_800D80B8_D8148);
}

u16 func_8004B61C_4C21C(Vec2f* arg0) {
    D_800D80BC_D814C.x = (arg0->x / D_800D80B8_D8148) + 160.0f;
    D_800D80BC_D814C.y = (arg0->y / D_800D80B8_D8148) + 120.0f;
    return func_8004A1B0_4ADB0(&D_800D80BC_D814C, D_800D80B8_D8148);
}

void func_8004B68C_4C28C(Vec2f* arg0) {
    arg0->x = (f32) ((D_800D80BC_D814C.x - 160.0f) * D_800D80B8_D8148);
    arg0->y = (f32) ((D_800D80BC_D814C.y - 120.0f) * D_800D80B8_D8148);
}

void func_8004B6D8_4C2D8(Vec2f* arg0) {
    arg0->x = -((D_800D80C4_D8154.x / 4.0f) - 160.0f);
    arg0->y = -((D_800D80C4_D8154.y / 4.0f) - 120.0f);
}

void func_8004B730_4C330(Vec3f* coords3D, Vec2f* offsetCoords2D) {
    Vec2f coords2D;
    Vec2f offset;

    Convert3DTo2D(0, coords3D, &coords2D);
    coords2D.x = ((coords2D.x - 160.0f) * D_800D80B8_D8148) + 160.0f;
    coords2D.y = ((coords2D.y - 120.0f) * D_800D80B8_D8148) + 120.0f;
    offset.x = (D_800D80C4_D8154.x / 4.0f) - 160.0f;
    offset.y = (D_800D80C4_D8154.y / 4.0f) - 120.0f;
    offsetCoords2D->x = coords2D.x + offset.x;
    offsetCoords2D->y = coords2D.y + offset.y;
}

void func_8004B7F8_4C3F8(s32 arg0) {
    D_800C4F7C_C5B7C = arg0;
}

void func_8004B804_4C404(s16 flag) {
    if (flag) {
        D_800D6730_D67C0 |= 8;
    } else {
        D_800D6730_D67C0 &= 0xFFF7;
    }
}

void func_8004B838_4C438(f32 arg0) {
    D_800D672C_D67BC = arg0;
}

f32 func_8004B844_4C444(void) {
    return D_800D672C_D67BC;
}

s32 func_8004B850_4C450(void) {
    return D_800D6730_D67C0 & 2;
}
