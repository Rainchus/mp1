#include "process.h"
#include "spaces.h"
#include "5CDB0.h"


INCLUDE_ASM(s32, "5CDB0", func_8005C1B0);

INCLUDE_ASM(s32, "5CDB0", func_8005C208);

INCLUDE_ASM(s32, "5CDB0", func_8005C2B0);

INCLUDE_ASM(s32, "5CDB0", func_8005C384);

INCLUDE_ASM(s32, "5CDB0", func_8005C390);

INCLUDE_ASM(s32, "5CDB0", func_8005C3CC);

INCLUDE_ASM(s32, "5CDB0", func_8005C3FC);

INCLUDE_ASM(s32, "5CDB0", func_8005C4D0);

INCLUDE_ASM(s32, "5CDB0", func_8005C52C);

INCLUDE_ASM(s32, "5CDB0", func_8005C5E8);

INCLUDE_ASM(s32, "5CDB0", func_8005C5F4);

INCLUDE_ASM(s32, "5CDB0", func_8005C600);

INCLUDE_ASM(s32, "5CDB0", func_8005C624);

INCLUDE_ASM(s32, "5CDB0", func_8005C6F8);

INCLUDE_ASM(s32, "5CDB0", func_8005C834);

INCLUDE_ASM(s32, "5CDB0", func_8005CC3C);

INCLUDE_ASM(s32, "5CDB0", func_8005CD4C);

INCLUDE_ASM(s32, "5CDB0", func_8005CD7C);

INCLUDE_ASM(s32, "5CDB0", func_8005CDAC);

INCLUDE_ASM(s32, "5CDB0", func_8005CDE0);

INCLUDE_ASM(s32, "5CDB0", func_8005CE04);

INCLUDE_ASM(s32, "5CDB0", func_8005CE48);

INCLUDE_ASM(s32, "5CDB0", func_8005CE8C);

void func_8005CEDC(s32 arg0) {
    s32 temp_a1;
    s32 var_v0;

    if (arg0 < 0) {
        var_v0 = arg0 + 7;
    } else {
        var_v0 = arg0;
    }
    
    temp_a1 = var_v0 >> 3;
    var_v0 = arg0;
    
    if (arg0 < 0) {
        var_v0 = arg0 + 7;
    }
    
    D_800F37BC[temp_a1] = D_800F37BC[temp_a1] & ~(1 << (arg0 - ((var_v0 >> 3) * 8)));
}

INCLUDE_ASM(s32, "5CDB0", omInitObjMan);

INCLUDE_ASM(s32, "5CDB0", omDestroyObjMan);

omObjData* omAddObj(s16 arg0, u16 arg1, u16 arg2, s16 arg3, void* arg4) {
    omObjData* temp_s0;

    if (D_800ED56C == D_800ED550) {
        return NULL;
    }

    temp_s0 = &D_800C5984[D_800F65BA];
    temp_s0->next_idx_alloc = D_800F65BA;
    temp_s0->prio = arg0;
    omInsertObj(temp_s0);

    if (arg1 != 0) {
        temp_s0->model = HuMemTempDirectMalloc(arg1 * sizeof(s16), 0x7918);
        temp_s0->mdlcnt = arg1;
    } else {
        temp_s0->model = NULL;
        temp_s0->mdlcnt = 0;
    }

    if (arg2 != 0) {
        temp_s0->motion = HuMemTempDirectMalloc(arg2 * sizeof(s16), 0x7918);
        temp_s0->mtncnt = arg2;
    } else {
        temp_s0->motion = NULL;
        temp_s0->mtncnt = 0;
    }

    if (arg3 >= 0) {
        func_8005DA64(arg3, temp_s0);
    } else {
        temp_s0->group = arg3;
        temp_s0->group_idx = 0;
    }

    temp_s0->stat = 4;
    temp_s0->unk_10 = 0;
    temp_s0->func_ptr = arg4;
    temp_s0->work[0] = temp_s0->work[1] = temp_s0->work[2] = temp_s0->work[3] = 0;

    D_800F65BA = temp_s0->next_idx;
    D_800ED56C++;

    return temp_s0;
}

INCLUDE_ASM(s32, "5CDB0", omSetObjPrio);

INCLUDE_ASM(s32, "5CDB0", omInsertObj);

INCLUDE_ASM(s32, "5CDB0", omDelObj); //https://decomp.me/scratch/mL688

INCLUDE_ASM(s32, "5CDB0", omSetStat);

INCLUDE_ASM(s32, "5CDB0", omSetStatBit);

INCLUDE_ASM(s32, "5CDB0", omResetStatBit);

INCLUDE_ASM(s32, "5CDB0", omPrcSetStat);

INCLUDE_ASM(s32, "5CDB0", omPrcSetStatBit);

INCLUDE_ASM(s32, "5CDB0", omPrcResetStatBit);

INCLUDE_ASM(s32, "5CDB0", omSetTra);

INCLUDE_ASM(s32, "5CDB0", omSetRot);

INCLUDE_ASM(s32, "5CDB0", omSetSca);

INCLUDE_ASM(s32, "5CDB0", func_8005D98C);

INCLUDE_ASM(s32, "5CDB0", func_8005DA64);

INCLUDE_ASM(s32, "5CDB0", func_8005DAD4);

INCLUDE_ASM(s32, "5CDB0", func_8005DB44);

INCLUDE_ASM(s32, "5CDB0", func_8005DB5C);

INCLUDE_ASM(s32, "5CDB0", func_8005DB84);

INCLUDE_ASM(s32, "5CDB0", func_8005DBE4);

INCLUDE_ASM(s32, "5CDB0", func_8005DC18);

Process* omAddPrcObj(void (*func)(), u16 priority, s32 stack_size, s32 extra_data_size) {
    unkProcessStruct* temp_s0;
    Process* process;
    s16 temp_s1;
    
    if (D_800C598A != D_800C5988) {
        temp_s1 = D_800C598C;
        temp_s0 = &D_800C5990[D_800C598C];
        temp_s0->unk0 = 4;
        D_800C598C = temp_s0->unk2;
        process = HuPrcCreate(*func, priority, stack_size, extra_data_size);
        temp_s0->processInstance = process;
        process->dtor_idx = temp_s1;
        HuPrcDestructorSet2(temp_s0->processInstance, &omDelPrcObj);
        temp_s0->unk8 = 0;
        D_800C598A++;
        return temp_s0->processInstance;
    } else {
        return NULL;
    }
}

Process* func_8005DCD8(process_func arg0, u16 arg1, s32 arg2, s32 arg3, Process* arg4) {
    unkProcessStruct* temp_s0;
    Process* process;
    s16 temp_s1;
    
    if (D_800C598A != D_800C5988) {
        temp_s1 = D_800C598C;
        temp_s0 = &D_800C5990[D_800C598C];
        temp_s0->unk0 = 4;
        D_800C598C = temp_s0->unk2;
        process = HuPrcChildCreate(arg0, arg1, arg2, arg3, arg4);
        temp_s0->processInstance = process;
        process->dtor_idx = temp_s1;
        HuPrcDestructorSet2(temp_s0->processInstance, omDelPrcObj);
        temp_s0->unk8 = 0;
        D_800C598A++;
        return temp_s0->processInstance;
    }
    
    return NULL;
}

s32 EndProcess(Process* arg0) {
    if (arg0 != NULL) {
        return HuPrcKill(arg0);
    }
    
    if (HuPrcKill(HuPrcCurrentGet()) == 0) {
        HuPrcVSleep();
    }
    
    return -1;
}

void omDelPrcObj(void) {
    Process* temp_s1 = HuPrcCurrentGet();
    unkProcessStruct* temp_s0 = &D_800C5990[temp_s1->dtor_idx];
    
    if (temp_s0->unk8 != 0) {
        (temp_s0->unk8)();
    }
    
    temp_s0->unk0 = 1;
    temp_s0->unk2 = D_800C598C;
    D_800C598C = temp_s1->dtor_idx;
    D_800C598A--;
}

void omDestroyPrcObj(s32 arg0, void (*arg1)()) {
    unkProcessStruct* temp = &D_800C5990[HuPrcCurrentGet()->dtor_idx];
    temp->unk8 = arg1;
}

void omPrcSetDestructor(void) {
    unkProcessStruct* var_v1 = D_800C5990;
    s32 i;
    
    for (i = 0; i < D_800C5988; i++) {
        if ((var_v1->unk0 & 4) && (var_v1->processInstance->exec_mode == EXEC_PROCESS_DEAD)) {
            var_v1->unk0 = 1;
            var_v1->unk2 = D_800C598C;
            D_800C598C = i;
            D_800C598A--;
        }
        var_v1++;
    }
}

s32 omOvlCallEx(s32 arg0, s32 arg1, u16 arg2) {
    omOvlHisData* history;
    s16 temp = arg1;
    s32 ret = 0;

    if (omovlhisidx < 8) {
        history = &omovlhis[++omovlhisidx];
        history->overlayID = arg0;
        history->event = arg1;
        history->stat = arg2;
        omOvlGotoEx(arg0, temp, arg2);
        ret = 1;
    } else {
        ret = 0;
    }
    return ret;
}

s32 omOvlReturnEx(s16 level) {
    omovlhisidx -= level;
    
    if (omovlhisidx < 0) {
        omovlhisidx = 0;
        omOvlGotoEx(omovlhis[0].overlayID, omovlhis[0].event, omovlhis[0].stat);
        return 0;
    }
    omOvlGotoEx(omovlhis[omovlhisidx].overlayID, omovlhis[omovlhisidx].event, omovlhis[omovlhisidx].stat);
    return 1;
}

INCLUDE_ASM(s32, "5CDB0", omOvlGotoEx);

void omOvlHisChg(s16 arg0, s32 overlay, s16 event, s16 stat) {
    s32 ovlhisIndex = omovlhisidx - arg0;
    omOvlHisData* history;
    
    if (ovlhisIndex >= 0) {
        history = &omovlhis[ovlhisIndex];
        history->overlayID = overlay;
        history->event = event;
        history->stat = stat;
    }
}

INCLUDE_ASM(s32, "5CDB0", omOvlKill);

INCLUDE_ASM(s32, "5CDB0", omMain);

INCLUDE_ASM(s32, "5CDB0", func_8005EB1C);

INCLUDE_ASM(s32, "5CDB0", func_8005ECC0);

INCLUDE_ASM(s32, "5CDB0", func_8005EF48);

INCLUDE_ASM(s32, "5CDB0", func_8005EFA8);

INCLUDE_ASM(s32, "5CDB0", func_8005F9C0);

INCLUDE_ASM(s32, "5CDB0", func_8005FD5C);

INCLUDE_ASM(s32, "5CDB0", func_8005FD7C);

INCLUDE_ASM(s32, "5CDB0", func_8005FECC);

INCLUDE_ASM(s32, "5CDB0", func_8005FFFC);

INCLUDE_ASM(s32, "5CDB0", func_80060058);

INCLUDE_ASM(s32, "5CDB0", func_80060088);

INCLUDE_ASM(s32, "5CDB0", func_80060128);

INCLUDE_ASM(s32, "5CDB0", func_80060198);

INCLUDE_ASM(s32, "5CDB0", func_800601D4);

INCLUDE_ASM(s32, "5CDB0", func_80060214);

INCLUDE_ASM(s32, "5CDB0", func_80060234);

INCLUDE_ASM(s32, "5CDB0", func_80060268);

INCLUDE_ASM(s32, "5CDB0", func_80060288);

INCLUDE_ASM(s32, "5CDB0", PlaySound);

INCLUDE_ASM(s32, "5CDB0", func_8006035C);

INCLUDE_ASM(s32, "5CDB0", func_80060398);

INCLUDE_ASM(s32, "5CDB0", func_800603F0);

INCLUDE_ASM(s32, "5CDB0", func_80060440);

INCLUDE_ASM(s32, "5CDB0", func_80060468);

s16 func_80060540(s16 arg0, s16 arg1) {
    s16 temp_v0;

    if (D_800C5976 == 0) {
        return 0;
    }

    temp_v0 = func_80012C7C(arg0);

    if (temp_v0 > 0) {
        if (D_800D89B2[temp_v0] == -1) {
            D_800D89B2[temp_v0] = func_80010ED4(arg0, arg1);
        }
        return D_800D89B2[temp_v0];
    } else {
        return func_80010ED4(arg0, arg1);
    }
}

INCLUDE_ASM(s32, "5CDB0", func_80060618);

INCLUDE_ASM(s32, "5CDB0", func_8006071C);

INCLUDE_ASM(s32, "5CDB0", func_8006073C);

INCLUDE_ASM(s32, "5CDB0", func_80060758);

INCLUDE_ASM(s32, "5CDB0", func_800607A8);

void func_800607C4(s16 arg0, s16 arg1) {
    func_8001249C(arg0, arg1);
}

INCLUDE_ASM(s32, "5CDB0", func_800607E8);

INCLUDE_ASM(s32, "5CDB0", func_8006086C);

INCLUDE_ASM(s32, "5CDB0", func_800608EC);

INCLUDE_ASM(s32, "5CDB0", func_80060AB4);

INCLUDE_ASM(s32, "5CDB0", func_80060AF0);

INCLUDE_ASM(s32, "5CDB0", func_80060BC8);

INCLUDE_ASM(s32, "5CDB0", func_80060C84);

INCLUDE_ASM(s32, "5CDB0", func_80060D4C);

INCLUDE_ASM(s32, "5CDB0", func_80060DFC);

INCLUDE_ASM(s32, "5CDB0", func_80060E20);

INCLUDE_ASM(s32, "5CDB0", func_80060E54);

INCLUDE_ASM(s32, "5CDB0", func_80060F04);
