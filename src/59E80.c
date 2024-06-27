#include "common.h"
#include "PR/os.h"

#define HEAP_CONSTANT 0xA5
#define MIN_ALLOC_SIZE 16
#define MIN_HEAP_NODE_SIZE sizeof(struct HeapNode) + MIN_ALLOC_SIZE

typedef struct testing {
/* 0x00 */ s32 string;
/* 0x04 */ u16 size;
} testing;

extern u8 D_800ED148_ED1D8[];
extern u32 D_800ED120_ED1B0[];
extern s16 D_800ED102_ED192[];
extern u8 D_800ED119_ED1A9[];
extern s16 D_800ED5DE_ED66E;

void func_8005B75C_5C35C(s32, testing*);
u32* func_80059520_5A120(s16);
void func_80059354_59F54(s16 param_1, s16 *param_2, s16 *param_3);
void func_80059768_5A368(s16 index, s16 param_2);
void func_8005963C_5A23C(s16 index, u16 param_2);

void func_80059280_59E80(void) {
    s32 temp_s1;
    s32 var_s0;
    s32 var_v0;
    s32 i;
    BoardData* boardData;

    boardData = &D_800ED100_ED190;
    bzero(boardData, sizeof(BoardData));
    boardData->unk0 = 0x12;
    boardData->unk_40 = 0;
    boardData->unk_44 = 0;
    boardData->unk_46 = -1;
    boardData->unk_47 = 0;
    SetBoardFeatureFlag(0x10);
    for (i = 0; i < 8; i++) {
        func_80059768_5A368(i, 0);
        if (i < 6) {
            func_8005963C_5A23C(i, 0x8000);
        }        
    }

    D_800ED5C2_ED652[0] = 0;
    D_800ED5C2_ED652[14] = 0; //?
    bzero(D_800F37B8_F3848, sizeof(D_800F37B8_F3848));
}

void func_80059348_59F48(s16 arg0) {
    D_800ED5DE_ED66E = arg0;
}

INCLUDE_ASM("asm/nonmatchings/59E80", func_80059354_59F54);

void func_800593AC_59FAC(s16 arg0) {
    s16 sp10;
    s16 sp12;

    func_80059354_59F54(arg0, &sp10, &sp12);
    D_800ED100_ED190.unk_12[sp10] = D_800ED100_ED190.unk_12[sp10] | (1 << sp12);
}

s32 func_80059400_5A000(s16 arg0) {
    s16 var0;
    s16 var1;

    func_80059354_59F54(arg0, &var0, &var1);
    return (D_800ED100_ED190.unk_12[var0] & (1 << var1));
}

void func_80059448_5A048(s16 arg0) {
    s16 var0;
    s16 var1;

    func_80059354_59F54(arg0, &var0, &var1);
    D_800ED100_ED190.unk_19[var0] = (D_800ED100_ED190.unk_19[var0] | (1 << var1));
}

s16 func_8005949C_5A09C(s16 arg0) {
    s16 var0;
    s16 var1;

    func_80059354_59F54(arg0, &var0, &var1);
    return D_800ED100_ED190.unk_19[var0] & (1 << var1);
}

void func_800594E4_5A0E4(s16 index, u16 value) {
    D_800ED100_ED190.unk_02[index] = value;
}

u16 func_800594FC_5A0FC(s16 index) {
    return D_800ED100_ED190.unk_02[index];
}

void func_80059514_5A114(u16 value) {
    D_800ED5C2_ED652[0] = value;
}

u32* func_80059520_5A120(s16 index) {
    if (index < 0) {
        index = D_800ED5C2_ED652[0];
    }
    return &D_800ED100_ED190.unk_20[index];
}

u16 func_80059550_5A150(s16 index) {
    u16 *ptr;

    ptr = (u16 *)func_80059520_5A120(index);
    return *ptr & 0x3FF;
}

void func_80059578_5A178(s16 index) {
    u16 *ptr;

    ptr = (u16 *)func_80059520_5A120(index);
    if (index < 0) {
        index = D_800ED5C2_ED652[0];
    }
    if (index < 8) {
        {
            u16 uVar;
            u16 uVarAnd;

            uVarAnd = *ptr & 0xFC00;
            uVar = *ptr & 0x3FF;

            if (++uVar > 999) {
                uVar = 999;
            }
            *ptr = uVar | uVarAnd;
        }
    }
}

u16 func_80059600_5A200(s16 index, u16 param_2) {
    u16 *ptr;
    u16 ret;
    u32 andr;

    ptr = (u16 *)func_80059520_5A120(index);
    ret = *ptr & 0xFC00;
    return ret & (andr = param_2); // ?
}

void func_8005963C_5A23C(s16 index, u16 param_2) {
    u16 *ptr;

    ptr = (u16 *)func_80059520_5A120(index);
    *ptr |= param_2 & 0xFC00;
}

void func_80059678_5A278(s16 index, u16 param_2) {
    u16 *ptr;

    ptr = (u16 *)func_80059520_5A120(index);
    *ptr &= ~(param_2 & 0xFC00);
}

u16 func_800596B8_5A2B8(s16 index) {
    u16 *ptr;

    ptr = (u16 *)func_80059520_5A120(index);
    return ptr[1];
}

void func_800596DC_5A2DC(s16 index, s16 param_2) {
    u16 *ptr;

    ptr = (u16 *)func_80059520_5A120(index);
    if (index < 0) {
        index = D_800ED5C2_ED652[0];
    }
    if (index < 8) {
        ptr[1] = param_2 + ptr[1];
        if (ptr[1] > 9999) {
            ptr[1] = 9999;
        }
    }
}

void func_80059768_5A368(s16 index, s16 param_2) {
    u16 *ptr;

    ptr = (u16 *)func_80059520_5A120(index);
    ptr[1] = param_2;
}

s32 IsFlagSet(s32 feature) {
    s32 a, b;
    s32 ret;

    a = feature;

    if (feature < 0) {
        a += 7;
    }

    a >>= 3;

    ret = D_800ED100_ED190.unk_48[a];

    if (feature >= 0) {
        b = feature;
    } else {
        b = feature + 7;
    }

    b >>= 3;
    b <<= 3;
    b = feature - b;

    return ret & (1 << b);
}

void SetBoardFeatureFlag(s32 feature) {
    s32 temp;
    s32 a;
    s32 b;

    a = feature;
    if (feature < 0) {
        a = feature + 7;
    }
    
    temp = a >> 3;
    b = feature;
    
    if (feature < 0) {
        b = feature + 7;
    }
    
    D_800ED100_ED190.unk_48[temp] = D_800ED100_ED190.unk_48[temp] | (1 << (feature - ((b >> 3) * 8)));
}

void ClearBoardFeatureFlag(s32 flag) {
    s32 a, b, temp_a1;

    a = flag;
    
    if (flag < 0) {
        a = flag + 7;
    }
    
    temp_a1 = a >> 3;
    b = flag;
    
    if (flag < 0) {
        b = flag + 7;
    }
    
    D_800ED100_ED190.unk_48[temp_a1] = D_800ED100_ED190.unk_48[temp_a1] & ~(1 << (flag - ((b >> 3) * 8)));
}

void* HuMemHeapInit(void* ptr, u32 size) {
    HeapNode* heap = (HeapNode*)ptr;
    heap->size = size;
    heap->heap_constant = HEAP_CONSTANT;
    heap->used = 0;
    heap->prev = ptr;
    heap->next = ptr;
    return heap;
}

void* HuMemMemoryAlloc(HeapNode* heap, s32 size) {
    HeapNode* cur_heap;
    HeapNode* new_heap_temp;

    size = size + 0x1F;
    size = size & -16;

    cur_heap = heap;
    do {
        if (!cur_heap->used) {
            if (cur_heap->size >= size) {
                if ((u32)(cur_heap->size - size) > MIN_HEAP_NODE_SIZE) {
                    new_heap_temp = ((void *)cur_heap) + size;
                    new_heap_temp->size = cur_heap->size - size;
                    new_heap_temp->heap_constant = HEAP_CONSTANT;
                    new_heap_temp->used = FALSE;

                    cur_heap->next->prev = new_heap_temp;
                    new_heap_temp->next = cur_heap->next;
                    cur_heap->next = new_heap_temp;
                    new_heap_temp->prev = cur_heap;
                    cur_heap->size = size;
                }

                cur_heap->used = TRUE;
                return (void *)cur_heap + sizeof(HeapNode);
            }
        }

        cur_heap = cur_heap->next;
    }
    while (cur_heap != heap);

    return NULL;
}

void HuMemMemoryFree(void *ptr)
{
    HeapNode* given_heap;
    HeapNode* heap_other;

    if (ptr == NULL) {
        return;
    }

    given_heap = (HeapNode*)(ptr - sizeof(HeapNode));

    if (given_heap->heap_constant != HEAP_CONSTANT) {
        return;
    }

    heap_other = given_heap->prev;

    if (((u32)heap_other < (u32)given_heap) && !heap_other->used) {
        given_heap->next->prev = heap_other;
        given_heap->prev->next = given_heap->next;
        given_heap->prev->size += given_heap->size;
        given_heap = given_heap->prev;
    }

    heap_other = given_heap->next;

    if (((u32)given_heap < (u32)heap_other) && !heap_other->used) {
        heap_other->next->prev = given_heap;
        given_heap->size += given_heap->next->size;
        given_heap->next = given_heap->next->next;
    }

    given_heap->used = FALSE;
}

void* Realloc(HeapNode* heap, void* mem, u32 new_size)
{
    void *ret;
    HeapNode *given_heap;
    HeapNode *new_heap;
    s32 temp;

    given_heap = (HeapNode*)(mem - sizeof(HeapNode));
    temp = new_size + 0x1F;
    temp = temp & -16;

    if (given_heap->size >= temp) {
        if ((u32)(given_heap->size - temp) > MIN_HEAP_NODE_SIZE) {
            new_heap = (void *)given_heap + temp;
            new_heap->size = given_heap->size - temp;
            new_heap->heap_constant = HEAP_CONSTANT;
            new_heap->used = FALSE;
            given_heap->next->prev = new_heap;
            new_heap->next = given_heap->next;
            given_heap->next = new_heap;
            new_heap->prev = given_heap;
            given_heap->size = temp;
        }

        return (void *)given_heap + sizeof(HeapNode);
    } else {
        ret = HuMemMemoryAlloc(heap, new_size);
        if (ret != NULL) {
            bcopy(mem, ret, given_heap->size - sizeof(HeapNode));
            HuMemMemoryFree(mem);
        }

        return ret;
    }

    return NULL;
}

u32 GetAllocatedHeapSize(HeapNode* heap) {
    HeapNode* cur_heap;
    u32 total_size;

    cur_heap = heap;
    total_size = 0;
    do
    {
        if (cur_heap->used == TRUE)
        {
            total_size += cur_heap->size;
        }
        cur_heap = cur_heap->next;
    }
    while (cur_heap != heap);

    return total_size;
}

u32 GetUsedMemoryBlockCount(HeapNode* heap) {
    HeapNode* cur_heap;
    u32 count_free;

    cur_heap = heap;
    count_free = 0;
    do
    {
        count_free += (cur_heap->used ^ TRUE) == FALSE ? 1 : 0;
        cur_heap = cur_heap->next;
    }
    while (cur_heap != heap);

    return count_free;
}

s32 HuMemMemoryAllocSizeGet(s32 arg0) {
    return (arg0 + 0x1F) & ~0xF;
}

s32 func_80059B10_5A710(s32 arg0) {
    if (arg0 < 0) {
        if (arg0 + 3 == (s8)D_800ED100_ED190.unk_20[9]) { //?
            return 1;
        } else {
            return 0;
        }
    } else {
        return IsFlagSet(arg0);
    }
}

s32 func_80059B48_5A748(s32 arg0) {
    if (arg0 < 0) {
        return 1;
    } else {
        return IsFlagSet(arg0);
    }
}

INCLUDE_ASM("asm/nonmatchings/59E80", func_80059B74_5A774);

INCLUDE_ASM("asm/nonmatchings/59E80", func_80059C28_5A828);

INCLUDE_ASM("asm/nonmatchings/59E80", func_80059CB8_5A8B8);

INCLUDE_ASM("asm/nonmatchings/59E80", func_80059CE8_5A8E8);

INCLUDE_ASM("asm/nonmatchings/59E80", func_80059DAC_5A9AC);

INCLUDE_ASM("asm/nonmatchings/59E80", func_80059E28_5AA28);

INCLUDE_ASM("asm/nonmatchings/59E80", func_80059EBC_5AABC);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005A22C_5AE2C);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005A258_5AE58);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005A2B8_5AEB8);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005A4C0_5B0C0);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005A9D8_5B5D8);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005AA5C_5B65C);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005AA88_5B688);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005AC50_5B850);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005AD18_5B918);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005AE44_5BA44);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005AE88_5BA88);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005AF60_5BB60);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005AFC8_5BBC8);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005AFEC_5BBEC);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B024_5BC24);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B060_5BC60);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B0C4_5BCC4);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B244_5BE44);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B280_5BE80);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B300_5BF00);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B358_5BF58);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B388_5BF88);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B3B0_5BFB0);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B414_5C014);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B470_5C070);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B510_5C110);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B5D8_5C1D8);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B648_5C248);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B6D0_5C2D0);

INCLUDE_ASM("asm/nonmatchings/59E80", func_8005B75C_5C35C);

void* func_8005B7E8_5C3E8(s32 stringIndex) {
    testing sp10;
    void* temp_v0;

    func_8005B75C_5C35C(stringIndex, &sp10); //string index to pointer
    temp_v0 = HuMemDirectMalloc(sp10.size);
    
    if (temp_v0 != NULL) {
        func_80061FE8_62BE8((void*)sp10.string, temp_v0, sp10.size);
    }
    
    return temp_v0;
}

void func_8005B838_5C438(void* arg0) {
    if (arg0 != NULL) {
        HuMemDirectFree(arg0);
    }
}

INCLUDE_RODATA("asm/nonmatchings/59E80", D_800CB4C4_CC0C4);
