	.set noat
	.set noreorder

glabel func_80021B04
/* 22704 80021B04 A0850008 */  sb         $a1, 8($a0)
/* 22708 80021B08 A0860009 */  sb         $a2, 9($a0)
/* 2270C 80021B0C 03E00008 */  jr         $ra
/* 22710 80021B10 A087000A */   sb        $a3, 0xa($a0)
