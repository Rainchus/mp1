	.set noat
	.set noreorder

glabel func_8004F800
/* 50400 8004F800 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50404 8004F804 AFBF0010 */  sw         $ra, 0x10($sp)
/* 50408 8004F808 00A03021 */  addu       $a2, $a1, $zero
/* 5040C 8004F80C 00042080 */  sll        $a0, $a0, 2
/* 50410 8004F810 3C01800E */  lui        $at, %hi(D_800D8220)
/* 50414 8004F814 00240821 */  addu       $at, $at, $a0
/* 50418 8004F818 84248220 */  lh         $a0, %lo(D_800D8220)($at)
/* 5041C 8004F81C 0C019D2F */  jal        func_800674BC
/* 50420 8004F820 00002821 */   addu      $a1, $zero, $zero
/* 50424 8004F824 8FBF0010 */  lw         $ra, 0x10($sp)
/* 50428 8004F828 03E00008 */  jr         $ra
/* 5042C 8004F82C 27BD0018 */   addiu     $sp, $sp, 0x18
