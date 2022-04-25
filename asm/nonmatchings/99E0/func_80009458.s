	.set noat
	.set noreorder

glabel func_80009458
/* A058 80009458 24020001 */  addiu      $v0, $zero, 1
/* A05C 8000945C 3C01800C */  lui        $at, %hi(D_800B8950)
/* A060 80009460 03E00008 */  jr         $ra
/* A064 80009464 AC228950 */   sw        $v0, %lo(D_800B8950)($at)
