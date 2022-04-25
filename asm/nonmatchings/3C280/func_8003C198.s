	.set noat
	.set noreorder

glabel func_8003C198
/* 3CD98 8003C198 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3CD9C 8003C19C AFBF0028 */  sw         $ra, 0x28($sp)
/* 3CDA0 8003C1A0 AFB10024 */  sw         $s1, 0x24($sp)
/* 3CDA4 8003C1A4 AFB00020 */  sw         $s0, 0x20($sp)
/* 3CDA8 8003C1A8 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 3CDAC 8003C1AC 00808021 */  addu       $s0, $a0, $zero
/* 3CDB0 8003C1B0 00A08821 */  addu       $s1, $a1, $zero
/* 3CDB4 8003C1B4 4487A000 */  mtc1       $a3, $f20
/* 3CDB8 8003C1B8 02202021 */  addu       $a0, $s1, $zero
/* 3CDBC 8003C1BC 00C02821 */  addu       $a1, $a2, $zero
/* 3CDC0 8003C1C0 0C013334 */  jal        func_8004CCD0
/* 3CDC4 8003C1C4 27A60010 */   addiu     $a2, $sp, 0x10
/* 3CDC8 8003C1C8 8E040004 */  lw         $a0, 4($s0)
/* 3CDCC 8003C1CC 24840018 */  addiu      $a0, $a0, 0x18
/* 3CDD0 8003C1D0 0C028354 */  jal        func_800A0D50
/* 3CDD4 8003C1D4 27A50010 */   addiu     $a1, $sp, 0x10
/* 3CDD8 8003C1D8 27A40010 */  addiu      $a0, $sp, 0x10
/* 3CDDC 8003C1DC 4405A000 */  mfc1       $a1, $f20
/* 3CDE0 8003C1E0 00000000 */  nop
/* 3CDE4 8003C1E4 0C0283C0 */  jal        func_800A0F00
/* 3CDE8 8003C1E8 00803021 */   addu      $a2, $a0, $zero
/* 3CDEC 8003C1EC 8E040004 */  lw         $a0, 4($s0)
/* 3CDF0 8003C1F0 2484000C */  addiu      $a0, $a0, 0xc
/* 3CDF4 8003C1F4 27A50010 */  addiu      $a1, $sp, 0x10
/* 3CDF8 8003C1F8 0C028380 */  jal        func_800A0E00
/* 3CDFC 8003C1FC 02203021 */   addu      $a2, $s1, $zero
/* 3CE00 8003C200 8FBF0028 */  lw         $ra, 0x28($sp)
/* 3CE04 8003C204 8FB10024 */  lw         $s1, 0x24($sp)
/* 3CE08 8003C208 8FB00020 */  lw         $s0, 0x20($sp)
/* 3CE0C 8003C20C D7B40030 */  ldc1       $f20, 0x30($sp)
/* 3CE10 8003C210 03E00008 */  jr         $ra
/* 3CE14 8003C214 27BD0038 */   addiu     $sp, $sp, 0x38
