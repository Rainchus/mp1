	.set noat
	.set noreorder

glabel func_8000D600
/* E200 8000D600 3C02800D */  lui        $v0, %hi(D_800CDB04)
/* E204 8000D604 8C42DB04 */  lw         $v0, %lo(D_800CDB04)($v0)
/* E208 8000D608 AC820000 */  sw         $v0, ($a0)
/* E20C 8000D60C 3C01800D */  lui        $at, %hi(D_800CDB04)
/* E210 8000D610 03E00008 */  jr         $ra
/* E214 8000D614 AC24DB04 */   sw        $a0, %lo(D_800CDB04)($at)
