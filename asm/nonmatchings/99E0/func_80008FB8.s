	.set noat
	.set noreorder

glabel func_80008FB8
/* 9BB8 80008FB8 8C820050 */  lw         $v0, 0x50($a0)
/* 9BBC 80008FBC 03E00008 */  jr         $ra
/* 9BC0 80008FC0 AC450008 */   sw        $a1, 8($v0)
