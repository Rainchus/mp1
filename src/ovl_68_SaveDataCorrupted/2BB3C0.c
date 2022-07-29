#include "common.h"
#include "2BB390.h"

typedef struct unk_800F5460 {
/* 0x00 */ s16 unk_00;
/* 0x00 */ s16 unk_02;
/* 0x00 */ s16 unk_04;
/* 0x00 */ s16 unk_06;
} unk_800F5460;

extern u16 D_800F5460[];

void func_800F6610_2BB3C0(void) {
    s16 temp_s2;
    s16 new_var;
    
    func_8006CEA0();
    temp_s2 = func_8006D010(0x34, 0x41, 0xD9, 0x22, 0, 0);
    func_8006E154(temp_s2, 0xFF);
    func_800717C0(temp_s2);
    LoadStringIntoWindow(temp_s2, 0x38, -1, -1);
    func_8006E070(temp_s2, 0);
    new_var = func_8006D010(0x3E, 0x8C, 0xC3, 0x14, 0, 0);
    func_8006E154(new_var, 0xFF);
    func_800717C0(new_var);
    LoadStringIntoWindow(new_var, 0x39, -1, -1);
    func_8006E070(new_var, 0);
    func_80072644(0xFF, 8);
    
    while (func_80072718() != 0) {
        SleepVProcess();
    }

    do {
        SleepVProcess();
    } while (((((D_800F5460[0] | D_800F5460[1]) | D_800F5460[2]) | D_800F5460[3]) & 0xF00F) == 0);
  
    func_800726AC(0xFF, 8);
    
    while (func_80072718() != 0) {
        SleepVProcess();
    }

    func_80070D90(temp_s2);
    func_80070D90(new_var);
    func_80070ED4();
    func_8005E044(0x67, 0, 0x91);
    func_8005E3A8();
    SleepVProcess();
}

void func_800F67C0_2BB570(void) {
    func_8005CF30(0xA, 0xA);
    func_80060088();
    InitProcess(&func_800F6610_2BB3C0, 0x1005, 0, 0);
}
