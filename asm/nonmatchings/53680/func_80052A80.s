	.set noat
	.set noreorder

glabel func_80052A80
/* 53680 80052A80 3C02800F */  lui        $v0, %hi(D_800ED5DC)
/* 53684 80052A84 03E00008 */  jr         $ra
/* 53688 80052A88 8442D5DC */   lh        $v0, %lo(D_800ED5DC)($v0)
