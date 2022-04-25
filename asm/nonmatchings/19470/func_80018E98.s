	.set noat
	.set noreorder

glabel func_80018E98
/* 19A98 80018E98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19A9C 80018E9C AFBF0010 */  sw         $ra, 0x10($sp)
/* 19AA0 80018EA0 3084FFFF */  andi       $a0, $a0, 0xffff
/* 19AA4 80018EA4 000410C0 */  sll        $v0, $a0, 3
/* 19AA8 80018EA8 00441021 */  addu       $v0, $v0, $a0
/* 19AAC 80018EAC 00021080 */  sll        $v0, $v0, 2
/* 19AB0 80018EB0 3C03800F */  lui        $v1, %hi(D_800ED60C)
/* 19AB4 80018EB4 8C63D60C */  lw         $v1, %lo(D_800ED60C)($v1)
/* 19AB8 80018EB8 00431021 */  addu       $v0, $v0, $v1
/* 19ABC 80018EBC 30A6FFFF */  andi       $a2, $a1, 0xffff
/* 19AC0 80018EC0 84440004 */  lh         $a0, 4($v0)
/* 19AC4 80018EC4 0C019CAC */  jal        func_800672B0
/* 19AC8 80018EC8 00002821 */   addu      $a1, $zero, $zero
/* 19ACC 80018ECC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 19AD0 80018ED0 03E00008 */  jr         $ra
/* 19AD4 80018ED4 27BD0018 */   addiu     $sp, $sp, 0x18
