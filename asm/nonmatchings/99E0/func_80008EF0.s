	.set noat
	.set noreorder

glabel func_80008EF0
/* 9AF0 80008EF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9AF4 80008EF4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9AF8 80008EF8 AFB10014 */  sw         $s1, 0x14($sp)
/* 9AFC 80008EFC AFB00010 */  sw         $s0, 0x10($sp)
/* 9B00 80008F00 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 9B04 80008F04 00808821 */  addu       $s1, $a0, $zero
/* 9B08 80008F08 C7B40038 */  lwc1       $f20, 0x38($sp)
/* 9B0C 80008F0C 00A08021 */  addu       $s0, $a1, $zero
/* 9B10 80008F10 00C02021 */  addu       $a0, $a2, $zero
/* 9B14 80008F14 0C005D4A */  jal        func_80017528
/* 9B18 80008F18 00E02821 */   addu      $a1, $a3, $zero
/* 9B1C 80008F1C 3210FFFF */  andi       $s0, $s0, 0xffff
/* 9B20 80008F20 8E230040 */  lw         $v1, 0x40($s1)
/* 9B24 80008F24 00108040 */  sll        $s0, $s0, 1
/* 9B28 80008F28 02038021 */  addu       $s0, $s0, $v1
/* 9B2C 80008F2C A6020000 */  sh         $v0, ($s0)
/* 9B30 80008F30 8E230040 */  lw         $v1, 0x40($s1)
/* 9B34 80008F34 00021400 */  sll        $v0, $v0, 0x10
/* 9B38 80008F38 84640000 */  lh         $a0, ($v1)
/* 9B3C 80008F3C 4406A000 */  mfc1       $a2, $f20
/* 9B40 80008F40 00000000 */  nop
/* 9B44 80008F44 0C00A274 */  jal        func_800289D0
/* 9B48 80008F48 00022C03 */   sra       $a1, $v0, 0x10
/* 9B4C 80008F4C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9B50 80008F50 8FB10014 */  lw         $s1, 0x14($sp)
/* 9B54 80008F54 8FB00010 */  lw         $s0, 0x10($sp)
/* 9B58 80008F58 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 9B5C 80008F5C 03E00008 */  jr         $ra
/* 9B60 80008F60 27BD0028 */   addiu     $sp, $sp, 0x28
