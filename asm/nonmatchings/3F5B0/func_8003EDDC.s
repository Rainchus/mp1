	.set noat
	.set noreorder

glabel func_8003EDDC
/* 3F9DC 8003EDDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3F9E0 8003EDE0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 3F9E4 8003EDE4 AFB10014 */  sw         $s1, 0x14($sp)
/* 3F9E8 8003EDE8 AFB00010 */  sw         $s0, 0x10($sp)
/* 3F9EC 8003EDEC 00808821 */  addu       $s1, $a0, $zero
/* 3F9F0 8003EDF0 3C048004 */  lui        $a0, %hi(func_8003ED30)
/* 3F9F4 8003EDF4 2484ED30 */  addiu      $a0, $a0, %lo(func_8003ED30)
/* 3F9F8 8003EDF8 3405EFFF */  ori        $a1, $zero, 0xefff
/* 3F9FC 8003EDFC 00003021 */  addu       $a2, $zero, $zero
/* 3FA00 8003EE00 0C01770A */  jal        func_8005DC28
/* 3FA04 8003EE04 24070040 */   addiu     $a3, $zero, 0x40
/* 3FA08 8003EE08 00408021 */  addu       $s0, $v0, $zero
/* 3FA0C 8003EE0C 8E040018 */  lw         $a0, 0x18($s0)
/* 3FA10 8003EE10 0C016628 */  jal        func_800598A0
/* 3FA14 8003EE14 2405000C */   addiu     $a1, $zero, 0xc
/* 3FA18 8003EE18 AE02008C */  sw         $v0, 0x8c($s0)
/* 3FA1C 8003EE1C AC510004 */  sw         $s1, 4($v0)
/* 3FA20 8003EE20 A4400008 */  sh         $zero, 8($v0)
/* 3FA24 8003EE24 AC500000 */  sw         $s0, ($v0)
/* 3FA28 8003EE28 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3FA2C 8003EE2C 8FB10014 */  lw         $s1, 0x14($sp)
/* 3FA30 8003EE30 8FB00010 */  lw         $s0, 0x10($sp)
/* 3FA34 8003EE34 03E00008 */  jr         $ra
/* 3FA38 8003EE38 27BD0020 */   addiu     $sp, $sp, 0x20
