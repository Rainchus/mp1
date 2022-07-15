#include "common.h"
#include "62140.h"

void WakeupProcess(Process* process);

INCLUDE_ASM(s32, "62140", func_80061540);

INCLUDE_ASM(s32, "62140", func_80061638);

s32 func_80061714(void) {
    s16 i;

    for (i = 0; i < 4; i++) {
        func_80061784(&i);
    }
    return 0;
}

void func_80061758(void) {
    Vec3s sp10;

    func_800642FC(&sp10, (*func_80061714), 0, 1);
}

s32 func_80061784(s16* arg0) {
    u8 sp10;
    s16 temp_a2;
    s32 ret;

    if (func_8008BA70(&D_800EE960, &sp10) != 0) {
        sp10 = 0;
    }
    
    temp_a2 = *arg0;
    
    if ((sp10 >> temp_a2) & 1) {
        ret = func_80091230(&D_800EE960, &D_800D90D0[temp_a2], temp_a2);
    } else {
        ret = 1;
    }
    return ret;
}

void func_80061808(s16 arg0) {
    Vec3s sp10;
    func_800642FC(&sp10, (*func_80061784), &arg0, 2);
}

void func_80061838(s16* arg0) {
    func_80091A40(&D_800D90D0[*arg0]);
}


void func_80061874(s16 arg0) {
    Vec3s sp10;
    func_800642FC(&sp10, func_80061838, &arg0, 2);
}

void func_800618A4(unk62140* arg0) {
    arg0->unk_08 = 0;
    arg0->unk_04 = 0;
    if (func_80091500(&D_800D90D0[arg0->unk_00], &arg0->unk_04, &arg0->unk_08) == 0) {
        func_80091120(&D_800D90D0[arg0->unk_00], &arg0->unk_0C);
    }
}

s32 func_80061930(s16 arg0, s32* arg1, s32* arg2, s32* arg3) { //matches but type issues
    Vec3s sp10;
    unk62140_2 sp20;
    sp20.unk_00 = arg0;

    func_800642FC(&sp10, (*func_800618A4), &sp20, 2);
    *arg1 = sp20.unk_04;
    *arg2 = sp20.unk_08;
    *arg3 = sp20.unk_0C;
    return sp10.z;
}

void func_800619A0(unk62140* arg0) {
    func_80090F90(&D_800D90D0[arg0->unk_00], arg0->unk_04, &arg0->unk_08);
}

INCLUDE_ASM(s32, "62140", func_800619E8);

INCLUDE_ASM(s32, "62140", func_80061A3C);

INCLUDE_ASM(s32, "62140", func_80061A98);

INCLUDE_ASM(s32, "62140", func_80061B3C);

INCLUDE_ASM(s32, "62140", func_80061C00);

INCLUDE_ASM(s32, "62140", func_80061CB4);

INCLUDE_ASM(s32, "62140", func_80061D30);

INCLUDE_ASM(s32, "62140", func_80061D64);

INCLUDE_ASM(s32, "62140", func_80061DD4);

INCLUDE_ASM(s32, "62140", func_80061E10);

INCLUDE_ASM(s32, "62140", func_80061F24);

INCLUDE_ASM(s32, "62140", func_80061F60);

INCLUDE_ASM(s32, "62140", func_80061FA0);

INCLUDE_ASM(s32, "62140", func_80061FE8);

INCLUDE_ASM(s32, "62140", func_80062088);

INCLUDE_ASM(s32, "62140", func_80062140);

INCLUDE_ASM(s32, "62140", func_800621D8);

INCLUDE_ASM(s32, "62140", func_8006223C);

INCLUDE_ASM(s32, "62140", func_800622BC);

s16 func_80062364(s32 xPosStart, s32 yPosStart, s32 width, s32 height, s32 rgba) {
    box* boxPtr;
    s32 i;

    if (D_800F64E4 >= 4) {
        return -1;
    }

    for (i = 0; i < 4; i++) {
       if (D_800ED448[i].activeBool == 0) {
            break;
        }
    }

    boxPtr = &D_800ED448[i];
    boxPtr->activeBool = 1;
    boxPtr->xPosStart = xPosStart;
    boxPtr->yPosStart = yPosStart;
    boxPtr->width = width;
    boxPtr->height = height;
    boxPtr->rgba = rgba;
    D_800F64E4++;
    return i;
}

void func_80062408(s16 arg0) {
    if (D_800F64E4 != 0) {
        D_800ED448[arg0].activeBool = 0;
        D_800F64E4 = D_800F64E4 - 1;
    }
}

void func_80062450(void) {
    s32 i;
    D_800F64E4 = 0;

    for (i = 0; i < 4; i++) {
        D_800ED448[i].activeBool = 0;
    }
}

void func_8006248C(s8 arg0, s8 arg1, s8 arg2) {
    D_800F09E4.unk_00 = arg0;
    D_800F09E4.unk_01 = arg1;
    D_800F09E4.unk_02 = arg2;
    D_800F09E4.unk_05 = 0;
    D_800F09E4.unk_04 = 0;
    D_800F09E4.unk_03 = 0;
    D_800EE310 = 1;
}

void func_800624BC(s8 arg0, s8 arg1, s8 arg2, s8 arg3, u8 arg4, u8 arg5, u8 arg6, u8 arg7, u8 arg8) {
    D_800F09E4.unk_03 = arg0;
    D_800F09E4.unk_04 = arg1;
    D_800F09E4.unk_05 = arg2;
    D_800F09E4.unk_06 = arg3;
    D_800F09E4.unk_07 = arg4;
    D_800F09E4.unk_08 = arg5;
    D_800F09E4.unk_09 = arg6;
    D_800F09E4.unk_0A = arg7;
    D_800F09E4.unk_0B = arg8;
}

void func_80062500(void) { 
    D_800F09E4.unk_03 = D_800F09E4.unk_04 = D_800F09E4.unk_05 = 0;
}

INCLUDE_ASM(s32, "62140", func_80062518);

INCLUDE_ASM(s32, "62140", func_80062524);

INCLUDE_ASM(s32, "62140", func_8006257C);

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

void KillProcess(Process* process) {
    KillChildProcess(process);
    UnlinkChildProcess(process);
    SetKillStatusProcess(process);
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
