	.set noat
	.set noreorder

glabel func_80012B04
/* 13704 80012B04 3C02800D */  lui        $v0, %hi(D_800CEAB9)
/* 13708 80012B08 03E00008 */  jr         $ra
/* 1370C 80012B0C 9042EAB9 */   lbu       $v0, %lo(D_800CEAB9)($v0)
