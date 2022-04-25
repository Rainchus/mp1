	.set noat
	.set noreorder

glabel func_8001A084
/* 1AC84 8001A084 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1AC88 8001A088 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1AC8C 8001A08C AFB10014 */  sw         $s1, 0x14($sp)
/* 1AC90 8001A090 AFB00010 */  sw         $s0, 0x10($sp)
/* 1AC94 8001A094 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 1AC98 8001A098 00808021 */  addu       $s0, $a0, $zero
/* 1AC9C 8001A09C 0C028520 */  jal        func_800A1480
/* 1ACA0 8001A0A0 00C08821 */   addu      $s1, $a2, $zero
/* 1ACA4 8001A0A4 46000506 */  mov.s      $f20, $f0
/* 1ACA8 8001A0A8 02002021 */  addu       $a0, $s0, $zero
/* 1ACAC 8001A0AC 0C028520 */  jal        func_800A1480
/* 1ACB0 8001A0B0 02002821 */   addu      $a1, $s0, $zero
/* 1ACB4 8001A0B4 02202021 */  addu       $a0, $s1, $zero
/* 1ACB8 8001A0B8 4600A503 */  div.s      $f20, $f20, $f0
/* 1ACBC 8001A0BC 4405A000 */  mfc1       $a1, $f20
/* 1ACC0 8001A0C0 00000000 */  nop
/* 1ACC4 8001A0C4 0C0283C0 */  jal        func_800A0F00
/* 1ACC8 8001A0C8 02003021 */   addu      $a2, $s0, $zero
/* 1ACCC 8001A0CC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1ACD0 8001A0D0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1ACD4 8001A0D4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1ACD8 8001A0D8 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 1ACDC 8001A0DC 03E00008 */  jr         $ra
/* 1ACE0 8001A0E0 27BD0028 */   addiu     $sp, $sp, 0x28
/* 1ACE4 8001A0E4 00000000 */  nop
/* 1ACE8 8001A0E8 00000000 */  nop
/* 1ACEC 8001A0EC 00000000 */  nop
