#include "common.h"

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcInit);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuLinkProcess);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuUnlinkPrc);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcCreate);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcChildLink);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcChildUnlink);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcChildCreate);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcChildWatch);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcCurrentGet);

INCLUDE_ASM("asm/nonmatchings/engine/process", GetChildProcess);

INCLUDE_ASM("asm/nonmatchings/engine/process", SetKillStatusProcess);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcKill);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcChildKill);

INCLUDE_ASM("asm/nonmatchings/engine/process", TerminateProcess);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcEnd);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcSleep);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcVSleep);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcWakeup);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcDestructorSet2);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcDestructorSet);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcCall);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcMemAlloc);

INCLUDE_ASM("asm/nonmatchings/engine/process", HuPrcMemFree);
