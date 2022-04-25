	.set noat
	.set noreorder

glabel func_8004CB20
/* 4D720 8004CB20 3C01800E */  lui        $at, %hi(D_800D8154)
/* 4D724 8004CB24 03E00008 */  jr         $ra
/* 4D728 8004CB28 AC248154 */   sw        $a0, %lo(D_800D8154)($at)
