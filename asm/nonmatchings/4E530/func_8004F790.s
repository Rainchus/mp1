	.set noat
	.set noreorder

glabel func_8004F790
/* 50390 8004F790 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50394 8004F794 AFBF0010 */  sw         $ra, 0x10($sp)
/* 50398 8004F798 00042080 */  sll        $a0, $a0, 2
/* 5039C 8004F79C 30A600FF */  andi       $a2, $a1, 0xff
/* 503A0 8004F7A0 3C01800E */  lui        $at, %hi(D_800D8220)
/* 503A4 8004F7A4 00240821 */  addu       $at, $at, $a0
/* 503A8 8004F7A8 84248220 */  lh         $a0, %lo(D_800D8220)($at)
/* 503AC 8004F7AC 0C019D4B */  jal        func_8006752C
/* 503B0 8004F7B0 00002821 */   addu      $a1, $zero, $zero
/* 503B4 8004F7B4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 503B8 8004F7B8 03E00008 */  jr         $ra
/* 503BC 8004F7BC 27BD0018 */   addiu     $sp, $sp, 0x18
