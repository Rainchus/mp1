	.set noat
	.set noreorder

glabel func_8004F830
/* 50430 8004F830 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50434 8004F834 AFBF0010 */  sw         $ra, 0x10($sp)
/* 50438 8004F838 00A03021 */  addu       $a2, $a1, $zero
/* 5043C 8004F83C 00042080 */  sll        $a0, $a0, 2
/* 50440 8004F840 3C01800E */  lui        $at, %hi(D_800D8220)
/* 50444 8004F844 00240821 */  addu       $at, $at, $a0
/* 50448 8004F848 84248220 */  lh         $a0, %lo(D_800D8220)($at)
/* 5044C 8004F84C 0C019D20 */  jal        func_80067480
/* 50450 8004F850 00002821 */   addu      $a1, $zero, $zero
/* 50454 8004F854 8FBF0010 */  lw         $ra, 0x10($sp)
/* 50458 8004F858 03E00008 */  jr         $ra
/* 5045C 8004F85C 27BD0018 */   addiu     $sp, $sp, 0x18
