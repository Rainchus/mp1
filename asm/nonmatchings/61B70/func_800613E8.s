	.set noat
	.set noreorder

glabel func_800613E8
/* 61FE8 800613E8 3C01800E */  lui        $at, %hi(D_800D8B88)
/* 61FEC 800613EC A4208B88 */  sh         $zero, %lo(D_800D8B88)($at)
/* 61FF0 800613F0 3C02800E */  lui        $v0, %hi(D_800D8C58)
/* 61FF4 800613F4 8C428C58 */  lw         $v0, %lo(D_800D8C58)($v0)
/* 61FF8 800613F8 3C03800E */  lui        $v1, %hi(D_800D8C5C)
/* 61FFC 800613FC 8C638C5C */  lw         $v1, %lo(D_800D8C5C)($v1)
/* 62000 80061400 3C01800E */  lui        $at, %hi(D_800D8B80)
/* 62004 80061404 AC228B80 */  sw         $v0, %lo(D_800D8B80)($at)
/* 62008 80061408 3C01800E */  lui        $at, %hi(D_800D8B84)
/* 6200C 8006140C 03E00008 */  jr         $ra
/* 62010 80061410 AC238B84 */   sw        $v1, %lo(D_800D8B84)($at)
