	.set noat
	.set noreorder

glabel func_8005B900
/* 5C500 8005B900 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5C504 8005B904 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5C508 8005B908 AFB00010 */  sw         $s0, 0x10($sp)
/* 5C50C 8005B90C 3C10800E */  lui        $s0, %hi(D_800D8920)
/* 5C510 8005B910 96108920 */  lhu        $s0, %lo(D_800D8920)($s0)
/* 5C514 8005B914 0C0165E6 */  jal        func_80059798
/* 5C518 8005B918 2404002F */   addiu     $a0, $zero, 0x2f
/* 5C51C 8005B91C 10400008 */  beqz       $v0, .L8005B940
/* 5C520 8005B920 00101400 */   sll       $v0, $s0, 0x10
/* 5C524 8005B924 00028403 */  sra        $s0, $v0, 0x10
/* 5C528 8005B928 06000005 */  bltz       $s0, .L8005B940
/* 5C52C 8005B92C 00000000 */   nop
/* 5C530 8005B930 0C01660B */  jal        func_8005982C
/* 5C534 8005B934 2404002F */   addiu     $a0, $zero, 0x2f
/* 5C538 8005B938 0C0173A3 */  jal        func_8005CE8C
/* 5C53C 8005B93C 26040007 */   addiu     $a0, $s0, 7
.L8005B940:
/* 5C540 8005B940 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5C544 8005B944 8FB00010 */  lw         $s0, 0x10($sp)
/* 5C548 8005B948 03E00008 */  jr         $ra
/* 5C54C 8005B94C 27BD0018 */   addiu     $sp, $sp, 0x18
