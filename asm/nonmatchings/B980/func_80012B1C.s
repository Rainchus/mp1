	.set noat
	.set noreorder

glabel func_80012B1C
/* 1371C 80012B1C 3C02800D */  lui        $v0, %hi(D_800CEABA)
/* 13720 80012B20 03E00008 */  jr         $ra
/* 13724 80012B24 8042EABA */   lb        $v0, %lo(D_800CEABA)($v0)
