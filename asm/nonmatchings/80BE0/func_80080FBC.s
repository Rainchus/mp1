	.set noat
	.set noreorder

glabel func_80080FBC
/* 81BBC 80080FBC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 81BC0 80080FC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 81BC4 80080FC4 3C040003 */  lui        $a0, 3
/* 81BC8 80080FC8 34840001 */  ori        $a0, $a0, 1
/* 81BCC 80080FCC 0C02035E */  jal        func_80080D78
/* 81BD0 80080FD0 00002825 */   or        $a1, $zero, $zero
/* 81BD4 80080FD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 81BD8 80080FD8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 81BDC 80080FDC 03E00008 */  jr         $ra
/* 81BE0 80080FE0 00000000 */   nop
