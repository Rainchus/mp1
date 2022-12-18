#ifndef __PROCESS_H
#define __PROCESS_H

#include "common.h"
#include "PR/os.h"

void WakeupProcess(Process* process);
Process* CreateProcess(process_func func, u16 priority, s32 stack_size, s32 extra_data_size);
Process* CreateChildProcess(process_func func, u16 priority, s32 stack_size, s32 extra_data_size, Process* parent);
void SetProcessDestructor(Process* process, process_func destructor);
void UnlinkChildProcess(Process* process);
void LinkChildProcess(Process* process, Process* child);
void WaitForChildProcess(void);
Process* GetCurrentProcess(void);
s32 KillProcess(Process* process);
void KillChildProcess(Process* process);
void SleepProcess(s32);
void SleepVProcess(void);

#endif