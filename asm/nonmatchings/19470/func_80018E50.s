	.set noat
	.set noreorder

glabel func_80018E50
/* 19A50 80018E50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19A54 80018E54 AFBF0010 */  sw         $ra, 0x10($sp)
/* 19A58 80018E58 3084FFFF */  andi       $a0, $a0, 0xffff
/* 19A5C 80018E5C 000410C0 */  sll        $v0, $a0, 3
/* 19A60 80018E60 00441021 */  addu       $v0, $v0, $a0
/* 19A64 80018E64 00021080 */  sll        $v0, $v0, 2
/* 19A68 80018E68 3C03800F */  lui        $v1, %hi(D_800ED60C)
/* 19A6C 80018E6C 8C63D60C */  lw         $v1, %lo(D_800ED60C)($v1)
/* 19A70 80018E70 00431021 */  addu       $v0, $v0, $v1
/* 19A74 80018E74 30A3FFFF */  andi       $v1, $a1, 0xffff
/* 19A78 80018E78 30C7FFFF */  andi       $a3, $a2, 0xffff
/* 19A7C 80018E7C 84440004 */  lh         $a0, 4($v0)
/* 19A80 80018E80 00002821 */  addu       $a1, $zero, $zero
/* 19A84 80018E84 0C019CB7 */  jal        func_800672DC
/* 19A88 80018E88 00603021 */   addu      $a2, $v1, $zero
/* 19A8C 80018E8C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 19A90 80018E90 03E00008 */  jr         $ra
/* 19A94 80018E94 27BD0018 */   addiu     $sp, $sp, 0x18
