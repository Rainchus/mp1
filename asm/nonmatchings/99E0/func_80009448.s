	.set noat
	.set noreorder

glabel func_80009448
/* A048 80009448 24020003 */  addiu      $v0, $zero, 3
/* A04C 8000944C 3C01800C */  lui        $at, %hi(D_800B8950)
/* A050 80009450 03E00008 */  jr         $ra
/* A054 80009454 AC228950 */   sw        $v0, %lo(D_800B8950)($at)
