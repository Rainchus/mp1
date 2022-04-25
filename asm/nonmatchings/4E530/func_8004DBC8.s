	.set noat
	.set noreorder

glabel func_8004DBC8
/* 4E7C8 8004DBC8 3C01800C */  lui        $at, %hi(D_800C5210)
/* 4E7CC 8004DBCC 03E00008 */  jr         $ra
/* 4E7D0 8004DBD0 AC245210 */   sw        $a0, %lo(D_800C5210)($at)
