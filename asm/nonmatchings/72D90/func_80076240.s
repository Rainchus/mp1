	.set noat
	.set noreorder

glabel func_80076240
/* 76E40 80076240 3C01800F */  lui        $at, %hi(D_800ED720)
/* 76E44 80076244 03E00008 */  jr         $ra
/* 76E48 80076248 A424D720 */   sh        $a0, %lo(D_800ED720)($at)
