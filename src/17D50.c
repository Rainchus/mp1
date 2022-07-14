#include "common.h"

extern u8 *D_800D1320;
extern u8 *D_800D1720;

typedef struct DecodeStruct {
/* 0x00 */ u16 chunk_len;
/* 0x02 */ s16 pad;
/* 0x04 */ u8 *src;
/* 0x08 */ u8 *dest;
/* 0x0C */ u32 len;
} DecodeStruct;

void func_800171EC(DecodeStruct*);

void func_80017150(DecodeStruct* decode) { //DecodeNone
    s32 copy_len;

    while(decode->len) {
        if(decode->len < 1024) {
            copy_len = (decode->len+1) & 0xFFFFFFFE;
            decode->len = 0;
        } else {
            copy_len = 1024;
            decode->len -= 1024;
        }
        
        func_80061FE8(decode->src, decode->dest, copy_len);
        decode->src += copy_len;
        decode->dest += copy_len;
    }
}

INCLUDE_ASM(s32, "17D50", func_800171EC);

void DecodeFile(void* src, void* dest, s32 len, s32 decode_type) {
    DecodeStruct decode_struct;
    DecodeStruct* decode_ptr = &decode_struct;
    decode_struct.src = (u8 *)src;
    decode_struct.dest = (u8 *)dest;
    decode_struct.len = len;
    decode_struct.chunk_len = 1024;
    switch(decode_type) {
        case 0:
            func_80017150(decode_ptr);
            break;

        case 1:
            func_800171EC(decode_ptr);
            break;

        default:
            break;
    }
}
