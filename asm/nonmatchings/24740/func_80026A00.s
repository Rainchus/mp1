	.set noat
	.set noreorder

glabel func_80026A00
/* 27600 80026A00 3C01800C */  lui        $at, %hi(D_800C34A0)
/* 27604 80026A04 03E00008 */  jr         $ra
/* 27608 80026A08 A42434A0 */   sh        $a0, %lo(D_800C34A0)($at)
