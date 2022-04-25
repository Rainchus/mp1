	.set noat
	.set noreorder

glabel func_8005D8B8
/* 5E4B8 8005D8B8 94820000 */  lhu        $v0, ($a0)
/* 5E4BC 8005D8BC 00451025 */  or         $v0, $v0, $a1
/* 5E4C0 8005D8C0 03E00008 */  jr         $ra
/* 5E4C4 8005D8C4 A4820000 */   sh        $v0, ($a0)
