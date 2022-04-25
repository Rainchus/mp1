	.set noat
	.set noreorder

glabel func_80059348
/* 59F48 80059348 3C01800F */  lui        $at, %hi(D_800ED5DE)
/* 59F4C 8005934C 03E00008 */  jr         $ra
/* 59F50 80059350 A424D5DE */   sh        $a0, %lo(D_800ED5DE)($at)
