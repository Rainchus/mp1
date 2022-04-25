	.set noat
	.set noreorder

glabel func_80080F94
/* 81B94 80080F94 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 81B98 80080F98 AFBF0014 */  sw         $ra, 0x14($sp)
/* 81B9C 80080F9C 3C04000E */  lui        $a0, 0xe
/* 81BA0 80080FA0 34840001 */  ori        $a0, $a0, 1
/* 81BA4 80080FA4 0C02039C */  jal        func_80080E70
/* 81BA8 80080FA8 00002825 */   or        $a1, $zero, $zero
/* 81BAC 80080FAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 81BB0 80080FB0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 81BB4 80080FB4 03E00008 */  jr         $ra
/* 81BB8 80080FB8 00000000 */   nop
