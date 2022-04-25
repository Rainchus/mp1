	.set noat
	.set noreorder

glabel func_80049E60
/* 4AA60 80049E60 3C02800D */  lui        $v0, %hi(D_800D66F0)
/* 4AA64 80049E64 8C4266F0 */  lw         $v0, %lo(D_800D66F0)($v0)
/* 4AA68 80049E68 03E00008 */  jr         $ra
/* 4AA6C 80049E6C A040004C */   sb        $zero, 0x4c($v0)
