	.set noat
	.set noreorder

glabel func_8002890C
/* 2950C 8002890C 3C01800C */  lui        $at, %hi(D_800C30C0)
/* 29510 80028910 A02430C0 */  sb         $a0, %lo(D_800C30C0)($at)
/* 29514 80028914 3C01800C */  lui        $at, %hi(D_800C30C1)
/* 29518 80028918 A02530C1 */  sb         $a1, %lo(D_800C30C1)($at)
/* 2951C 8002891C 3C01800C */  lui        $at, %hi(D_800C30C2)
/* 29520 80028920 03E00008 */  jr         $ra
/* 29524 80028924 A02630C2 */   sb        $a2, %lo(D_800C30C2)($at)
