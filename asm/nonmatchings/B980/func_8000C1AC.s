	.set noat
	.set noreorder

glabel func_8000C1AC
/* CDAC 8000C1AC 3C02800D */  lui        $v0, %hi(D_800CDAFC)
/* CDB0 8000C1B0 03E00008 */  jr         $ra
/* CDB4 8000C1B4 8442DAFC */   lh        $v0, %lo(D_800CDAFC)($v0)
