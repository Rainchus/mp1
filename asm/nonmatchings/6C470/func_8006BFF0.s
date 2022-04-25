	.set noat
	.set noreorder

glabel func_8006BFF0
/* 6CBF0 8006BFF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6CBF4 8006BFF4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 6CBF8 8006BFF8 AFB10014 */  sw         $s1, 0x14($sp)
/* 6CBFC 8006BFFC AFB00010 */  sw         $s0, 0x10($sp)
/* 6CC00 8006C000 00808821 */  addu       $s1, $a0, $zero
/* 6CC04 8006C004 8E300050 */  lw         $s0, 0x50($s1)
/* 6CC08 8006C008 8E020004 */  lw         $v0, 4($s0)
/* 6CC0C 8006C00C 10400003 */  beqz       $v0, .L8006C01C
/* 6CC10 8006C010 00000000 */   nop
/* 6CC14 8006C014 0040F809 */  jalr       $v0
/* 6CC18 8006C018 00000000 */   nop
.L8006C01C:
/* 6CC1C 8006C01C 8E020008 */  lw         $v0, 8($s0)
/* 6CC20 8006C020 10400003 */  beqz       $v0, .L8006C030
/* 6CC24 8006C024 00000000 */   nop
/* 6CC28 8006C028 0040F809 */  jalr       $v0
/* 6CC2C 8006C02C 02202021 */   addu      $a0, $s1, $zero
.L8006C030:
/* 6CC30 8006C030 8E02000C */  lw         $v0, 0xc($s0)
/* 6CC34 8006C034 10400003 */  beqz       $v0, .L8006C044
/* 6CC38 8006C038 00000000 */   nop
/* 6CC3C 8006C03C 0040F809 */  jalr       $v0
/* 6CC40 8006C040 02202021 */   addu      $a0, $s1, $zero
.L8006C044:
/* 6CC44 8006C044 8FBF0018 */  lw         $ra, 0x18($sp)
/* 6CC48 8006C048 8FB10014 */  lw         $s1, 0x14($sp)
/* 6CC4C 8006C04C 8FB00010 */  lw         $s0, 0x10($sp)
/* 6CC50 8006C050 03E00008 */  jr         $ra
/* 6CC54 8006C054 27BD0020 */   addiu     $sp, $sp, 0x20
