#ifndef __PROCESS_H
#define __PROCESS_H

#include "common.h"
#include "PR/os.h"

void HuPrcWakeup(Process* process);
Process* HuPrcCreate(process_func func, u16 priority, s32 stack_size, s32 extra_data_size);
Process* HuPrcChildCreate(process_func func, u16 priority, s32 stack_size, s32 extra_data_size, Process* parent);
void HuPrcDestructorSet2(Process* process, process_func destructor);
void HuPrcChildUnlink(Process* process);
void HuPrcChildLink(Process* process, Process* child);
void HuPrcChildWatch(void);
Process* HuPrcCurrentGet(void);
s32 HuPrcKill(Process* process);
void HuPrcChildKill(Process* process);
void HuPrcSleep(s32);
void HuPrcVSleep(void);

#endif