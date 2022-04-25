	.set noat
	.set noreorder

glabel func_8000B328
/* BF28 8000B328 3C01800D */  lui        $at, %hi(D_800CDAB8)
/* BF2C 8000B32C 03E00008 */  jr         $ra
/* BF30 8000B330 AC20DAB8 */   sw        $zero, %lo(D_800CDAB8)($at)
