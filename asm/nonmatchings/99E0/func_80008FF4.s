	.set noat
	.set noreorder

glabel func_80008FF4
/* 9BF4 80008FF4 8C820050 */  lw         $v0, 0x50($a0)
/* 9BF8 80008FF8 03E00008 */  jr         $ra
/* 9BFC 80008FFC AC450068 */   sw        $a1, 0x68($v0)
