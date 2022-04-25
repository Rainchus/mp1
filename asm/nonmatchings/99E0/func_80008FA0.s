	.set noat
	.set noreorder

glabel func_80008FA0
/* 9BA0 80008FA0 8C820050 */  lw         $v0, 0x50($a0)
/* 9BA4 80008FA4 03E00008 */  jr         $ra
/* 9BA8 80008FA8 AC450038 */   sw        $a1, 0x38($v0)
