	.set noat
	.set noreorder

glabel func_800FA440_1527A0
/* 1527A0 800FA440 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1527A4 800FA444 AFBF0030 */  sw         $ra, 0x30($sp)
/* 1527A8 800FA448 AFB1002C */  sw         $s1, 0x2c($sp)
/* 1527AC 800FA44C AFB00028 */  sw         $s0, 0x28($sp)
/* 1527B0 800FA450 00808821 */  addu       $s1, $a0, $zero
/* 1527B4 800FA454 27B00018 */  addiu      $s0, $sp, 0x18
/* 1527B8 800FA458 02002021 */  addu       $a0, $s0, $zero
/* 1527BC 800FA45C 00002821 */  addu       $a1, $zero, $zero
/* 1527C0 800FA460 00A03021 */  addu       $a2, $a1, $zero
/* 1527C4 800FA464 0C028340 */  jal        func_800A0D00
/* 1527C8 800FA468 00A03821 */   addu      $a3, $a1, $zero
/* 1527CC 800FA46C 24020005 */  addiu      $v0, $zero, 5
/* 1527D0 800FA470 AFA20010 */  sw         $v0, 0x10($sp)
/* 1527D4 800FA474 02202021 */  addu       $a0, $s1, $zero
/* 1527D8 800FA478 24050021 */  addiu      $a1, $zero, 0x21
/* 1527DC 800FA47C 24060003 */  addiu      $a2, $zero, 3
/* 1527E0 800FA480 0C03E63E */  jal        func_800F98F8_151C58
/* 1527E4 800FA484 02003821 */   addu      $a3, $s0, $zero
/* 1527E8 800FA488 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1527EC 800FA48C 8FB1002C */  lw         $s1, 0x2c($sp)
/* 1527F0 800FA490 8FB00028 */  lw         $s0, 0x28($sp)
/* 1527F4 800FA494 03E00008 */  jr         $ra
/* 1527F8 800FA498 27BD0038 */   addiu     $sp, $sp, 0x38
