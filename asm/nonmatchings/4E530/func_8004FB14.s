	.set noat
	.set noreorder

glabel func_8004FB14
/* 50714 8004FB14 00001821 */  addu       $v1, $zero, $zero
/* 50718 8004FB18 2404FFFF */  addiu      $a0, $zero, -1
/* 5071C 8004FB1C 000310C0 */  sll        $v0, $v1, 3
.L8004FB20:
/* 50720 8004FB20 3C01800E */  lui        $at, %hi(D_800D82E0)
/* 50724 8004FB24 00220821 */  addu       $at, $at, $v0
/* 50728 8004FB28 AC2082E0 */  sw         $zero, %lo(D_800D82E0)($at)
/* 5072C 8004FB2C 3C01800E */  lui        $at, %hi(D_800D82E4)
/* 50730 8004FB30 00220821 */  addu       $at, $at, $v0
/* 50734 8004FB34 A42482E4 */  sh         $a0, %lo(D_800D82E4)($at)
/* 50738 8004FB38 24630001 */  addiu      $v1, $v1, 1
/* 5073C 8004FB3C 28620010 */  slti       $v0, $v1, 0x10
/* 50740 8004FB40 5440FFF7 */  bnel       $v0, $zero, .L8004FB20
/* 50744 8004FB44 000310C0 */   sll       $v0, $v1, 3
/* 50748 8004FB48 03E00008 */  jr         $ra
/* 5074C 8004FB4C 00000000 */   nop
