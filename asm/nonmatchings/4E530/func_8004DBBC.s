	.set noat
	.set noreorder

glabel func_8004DBBC
/* 4E7BC 8004DBBC 3C02800C */  lui        $v0, %hi(D_800C5214)
/* 4E7C0 8004DBC0 03E00008 */  jr         $ra
/* 4E7C4 8004DBC4 8C425214 */   lw        $v0, %lo(D_800C5214)($v0)
