	.set noat
	.set noreorder

glabel func_800FA554_1528B4
/* 1528B4 800FA554 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1528B8 800FA558 AFBF0028 */  sw         $ra, 0x28($sp)
/* 1528BC 800FA55C AFB10024 */  sw         $s1, 0x24($sp)
/* 1528C0 800FA560 AFB00020 */  sw         $s0, 0x20($sp)
/* 1528C4 800FA564 00808821 */  addu       $s1, $a0, $zero
/* 1528C8 800FA568 27B00010 */  addiu      $s0, $sp, 0x10
/* 1528CC 800FA56C 3C054396 */  lui        $a1, 0x4396
/* 1528D0 800FA570 3C06447A */  lui        $a2, 0x447a
/* 1528D4 800FA574 3C07C396 */  lui        $a3, 0xc396
/* 1528D8 800FA578 0C028340 */  jal        func_800A0D00
/* 1528DC 800FA57C 02002021 */   addu      $a0, $s0, $zero
/* 1528E0 800FA580 02202021 */  addu       $a0, $s1, $zero
/* 1528E4 800FA584 02002821 */  addu       $a1, $s0, $zero
/* 1528E8 800FA588 24060002 */  addiu      $a2, $zero, 2
/* 1528EC 800FA58C 0C03E4F8 */  jal        func_800F93E0_151740
/* 1528F0 800FA590 24070014 */   addiu     $a3, $zero, 0x14
/* 1528F4 800FA594 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1528F8 800FA598 8FB10024 */  lw         $s1, 0x24($sp)
/* 1528FC 800FA59C 8FB00020 */  lw         $s0, 0x20($sp)
/* 152900 800FA5A0 03E00008 */  jr         $ra
/* 152904 800FA5A4 27BD0030 */   addiu     $sp, $sp, 0x30
