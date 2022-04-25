	.set noat
	.set noreorder

glabel func_8004A73C
/* 4B33C 8004A73C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4B340 8004A740 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4B344 8004A744 AFB20018 */  sw         $s2, 0x18($sp)
/* 4B348 8004A748 AFB10014 */  sw         $s1, 0x14($sp)
/* 4B34C 8004A74C AFB00010 */  sw         $s0, 0x10($sp)
/* 4B350 8004A750 3C10800D */  lui        $s0, %hi(D_800D6740)
/* 4B354 8004A754 26106740 */  addiu      $s0, $s0, %lo(D_800D6740)
/* 4B358 8004A758 00008821 */  addu       $s1, $zero, $zero
/* 4B35C 8004A75C 2412FFFF */  addiu      $s2, $zero, -1
.L8004A760:
/* 4B360 8004A760 A6000000 */  sh         $zero, ($s0)
/* 4B364 8004A764 A6120002 */  sh         $s2, 2($s0)
/* 4B368 8004A768 8E040004 */  lw         $a0, 4($s0)
/* 4B36C 8004A76C 10800004 */  beqz       $a0, .L8004A780
/* 4B370 8004A770 26310001 */   addiu     $s1, $s1, 1
/* 4B374 8004A774 0C008DCA */  jal        func_80023728
/* 4B378 8004A778 00000000 */   nop
/* 4B37C 8004A77C AE000004 */  sw         $zero, 4($s0)
.L8004A780:
/* 4B380 8004A780 2A220028 */  slti       $v0, $s1, 0x28
/* 4B384 8004A784 1440FFF6 */  bnez       $v0, .L8004A760
/* 4B388 8004A788 26100014 */   addiu     $s0, $s0, 0x14
/* 4B38C 8004A78C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4B390 8004A790 8FB20018 */  lw         $s2, 0x18($sp)
/* 4B394 8004A794 8FB10014 */  lw         $s1, 0x14($sp)
/* 4B398 8004A798 8FB00010 */  lw         $s0, 0x10($sp)
/* 4B39C 8004A79C 03E00008 */  jr         $ra
/* 4B3A0 8004A7A0 27BD0020 */   addiu     $sp, $sp, 0x20
