	.set noat
	.set noreorder

glabel func_8006BAD0
/* 6C6D0 8006BAD0 8C820050 */  lw         $v0, 0x50($a0)
/* 6C6D4 8006BAD4 03E00008 */  jr         $ra
/* 6C6D8 8006BAD8 AC45001C */   sw        $a1, 0x1c($v0)
