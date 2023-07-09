#include "common.h"

INCLUDE_ASM("asm/nonmatchings/../src/lib/2.0I/os/timerintr", __osTimerServicesInit);

INCLUDE_ASM("asm/nonmatchings/../src/lib/2.0I/os/timerintr", __osTimerInterrupt);

INCLUDE_ASM("asm/nonmatchings/../src/lib/2.0I/os/timerintr", __osSetTimerIntr);

INCLUDE_ASM("asm/nonmatchings/../src/lib/2.0I/os/timerintr", __osInsertTimer);
