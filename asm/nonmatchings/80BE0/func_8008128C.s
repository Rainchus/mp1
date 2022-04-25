	.set noat
	.set noreorder

glabel func_8008128C
/* 81E8C 8008128C 3C02800E */  lui        $v0, %hi(D_800E7AB4)
/* 81E90 80081290 8C427AB4 */  lw         $v0, %lo(D_800E7AB4)($v0)
/* 81E94 80081294 304E0002 */  andi       $t6, $v0, 2
/* 81E98 80081298 11C00003 */  beqz       $t6, .L800812A8
/* 81E9C 8008129C 304F0001 */   andi      $t7, $v0, 1
/* 81EA0 800812A0 03E00008 */  jr         $ra
/* 81EA4 800812A4 2402002B */   addiu     $v0, $zero, 0x2b
.L800812A8:
/* 81EA8 800812A8 11E00003 */  beqz       $t7, .L800812B8
/* 81EAC 800812AC 00001025 */   or        $v0, $zero, $zero
/* 81EB0 800812B0 03E00008 */  jr         $ra
/* 81EB4 800812B4 2402002F */   addiu     $v0, $zero, 0x2f
.L800812B8:
/* 81EB8 800812B8 03E00008 */  jr         $ra
/* 81EBC 800812BC 00000000 */   nop
