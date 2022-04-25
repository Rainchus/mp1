	.set noat
	.set noreorder

glabel func_800532E0
/* 53EE0 800532E0 3C01800E */  lui        $at, %hi(D_800D8390)
/* 53EE4 800532E4 AC208390 */  sw         $zero, %lo(D_800D8390)($at)
/* 53EE8 800532E8 3C01800E */  lui        $at, %hi(D_800D8394)
/* 53EEC 800532EC 03E00008 */  jr         $ra
/* 53EF0 800532F0 A4208394 */   sh        $zero, %lo(D_800D8394)($at)
