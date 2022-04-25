	.set noat
	.set noreorder

glabel func_8005C5F4
/* 5D1F4 8005C5F4 3C02800E */  lui        $v0, %hi(D_800D8992)
/* 5D1F8 8005C5F8 03E00008 */  jr         $ra
/* 5D1FC 8005C5FC 84428992 */   lh        $v0, %lo(D_800D8992)($v0)
