#include "common.h"
//import libultra and this file matches

// extern void osInitialize(void);
// extern void thread3_main(void *arg);

// extern OSThread gInitThread;
// extern u8 gThread1Stack[];
// extern OSThread gMainThread;
// extern u8 gThread3Stack[];

// void ultraMain(void);
// void thread1_idle(void *arg);

INCLUDE_ASM(s32, "1060", ultraMain);
// void ultraMain(void) {
//     osInitialize();
//     osCreateThread(&gInitThread, 1, thread1_idle, NULL, gThread1Stack + 0x800, 10);
//     osStartThread(&gInitThread);
// }

INCLUDE_ASM(s32, "1060", thread1_idle);
// void thread1_idle(void* arg) {
//     osCreateThread(&gMainThread, 3, thread3_main, arg, gThread3Stack, 2);
//     osStartThread(&gMainThread);
//     osSetIntMask(0x3FFF01);
//     osSetThreadPri(NULL, 0);

//     // idle forever
//     while(1)
//         ;
// }
