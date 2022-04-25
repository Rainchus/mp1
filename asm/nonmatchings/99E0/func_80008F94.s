	.set noat
	.set noreorder

glabel func_80008F94
/* 9B94 80008F94 8C820050 */  lw         $v0, 0x50($a0)
/* 9B98 80008F98 03E00008 */  jr         $ra
/* 9B9C 80008F9C AC450040 */   sw        $a1, 0x40($v0)
