	.set noat
	.set noreorder

glabel func_8003D478
/* 3E078 8003D478 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3E07C 8003D47C AFBF0024 */  sw         $ra, 0x24($sp)
/* 3E080 8003D480 AFB00020 */  sw         $s0, 0x20($sp)
/* 3E084 8003D484 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 3E088 8003D488 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 3E08C 8003D48C 00808021 */  addu       $s0, $a0, $zero
/* 3E090 8003D490 4485B000 */  mtc1       $a1, $f22
/* 3E094 8003D494 C6000004 */  lwc1       $f0, 4($s0)
/* 3E098 8003D498 E7A00014 */  swc1       $f0, 0x14($sp)
/* 3E09C 8003D49C C6000008 */  lwc1       $f0, 8($s0)
/* 3E0A0 8003D4A0 E7A00018 */  swc1       $f0, 0x18($sp)
/* 3E0A4 8003D4A4 0C02BBF4 */  jal        func_800AEFD0
/* 3E0A8 8003D4A8 4600B306 */   mov.s     $f12, $f22
/* 3E0AC 8003D4AC 46000506 */  mov.s      $f20, $f0
/* 3E0B0 8003D4B0 0C02BAB0 */  jal        func_800AEAC0
/* 3E0B4 8003D4B4 4600B306 */   mov.s     $f12, $f22
/* 3E0B8 8003D4B8 C7A20014 */  lwc1       $f2, 0x14($sp)
/* 3E0BC 8003D4BC 4602A502 */  mul.s      $f20, $f20, $f2
/* 3E0C0 8003D4C0 C7A20018 */  lwc1       $f2, 0x18($sp)
/* 3E0C4 8003D4C4 46020002 */  mul.s      $f0, $f0, $f2
/* 3E0C8 8003D4C8 4600A501 */  sub.s      $f20, $f20, $f0
/* 3E0CC 8003D4CC E6140004 */  swc1       $f20, 4($s0)
/* 3E0D0 8003D4D0 0C02BBF4 */  jal        func_800AEFD0
/* 3E0D4 8003D4D4 4600B306 */   mov.s     $f12, $f22
/* 3E0D8 8003D4D8 46000506 */  mov.s      $f20, $f0
/* 3E0DC 8003D4DC 0C02BAB0 */  jal        func_800AEAC0
/* 3E0E0 8003D4E0 4600B306 */   mov.s     $f12, $f22
/* 3E0E4 8003D4E4 C7A20018 */  lwc1       $f2, 0x18($sp)
/* 3E0E8 8003D4E8 4602A502 */  mul.s      $f20, $f20, $f2
/* 3E0EC 8003D4EC C7A20014 */  lwc1       $f2, 0x14($sp)
/* 3E0F0 8003D4F0 46020002 */  mul.s      $f0, $f0, $f2
/* 3E0F4 8003D4F4 4600A500 */  add.s      $f20, $f20, $f0
/* 3E0F8 8003D4F8 E6140008 */  swc1       $f20, 8($s0)
/* 3E0FC 8003D4FC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3E100 8003D500 8FB00020 */  lw         $s0, 0x20($sp)
/* 3E104 8003D504 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 3E108 8003D508 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 3E10C 8003D50C 03E00008 */  jr         $ra
/* 3E110 8003D510 27BD0038 */   addiu     $sp, $sp, 0x38
