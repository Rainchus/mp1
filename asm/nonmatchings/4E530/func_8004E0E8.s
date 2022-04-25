	.set noat
	.set noreorder

glabel func_8004E0E8
/* 4ECE8 8004E0E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4ECEC 8004E0EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 4ECF0 8004E0F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 4ECF4 8004E0F4 00808021 */  addu       $s0, $a0, $zero
/* 4ECF8 8004E0F8 00102400 */  sll        $a0, $s0, 0x10
/* 4ECFC 8004E0FC 00042403 */  sra        $a0, $a0, 0x10
/* 4ED00 8004E100 0C01C557 */  jal        func_8007155C
/* 4ED04 8004E104 2405000F */   addiu     $a1, $zero, 0xf
/* 4ED08 8004E108 2404FFFF */  addiu      $a0, $zero, -1
/* 4ED0C 8004E10C 2405FFFF */  addiu      $a1, $zero, -1
/* 4ED10 8004E110 2406FFFF */  addiu      $a2, $zero, -1
/* 4ED14 8004E114 0C01C429 */  jal        func_800710A4
/* 4ED18 8004E118 2407FFFF */   addiu     $a3, $zero, -1
/* 4ED1C 8004E11C 00108400 */  sll        $s0, $s0, 0x10
.L8004E120:
/* 4ED20 8004E120 0C01BF30 */  jal        func_8006FCC0
/* 4ED24 8004E124 00102403 */   sra       $a0, $s0, 0x10
/* 4ED28 8004E128 00021400 */  sll        $v0, $v0, 0x10
/* 4ED2C 8004E12C 10400005 */  beqz       $v0, .L8004E144
/* 4ED30 8004E130 00000000 */   nop
/* 4ED34 8004E134 0C018D6D */  jal        func_800635B4
/* 4ED38 8004E138 00000000 */   nop
/* 4ED3C 8004E13C 08013848 */  j          .L8004E120
/* 4ED40 8004E140 00000000 */   nop
.L8004E144:
/* 4ED44 8004E144 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4ED48 8004E148 8FB00010 */  lw         $s0, 0x10($sp)
/* 4ED4C 8004E14C 03E00008 */  jr         $ra
/* 4ED50 8004E150 27BD0018 */   addiu     $sp, $sp, 0x18
