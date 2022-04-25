	.set noat
	.set noreorder

glabel func_8004D844
/* 4E444 8004D844 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4E448 8004D848 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4E44C 8004D84C AFB20018 */  sw         $s2, 0x18($sp)
/* 4E450 8004D850 AFB10014 */  sw         $s1, 0x14($sp)
/* 4E454 8004D854 AFB00010 */  sw         $s0, 0x10($sp)
/* 4E458 8004D858 00A08021 */  addu       $s0, $a1, $zero
/* 4E45C 8004D85C 02009021 */  addu       $s2, $s0, $zero
/* 4E460 8004D860 00C08821 */  addu       $s1, $a2, $zero
/* 4E464 8004D864 00042400 */  sll        $a0, $a0, 0x10
/* 4E468 8004D868 0C014AA3 */  jal        func_80052A8C
/* 4E46C 8004D86C 00042403 */   sra       $a0, $a0, 0x10
/* 4E470 8004D870 00108400 */  sll        $s0, $s0, 0x10
/* 4E474 8004D874 06000002 */  bltz       $s0, .L8004D880
/* 4E478 8004D878 00401821 */   addu      $v1, $v0, $zero
/* 4E47C 8004D87C A4720012 */  sh         $s2, 0x12($v1)
.L8004D880:
/* 4E480 8004D880 00111400 */  sll        $v0, $s1, 0x10
/* 4E484 8004D884 04430001 */  bgezl      $v0, .L8004D88C
/* 4E488 8004D888 A4710014 */   sh        $s1, 0x14($v1)
.L8004D88C:
/* 4E48C 8004D88C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4E490 8004D890 8FB20018 */  lw         $s2, 0x18($sp)
/* 4E494 8004D894 8FB10014 */  lw         $s1, 0x14($sp)
/* 4E498 8004D898 8FB00010 */  lw         $s0, 0x10($sp)
/* 4E49C 8004D89C 03E00008 */  jr         $ra
/* 4E4A0 8004D8A0 27BD0020 */   addiu     $sp, $sp, 0x20
