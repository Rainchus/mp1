	.set noat
	.set noreorder

glabel func_8004BDEC
/* 4C9EC 8004BDEC 00852821 */  addu       $a1, $a0, $a1
/* 4C9F0 8004BDF0 94A20000 */  lhu        $v0, ($a1)
/* 4C9F4 8004BDF4 03E00008 */  jr         $ra
/* 4C9F8 8004BDF8 00821021 */   addu      $v0, $a0, $v0
