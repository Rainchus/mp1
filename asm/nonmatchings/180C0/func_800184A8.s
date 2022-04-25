	.set noat
	.set noreorder

glabel func_800184A8
/* 190A8 800184A8 948200CA */  lhu        $v0, 0xca($a0)
/* 190AC 800184AC 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 190B0 800184B0 00451026 */  xor        $v0, $v0, $a1
/* 190B4 800184B4 03E00008 */  jr         $ra
/* 190B8 800184B8 2C420001 */   sltiu     $v0, $v0, 1
