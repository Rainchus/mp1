	.set noat
	.set noreorder

glabel func_80018D44
/* 19944 80018D44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19948 80018D48 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1994C 80018D4C 3084FFFF */  andi       $a0, $a0, 0xffff
/* 19950 80018D50 000410C0 */  sll        $v0, $a0, 3
/* 19954 80018D54 00441021 */  addu       $v0, $v0, $a0
/* 19958 80018D58 00021080 */  sll        $v0, $v0, 2
/* 1995C 80018D5C 3C03800F */  lui        $v1, %hi(D_800ED60C)
/* 19960 80018D60 8C63D60C */  lw         $v1, %lo(D_800ED60C)($v1)
/* 19964 80018D64 00431021 */  addu       $v0, $v0, $v1
/* 19968 80018D68 30A6FFFF */  andi       $a2, $a1, 0xffff
/* 1996C 80018D6C 84440004 */  lh         $a0, 4($v0)
/* 19970 80018D70 0C019D2F */  jal        func_800674BC
/* 19974 80018D74 00002821 */   addu      $a1, $zero, $zero
/* 19978 80018D78 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1997C 80018D7C 03E00008 */  jr         $ra
/* 19980 80018D80 27BD0018 */   addiu     $sp, $sp, 0x18
