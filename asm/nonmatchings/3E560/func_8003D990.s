	.set noat
	.set noreorder

glabel func_8003D990
/* 3E590 8003D990 00041400 */  sll        $v0, $a0, 0x10
/* 3E594 8003D994 00021403 */  sra        $v0, $v0, 0x10
/* 3E598 8003D998 3C03800D */  lui        $v1, %hi(D_800D61C8)
/* 3E59C 8003D99C 246361C8 */  addiu      $v1, $v1, %lo(D_800D61C8)
/* 3E5A0 8003D9A0 00022040 */  sll        $a0, $v0, 1
/* 3E5A4 8003D9A4 00832021 */  addu       $a0, $a0, $v1
/* 3E5A8 8003D9A8 94830000 */  lhu        $v1, ($a0)
/* 3E5AC 8003D9AC 24630001 */  addiu      $v1, $v1, 1
/* 3E5B0 8003D9B0 03E00008 */  jr         $ra
/* 3E5B4 8003D9B4 A4830000 */   sh        $v1, ($a0)
