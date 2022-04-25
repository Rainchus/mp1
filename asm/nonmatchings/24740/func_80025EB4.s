	.set noat
	.set noreorder

glabel func_80025EB4
/* 26AB4 80025EB4 00042400 */  sll        $a0, $a0, 0x10
/* 26AB8 80025EB8 00042403 */  sra        $a0, $a0, 0x10
/* 26ABC 80025EBC 00041040 */  sll        $v0, $a0, 1
/* 26AC0 80025EC0 00441021 */  addu       $v0, $v0, $a0
/* 26AC4 80025EC4 00021180 */  sll        $v0, $v0, 6
/* 26AC8 80025EC8 3C03800F */  lui        $v1, %hi(D_800F2B7C)
/* 26ACC 80025ECC 8C632B7C */  lw         $v1, %lo(D_800F2B7C)($v1)
/* 26AD0 80025ED0 00432021 */  addu       $a0, $v0, $v1
/* 26AD4 80025ED4 00052827 */  nor        $a1, $zero, $a1
/* 26AD8 80025ED8 9482000A */  lhu        $v0, 0xa($a0)
/* 26ADC 80025EDC 00451024 */  and        $v0, $v0, $a1
/* 26AE0 80025EE0 00C21025 */  or         $v0, $a2, $v0
/* 26AE4 80025EE4 A482000A */  sh         $v0, 0xa($a0)
/* 26AE8 80025EE8 8483000C */  lh         $v1, 0xc($a0)
/* 26AEC 80025EEC 2402FFFF */  addiu      $v0, $zero, -1
/* 26AF0 80025EF0 10620005 */  beq        $v1, $v0, .L80025F08
/* 26AF4 80025EF4 00000000 */   nop
/* 26AF8 80025EF8 9482000E */  lhu        $v0, 0xe($a0)
/* 26AFC 80025EFC 00451024 */  and        $v0, $v0, $a1
/* 26B00 80025F00 00C21025 */  or         $v0, $a2, $v0
/* 26B04 80025F04 A482000E */  sh         $v0, 0xe($a0)
.L80025F08:
/* 26B08 80025F08 03E00008 */  jr         $ra
/* 26B0C 80025F0C 00000000 */   nop
