	.set noat
	.set noreorder

glabel func_80012AF8
/* 136F8 80012AF8 3C02800D */  lui        $v0, %hi(D_800CEAB8)
/* 136FC 80012AFC 03E00008 */  jr         $ra
/* 13700 80012B00 8042EAB8 */   lb        $v0, %lo(D_800CEAB8)($v0)
