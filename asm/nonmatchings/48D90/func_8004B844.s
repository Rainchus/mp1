	.set noat
	.set noreorder

glabel func_8004B844
/* 4C444 8004B844 3C01800D */  lui        $at, %hi(D_800D672C)
/* 4C448 8004B848 03E00008 */  jr         $ra
/* 4C44C 8004B84C C420672C */   lwc1      $f0, %lo(D_800D672C)($at)
