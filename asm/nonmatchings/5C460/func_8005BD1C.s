	.set noat
	.set noreorder

glabel func_8005BD1C
/* 5C91C 8005BD1C 3C01800F */  lui        $at, %hi(D_800F0A22)
/* 5C920 8005BD20 03E00008 */  jr         $ra
/* 5C924 8005BD24 A0240A22 */   sb        $a0, %lo(D_800F0A22)($at)
