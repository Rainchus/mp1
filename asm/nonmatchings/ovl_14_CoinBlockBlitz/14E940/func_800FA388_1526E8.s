	.set noat
	.set noreorder

glabel func_800FA388_1526E8
/* 1526E8 800FA388 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1526EC 800FA38C AFBF0030 */  sw         $ra, 0x30($sp)
/* 1526F0 800FA390 AFB1002C */  sw         $s1, 0x2c($sp)
/* 1526F4 800FA394 AFB00028 */  sw         $s0, 0x28($sp)
/* 1526F8 800FA398 00808821 */  addu       $s1, $a0, $zero
/* 1526FC 800FA39C 27B00018 */  addiu      $s0, $sp, 0x18
/* 152700 800FA3A0 02002021 */  addu       $a0, $s0, $zero
/* 152704 800FA3A4 00002821 */  addu       $a1, $zero, $zero
/* 152708 800FA3A8 00A03021 */  addu       $a2, $a1, $zero
/* 15270C 800FA3AC 0C028340 */  jal        func_800A0D00
/* 152710 800FA3B0 00A03821 */   addu      $a3, $a1, $zero
/* 152714 800FA3B4 24020003 */  addiu      $v0, $zero, 3
/* 152718 800FA3B8 AFA20010 */  sw         $v0, 0x10($sp)
/* 15271C 800FA3BC 02202021 */  addu       $a0, $s1, $zero
/* 152720 800FA3C0 24050021 */  addiu      $a1, $zero, 0x21
/* 152724 800FA3C4 24060003 */  addiu      $a2, $zero, 3
/* 152728 800FA3C8 0C03E63E */  jal        func_800F98F8_151C58
/* 15272C 800FA3CC 02003821 */   addu      $a3, $s0, $zero
/* 152730 800FA3D0 8FBF0030 */  lw         $ra, 0x30($sp)
/* 152734 800FA3D4 8FB1002C */  lw         $s1, 0x2c($sp)
/* 152738 800FA3D8 8FB00028 */  lw         $s0, 0x28($sp)
/* 15273C 800FA3DC 03E00008 */  jr         $ra
/* 152740 800FA3E0 27BD0038 */   addiu     $sp, $sp, 0x38
