#include "common.h"
#include "engine/process.h"

extern s16 omovlhisidx;
extern s16 D_800D89B2_D8A42[];
extern s8 D_800F37BC_F384C[];
extern s16 D_800ED56C_ED5FC;
extern s16 D_800ED550_ED5E0;
extern omObjData* D_800C5984_C6584;
extern s16 D_800F65BA_F664A;
extern s16 D_800ED56C_ED5FC;
extern s16 D_800C598A_C658A;
extern s16 D_800C5988_C6588;
extern s16 D_800C598C_C658C; //dtor index
extern u16 D_800C5976_C6576;
extern unkProcessStruct* D_800C5990_C6590;

s16 func_80010ED4_11AD4(s16, s16);
s32 func_80012C7C_1387C(s16);
void func_8005DA64_5E664(u16, omObjData*);
void omInsertObj(omObjData*);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C1B0_5CDB0);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C208_5CE08);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C2B0_5CEB0);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C384_5CF84);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C390_5CF90);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C3CC_5CFCC);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C3FC_5CFFC);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C4D0_5D0D0);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C52C_5D12C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C5E8_5D1E8);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C5F4_5D1F4);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C600_5D200);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C624_5D224);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C6F8_5D2F8);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005C834_5D434);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005CC3C_5D83C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005CD4C_5D94C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005CD7C_5D97C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005CDAC_5D9AC);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005CDE0_5D9E0);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005CE04_5DA04);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005CE48_5DA48);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005CE8C_5DA8C);

void func_8005CEDC_5DADC(s32 arg0) {
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
    
    D_800F37BC_F384C[temp_a1] = D_800F37BC_F384C[temp_a1] & ~(1 << (arg0 - ((var_v0 >> 3) * 8)));
}

INCLUDE_ASM("asm/nonmatchings/5CDB0", omInitObjMan);

INCLUDE_ASM("asm/nonmatchings/5CDB0", omDestroyObjMan);

omObjData* omAddObj(s16 arg0, u16 arg1, u16 arg2, s16 arg3, void* arg4) {
    omObjData* temp_s0;

    if (D_800ED56C_ED5FC == D_800ED550_ED5E0) {
        return NULL;
    }

    temp_s0 = &D_800C5984_C6584[D_800F65BA_F664A];
    temp_s0->next_idx_alloc = D_800F65BA_F664A;
    temp_s0->prio = arg0;
    omInsertObj(temp_s0);

    if (arg1 != 0) {
        temp_s0->model = func_80023684_24284(arg1 * sizeof(s16), 0x7918);
        temp_s0->mdlcnt = arg1;
    } else {
        temp_s0->model = NULL;
        temp_s0->mdlcnt = 0;
    }

    if (arg2 != 0) {
        temp_s0->motion = func_80023684_24284(arg2 * sizeof(s16), 0x7918);
        temp_s0->mtncnt = arg2;
    } else {
        temp_s0->motion = NULL;
        temp_s0->mtncnt = 0;
    }

    if (arg3 >= 0) {
        func_8005DA64_5E664(arg3, temp_s0);
    } else {
        temp_s0->group = arg3;
        temp_s0->group_idx = 0;
    }

    temp_s0->stat = 4;
    temp_s0->unk_10 = 0;
    temp_s0->func_ptr = arg4;
    temp_s0->work[0] = temp_s0->work[1] = temp_s0->work[2] = temp_s0->work[3] = 0;

    D_800F65BA_F664A = temp_s0->next_idx;
    D_800ED56C_ED5FC++;

    return temp_s0;
}

INCLUDE_ASM("asm/nonmatchings/5CDB0", omSetObjPrio);

INCLUDE_ASM("asm/nonmatchings/5CDB0", omInsertObj);

INCLUDE_ASM("asm/nonmatchings/5CDB0", omDelObj);

INCLUDE_ASM("asm/nonmatchings/5CDB0", omSetStat);

INCLUDE_ASM("asm/nonmatchings/5CDB0", omSetStatBit);

INCLUDE_ASM("asm/nonmatchings/5CDB0", omResetStatBit);

INCLUDE_ASM("asm/nonmatchings/5CDB0", omPrcSetStat);

INCLUDE_ASM("asm/nonmatchings/5CDB0", omPrcSetStatBit);

INCLUDE_ASM("asm/nonmatchings/5CDB0", omPrcResetStatBit);

INCLUDE_ASM("asm/nonmatchings/5CDB0", omSetTra);

INCLUDE_ASM("asm/nonmatchings/5CDB0", omSetRot);

INCLUDE_ASM("asm/nonmatchings/5CDB0", omSetSca);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005D98C_5E58C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005DA64_5E664);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005DAD4_5E6D4);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005DB44_5E744);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005DB5C_5E75C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005DB84_5E784);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005DBE4_5E7E4);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005DC18_5E818);

Process* omAddPrcObj(void (*func)(), u16 priority, s32 stack_size, s32 extra_data_size) {
    unkProcessStruct* temp_s0;
    Process* process;
    s16 temp_s1;
    
    if (D_800C598A_C658A != D_800C5988_C6588) {
        temp_s1 = D_800C598C_C658C;
        temp_s0 = &D_800C5990_C6590[D_800C598C_C658C];
        temp_s0->unk0 = 4;
        D_800C598C_C658C = temp_s0->unk2;
        process = HuPrcCreate(*func, priority, stack_size, extra_data_size);
        temp_s0->processInstance = process;
        process->dtor_idx = temp_s1;
        HuPrcDestructorSet2(temp_s0->processInstance, &omDelPrcObj);
        temp_s0->unk8 = 0;
        D_800C598A_C658A++;
        return temp_s0->processInstance;
    } else {
        return NULL;
    }
}

Process* func_8005DCD8_5E8D8(process_func arg0, u16 arg1, s32 arg2, s32 arg3, Process* arg4) {
    unkProcessStruct* temp_s0;
    Process* process;
    s16 temp_s1;
    
    if (D_800C598A_C658A != D_800C5988_C6588) {
        temp_s1 = D_800C598C_C658C;
        temp_s0 = &D_800C5990_C6590[D_800C598C_C658C];
        temp_s0->unk0 = 4;
        D_800C598C_C658C = temp_s0->unk2;
        process = HuPrcChildCreate(arg0, arg1, arg2, arg3, arg4);
        temp_s0->processInstance = process;
        process->dtor_idx = temp_s1;
        HuPrcDestructorSet2(temp_s0->processInstance, omDelPrcObj);
        temp_s0->unk8 = 0;
        D_800C598A_C658A++;
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
    unkProcessStruct* temp_s0 = &D_800C5990_C6590[temp_s1->dtor_idx];
    
    if (temp_s0->unk8 != 0) {
        (temp_s0->unk8)();
    }
    
    temp_s0->unk0 = 1;
    temp_s0->unk2 = D_800C598C_C658C;
    D_800C598C_C658C = temp_s1->dtor_idx;
    D_800C598A_C658A--;
}

void omDestroyPrcObj(s32 arg0, void (*arg1)()) {
    unkProcessStruct* temp = &D_800C5990_C6590[HuPrcCurrentGet()->dtor_idx];
    temp->unk8 = arg1;
}

void omPrcSetDestructor(void) {
    unkProcessStruct* var_v1 = D_800C5990_C6590;
    s32 i;
    
    for (i = 0; i < D_800C5988_C6588; i++) {
        if ((var_v1->unk0 & 4) && (var_v1->processInstance->exec_mode == EXEC_PROCESS_DEAD)) {
            var_v1->unk0 = 1;
            var_v1->unk2 = D_800C598C_C658C;
            D_800C598C_C658C = i;
            D_800C598A_C658A--;
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

INCLUDE_ASM("asm/nonmatchings/5CDB0", omOvlGotoEx);

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

INCLUDE_ASM("asm/nonmatchings/5CDB0", omOvlKill);

INCLUDE_RODATA("asm/nonmatchings/5CDB0", D_800CB530_CC130);

INCLUDE_ASM("asm/nonmatchings/5CDB0", omMain);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005EB1C_5F71C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005ECC0_5F8C0);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005EF48_5FB48);

INCLUDE_RODATA("asm/nonmatchings/5CDB0", D_800CB574_CC174);

INCLUDE_RODATA("asm/nonmatchings/5CDB0", D_800CB57C_CC17C);

INCLUDE_RODATA("asm/nonmatchings/5CDB0", D_800CB584_CC184);

INCLUDE_RODATA("asm/nonmatchings/5CDB0", D_800CB58C_CC18C);

INCLUDE_RODATA("asm/nonmatchings/5CDB0", D_800CB594_CC194);

INCLUDE_RODATA("asm/nonmatchings/5CDB0", D_800CB59C_CC19C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005EFA8_5FBA8);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005F9C0_605C0);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005FD5C_6095C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005FD7C_6097C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005FECC_60ACC);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8005FFFC_60BFC);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060058_60C58);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060088_60C88);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060128_60D28);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060198_60D98);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_800601D4_60DD4);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060214_60E14);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060234_60E34);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060268_60E68);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060288_60E88);

INCLUDE_ASM("asm/nonmatchings/5CDB0", PlaySound);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8006035C_60F5C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060398_60F98);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_800603F0_60FF0);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060440_61040);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060468_61068);

s16 func_80060540_61140(s16 arg0, s16 arg1) {
    s16 temp_v0;

    if (D_800C5976_C6576 == 0) {
        return 0;
    }

    temp_v0 = func_80012C7C_1387C(arg0);

    if (temp_v0 > 0) {
        if (D_800D89B2_D8A42[temp_v0] == -1) {
            D_800D89B2_D8A42[temp_v0] = func_80010ED4_11AD4(arg0, arg1);
        }
        return D_800D89B2_D8A42[temp_v0];
    } else {
        return func_80010ED4_11AD4(arg0, arg1);
    }
}

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060618_61218);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8006071C_6131C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8006073C_6133C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060758_61358);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_800607A8_613A8);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_800607C4_613C4);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_800607E8_613E8);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_8006086C_6146C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_800608EC_614EC);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060AB4_616B4);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060AF0_616F0);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060BC8_617C8);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060C84_61884);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060D4C_6194C);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060DFC_619FC);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060E20_61A20);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060E54_61A54);

INCLUDE_ASM("asm/nonmatchings/5CDB0", func_80060F04_61B04);
