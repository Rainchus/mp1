	.set noat
	.set noreorder

glabel func_800186C8
/* 192C8 800186C8 8C820050 */  lw         $v0, 0x50($a0)
/* 192CC 800186CC 00052880 */  sll        $a1, $a1, 2
/* 192D0 800186D0 8C4200D8 */  lw         $v0, 0xd8($v0)
/* 192D4 800186D4 00A22821 */  addu       $a1, $a1, $v0
/* 192D8 800186D8 A4A60000 */  sh         $a2, ($a1)
/* 192DC 800186DC 03E00008 */  jr         $ra
/* 192E0 800186E0 A4A70002 */   sh        $a3, 2($a1)
