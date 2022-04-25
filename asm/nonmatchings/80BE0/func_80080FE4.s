	.set noat
	.set noreorder

glabel func_80080FE4
/* 81BE4 80080FE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 81BE8 80080FE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 81BEC 80080FEC 3C040003 */  lui        $a0, 3
/* 81BF0 80080FF0 34840001 */  ori        $a0, $a0, 1
/* 81BF4 80080FF4 0C02039C */  jal        func_80080E70
/* 81BF8 80080FF8 00002825 */   or        $a1, $zero, $zero
/* 81BFC 80080FFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 81C00 80081000 27BD0018 */  addiu      $sp, $sp, 0x18
/* 81C04 80081004 03E00008 */  jr         $ra
/* 81C08 80081008 00000000 */   nop
