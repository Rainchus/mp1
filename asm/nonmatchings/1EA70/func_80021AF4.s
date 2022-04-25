	.set noat
	.set noreorder

glabel func_80021AF4
/* 226F4 80021AF4 AC85000C */  sw         $a1, 0xc($a0)
/* 226F8 80021AF8 AC860010 */  sw         $a2, 0x10($a0)
/* 226FC 80021AFC 03E00008 */  jr         $ra
/* 22700 80021B00 AC870014 */   sw        $a3, 0x14($a0)
