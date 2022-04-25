	.set noat
	.set noreorder

glabel func_8004A19C
/* 4AD9C 8004A19C 3C01800D */  lui        $at, %hi(D_800D6732)
/* 4ADA0 8004A1A0 A4246732 */  sh         $a0, %lo(D_800D6732)($at)
/* 4ADA4 8004A1A4 3C01800D */  lui        $at, %hi(D_800D6734)
/* 4ADA8 8004A1A8 03E00008 */  jr         $ra
/* 4ADAC 8004A1AC A4256734 */   sh        $a1, %lo(D_800D6734)($at)
