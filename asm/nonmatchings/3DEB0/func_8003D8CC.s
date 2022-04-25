	.set noat
	.set noreorder

glabel func_8003D8CC
/* 3E4CC 8003D8CC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3E4D0 8003D8D0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 3E4D4 8003D8D4 AFB10014 */  sw         $s1, 0x14($sp)
/* 3E4D8 8003D8D8 AFB00010 */  sw         $s0, 0x10($sp)
/* 3E4DC 8003D8DC F7B60028 */  sdc1       $f22, 0x28($sp)
/* 3E4E0 8003D8E0 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 3E4E4 8003D8E4 00808021 */  addu       $s0, $a0, $zero
/* 3E4E8 8003D8E8 0C028520 */  jal        func_800A1480
/* 3E4EC 8003D8EC 00A08821 */   addu      $s1, $a1, $zero
/* 3E4F0 8003D8F0 46000586 */  mov.s      $f22, $f0
/* 3E4F4 8003D8F4 0C028480 */  jal        func_800A1200
/* 3E4F8 8003D8F8 02002021 */   addu      $a0, $s0, $zero
/* 3E4FC 8003D8FC 46000506 */  mov.s      $f20, $f0
/* 3E500 8003D900 0C028480 */  jal        func_800A1200
/* 3E504 8003D904 02202021 */   addu      $a0, $s1, $zero
/* 3E508 8003D908 4600A302 */  mul.s      $f12, $f20, $f0
/* 3E50C 8003D90C 44800000 */  mtc1       $zero, $f0
/* 3E510 8003D910 00000000 */  nop
/* 3E514 8003D914 46006032 */  c.eq.s     $f12, $f0
/* 3E518 8003D918 00000000 */  nop
/* 3E51C 8003D91C 45010008 */  bc1t       .L8003D940
/* 3E520 8003D920 00000000 */   nop
/* 3E524 8003D924 460CB003 */  div.s      $f0, $f22, $f12
/* 3E528 8003D928 0C026C2A */  jal        func_8009B0A8
/* 3E52C 8003D92C 46000321 */   cvt.d.s   $f12, $f0
/* 3E530 8003D930 3C01800D */  lui        $at, %hi(D_800CAAB0)
/* 3E534 8003D934 D422AAB0 */  ldc1       $f2, %lo(D_800CAAB0)($at)
/* 3E538 8003D938 46220003 */  div.d      $f0, $f0, $f2
/* 3E53C 8003D93C 46200020 */  cvt.s.d    $f0, $f0
.L8003D940:
/* 3E540 8003D940 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3E544 8003D944 8FB10014 */  lw         $s1, 0x14($sp)
/* 3E548 8003D948 8FB00010 */  lw         $s0, 0x10($sp)
/* 3E54C 8003D94C D7B60028 */  ldc1       $f22, 0x28($sp)
/* 3E550 8003D950 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 3E554 8003D954 03E00008 */  jr         $ra
/* 3E558 8003D958 27BD0030 */   addiu     $sp, $sp, 0x30
/* 3E55C 8003D95C 00000000 */  nop
