	.set noat
	.set noreorder

glabel func_800415B0
/* 421B0 800415B0 00041100 */  sll        $v0, $a0, 4
/* 421B4 800415B4 00441021 */  addu       $v0, $v0, $a0
/* 421B8 800415B8 00021080 */  sll        $v0, $v0, 2
/* 421BC 800415BC 3C01800D */  lui        $at, %hi(D_800D62D3)
/* 421C0 800415C0 00220821 */  addu       $at, $at, $v0
/* 421C4 800415C4 03E00008 */  jr         $ra
/* 421C8 800415C8 A02562D3 */   sb        $a1, %lo(D_800D62D3)($at)
