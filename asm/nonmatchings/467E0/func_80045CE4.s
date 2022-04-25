	.set noat
	.set noreorder

glabel func_80045CE4
/* 468E4 80045CE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 468E8 80045CE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 468EC 80045CEC AFB00010 */  sw         $s0, 0x10($sp)
/* 468F0 80045CF0 00808021 */  addu       $s0, $a0, $zero
/* 468F4 80045CF4 0C01C364 */  jal        func_80070D90
/* 468F8 80045CF8 86040008 */   lh        $a0, 8($s0)
/* 468FC 80045CFC 0C00EDE6 */  jal        func_8003B798
/* 46900 80045D00 8E04000C */   lw        $a0, 0xc($s0)
/* 46904 80045D04 2402FFFF */  addiu      $v0, $zero, -1
/* 46908 80045D08 A6020008 */  sh         $v0, 8($s0)
/* 4690C 80045D0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 46910 80045D10 8FB00010 */  lw         $s0, 0x10($sp)
/* 46914 80045D14 03E00008 */  jr         $ra
/* 46918 80045D18 27BD0018 */   addiu     $sp, $sp, 0x18
