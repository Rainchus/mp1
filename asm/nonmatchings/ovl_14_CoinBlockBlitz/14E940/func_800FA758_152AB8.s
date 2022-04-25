	.set noat
	.set noreorder

glabel func_800FA758_152AB8
/* 152AB8 800FA758 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 152ABC 800FA75C AFBF0028 */  sw         $ra, 0x28($sp)
/* 152AC0 800FA760 AFB10024 */  sw         $s1, 0x24($sp)
/* 152AC4 800FA764 AFB00020 */  sw         $s0, 0x20($sp)
/* 152AC8 800FA768 00808821 */  addu       $s1, $a0, $zero
/* 152ACC 800FA76C 27B00010 */  addiu      $s0, $sp, 0x10
/* 152AD0 800FA770 3C014396 */  lui        $at, 0x4396
/* 152AD4 800FA774 44810000 */  mtc1       $at, $f0
/* 152AD8 800FA778 00000000 */  nop
/* 152ADC 800FA77C 44050000 */  mfc1       $a1, $f0
/* 152AE0 800FA780 3C06447A */  lui        $a2, 0x447a
/* 152AE4 800FA784 44070000 */  mfc1       $a3, $f0
/* 152AE8 800FA788 00000000 */  nop
/* 152AEC 800FA78C 0C028340 */  jal        func_800A0D00
/* 152AF0 800FA790 02002021 */   addu      $a0, $s0, $zero
/* 152AF4 800FA794 02202021 */  addu       $a0, $s1, $zero
/* 152AF8 800FA798 02002821 */  addu       $a1, $s0, $zero
/* 152AFC 800FA79C 24060008 */  addiu      $a2, $zero, 8
/* 152B00 800FA7A0 0C03E4F8 */  jal        func_800F93E0_151740
/* 152B04 800FA7A4 24070028 */   addiu     $a3, $zero, 0x28
/* 152B08 800FA7A8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 152B0C 800FA7AC 8FB10024 */  lw         $s1, 0x24($sp)
/* 152B10 800FA7B0 8FB00020 */  lw         $s0, 0x20($sp)
/* 152B14 800FA7B4 03E00008 */  jr         $ra
/* 152B18 800FA7B8 27BD0030 */   addiu     $sp, $sp, 0x30
/* 152B1C 800FA7BC 00000000 */  nop
