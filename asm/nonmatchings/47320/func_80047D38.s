	.set noat
	.set noreorder

glabel func_80047D38
/* 48938 80047D38 3C02800D */  lui        $v0, %hi(D_800D6500)
/* 4893C 80047D3C 90426500 */  lbu        $v0, %lo(D_800D6500)($v0)
/* 48940 80047D40 03E00008 */  jr         $ra
/* 48944 80047D44 3042000C */   andi      $v0, $v0, 0xc
