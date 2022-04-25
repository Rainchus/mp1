	.set noat
	.set noreorder

glabel func_80018F18
/* 19B18 80018F18 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19B1C 80018F1C AFBF0010 */  sw         $ra, 0x10($sp)
/* 19B20 80018F20 44850000 */  mtc1       $a1, $f0
/* 19B24 80018F24 44861000 */  mtc1       $a2, $f2
/* 19B28 80018F28 3084FFFF */  andi       $a0, $a0, 0xffff
/* 19B2C 80018F2C 000410C0 */  sll        $v0, $a0, 3
/* 19B30 80018F30 00441021 */  addu       $v0, $v0, $a0
/* 19B34 80018F34 00021080 */  sll        $v0, $v0, 2
/* 19B38 80018F38 3C03800F */  lui        $v1, %hi(D_800ED60C)
/* 19B3C 80018F3C 8C63D60C */  lw         $v1, %lo(D_800ED60C)($v1)
/* 19B40 80018F40 00431021 */  addu       $v0, $v0, $v1
/* 19B44 80018F44 84440004 */  lh         $a0, 4($v0)
/* 19B48 80018F48 44060000 */  mfc1       $a2, $f0
/* 19B4C 80018F4C 44071000 */  mfc1       $a3, $f2
/* 19B50 80018F50 00000000 */  nop
/* 19B54 80018F54 0C019CD5 */  jal        func_80067354
/* 19B58 80018F58 00002821 */   addu      $a1, $zero, $zero
/* 19B5C 80018F5C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 19B60 80018F60 03E00008 */  jr         $ra
/* 19B64 80018F64 27BD0018 */   addiu     $sp, $sp, 0x18
