	.set noat
	.set noreorder

glabel func_80008FC4
/* 9BC4 80008FC4 8C820050 */  lw         $v0, 0x50($a0)
/* 9BC8 80008FC8 03E00008 */  jr         $ra
/* 9BCC 80008FCC AC45000C */   sw        $a1, 0xc($v0)
