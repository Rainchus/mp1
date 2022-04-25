	.set noat
	.set noreorder

glabel func_8004FD68
/* 50968 8004FD68 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 5096C 8004FD6C AFBF0040 */  sw         $ra, 0x40($sp)
/* 50970 8004FD70 AFB1003C */  sw         $s1, 0x3c($sp)
/* 50974 8004FD74 AFB00038 */  sw         $s0, 0x38($sp)
/* 50978 8004FD78 F7B60050 */  sdc1       $f22, 0x50($sp)
/* 5097C 8004FD7C F7B40048 */  sdc1       $f20, 0x48($sp)
/* 50980 8004FD80 00808021 */  addu       $s0, $a0, $zero
/* 50984 8004FD84 00A08821 */  addu       $s1, $a1, $zero
/* 50988 8004FD88 4486B000 */  mtc1       $a2, $f22
/* 5098C 8004FD8C C6200000 */  lwc1       $f0, ($s1)
/* 50990 8004FD90 C6020000 */  lwc1       $f2, ($s0)
/* 50994 8004FD94 46020001 */  sub.s      $f0, $f0, $f2
/* 50998 8004FD98 E7A00018 */  swc1       $f0, 0x18($sp)
/* 5099C 8004FD9C C6200004 */  lwc1       $f0, 4($s1)
/* 509A0 8004FDA0 C6020004 */  lwc1       $f2, 4($s0)
/* 509A4 8004FDA4 46020001 */  sub.s      $f0, $f0, $f2
/* 509A8 8004FDA8 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 509AC 8004FDAC C6200008 */  lwc1       $f0, 8($s1)
/* 509B0 8004FDB0 C6020008 */  lwc1       $f2, 8($s0)
/* 509B4 8004FDB4 46020001 */  sub.s      $f0, $f0, $f2
/* 509B8 8004FDB8 E7A00020 */  swc1       $f0, 0x20($sp)
/* 509BC 8004FDBC 0C00F4AC */  jal        func_8003D2B0
/* 509C0 8004FDC0 27A40018 */   addiu     $a0, $sp, 0x18
/* 509C4 8004FDC4 46000521 */  cvt.d.s    $f20, $f0
/* 509C8 8004FDC8 3C01800D */  lui        $at, %hi(D_800CB130)
/* 509CC 8004FDCC D420B130 */  ldc1       $f0, %lo(D_800CB130)($at)
/* 509D0 8004FDD0 4620A502 */  mul.d      $f20, $f20, $f0
/* 509D4 8004FDD4 4620A520 */  cvt.s.d    $f20, $f20
/* 509D8 8004FDD8 0C022018 */  jal        func_80088060
/* 509DC 8004FDDC 4600A306 */   mov.s     $f12, $f20
/* 509E0 8004FDE0 46160002 */  mul.s      $f0, $f0, $f22
/* 509E4 8004FDE4 E7A00028 */  swc1       $f0, 0x28($sp)
/* 509E8 8004FDE8 AFA0002C */  sw         $zero, 0x2c($sp)
/* 509EC 8004FDEC 0C021570 */  jal        func_800855C0
/* 509F0 8004FDF0 4600A306 */   mov.s     $f12, $f20
/* 509F4 8004FDF4 46160002 */  mul.s      $f0, $f0, $f22
/* 509F8 8004FDF8 E7A00030 */  swc1       $f0, 0x30($sp)
/* 509FC 8004FDFC C7B40018 */  lwc1       $f20, 0x18($sp)
/* 50A00 8004FE00 C7A00028 */  lwc1       $f0, 0x28($sp)
/* 50A04 8004FE04 4600A503 */  div.s      $f20, $f20, $f0
/* 50A08 8004FE08 3C028005 */  lui        $v0, %hi(func_8004FCB0)
/* 50A0C 8004FE0C 2442FCB0 */  addiu      $v0, $v0, %lo(func_8004FCB0)
/* 50A10 8004FE10 AFA20010 */  sw         $v0, 0x10($sp)
/* 50A14 8004FE14 24045000 */  addiu      $a0, $zero, 0x5000
/* 50A18 8004FE18 00002821 */  addu       $a1, $zero, $zero
/* 50A1C 8004FE1C 00003021 */  addu       $a2, $zero, $zero
/* 50A20 8004FE20 0C0174E1 */  jal        func_8005D384
/* 50A24 8004FE24 2407FFFF */   addiu     $a3, $zero, -1
/* 50A28 8004FE28 C6000000 */  lwc1       $f0, ($s0)
/* 50A2C 8004FE2C E4400018 */  swc1       $f0, 0x18($v0)
/* 50A30 8004FE30 C6000004 */  lwc1       $f0, 4($s0)
/* 50A34 8004FE34 E440001C */  swc1       $f0, 0x1c($v0)
/* 50A38 8004FE38 C6000008 */  lwc1       $f0, 8($s0)
/* 50A3C 8004FE3C E4400020 */  swc1       $f0, 0x20($v0)
/* 50A40 8004FE40 C7A00028 */  lwc1       $f0, 0x28($sp)
/* 50A44 8004FE44 E4400030 */  swc1       $f0, 0x30($v0)
/* 50A48 8004FE48 C7A0002C */  lwc1       $f0, 0x2c($sp)
/* 50A4C 8004FE4C E4400034 */  swc1       $f0, 0x34($v0)
/* 50A50 8004FE50 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 50A54 8004FE54 E4400038 */  swc1       $f0, 0x38($v0)
/* 50A58 8004FE58 C6200000 */  lwc1       $f0, ($s1)
/* 50A5C 8004FE5C E4400024 */  swc1       $f0, 0x24($v0)
/* 50A60 8004FE60 C6200004 */  lwc1       $f0, 4($s1)
/* 50A64 8004FE64 E4400028 */  swc1       $f0, 0x28($v0)
/* 50A68 8004FE68 C6200008 */  lwc1       $f0, 8($s1)
/* 50A6C 8004FE6C E440002C */  swc1       $f0, 0x2c($v0)
/* 50A70 8004FE70 4600A00D */  trunc.w.s  $f0, $f20
/* 50A74 8004FE74 44030000 */  mfc1       $v1, $f0
/* 50A78 8004FE78 00000000 */  nop
/* 50A7C 8004FE7C A443003C */  sh         $v1, 0x3c($v0)
/* 50A80 8004FE80 00601021 */  addu       $v0, $v1, $zero
/* 50A84 8004FE84 8FBF0040 */  lw         $ra, 0x40($sp)
/* 50A88 8004FE88 8FB1003C */  lw         $s1, 0x3c($sp)
/* 50A8C 8004FE8C 8FB00038 */  lw         $s0, 0x38($sp)
/* 50A90 8004FE90 D7B60050 */  ldc1       $f22, 0x50($sp)
/* 50A94 8004FE94 D7B40048 */  ldc1       $f20, 0x48($sp)
/* 50A98 8004FE98 03E00008 */  jr         $ra
/* 50A9C 8004FE9C 27BD0058 */   addiu     $sp, $sp, 0x58
