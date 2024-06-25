#include "common.h"
#include "PR/os.h"

extern void func_8003B330_3BF30(void* arg);

extern OSThread gInitThread;
extern u8 gThread1Stack[];
extern OSThread gMainThread;
extern u8 gThread3Stack[];

void ultraMain(void);
void thread1_idle(void *arg);

void ultraMain() {
    __osInitialize_common();
    osCreateThread(&gInitThread, 1, &thread1_idle, NULL, &gThread1Stack[2048], 10);
    osStartThread(&gInitThread);
}

void thread1_idle(void* arg) {
    osCreateThread(&gMainThread, 3, &func_8003B330_3BF30, arg, gThread3Stack, 2);
    osStartThread(&gMainThread);
    osSetIntMask(0x3FFF01);
    osSetThreadPri(NULL, 0);

    // idle forever
    while (1) {}
}