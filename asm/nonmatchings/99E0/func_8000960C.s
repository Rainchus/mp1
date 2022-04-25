	.set noat
	.set noreorder

glabel func_8000960C
/* A20C 8000960C 3C01800C */  lui        $at, %hi(D_800B895A)
/* A210 80009610 03E00008 */  jr         $ra
/* A214 80009614 A024895A */   sb        $a0, %lo(D_800B895A)($at)
