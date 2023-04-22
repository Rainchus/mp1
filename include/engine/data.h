#ifndef __DATA_H
#define __DATA_H

#include "common.h"

typedef struct {
    s32 dir;
    s32 offsets[3]; // Enough to pad to size 16
} HuArchive;

typedef struct {
    u8 *bytes;
    s32 size;
    s32 compType;
} HuFileInfo;

#endif
