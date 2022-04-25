	.set noat
	.set noreorder

glabel func_800FA32C_15268C
/* 15268C 800FA32C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 152690 800FA330 AFBF0030 */  sw         $ra, 0x30($sp)
/* 152694 800FA334 AFB1002C */  sw         $s1, 0x2c($sp)
/* 152698 800FA338 AFB00028 */  sw         $s0, 0x28($sp)
/* 15269C 800FA33C 00808821 */  addu       $s1, $a0, $zero
/* 1526A0 800FA340 27B00018 */  addiu      $s0, $sp, 0x18
/* 1526A4 800FA344 02002021 */  addu       $a0, $s0, $zero
/* 1526A8 800FA348 00002821 */  addu       $a1, $zero, $zero
/* 1526AC 800FA34C 00A03021 */  addu       $a2, $a1, $zero
/* 1526B0 800FA350 0C028340 */  jal        func_800A0D00
/* 1526B4 800FA354 00A03821 */   addu      $a3, $a1, $zero
/* 1526B8 800FA358 24020002 */  addiu      $v0, $zero, 2
/* 1526BC 800FA35C AFA20010 */  sw         $v0, 0x10($sp)
/* 1526C0 800FA360 02202021 */  addu       $a0, $s1, $zero
/* 1526C4 800FA364 24050021 */  addiu      $a1, $zero, 0x21
/* 1526C8 800FA368 24060003 */  addiu      $a2, $zero, 3
/* 1526CC 800FA36C 0C03E63E */  jal        func_800F98F8_151C58
/* 1526D0 800FA370 02003821 */   addu      $a3, $s0, $zero
/* 1526D4 800FA374 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1526D8 800FA378 8FB1002C */  lw         $s1, 0x2c($sp)
/* 1526DC 800FA37C 8FB00028 */  lw         $s0, 0x28($sp)
/* 1526E0 800FA380 03E00008 */  jr         $ra
/* 1526E4 800FA384 27BD0038 */   addiu     $sp, $sp, 0x38
