#include "common.h"

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", InitProcessSys);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", LinkProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", UnlinkProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", CreateProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", LinkChildProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", UnlinkChildProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", CreateChildProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", WaitForChildProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", GetCurrentProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", GetChildProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", SetKillStatusProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", KillProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", KillChildProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", TerminateProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", ExitProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", SleepProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", SleepVProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", WakeupProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", SetProcessDestructor);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", SetCurrentProcessDestructor);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", CallProcess);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", AllocProcessMemory);

INCLUDE_ASM("asm/nonmatchings/../src/engine/process", FreeProcessMemory);
