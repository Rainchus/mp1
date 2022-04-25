	.set noat
	.set noreorder

glabel func_8005BD10
/* 5C910 8005BD10 3C01800F */  lui        $at, %hi(D_800F3752)
/* 5C914 8005BD14 03E00008 */  jr         $ra
/* 5C918 8005BD18 A0243752 */   sb        $a0, %lo(D_800F3752)($at)
