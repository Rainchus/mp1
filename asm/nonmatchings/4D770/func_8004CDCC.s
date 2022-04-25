	.set noat
	.set noreorder

glabel func_8004CDCC
/* 4D9CC 8004CDCC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 4D9D0 8004CDD0 AFBF003C */  sw         $ra, 0x3c($sp)
/* 4D9D4 8004CDD4 AFB20038 */  sw         $s2, 0x38($sp)
/* 4D9D8 8004CDD8 AFB10034 */  sw         $s1, 0x34($sp)
/* 4D9DC 8004CDDC AFB00030 */  sw         $s0, 0x30($sp)
/* 4D9E0 8004CDE0 00808821 */  addu       $s1, $a0, $zero
/* 4D9E4 8004CDE4 2632000C */  addiu      $s2, $s1, 0xc
/* 4D9E8 8004CDE8 27A40010 */  addiu      $a0, $sp, 0x10
/* 4D9EC 8004CDEC 3C05800C */  lui        $a1, %hi(D_800C3110)
/* 4D9F0 8004CDF0 8CA53110 */  lw         $a1, %lo(D_800C3110)($a1)
/* 4D9F4 8004CDF4 0C0283A0 */  jal        func_800A0E80
/* 4D9F8 8004CDF8 02403021 */   addu      $a2, $s2, $zero
/* 4D9FC 8004CDFC 27B00020 */  addiu      $s0, $sp, 0x20
/* 4DA00 8004CE00 02002021 */  addu       $a0, $s0, $zero
/* 4DA04 8004CE04 8FA50010 */  lw         $a1, 0x10($sp)
/* 4DA08 8004CE08 8FA70018 */  lw         $a3, 0x18($sp)
/* 4DA0C 8004CE0C 0C028340 */  jal        func_800A0D00
/* 4DA10 8004CE10 00003021 */   addu      $a2, $zero, $zero
/* 4DA14 8004CE14 27A40010 */  addiu      $a0, $sp, 0x10
/* 4DA18 8004CE18 0C00F633 */  jal        func_8003D8CC
/* 4DA1C 8004CE1C 02002821 */   addu      $a1, $s0, $zero
/* 4DA20 8004CE20 8E22003C */  lw         $v0, 0x3c($s1)
/* 4DA24 8004CE24 46000007 */  neg.s      $f0, $f0
/* 4DA28 8004CE28 E4400024 */  swc1       $f0, 0x24($v0)
/* 4DA2C 8004CE2C 02402021 */  addu       $a0, $s2, $zero
/* 4DA30 8004CE30 3C05800C */  lui        $a1, %hi(D_800C3110)
/* 4DA34 8004CE34 8CA53110 */  lw         $a1, %lo(D_800C3110)($a1)
/* 4DA38 8004CE38 0C013334 */  jal        func_8004CCD0
/* 4DA3C 8004CE3C 27A60010 */   addiu     $a2, $sp, 0x10
/* 4DA40 8004CE40 0C00F4AC */  jal        func_8003D2B0
/* 4DA44 8004CE44 27A40010 */   addiu     $a0, $sp, 0x10
/* 4DA48 8004CE48 8E22003C */  lw         $v0, 0x3c($s1)
/* 4DA4C 8004CE4C E4400028 */  swc1       $f0, 0x28($v0)
/* 4DA50 8004CE50 8E22003C */  lw         $v0, 0x3c($s1)
/* 4DA54 8004CE54 AC40002C */  sw         $zero, 0x2c($v0)
/* 4DA58 8004CE58 8FBF003C */  lw         $ra, 0x3c($sp)
/* 4DA5C 8004CE5C 8FB20038 */  lw         $s2, 0x38($sp)
/* 4DA60 8004CE60 8FB10034 */  lw         $s1, 0x34($sp)
/* 4DA64 8004CE64 8FB00030 */  lw         $s0, 0x30($sp)
/* 4DA68 8004CE68 03E00008 */  jr         $ra
/* 4DA6C 8004CE6C 27BD0040 */   addiu     $sp, $sp, 0x40
