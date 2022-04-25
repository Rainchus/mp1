	.set noat
	.set noreorder

glabel func_800427D4
/* 433D4 800427D4 9482001A */  lhu        $v0, 0x1a($a0)
/* 433D8 800427D8 34420001 */  ori        $v0, $v0, 1
/* 433DC 800427DC 03E00008 */  jr         $ra
/* 433E0 800427E0 A482001A */   sh        $v0, 0x1a($a0)
