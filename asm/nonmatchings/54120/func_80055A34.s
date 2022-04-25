	.set noat
	.set noreorder

glabel func_80055A34
/* 56634 80055A34 3C01800C */  lui        $at, %hi(D_800C54D4)
/* 56638 80055A38 03E00008 */  jr         $ra
/* 5663C 80055A3C AC2454D4 */   sw        $a0, %lo(D_800C54D4)($at)
