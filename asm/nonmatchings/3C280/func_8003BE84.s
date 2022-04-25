	.set noat
	.set noreorder

glabel func_8003BE84
/* 3CA84 8003BE84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3CA88 8003BE88 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3CA8C 8003BE8C 8C820008 */  lw         $v0, 8($a0)
/* 3CA90 8003BE90 14400003 */  bnez       $v0, .L8003BEA0
/* 3CA94 8003BE94 24840010 */   addiu     $a0, $a0, 0x10
/* 3CA98 8003BE98 0800EFAA */  j          .L8003BEA8
/* 3CA9C 8003BE9C 2402FFFF */   addiu     $v0, $zero, -1
.L8003BEA0:
/* 3CAA0 8003BEA0 0C0222C4 */  jal        func_80088B10
/* 3CAA4 8003BEA4 00003021 */   addu      $a2, $zero, $zero
.L8003BEA8:
/* 3CAA8 8003BEA8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3CAAC 8003BEAC 03E00008 */  jr         $ra
/* 3CAB0 8003BEB0 27BD0018 */   addiu     $sp, $sp, 0x18
