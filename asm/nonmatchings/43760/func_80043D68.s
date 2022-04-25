	.set noat
	.set noreorder

glabel func_80043D68
/* 44968 80043D68 3C02800D */  lui        $v0, %hi(D_800D6450)
/* 4496C 80043D6C 8C426450 */  lw         $v0, %lo(D_800D6450)($v0)
/* 44970 80043D70 03E00008 */  jr         $ra
/* 44974 80043D74 A040004C */   sb        $zero, 0x4c($v0)
