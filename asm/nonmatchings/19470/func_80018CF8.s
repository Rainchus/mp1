	.set noat
	.set noreorder

glabel func_80018CF8
/* 198F8 80018CF8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 198FC 80018CFC AFBF0010 */  sw         $ra, 0x10($sp)
/* 19900 80018D00 00A03021 */  addu       $a2, $a1, $zero
/* 19904 80018D04 3084FFFF */  andi       $a0, $a0, 0xffff
/* 19908 80018D08 000410C0 */  sll        $v0, $a0, 3
/* 1990C 80018D0C 00441021 */  addu       $v0, $v0, $a0
/* 19910 80018D10 00021080 */  sll        $v0, $v0, 2
/* 19914 80018D14 3C03800F */  lui        $v1, %hi(D_800ED60C)
/* 19918 80018D18 8C63D60C */  lw         $v1, %lo(D_800ED60C)($v1)
/* 1991C 80018D1C 00431021 */  addu       $v0, $v0, $v1
/* 19920 80018D20 A446001E */  sh         $a2, 0x1e($v0)
/* 19924 80018D24 A446001C */  sh         $a2, 0x1c($v0)
/* 19928 80018D28 84440004 */  lh         $a0, 4($v0)
/* 1992C 80018D2C 00002821 */  addu       $a1, $zero, $zero
/* 19930 80018D30 0C019D4B */  jal        func_8006752C
/* 19934 80018D34 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 19938 80018D38 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1993C 80018D3C 03E00008 */  jr         $ra
/* 19940 80018D40 27BD0018 */   addiu     $sp, $sp, 0x18
