	.set noat
	.set noreorder

glabel func_80008FD0
/* 9BD0 80008FD0 8C820050 */  lw         $v0, 0x50($a0)
/* 9BD4 80008FD4 03E00008 */  jr         $ra
/* 9BD8 80008FD8 AC450048 */   sw        $a1, 0x48($v0)
