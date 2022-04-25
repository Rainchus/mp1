	.set noat
	.set noreorder

glabel func_8001ABE8
/* 1B7E8 8001ABE8 3C01800F */  lui        $at, %hi(D_800F317C)
/* 1B7EC 8001ABEC 03E00008 */  jr         $ra
/* 1B7F0 8001ABF0 AC24317C */   sw        $a0, %lo(D_800F317C)($at)
