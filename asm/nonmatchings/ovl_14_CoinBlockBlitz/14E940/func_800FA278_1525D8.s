	.set noat
	.set noreorder

glabel func_800FA278_1525D8
/* 1525D8 800FA278 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1525DC 800FA27C AFBF0030 */  sw         $ra, 0x30($sp)
/* 1525E0 800FA280 AFB1002C */  sw         $s1, 0x2c($sp)
/* 1525E4 800FA284 AFB00028 */  sw         $s0, 0x28($sp)
/* 1525E8 800FA288 00808821 */  addu       $s1, $a0, $zero
/* 1525EC 800FA28C 27B00018 */  addiu      $s0, $sp, 0x18
/* 1525F0 800FA290 02002021 */  addu       $a0, $s0, $zero
/* 1525F4 800FA294 00002821 */  addu       $a1, $zero, $zero
/* 1525F8 800FA298 00A03021 */  addu       $a2, $a1, $zero
/* 1525FC 800FA29C 0C028340 */  jal        func_800A0D00
/* 152600 800FA2A0 00A03821 */   addu      $a3, $a1, $zero
/* 152604 800FA2A4 AFA00010 */  sw         $zero, 0x10($sp)
/* 152608 800FA2A8 02202021 */  addu       $a0, $s1, $zero
/* 15260C 800FA2AC 24050021 */  addiu      $a1, $zero, 0x21
/* 152610 800FA2B0 24060003 */  addiu      $a2, $zero, 3
/* 152614 800FA2B4 0C03E63E */  jal        func_800F98F8_151C58
/* 152618 800FA2B8 02003821 */   addu      $a3, $s0, $zero
/* 15261C 800FA2BC 8FBF0030 */  lw         $ra, 0x30($sp)
/* 152620 800FA2C0 8FB1002C */  lw         $s1, 0x2c($sp)
/* 152624 800FA2C4 8FB00028 */  lw         $s0, 0x28($sp)
/* 152628 800FA2C8 03E00008 */  jr         $ra
/* 15262C 800FA2CC 27BD0038 */   addiu     $sp, $sp, 0x38
