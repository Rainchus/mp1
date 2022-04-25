	.set noat
	.set noreorder

glabel func_8005C5E8
/* 5D1E8 8005C5E8 3C01800E */  lui        $at, %hi(D_800D8992)
/* 5D1EC 8005C5EC 03E00008 */  jr         $ra
/* 5D1F0 8005C5F0 A4248992 */   sh        $a0, %lo(D_800D8992)($at)
