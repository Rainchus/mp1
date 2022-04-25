	.set noat
	.set noreorder

glabel func_800FA3E4_152744
/* 152744 800FA3E4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 152748 800FA3E8 AFBF0030 */  sw         $ra, 0x30($sp)
/* 15274C 800FA3EC AFB1002C */  sw         $s1, 0x2c($sp)
/* 152750 800FA3F0 AFB00028 */  sw         $s0, 0x28($sp)
/* 152754 800FA3F4 00808821 */  addu       $s1, $a0, $zero
/* 152758 800FA3F8 27B00018 */  addiu      $s0, $sp, 0x18
/* 15275C 800FA3FC 02002021 */  addu       $a0, $s0, $zero
/* 152760 800FA400 00002821 */  addu       $a1, $zero, $zero
/* 152764 800FA404 00A03021 */  addu       $a2, $a1, $zero
/* 152768 800FA408 0C028340 */  jal        func_800A0D00
/* 15276C 800FA40C 00A03821 */   addu      $a3, $a1, $zero
/* 152770 800FA410 24020004 */  addiu      $v0, $zero, 4
/* 152774 800FA414 AFA20010 */  sw         $v0, 0x10($sp)
/* 152778 800FA418 02202021 */  addu       $a0, $s1, $zero
/* 15277C 800FA41C 24050021 */  addiu      $a1, $zero, 0x21
/* 152780 800FA420 24060003 */  addiu      $a2, $zero, 3
/* 152784 800FA424 0C03E63E */  jal        func_800F98F8_151C58
/* 152788 800FA428 02003821 */   addu      $a3, $s0, $zero
/* 15278C 800FA42C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 152790 800FA430 8FB1002C */  lw         $s1, 0x2c($sp)
/* 152794 800FA434 8FB00028 */  lw         $s0, 0x28($sp)
/* 152798 800FA438 03E00008 */  jr         $ra
/* 15279C 800FA43C 27BD0038 */   addiu     $sp, $sp, 0x38
