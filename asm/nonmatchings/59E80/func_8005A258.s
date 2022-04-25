	.set noat
	.set noreorder

glabel func_8005A258
/* 5AE58 8005A258 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5AE5C 8005A25C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5AE60 8005A260 AFB00010 */  sw         $s0, 0x10($sp)
/* 5AE64 8005A264 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 5AE68 8005A268 00042400 */  sll        $a0, $a0, 0x10
/* 5AE6C 8005A26C 00048403 */  sra        $s0, $a0, 0x10
.L8005A270:
/* 5AE70 8005A270 0C009746 */  jal        func_80025D18
/* 5AE74 8005A274 02002021 */   addu      $a0, $s0, $zero
/* 5AE78 8005A278 46000506 */  mov.s      $f20, $f0
/* 5AE7C 8005A27C 0C009750 */  jal        func_80025D40
/* 5AE80 8005A280 02002021 */   addu      $a0, $s0, $zero
/* 5AE84 8005A284 4614003E */  c.le.s     $f0, $f20
/* 5AE88 8005A288 00000000 */  nop
/* 5AE8C 8005A28C 45010005 */  bc1t       .L8005A2A4
/* 5AE90 8005A290 00000000 */   nop
/* 5AE94 8005A294 0C018D6D */  jal        func_800635B4
/* 5AE98 8005A298 00000000 */   nop
/* 5AE9C 8005A29C 0801689C */  j          .L8005A270
/* 5AEA0 8005A2A0 00000000 */   nop
.L8005A2A4:
/* 5AEA4 8005A2A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5AEA8 8005A2A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 5AEAC 8005A2AC D7B40018 */  ldc1       $f20, 0x18($sp)
/* 5AEB0 8005A2B0 03E00008 */  jr         $ra
/* 5AEB4 8005A2B4 27BD0020 */   addiu     $sp, $sp, 0x20
