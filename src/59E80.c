#include "common.h"

#define HEAP_CONSTANT 0xA5
#define MIN_ALLOC_SIZE 16
#define MIN_HEAP_NODE_SIZE sizeof(struct HeapNode) + MIN_ALLOC_SIZE

extern s16 D_800ED5DE;
extern s8 D_800ED100;
extern s16 D_800ED102;
extern u8 D_800ED112;
extern u8 D_800ED119;
extern u32 D_800ED120;
extern s32 D_800ED140;
extern s16 D_800ED144;
extern s8 D_800ED146;
extern s8 D_800ED147;
extern u8 D_800ED148;

extern u16 D_800ED5C2[];

extern void *D_800F37B8;

void func_8005963C(s16 index, u16 param_2);
void func_80059768(s16 index, s16 param_2);
void func_80059354(s16 arg0, s16* arg1, s16* arg2);

void func_80059280() {
    s8* ed100;
    s32 i;

    ed100 = &D_800ED100;
    bzero(ed100, 148);
    ed100[0] = 18;
    D_800ED140 = 0;
    D_800ED144 = 0;
    D_800ED146 = -1;
    D_800ED147 = 0;

    SetBoardFeatureFlag(16);
    for (i = 0; i < 8; i++) {
        func_80059768(i, 0);
        if (i < 6) {
            func_8005963C(i, 0x8000);
        }
    }

    D_800ED5C2[0] = 0;
    D_800ED5C2[14] = 0;
    bzero(&D_800F37B8, 15);
}

void func_80059348(s16 arg0) {
    D_800ED5DE = arg0;
}

#ifdef NON_MATCHING
void func_80059354(s16 param_1, s16 *param_2, s16 *param_3) {
    s16 iVar1;

    if (param_1 < 0) {
        param_1 = D_800ED5DE;
    }

    iVar1 = param_1;
    if (iVar1 < 0) {
        iVar1 += 7;
    }
    *param_2 = iVar1 >> 3;

    iVar1 = param_1;
    if (iVar1 < 0) {
        iVar1 += 7;
    }

    *param_3 = param_1 + iVar1;
}
#else
INCLUDE_ASM(s32, "59E80", func_80059354);
#endif

#ifdef NON_MATCHING
void func_800593AC(s16 arg0) {
    s16 local_10;
    s16 local_e;

    func_80059354(arg0, &local_10, local_e);
    (&D_800ED112)[local_10] |= 1 << (local_e & 0x1F);
}
#else
INCLUDE_ASM(s32, "59E80", func_800593AC);
#endif

s32 func_80059400 (s16 arg0) {
    s16 var0;
    s16 var1;

    func_80059354(arg0, &var0, &var1);
    return ((&D_800ED112)[var0] & (1 << var1));
}

void func_80059448(s16 arg0) {
    s16 var0;
    s16 var1;

    func_80059354(arg0, &var0, &var1);
    (&D_800ED119)[var0] = ((&D_800ED119)[var0] | (1 << var1));
}

s16 func_8005949C(s16 arg0) {
    s16 var0;
    s16 var1;

    func_80059354(arg0, &var0, &var1);
    return (&D_800ED119)[var0] & (1 << var1);
}

void func_800594E4(s16 index, u16 value) {
    (&D_800ED102)[index] = value;
}

u16 func_800594FC(s16 index) {
    return (&D_800ED102)[index];
}

void func_80059514(u16 value) {
    D_800ED5C2[0] = value;
}

u32* func_80059520(s16 index) {
    if (index < 0) {
        index = D_800ED5C2[0];
    }
    return &D_800ED120 + index;
}

u16 func_80059550(s16 index) {
    u16 *ptr;

    ptr = (u16 *)func_80059520(index);
    return *ptr & 0x3FF;
}

void func_80059578(s16 index) {
    u16 *ptr;

    ptr = (u16 *)func_80059520(index);
    if (index < 0) {
        index = D_800ED5C2[0];
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

u16 func_80059600(s16 index, u16 param_2) {
    u16 *ptr;
    u16 ret;
    u32 andr;

    ptr = (u16 *)func_80059520(index);
    ret = *ptr & 0xFC00;
    return ret & (andr = param_2); // What.
}

void func_8005963C(s16 index, u16 param_2) {
    u16 *ptr;

    ptr = (u16 *)func_80059520(index);
    *ptr |= param_2 & 0xFC00;
}

void func_80059678(s16 index, u16 param_2) {
    u16 *ptr;

    ptr = (u16 *)func_80059520(index);
    *ptr &= ~(param_2 & 0xFC00);
}

u16 func_800596B8(s16 index) {
    u16 *ptr;

    ptr = (u16 *)func_80059520(index);
    return ptr[1];
}

void func_800596DC(s16 index, s16 param_2) {
    u16 *ptr;

    ptr = (u16 *)func_80059520(index);
    if (index < 0) {
        index = D_800ED5C2[0];
    }
    if (index < 8) {
        ptr[1] = param_2 + ptr[1];
        if (ptr[1] > 9999) {
            ptr[1] = 9999;
        }
    }
}

void func_80059768(s16 index, s16 param_2) {
    u16 *ptr;

    ptr = (u16 *)func_80059520(index);
    ptr[1] = param_2;
}

s32 IsBoardFeatureFlagSet(s32 feature) {
    s32 a, b;
    s32 ret;

    a = feature;

    if (feature < 0) {
        a += 7;
    }

    a >>= 3;

    ret = (&D_800ED148)[a];

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

void SetBoardFeaturefeature(s32 feature) {
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
    
    (&D_800ED148)[temp] = (&D_800ED148)[temp] | (1 << (feature - ((b >> 3) * 8)));
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
    
    (&D_800ED148)[temp_a1] = (&D_800ED148)[temp_a1] & ~(1 << (flag - ((b >> 3) * 8)));
}

void* MakeHeap(void* ptr, u32 size) {
    HeapNode* heap = (HeapNode*)ptr;
    heap->size = size;
    heap->heap_constant = HEAP_CONSTANT;
    heap->used = 0;
    heap->prev = ptr;
    heap->next = ptr;
    return heap;
}

void* Malloc(HeapNode* heap, s32 size) {
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

void Free(void *ptr)
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
        ret = Malloc(heap, new_size);
        if (ret != NULL) {
            bcopy(mem, ret, given_heap->size - sizeof(HeapNode));
            Free(mem);
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

s32 Align16(s32 arg0) {
    return (arg0 + 0x1F) & ~0xF;
}

s32 func_80059B10(s32 arg0) {
    if (arg0 < 0) {
        if (arg0 + 3 == D_800ED147) {
            return 1;
        } else {
            return 0;
        }
    } else {
        return IsBoardFeatureFlagSet(arg0);
    }
}

s32 func_80059B48(s32 arg0) {
    if (arg0 < 0) {
        return 1;
    } else {
        return IsBoardFeatureFlagSet(arg0);
    }
}

INCLUDE_ASM(s32, "59E80", func_80059B74);

INCLUDE_ASM(s32, "59E80", func_80059C28);

INCLUDE_ASM(s32, "59E80", func_80059CB8);

INCLUDE_ASM(s32, "59E80", func_80059CE8);

INCLUDE_ASM(s32, "59E80", func_80059DAC);

INCLUDE_ASM(s32, "59E80", func_80059E28);

INCLUDE_ASM(s32, "59E80", func_80059EBC);

INCLUDE_ASM(s32, "59E80", func_8005A22C);

INCLUDE_ASM(s32, "59E80", func_8005A258);

INCLUDE_ASM(s32, "59E80", func_8005A2B8);

INCLUDE_ASM(s32, "59E80", func_8005A4C0);

INCLUDE_ASM(s32, "59E80", func_8005A9D8);

INCLUDE_ASM(s32, "59E80", func_8005AA5C);

INCLUDE_ASM(s32, "59E80", func_8005AA88);

INCLUDE_ASM(s32, "59E80", func_8005AC50);

INCLUDE_ASM(s32, "59E80", func_8005AD18);

INCLUDE_ASM(s32, "59E80", func_8005AE44);

INCLUDE_ASM(s32, "59E80", func_8005AE88);

INCLUDE_ASM(s32, "59E80", func_8005AF60);

INCLUDE_ASM(s32, "59E80", func_8005AFC8);

INCLUDE_ASM(s32, "59E80", func_8005AFEC);

INCLUDE_ASM(s32, "59E80", func_8005B024);

INCLUDE_ASM(s32, "59E80", func_8005B060);

INCLUDE_ASM(s32, "59E80", func_8005B0C4);

INCLUDE_ASM(s32, "59E80", func_8005B244);

INCLUDE_ASM(s32, "59E80", func_8005B280);

INCLUDE_ASM(s32, "59E80", func_8005B300);

INCLUDE_ASM(s32, "59E80", func_8005B358);

INCLUDE_ASM(s32, "59E80", func_8005B388);

INCLUDE_ASM(s32, "59E80", func_8005B3B0);

INCLUDE_ASM(s32, "59E80", func_8005B414);

INCLUDE_ASM(s32, "59E80", func_8005B470);

INCLUDE_ASM(s32, "59E80", func_8005B510);

INCLUDE_ASM(s32, "59E80", func_8005B5D8);

INCLUDE_ASM(s32, "59E80", func_8005B648);

INCLUDE_ASM(s32, "59E80", func_8005B6D0);

INCLUDE_ASM(s32, "59E80", func_8005B75C);

typedef struct testing {
/* 0x00 */ s32 string;
/* 0x04 */ u16 size;
} testing;

void func_8005B75C(s32, testing*);

void* func_8005B7E8(s32 stringIndex) {
    testing sp10;
    void* temp_v0;

    func_8005B75C(stringIndex, &sp10); //string index to pointer
    temp_v0 = MallocPerm(sp10.size);
    
    if (temp_v0 != NULL) {
        func_80061FE8((void*)sp10.string, temp_v0, sp10.size);
    }
    
    return temp_v0;
}

void func_8005B838(void* arg0) {
    if (arg0 != NULL) {
        FreePerm(arg0);
    }
}
