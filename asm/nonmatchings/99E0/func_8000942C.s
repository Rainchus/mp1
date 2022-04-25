	.set noat
	.set noreorder

glabel func_8000942C
/* A02C 8000942C 3C01800C */  lui        $at, %hi(D_800B8950)
/* A030 80009430 03E00008 */  jr         $ra
/* A034 80009434 AC208950 */   sw        $zero, %lo(D_800B8950)($at)
