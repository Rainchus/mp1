	.set noat
	.set noreorder

glabel func_800635E0
/* 641E0 800635E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 641E4 800635E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 641E8 800635E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 641EC 800635EC 0C018CEA */  jal        func_800633A8
/* 641F0 800635F0 00808021 */   addu      $s0, $a0, $zero
/* 641F4 800635F4 00402021 */  addu       $a0, $v0, $zero
/* 641F8 800635F8 0C018D76 */  jal        func_800635D8
/* 641FC 800635FC 02002821 */   addu      $a1, $s0, $zero
/* 64200 80063600 8FBF0014 */  lw         $ra, 0x14($sp)
/* 64204 80063604 8FB00010 */  lw         $s0, 0x10($sp)
/* 64208 80063608 03E00008 */  jr         $ra
/* 6420C 8006360C 27BD0018 */   addiu     $sp, $sp, 0x18
