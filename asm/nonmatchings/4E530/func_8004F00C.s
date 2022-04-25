	.set noat
	.set noreorder

glabel func_8004F00C
/* 4FC0C 8004F00C AC850034 */  sw         $a1, 0x34($a0)
/* 4FC10 8004F010 03E00008 */  jr         $ra
/* 4FC14 8004F014 AC860038 */   sw        $a2, 0x38($a0)
