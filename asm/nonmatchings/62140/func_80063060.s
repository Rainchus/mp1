	.set noat
	.set noreorder

glabel func_80063060
/* 63C60 80063060 3C01800E */  lui        $at, %hi(D_800E23D4)
/* 63C64 80063064 A42023D4 */  sh         $zero, %lo(D_800E23D4)($at)
/* 63C68 80063068 3C01800E */  lui        $at, %hi(D_800E23CC)
/* 63C6C 8006306C 03E00008 */  jr         $ra
/* 63C70 80063070 AC2023CC */   sw        $zero, %lo(D_800E23CC)($at)
