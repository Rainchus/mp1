	.set noat
	.set noreorder

glabel func_8001AB84
/* 1B784 8001AB84 3C01800D */  lui        $at, %hi(D_800D5FE8)
/* 1B788 8001AB88 AC245FE8 */  sw         $a0, %lo(D_800D5FE8)($at)
/* 1B78C 8001AB8C 3C01800D */  lui        $at, %hi(D_800D5FEC)
/* 1B790 8001AB90 A4255FEC */  sh         $a1, %lo(D_800D5FEC)($at)
/* 1B794 8001AB94 3C01800D */  lui        $at, %hi(D_800D5FEE)
/* 1B798 8001AB98 03E00008 */  jr         $ra
/* 1B79C 8001AB9C A4265FEE */   sh        $a2, %lo(D_800D5FEE)($at)
