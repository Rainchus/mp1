	.set noat
	.set noreorder

glabel func_80072718
/* 73318 80072718 3C02800F */  lui        $v0, %hi(D_800ED564)
/* 7331C 8007271C 03E00008 */  jr         $ra
/* 73320 80072720 9042D564 */   lbu       $v0, %lo(D_800ED564)($v0)
