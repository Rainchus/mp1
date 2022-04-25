	.set noat
	.set noreorder

glabel func_80008FE8
/* 9BE8 80008FE8 8C820050 */  lw         $v0, 0x50($a0)
/* 9BEC 80008FEC 03E00008 */  jr         $ra
/* 9BF0 80008FF0 AC450064 */   sw        $a1, 0x64($v0)
