	.set noat
	.set noreorder

glabel func_80018490
/* 19090 80018490 8C820050 */  lw         $v0, 0x50($a0)
/* 19094 80018494 944200CA */  lhu        $v0, 0xca($v0)
/* 19098 80018498 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 1909C 8001849C 00451026 */  xor        $v0, $v0, $a1
/* 190A0 800184A0 03E00008 */  jr         $ra
/* 190A4 800184A4 2C420001 */   sltiu     $v0, $v0, 1
