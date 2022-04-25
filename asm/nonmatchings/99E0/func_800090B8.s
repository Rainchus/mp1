	.set noat
	.set noreorder

glabel func_800090B8
/* 9CB8 800090B8 3C01800C */  lui        $at, %hi(D_800B8954)
/* 9CBC 800090BC 03E00008 */  jr         $ra
/* 9CC0 800090C0 A0248954 */   sb        $a0, %lo(D_800B8954)($at)
