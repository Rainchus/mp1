	.set noat
	.set noreorder

glabel func_8003BB30
/* 3C730 8003BB30 00052C00 */  sll        $a1, $a1, 0x10
/* 3C734 8003BB34 8C820004 */  lw         $v0, 4($a0)
/* 3C738 8003BB38 00052B83 */  sra        $a1, $a1, 0xe
/* 3C73C 8003BB3C 00A22821 */  addu       $a1, $a1, $v0
/* 3C740 8003BB40 03E00008 */  jr         $ra
/* 3C744 8003BB44 8CA20000 */   lw        $v0, ($a1)
