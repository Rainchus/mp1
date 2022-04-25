	.set noat
	.set noreorder

glabel func_8004B7F8
/* 4C3F8 8004B7F8 3C01800C */  lui        $at, %hi(D_800C4F7C)
/* 4C3FC 8004B7FC 03E00008 */  jr         $ra
/* 4C400 8004B800 A0244F7C */   sb        $a0, %lo(D_800C4F7C)($at)
