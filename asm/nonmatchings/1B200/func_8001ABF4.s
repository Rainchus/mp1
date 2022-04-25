	.set noat
	.set noreorder

glabel func_8001ABF4
/* 1B7F4 8001ABF4 3C01800D */  lui        $at, %hi(D_800D5FF0)
/* 1B7F8 8001ABF8 03E00008 */  jr         $ra
/* 1B7FC 8001ABFC AC245FF0 */   sw        $a0, %lo(D_800D5FF0)($at)
