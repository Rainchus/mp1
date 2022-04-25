	.set noat
	.set noreorder

glabel func_800415E8
/* 421E8 800415E8 00041100 */  sll        $v0, $a0, 4
/* 421EC 800415EC 00441021 */  addu       $v0, $v0, $a0
/* 421F0 800415F0 00021080 */  sll        $v0, $v0, 2
/* 421F4 800415F4 3C01800D */  lui        $at, %hi(D_800D62D3)
/* 421F8 800415F8 00220821 */  addu       $at, $at, $v0
/* 421FC 800415FC 03E00008 */  jr         $ra
/* 42200 80041600 802262D3 */   lb        $v0, %lo(D_800D62D3)($at)
