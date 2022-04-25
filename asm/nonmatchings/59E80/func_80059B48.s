	.set noat
	.set noreorder

glabel func_80059B48
/* 5A748 80059B48 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5A74C 80059B4C 04800005 */  bltz       $a0, .L80059B64
/* 5A750 80059B50 AFBF0010 */   sw        $ra, 0x10($sp)
/* 5A754 80059B54 0C0165E6 */  jal        func_80059798
/* 5A758 80059B58 00000000 */   nop
/* 5A75C 80059B5C 080166DA */  j          .L80059B68
/* 5A760 80059B60 00000000 */   nop
.L80059B64:
/* 5A764 80059B64 24020001 */  addiu      $v0, $zero, 1
.L80059B68:
/* 5A768 80059B68 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5A76C 80059B6C 03E00008 */  jr         $ra
/* 5A770 80059B70 27BD0018 */   addiu     $sp, $sp, 0x18
