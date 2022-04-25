	.set noat
	.set noreorder

glabel func_80009468
/* A068 80009468 3C02800C */  lui        $v0, %hi(D_800B8950)
/* A06C 8000946C 8C428950 */  lw         $v0, %lo(D_800B8950)($v0)
/* A070 80009470 3C01800F */  lui        $at, %hi(D_800ED430)
/* A074 80009474 03E00008 */  jr         $ra
/* A078 80009478 AC22D430 */   sw        $v0, %lo(D_800ED430)($at)
