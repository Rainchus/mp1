	.set noat
	.set noreorder

glabel func_8000AC28
/* B828 8000AC28 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B82C 8000AC2C AFBF0014 */  sw         $ra, 0x14($sp)
/* B830 8000AC30 AFB00010 */  sw         $s0, 0x10($sp)
/* B834 8000AC34 F7B80028 */  sdc1       $f24, 0x28($sp)
/* B838 8000AC38 F7B60020 */  sdc1       $f22, 0x20($sp)
/* B83C 8000AC3C F7B40018 */  sdc1       $f20, 0x18($sp)
/* B840 8000AC40 00808021 */  addu       $s0, $a0, $zero
/* B844 8000AC44 4485B000 */  mtc1       $a1, $f22
/* B848 8000AC48 4486C000 */  mtc1       $a2, $f24
/* B84C 8000AC4C 0C02BAB0 */  jal        func_800AEAC0
/* B850 8000AC50 C60C003C */   lwc1      $f12, 0x3c($s0)
/* B854 8000AC54 C60C003C */  lwc1       $f12, 0x3c($s0)
/* B858 8000AC58 0C02BBF4 */  jal        func_800AEFD0
/* B85C 8000AC5C 46000506 */   mov.s     $f20, $f0
/* B860 8000AC60 4600A306 */  mov.s      $f12, $f20
/* B864 8000AC64 4406B000 */  mfc1       $a2, $f22
/* B868 8000AC68 4407C000 */  mfc1       $a3, $f24
/* B86C 8000AC6C 00000000 */  nop
/* B870 8000AC70 0C0029CB */  jal        func_8000A72C
/* B874 8000AC74 46000386 */   mov.s     $f14, $f0
/* B878 8000AC78 44801000 */  mtc1       $zero, $f2
/* B87C 8000AC7C 00000000 */  nop
/* B880 8000AC80 4600103E */  c.le.s     $f2, $f0
/* B884 8000AC84 00000000 */  nop
/* B888 8000AC88 45000005 */  bc1f       .L8000ACA0
/* B88C 8000AC8C 00000000 */   nop
/* B890 8000AC90 3C01800C */  lui        $at, %hi(D_800B8984)
/* B894 8000AC94 C4208984 */  lwc1       $f0, %lo(D_800B8984)($at)
/* B898 8000AC98 08002B2C */  j          .L8000ACB0
/* B89C 8000AC9C E6000040 */   swc1      $f0, 0x40($s0)
.L8000ACA0:
/* B8A0 8000ACA0 3C01800C */  lui        $at, %hi(D_800B8984)
/* B8A4 8000ACA4 C4208984 */  lwc1       $f0, %lo(D_800B8984)($at)
/* B8A8 8000ACA8 46000007 */  neg.s      $f0, $f0
/* B8AC 8000ACAC E6000040 */  swc1       $f0, 0x40($s0)
.L8000ACB0:
/* B8B0 8000ACB0 96020050 */  lhu        $v0, 0x50($s0)
/* B8B4 8000ACB4 34420010 */  ori        $v0, $v0, 0x10
/* B8B8 8000ACB8 A6020050 */  sh         $v0, 0x50($s0)
/* B8BC 8000ACBC 02002021 */  addu       $a0, $s0, $zero
/* B8C0 8000ACC0 0C002589 */  jal        func_80009624
/* B8C4 8000ACC4 24050007 */   addiu     $a1, $zero, 7
/* B8C8 8000ACC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B8CC 8000ACCC 8FB00010 */  lw         $s0, 0x10($sp)
/* B8D0 8000ACD0 D7B80028 */  ldc1       $f24, 0x28($sp)
/* B8D4 8000ACD4 D7B60020 */  ldc1       $f22, 0x20($sp)
/* B8D8 8000ACD8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* B8DC 8000ACDC 03E00008 */  jr         $ra
/* B8E0 8000ACE0 27BD0030 */   addiu     $sp, $sp, 0x30
