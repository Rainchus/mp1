	.set noat
	.set noreorder

glabel func_80062518
/* 63118 80062518 3C01800F */  lui        $at, %hi(D_800EE310)
/* 6311C 8006251C 03E00008 */  jr         $ra
/* 63120 80062520 A420E310 */   sh        $zero, %lo(D_800EE310)($at)
