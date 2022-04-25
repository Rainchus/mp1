	.set noat
	.set noreorder

glabel func_800F7C70_CF0E0
/* CF0E0 800F7C70 460060A1 */  cvt.d.s    $f2, $f12
/* CF0E4 800F7C74 44800000 */  mtc1       $zero, $f0
/* CF0E8 800F7C78 44800800 */  mtc1       $zero, $f1
/* CF0EC 800F7C7C 00000000 */  nop
/* CF0F0 800F7C80 46201032 */  c.eq.d     $f2, $f0
/* CF0F4 800F7C84 00000000 */  nop
/* CF0F8 800F7C88 45000016 */  bc1f       .L800F7CE4
/* CF0FC 800F7C8C 00000000 */   nop
/* CF100 800F7C90 3C04800F */  lui        $a0, %hi(D_800F3FB0)
/* CF104 800F7C94 8C843FB0 */  lw         $a0, %lo(D_800F3FB0)($a0)
/* CF108 800F7C98 3C038010 */  lui        $v1, %hi(D_800FDDC0)
/* CF10C 800F7C9C 2463DDC0 */  addiu      $v1, $v1, %lo(D_800FDDC0)
/* CF110 800F7CA0 3C02800F */  lui        $v0, %hi(D_800F6524)
/* CF114 800F7CA4 24426524 */  addiu      $v0, $v0, %lo(D_800F6524)
/* CF118 800F7CA8 C4400000 */  lwc1       $f0, ($v0)
/* CF11C 800F7CAC E4600000 */  swc1       $f0, ($v1)
/* CF120 800F7CB0 C4400004 */  lwc1       $f0, 4($v0)
/* CF124 800F7CB4 E4600004 */  swc1       $f0, 4($v1)
/* CF128 800F7CB8 C4400008 */  lwc1       $f0, 8($v0)
/* CF12C 800F7CBC E4600008 */  swc1       $f0, 8($v1)
/* CF130 800F7CC0 3C028010 */  lui        $v0, %hi(D_800FDDCC)
/* CF134 800F7CC4 2442DDCC */  addiu      $v0, $v0, %lo(D_800FDDCC)
/* CF138 800F7CC8 C4800018 */  lwc1       $f0, 0x18($a0)
/* CF13C 800F7CCC E4400000 */  swc1       $f0, ($v0)
/* CF140 800F7CD0 C480001C */  lwc1       $f0, 0x1c($a0)
/* CF144 800F7CD4 E4400004 */  swc1       $f0, 4($v0)
/* CF148 800F7CD8 C4800020 */  lwc1       $f0, 0x20($a0)
/* CF14C 800F7CDC 0803DF5B */  j          .L800F7D6C
/* CF150 800F7CE0 E4400008 */   swc1      $f0, 8($v0)
.L800F7CE4:
/* CF154 800F7CE4 3C04800F */  lui        $a0, %hi(D_800F6524)
/* CF158 800F7CE8 24846524 */  addiu      $a0, $a0, %lo(D_800F6524)
/* CF15C 800F7CEC 3C038010 */  lui        $v1, %hi(D_800FDDC0)
/* CF160 800F7CF0 2463DDC0 */  addiu      $v1, $v1, %lo(D_800FDDC0)
/* CF164 800F7CF4 3C028010 */  lui        $v0, %hi(D_800FDDCC)
/* CF168 800F7CF8 2442DDCC */  addiu      $v0, $v0, %lo(D_800FDDCC)
/* CF16C 800F7CFC C4400000 */  lwc1       $f0, ($v0)
/* CF170 800F7D00 C4620000 */  lwc1       $f2, ($v1)
/* CF174 800F7D04 46020001 */  sub.s      $f0, $f0, $f2
/* CF178 800F7D08 46006002 */  mul.s      $f0, $f12, $f0
/* CF17C 800F7D0C 46020000 */  add.s      $f0, $f0, $f2
/* CF180 800F7D10 E4800000 */  swc1       $f0, ($a0)
/* CF184 800F7D14 C4400004 */  lwc1       $f0, 4($v0)
/* CF188 800F7D18 C4620004 */  lwc1       $f2, 4($v1)
/* CF18C 800F7D1C 46020001 */  sub.s      $f0, $f0, $f2
/* CF190 800F7D20 46006002 */  mul.s      $f0, $f12, $f0
/* CF194 800F7D24 46020000 */  add.s      $f0, $f0, $f2
/* CF198 800F7D28 E4800004 */  swc1       $f0, 4($a0)
/* CF19C 800F7D2C C4400008 */  lwc1       $f0, 8($v0)
/* CF1A0 800F7D30 C4620008 */  lwc1       $f2, 8($v1)
/* CF1A4 800F7D34 46020001 */  sub.s      $f0, $f0, $f2
/* CF1A8 800F7D38 46006002 */  mul.s      $f0, $f12, $f0
/* CF1AC 800F7D3C 46020000 */  add.s      $f0, $f0, $f2
/* CF1B0 800F7D40 E4800008 */  swc1       $f0, 8($a0)
/* CF1B4 800F7D44 460060A1 */  cvt.d.s    $f2, $f12
/* CF1B8 800F7D48 3C018010 */  lui        $at, %hi(D_800FDA68)
/* CF1BC 800F7D4C D420DA68 */  ldc1       $f0, %lo(D_800FDA68)($at)
/* CF1C0 800F7D50 46201082 */  mul.d      $f2, $f2, $f0
/* CF1C4 800F7D54 3C018010 */  lui        $at, %hi(D_800FDA70)
/* CF1C8 800F7D58 D420DA70 */  ldc1       $f0, %lo(D_800FDA70)($at)
/* CF1CC 800F7D5C 46220001 */  sub.d      $f0, $f0, $f2
/* CF1D0 800F7D60 46200020 */  cvt.s.d    $f0, $f0
/* CF1D4 800F7D64 3C01800F */  lui        $at, %hi(D_800EE98C)
/* CF1D8 800F7D68 E420E98C */  swc1       $f0, %lo(D_800EE98C)($at)
.L800F7D6C:
/* CF1DC 800F7D6C 03E00008 */  jr         $ra
/* CF1E0 800F7D70 00000000 */   nop
