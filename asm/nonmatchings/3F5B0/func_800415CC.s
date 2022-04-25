	.set noat
	.set noreorder

glabel func_800415CC
/* 421CC 800415CC 00041100 */  sll        $v0, $a0, 4
/* 421D0 800415D0 00441021 */  addu       $v0, $v0, $a0
/* 421D4 800415D4 00021080 */  sll        $v0, $v0, 2
/* 421D8 800415D8 3C01800D */  lui        $at, %hi(D_800D62D2)
/* 421DC 800415DC 00220821 */  addu       $at, $at, $v0
/* 421E0 800415E0 03E00008 */  jr         $ra
/* 421E4 800415E4 A02562D2 */   sb        $a1, %lo(D_800D62D2)($at)
