#include "common.h"

INCLUDE_ASM(s32, "1A2A0", func_800196A0);

s32 func_80019964(Vec3f* arg0, Vec3f* arg1, f32 arg2, Vec3f* arg3) {
    Vec3f sp18;
    Vec3f sp28;
    Vec3f sp38;
    Vec3f sp48;
    Vec3f sp58;
    Vec3f sp68;
    s32 var_v0;

    func_800A0D50(&sp18, arg0);
    func_800A0E80(&sp28, &arg0[1], arg0);
    func_800A0E80(&sp38, &arg0[2], arg0);
    func_800A14F0(&sp48, &sp28, &sp38);
    func_800A0E80(&sp58, arg1, arg0);
    func_80019A78(&sp18, &sp28, &sp38, &sp48, &sp58, &sp68);
    func_800A0E00(arg3, &sp68, &sp18);

    if (!(arg2 < func_800A13C0(arg3, arg1))) {
        var_v0 = 1;
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

INCLUDE_ASM(s32, "1A2A0", func_80019A78);

INCLUDE_ASM(s32, "1A2A0", func_80019EDC);

f32 func_800A1480(Vec3f*, Vec3f*);

void func_8001A084(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2) {
    f32 temp_f20;

    temp_f20 = func_800A1480(arg0, arg1);
    func_800A0F00(arg2, temp_f20 / func_800A1480(arg0, arg0), arg0);
}
