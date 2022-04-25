	.set noat
	.set noreorder

glabel func_80008FAC
/* 9BAC 80008FAC 8C820050 */  lw         $v0, 0x50($a0)
/* 9BB0 80008FB0 03E00008 */  jr         $ra
/* 9BB4 80008FB4 AC450044 */   sw        $a1, 0x44($v0)
