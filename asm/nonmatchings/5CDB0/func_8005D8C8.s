	.set noat
	.set noreorder

glabel func_8005D8C8
/* 5E4C8 8005D8C8 00052827 */  nor        $a1, $zero, $a1
/* 5E4CC 8005D8CC 94820000 */  lhu        $v0, ($a0)
/* 5E4D0 8005D8D0 00451024 */  and        $v0, $v0, $a1
/* 5E4D4 8005D8D4 03E00008 */  jr         $ra
/* 5E4D8 8005D8D8 A4820000 */   sh        $v0, ($a0)
