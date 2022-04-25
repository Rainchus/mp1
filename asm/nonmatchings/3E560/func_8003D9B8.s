	.set noat
	.set noreorder

glabel func_8003D9B8
/* 3E5B8 8003D9B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E5BC 8003D9BC AFBF0010 */  sw         $ra, 0x10($sp)
/* 3E5C0 8003D9C0 0C00516C */  jal        func_800145B0
/* 3E5C4 8003D9C4 00000000 */   nop
/* 3E5C8 8003D9C8 00402021 */  addu       $a0, $v0, $zero
/* 3E5CC 8003D9CC 0C00A1E1 */  jal        func_80028784
/* 3E5D0 8003D9D0 24050008 */   addiu     $a1, $zero, 8
/* 3E5D4 8003D9D4 00021400 */  sll        $v0, $v0, 0x10
/* 3E5D8 8003D9D8 00021403 */  sra        $v0, $v0, 0x10
/* 3E5DC 8003D9DC 3C03800D */  lui        $v1, %hi(D_800D61C8)
/* 3E5E0 8003D9E0 246361C8 */  addiu      $v1, $v1, %lo(D_800D61C8)
/* 3E5E4 8003D9E4 00022040 */  sll        $a0, $v0, 1
/* 3E5E8 8003D9E8 00832021 */  addu       $a0, $a0, $v1
/* 3E5EC 8003D9EC 94830000 */  lhu        $v1, ($a0)
/* 3E5F0 8003D9F0 24630001 */  addiu      $v1, $v1, 1
/* 3E5F4 8003D9F4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3E5F8 8003D9F8 A4830000 */  sh         $v1, ($a0)
/* 3E5FC 8003D9FC 03E00008 */  jr         $ra
/* 3E600 8003DA00 27BD0018 */   addiu     $sp, $sp, 0x18
