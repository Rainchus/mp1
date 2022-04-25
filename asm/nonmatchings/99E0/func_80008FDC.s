	.set noat
	.set noreorder

glabel func_80008FDC
/* 9BDC 80008FDC 8C820050 */  lw         $v0, 0x50($a0)
/* 9BE0 80008FE0 03E00008 */  jr         $ra
/* 9BE4 80008FE4 AC450034 */   sw        $a1, 0x34($v0)
