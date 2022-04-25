	.set noat
	.set noreorder

glabel func_800FA2D0_152630
/* 152630 800FA2D0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 152634 800FA2D4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 152638 800FA2D8 AFB1002C */  sw         $s1, 0x2c($sp)
/* 15263C 800FA2DC AFB00028 */  sw         $s0, 0x28($sp)
/* 152640 800FA2E0 00808821 */  addu       $s1, $a0, $zero
/* 152644 800FA2E4 27B00018 */  addiu      $s0, $sp, 0x18
/* 152648 800FA2E8 02002021 */  addu       $a0, $s0, $zero
/* 15264C 800FA2EC 00002821 */  addu       $a1, $zero, $zero
/* 152650 800FA2F0 00A03021 */  addu       $a2, $a1, $zero
/* 152654 800FA2F4 0C028340 */  jal        func_800A0D00
/* 152658 800FA2F8 00A03821 */   addu      $a3, $a1, $zero
/* 15265C 800FA2FC 24020001 */  addiu      $v0, $zero, 1
/* 152660 800FA300 AFA20010 */  sw         $v0, 0x10($sp)
/* 152664 800FA304 02202021 */  addu       $a0, $s1, $zero
/* 152668 800FA308 24050021 */  addiu      $a1, $zero, 0x21
/* 15266C 800FA30C 24060003 */  addiu      $a2, $zero, 3
/* 152670 800FA310 0C03E63E */  jal        func_800F98F8_151C58
/* 152674 800FA314 02003821 */   addu      $a3, $s0, $zero
/* 152678 800FA318 8FBF0030 */  lw         $ra, 0x30($sp)
/* 15267C 800FA31C 8FB1002C */  lw         $s1, 0x2c($sp)
/* 152680 800FA320 8FB00028 */  lw         $s0, 0x28($sp)
/* 152684 800FA324 03E00008 */  jr         $ra
/* 152688 800FA328 27BD0038 */   addiu     $sp, $sp, 0x38
