	.set noat
	.set noreorder

glabel func_800090C4
/* 9CC4 800090C4 8C820050 */  lw         $v0, 0x50($a0)
/* 9CC8 800090C8 30A500FF */  andi       $a1, $a1, 0xff
/* 9CCC 800090CC 00451021 */  addu       $v0, $v0, $a1
/* 9CD0 800090D0 03E00008 */  jr         $ra
/* 9CD4 800090D4 A0460000 */   sb        $a2, ($v0)
