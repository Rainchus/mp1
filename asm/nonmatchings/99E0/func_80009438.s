	.set noat
	.set noreorder

glabel func_80009438
/* A038 80009438 24020002 */  addiu      $v0, $zero, 2
/* A03C 8000943C 3C01800C */  lui        $at, %hi(D_800B8950)
/* A040 80009440 03E00008 */  jr         $ra
/* A044 80009444 AC228950 */   sw        $v0, %lo(D_800B8950)($at)
