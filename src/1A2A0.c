#include "common.h"

f32 func_800A1480_A2080(Vec3f*, Vec3f*);

INCLUDE_ASM("asm/nonmatchings/1A2A0", func_800196A0_1A2A0);

s32 func_80019964_1A564(Vec3f* arg0, Vec3f* arg1, f32 arg2, Vec3f* arg3) {
    Vec3f sp18;
    Vec3f sp28;
    Vec3f sp38;
    Vec3f sp48;
    Vec3f sp58;
    Vec3f sp68;
    s32 var_v0;

    func_800A0D50_A1950(&sp18, arg0);
    func_800A0E80_A1A80(&sp28, &arg0[1], arg0);
    func_800A0E80_A1A80(&sp38, &arg0[2], arg0);
    func_800A14F0_A20F0(&sp48, &sp28, &sp38);
    func_800A0E80_A1A80(&sp58, arg1, arg0);
    func_80019A78_1A678(&sp18, &sp28, &sp38, &sp48, &sp58, &sp68);
    func_800A0E00_A1A00(arg3, &sp68, &sp18);

    if (!(arg2 < func_800A13C0_A1FC0(arg3, arg1))) {
        var_v0 = 1;
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

INCLUDE_ASM("asm/nonmatchings/1A2A0", func_80019A78_1A678);

INCLUDE_ASM("asm/nonmatchings/1A2A0", func_80019EDC_1AADC);

void func_8001A084_1AC84(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2) {
    f32 temp_f20;

    temp_f20 = func_800A1480_A2080(arg0, arg1);
    func_800A0F00_A1B00(arg2, temp_f20 / func_800A1480_A2080(arg0, arg0), arg0);
}
