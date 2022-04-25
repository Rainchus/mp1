	.set noat
	.set noreorder

glabel func_800FA6B0_152A10
/* 152A10 800FA6B0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 152A14 800FA6B4 AFBF0028 */  sw         $ra, 0x28($sp)
/* 152A18 800FA6B8 AFB10024 */  sw         $s1, 0x24($sp)
/* 152A1C 800FA6BC AFB00020 */  sw         $s0, 0x20($sp)
/* 152A20 800FA6C0 00808821 */  addu       $s1, $a0, $zero
/* 152A24 800FA6C4 27B00010 */  addiu      $s0, $sp, 0x10
/* 152A28 800FA6C8 3C05C396 */  lui        $a1, 0xc396
/* 152A2C 800FA6CC 3C06447A */  lui        $a2, 0x447a
/* 152A30 800FA6D0 3C074396 */  lui        $a3, 0x4396
/* 152A34 800FA6D4 0C028340 */  jal        func_800A0D00
/* 152A38 800FA6D8 02002021 */   addu      $a0, $s0, $zero
/* 152A3C 800FA6DC 02202021 */  addu       $a0, $s1, $zero
/* 152A40 800FA6E0 02002821 */  addu       $a1, $s0, $zero
/* 152A44 800FA6E4 24060006 */  addiu      $a2, $zero, 6
/* 152A48 800FA6E8 0C03E4F8 */  jal        func_800F93E0_151740
/* 152A4C 800FA6EC 2407003C */   addiu     $a3, $zero, 0x3c
/* 152A50 800FA6F0 8FBF0028 */  lw         $ra, 0x28($sp)
/* 152A54 800FA6F4 8FB10024 */  lw         $s1, 0x24($sp)
/* 152A58 800FA6F8 8FB00020 */  lw         $s0, 0x20($sp)
/* 152A5C 800FA6FC 03E00008 */  jr         $ra
/* 152A60 800FA700 27BD0030 */   addiu     $sp, $sp, 0x30
