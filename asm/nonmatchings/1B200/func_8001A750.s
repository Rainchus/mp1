	.set noat
	.set noreorder

glabel func_8001A750
/* 1B350 8001A750 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B354 8001A754 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B358 8001A758 0C022D48 */  jal        func_8008B520
/* 1B35C 8001A75C AFB00010 */   sw        $s0, 0x10($sp)
/* 1B360 8001A760 0C022D58 */  jal        func_8008B560
/* 1B364 8001A764 00408021 */   addu      $s0, $v0, $zero
/* 1B368 8001A768 00403021 */  addu       $a2, $v0, $zero
/* 1B36C 8001A76C 3C02800D */  lui        $v0, %hi(D_800D5FEC)
/* 1B370 8001A770 94425FEC */  lhu        $v0, %lo(D_800D5FEC)($v0)
/* 1B374 8001A774 10400014 */  beqz       $v0, .L8001A7C8
/* 1B378 8001A778 00001821 */   addu      $v1, $zero, $zero
/* 1B37C 8001A77C 3C05800D */  lui        $a1, %hi(D_800D5FE8)
/* 1B380 8001A780 8CA55FE8 */  lw         $a1, %lo(D_800D5FE8)($a1)
/* 1B384 8001A784 3C04800D */  lui        $a0, %hi(D_800D5FEC)
/* 1B388 8001A788 94845FEC */  lhu        $a0, %lo(D_800D5FEC)($a0)
/* 1B38C 8001A78C 00031400 */  sll        $v0, $v1, 0x10
.L8001A790:
/* 1B390 8001A790 00021383 */  sra        $v0, $v0, 0xe
/* 1B394 8001A794 00451021 */  addu       $v0, $v0, $a1
/* 1B398 8001A798 8C420000 */  lw         $v0, ($v0)
/* 1B39C 8001A79C 50500004 */  beql       $v0, $s0, .L8001A7B0
/* 1B3A0 8001A7A0 24620001 */   addiu     $v0, $v1, 1
/* 1B3A4 8001A7A4 14460009 */  bne        $v0, $a2, .L8001A7CC
/* 1B3A8 8001A7A8 00000000 */   nop
/* 1B3AC 8001A7AC 24620001 */  addiu      $v0, $v1, 1
.L8001A7B0:
/* 1B3B0 8001A7B0 00401821 */  addu       $v1, $v0, $zero
/* 1B3B4 8001A7B4 00021400 */  sll        $v0, $v0, 0x10
/* 1B3B8 8001A7B8 00021403 */  sra        $v0, $v0, 0x10
/* 1B3BC 8001A7BC 0044102A */  slt        $v0, $v0, $a0
/* 1B3C0 8001A7C0 1440FFF3 */  bnez       $v0, .L8001A790
/* 1B3C4 8001A7C4 00031400 */   sll       $v0, $v1, 0x10
.L8001A7C8:
/* 1B3C8 8001A7C8 00001021 */  addu       $v0, $zero, $zero
.L8001A7CC:
/* 1B3CC 8001A7CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B3D0 8001A7D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1B3D4 8001A7D4 03E00008 */  jr         $ra
/* 1B3D8 8001A7D8 27BD0018 */   addiu     $sp, $sp, 0x18
