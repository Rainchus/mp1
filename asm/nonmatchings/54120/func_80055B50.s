	.set noat
	.set noreorder

glabel func_80055B50
/* 56750 80055B50 3C01800C */  lui        $at, %hi(D_800C54D0)
/* 56754 80055B54 AC2454D0 */  sw         $a0, %lo(D_800C54D0)($at)
/* 56758 80055B58 3C01800C */  lui        $at, %hi(D_800C54D4)
/* 5675C 80055B5C 03E00008 */  jr         $ra
/* 56760 80055B60 AC2554D4 */   sw        $a1, %lo(D_800C54D4)($at)
