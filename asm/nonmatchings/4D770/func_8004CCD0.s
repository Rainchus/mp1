	.set noat
	.set noreorder

glabel func_8004CCD0
/* 4D8D0 8004CCD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4D8D4 8004CCD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4D8D8 8004CCD8 AFB00010 */  sw         $s0, 0x10($sp)
/* 4D8DC 8004CCDC 00801021 */  addu       $v0, $a0, $zero
/* 4D8E0 8004CCE0 00C08021 */  addu       $s0, $a2, $zero
/* 4D8E4 8004CCE4 02002021 */  addu       $a0, $s0, $zero
/* 4D8E8 8004CCE8 0C0283A0 */  jal        func_800A0E80
/* 4D8EC 8004CCEC 00403021 */   addu      $a2, $v0, $zero
/* 4D8F0 8004CCF0 0C00F502 */  jal        func_8003D408
/* 4D8F4 8004CCF4 02002021 */   addu      $a0, $s0, $zero
/* 4D8F8 8004CCF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4D8FC 8004CCFC 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D900 8004CD00 03E00008 */  jr         $ra
/* 4D904 8004CD04 27BD0018 */   addiu     $sp, $sp, 0x18
