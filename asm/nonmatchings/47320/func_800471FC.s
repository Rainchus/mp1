	.set noat
	.set noreorder

glabel func_800471FC
/* 47DFC 800471FC 24020001 */  addiu      $v0, $zero, 1
/* 47E00 80047200 3C01800D */  lui        $at, %hi(D_800D6510)
/* 47E04 80047204 03E00008 */  jr         $ra
/* 47E08 80047208 A0226510 */   sb        $v0, %lo(D_800D6510)($at)
