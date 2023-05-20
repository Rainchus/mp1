#include "data.h"


extern u16 D_800EC6EA[4];
extern u16 D_800EDEB4[4];

extern u16 D_800F2CF0[4];
extern u16 D_800F32A4[4];
extern u16 D_800F3396[4];
extern u8 *D_800F3843;
extern u16 D_800F544C[4];

typedef struct mainfsTableHeader {
    s32 dir;
    s32 offsets[3];
} mainfsTableHeader;
typedef struct mainfsEntryInfo {
    u8 *file_bytes;
    s32 size;
    s32 compression_type;
} mainfsEntryInfo;

typedef struct unkMallocPermStruct {
    u16 unk0;
    u16 unk2;
    s32 unk4;
    void* unk8;
    s16 unkC;
    s16 unkE;
    u8* unk10;
    u8* unk14;
} unkMallocPermStruct;

void func_80014220() {
    s16 i;

    u16 *D_800F544C_ptr;
    u16 *D_800F32A4_ptr;
    u16 *D_800F2CF0_ptr;
    u16 *D_800EC6EA_ptr;
    u16 *D_800F3396_ptr;

    for (i = 0; i < 4; i++) {
        D_800F544C_ptr = (D_800F544C + i);
        D_800F3396_ptr = (D_800F3396 + i);
        D_800EC6EA_ptr = (D_800EC6EA + i);
        D_800F2CF0_ptr = (D_800F2CF0 + i);
        D_800F32A4_ptr = (D_800F32A4 + i);

        *(D_800F32A4_ptr) = 0;
        *(D_800F2CF0_ptr) = 0;
        *(D_800EC6EA_ptr) = 0;
        *(D_800F3396_ptr) = 0;
        *(D_800F544C_ptr) = 0;
    }
}

INCLUDE_ASM(s32, "engine/data", func_8001429C);

extern void *D_800D12F0; // FS ROM location
extern u32 D_800D12F4; // Directory count
extern s32 *D_800D12F8; // Directory offset table pointer.

extern void *D_800D12FC; // FS ROM location (copy)
extern u32 D_800D1300; // Directory count (copy)
extern s32 *D_800D1304; // Directory offset table pointer (copy)

extern HuArchive D_800D1310;

extern void *func_80014678(s32, s32);
extern void *func_800146D4(s32, s32);
extern void func_80014770(u32, u32);
extern void func_80014504(s32 type, s32 index, HuFileInfo* info);

// Initialize file system from ROM.
void func_80014460(void* fs_rom_loc) {
    s32 dir_table_size;
    HuArchive* archiveHeader;

    D_800D12F0 = fs_rom_loc;
    archiveHeader = &D_800D1310;
    func_80061FE8(fs_rom_loc, archiveHeader, 16); // ExecRomCopy
    D_800D12F4 = archiveHeader->dir;
    dir_table_size = archiveHeader->dir * 4;
    D_800D12F8 = (s32 *)MallocPerm(dir_table_size);
    func_80061FE8(fs_rom_loc + 4, D_800D12F8, dir_table_size);
    D_800D12FC = D_800D12F0;
    D_800D1300 = D_800D12F4;
    D_800D1304 = D_800D12F8;
}

void func_80014504(s32 type, s32 index, HuFileInfo* info) {
    HuArchive* archiveHeader;

    archiveHeader = &D_800D1310;

    switch (type) {
        case 0x2F:
            info->bytes = (u8 *)D_800D12F0 + D_800D12F8[index];
            break;
        case 0x2E:
            info->bytes = (u8 *)D_800D12FC + D_800D1304[index];
            break;
    }

    func_80061FE8(info->bytes, archiveHeader, 16); // ExecRomCopy
    info->bytes += 8;
    info->size = archiveHeader->dir;
    info->compType = archiveHeader->offsets[0];
}

/*
 * Reads a file from the main filesystem and decodes it.
 * File is in the permanent heap.
*/
void* ReadMainFS(s32 dirAndFile) {
    u32 dir;
    u32 file;

    dir = dirAndFile >> 16;
    file = dirAndFile & 0xFFFF;

    if (dir < D_800D12F4) {
        func_80014770(0x2F, dir);

        if (file < D_800D1300) {
            return func_80014678(0x2E, file);
        }
    }

    return NULL;
}

/*
 * Reads a file from the main filesystem and decodes it.
 * Files is in the temporary heap.
*/
void* func_80014614(s32 dirAndFile) {
    u32 dir;
    u32 file;

    dir = dirAndFile >> 16;
    file = dirAndFile & 0xFFFF;

    if (dir < D_800D12F4) {
        func_80014770(0x2F, dir);

        if (file < D_800D1300) {
            return func_800146D4(0x2E, file);
        }
    }

    return NULL;
}

/*
 * Read file, allocate space in perm heap, decode it.
*/
void *func_80014678(s32 type, s32 index) {
    HuFileInfo info;
    void* ret;

    func_80014504(type, index, &info);
    ret = MallocPerm((info.size + 1) & -2);
    if (ret != NULL) {
        DecodeFile(info.bytes, ret, info.size, info.compType);
    }
    return ret;
}

/*
 * Read file, allocate space in temp heap, decode it.
*/
void* func_800146D4(s32 type, s32 index) {
    HuFileInfo info;
    void* ret;

    func_80014504(type, index, &info);
    ret = MallocTemp((info.size + 1) & -2);
    if (ret != NULL) {
        DecodeFile(info.bytes, ret, info.size, info.compType);
    }
    return ret;
}

/*
 * Free file previously obtained through ReadMainFS.
 * 80014730
*/
void FreeMainFS(void *file) {
    if (file != NULL) {
        FreePerm(file);
    }
}

/*
 * Free file previously obtained through func_80014614.
*/
void func_80014750(void *file) {
    if (file != NULL) {
        FreePerm(file); //! Should be FreeTemp, but not functionally problematic.
    }
}

void func_80014770(u32 arg0, u32 arg1) {
    HuArchive* test;
    HuFileInfo sp10; //rom addr point to directory
    s32 tableSize;
    s32 dir;
    
    sp10.bytes = D_800D12F0 + D_800D12F8[arg1];
    if (D_800D12FC != sp10.bytes) {
        if (D_800D12FC != D_800D12F0) {
            FreePerm(D_800D1304);
        }
        
        D_800D12FC = sp10.bytes;
        test = &D_800D1310;
        
        func_80061FE8(sp10.bytes, test, 0x10);
        dir = test->dir;
        
        D_800D1300 = dir;
        tableSize = dir * 4;
        D_800D1304 = MallocPerm(tableSize);
        func_80061FE8(sp10.bytes + 4, D_800D1304, tableSize);
    }
}

void* func_80014828(s32 arg0, s32 arg1) {
    HuFileInfo sp10;
    unkMallocPermStruct* temp_s0;

    temp_s0 = MallocPerm(sizeof(unkMallocPermStruct));
    if (temp_s0 == NULL) {
        return NULL;
    } else {
        func_80014504(arg0, arg1, &sp10);
        temp_s0->unk4 = sp10.size;
        temp_s0->unk0 = (u16)sp10.compType;
        temp_s0->unk8 = MallocPerm(0x400);
        temp_s0->unkC = 1;
        temp_s0->unkE = 0;
        temp_s0->unk10 = temp_s0->unk14 = sp10.bytes;
        return temp_s0;
    }
}

void func_800148BC(void *param_1) {
    FreePerm((void *)(((s32 *)param_1)[2]));
    FreePerm(param_1);
}

INCLUDE_ASM(s32, "engine/data", func_800148EC);

INCLUDE_ASM(s32, "engine/data", func_80014998);

INCLUDE_ASM(s32, "engine/data", func_80014A14);
