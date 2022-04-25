	.set noat
	.set noreorder

glabel func_80056E3C
/* 57A3C 80056E3C 3C02800E */  lui        $v0, %hi(D_800D86FA)
/* 57A40 80056E40 03E00008 */  jr         $ra
/* 57A44 80056E44 844286FA */   lh        $v0, %lo(D_800D86FA)($v0)
