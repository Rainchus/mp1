	.set noat
	.set noreorder

glabel func_800559A8
/* 565A8 800559A8 3C02800E */  lui        $v0, %hi(D_800D83AD)
/* 565AC 800559AC 904283AD */  lbu        $v0, %lo(D_800D83AD)($v0)
/* 565B0 800559B0 30420001 */  andi       $v0, $v0, 1
/* 565B4 800559B4 03E00008 */  jr         $ra
/* 565B8 800559B8 2C420001 */   sltiu     $v0, $v0, 1
