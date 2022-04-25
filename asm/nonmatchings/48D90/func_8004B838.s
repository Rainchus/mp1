	.set noat
	.set noreorder

glabel func_8004B838
/* 4C438 8004B838 3C01800D */  lui        $at, %hi(D_800D672C)
/* 4C43C 8004B83C 03E00008 */  jr         $ra
/* 4C440 8004B840 E42C672C */   swc1      $f12, %lo(D_800D672C)($at)
