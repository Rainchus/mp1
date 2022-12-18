#include "process.h"

void InitProcessSys(void) {
    process_count = 0; //process_count
    top_process = NULL;
}

void LinkProcess(Process** root, Process* process) {
    Process* src_process = *root;

    if (src_process != NULL && (src_process->priority >= process->priority)) {
        while (src_process->next != NULL) {
            if (src_process->next->priority < process->priority) {
                break;
            }
            src_process = src_process->next;
        }

        process->next = src_process->next;
        process->youngest_child = src_process;
        src_process->next = process;
        if (process->next) {
            process->next->youngest_child = process;
        }
    } else {
        process->next = (*root);
        process->youngest_child = NULL;
        *root = process;
        if (src_process != NULL) {
            src_process->youngest_child = process;
        }
    }
}

void UnlinkProcess(Process **root, Process *process) {
    if (process->next) {
        process->next->youngest_child = process->youngest_child;
    }

    if (process->youngest_child) {
        process->youngest_child->next = process->next;
    }

    else {
        *root = process->next;
    }
}

Process* CreateProcess(process_func func, u16 priority, s32 stack_size, s32 extra_data_size) {
    HeapNode* process_heap;
    Process* process;
    s32 alloc_size;

    if (stack_size == 0) {
        stack_size = 2048;
    }

    alloc_size = GetMemoryAllocSize(sizeof(Process))
        + GetMemoryAllocSize(stack_size)
        + GetMemoryAllocSize(extra_data_size);

    process_heap = (HeapNode*)MallocPerm(alloc_size);

    if (process_heap == NULL) {
        return NULL;
    }

    MakeHeap(process_heap, alloc_size);

    process = (Process*)Malloc(process_heap, sizeof(Process));
    process->heap = process_heap;
    process->exec_mode = EXEC_PROCESS_DEFAULT;
    process->stat = 0;
    process->priority = priority;
    process->sleep_time = 0;
    process->base_sp = Malloc(process_heap, stack_size) + stack_size - 8;
    process->prc_jump.func = func;
    process->prc_jump.sp = process->base_sp;
    process->destructor = NULL;
    process->user_data = NULL;
    process->dtor_idx = 0;
    LinkProcess(&top_process, process);
    process->oldest_child = NULL;
    process->relative = NULL;
    process_count++;
    return process;
}

void LinkChildProcess(Process* process, Process* child) {
    UnlinkChildProcess(child);

    if (process->oldest_child) {
        process->oldest_child->new_process = child;
    }

    child->parent_oldest_child = process->oldest_child;
    child->new_process = NULL;
    process->oldest_child = child;
    child->relative = process;
}

void UnlinkChildProcess(Process* process) {
    if (process->relative) {
        if (process->parent_oldest_child) {
            process->parent_oldest_child->new_process = process->new_process;
        }

        if (process->new_process) {
            process->new_process->parent_oldest_child = process->parent_oldest_child;
        } else {
            process->relative->oldest_child = process->parent_oldest_child;
        }

        process->relative = NULL;
    }
}

Process* CreateChildProcess(process_func func, u16 priority, s32 stack_size, s32 extra_data_size, Process* parent) {
    Process* child = CreateProcess(func, priority, stack_size, extra_data_size);
    LinkChildProcess(parent, child);
    return child;
}

void WaitForChildProcess(void) {
    Process* process = GetCurrentProcess();
    if (process->oldest_child) {
        process->exec_mode = EXEC_PROCESS_WATCH;
        
        if (!setjmp(&process->prc_jump)) {
            longjmp(&process_jmp_buf, 1);
        }
    }
}

Process* GetCurrentProcess(void) {
    return current_process;
}

Process* GetChildProcess(Process* process) {
    Process* curr_child = process->oldest_child;

    while(curr_child) {
        curr_child = curr_child->parent_oldest_child;
    }

    return curr_child;
}

s32 SetKillStatusProcess(Process* process) {
    if (process->exec_mode != EXEC_PROCESS_DEAD) {
        WakeupProcess(process);
        process->exec_mode = EXEC_PROCESS_DEAD;
        return 0;
    } else {
        return -1;
    }
}

s32 KillProcess(Process* process) {
    KillChildProcess(process);
    UnlinkChildProcess(process);
    return SetKillStatusProcess(process);
}

void KillChildProcess(Process* process) {
    Process* curr_child = process->oldest_child;

    while (curr_child != NULL) {
        if (curr_child->oldest_child != NULL) {
            KillChildProcess(curr_child);
        }

        SetKillStatusProcess(curr_child);

        curr_child = curr_child->parent_oldest_child;
    }

    process->oldest_child = NULL;
}

void TerminateProcess(Process* process) {
    if (process->destructor) {
        process->destructor();
    }

    UnlinkProcess(&top_process, process);
    process_count--;
    longjmp(&process_jmp_buf, 2);

}

void ExitProcess(void) {
    Process* process = GetCurrentProcess();
    KillChildProcess(process);
    UnlinkChildProcess(process);
    TerminateProcess(process);
}

void SleepProcess(s32 time) {
    Process* process = GetCurrentProcess();
    if (time != 0 && process->exec_mode != EXEC_PROCESS_DEAD) {
        process->exec_mode = EXEC_PROCESS_SLEEPING;
        process->sleep_time = time;
    }

    if (!setjmp(&process->prc_jump)) {
        longjmp(&process_jmp_buf, 1);
    }
}

void SleepVProcess() {
    SleepProcess(0);
}

void WakeupProcess(Process* process) {
    process->sleep_time = 0;
}

void SetProcessDestructor(Process* process, process_func destructor) {
    process->destructor = destructor;
}

void SetCurrentProcessDestructor(process_func destructor) {
    Process* process = GetCurrentProcess();
    SetProcessDestructor(process, destructor);
}

void CallProcess(s32 time) {
    Process* cur_proc_local;
    s32 ret;

    current_process = top_process;
    ret = setjmp(&process_jmp_buf);
    while (1) {
        switch (ret) {
            case 2:
                FreePerm(current_process->heap);
                current_process = current_process->next;
                break;
            case 1:
                current_process = current_process->next;
                break;
        }

        cur_proc_local = current_process;

        if (cur_proc_local == 0) {
            break;
        }
         
        if ((cur_proc_local->stat & 0x1)) {
            if (cur_proc_local->exec_mode != 3) {
                ret = 1;
                continue;
            }
        }

        switch (cur_proc_local->exec_mode) {
            case EXEC_PROCESS_SLEEPING:
                if (cur_proc_local->sleep_time > 0 && (cur_proc_local->sleep_time -= time) <= 0) {
                    cur_proc_local->sleep_time = 0;
                    cur_proc_local->exec_mode = EXEC_PROCESS_DEFAULT;
                }

                ret = 1;
                break;

            case EXEC_PROCESS_WATCH:
                if (cur_proc_local->oldest_child != 0) {
                    ret = 1;
                } else {
                    cur_proc_local->exec_mode = EXEC_PROCESS_DEFAULT;
                    ret = 0;
                }

                break;

            case EXEC_PROCESS_DEAD:
                cur_proc_local->prc_jump.func = ExitProcess;

            case 0:
                longjmp(&cur_proc_local->prc_jump, 1);
                break;
        }
    }
}

void* AllocProcessMemory(s32 size) {
    Process* process = GetCurrentProcess();
    return (void*)Malloc((HeapNode*)process->heap, size);
}

void FreeProcessMemory(void* ptr) {
    Free(ptr);
}