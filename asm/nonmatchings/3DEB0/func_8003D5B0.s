	.set noat
	.set noreorder

glabel func_8003D5B0
/* 3E1B0 8003D5B0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3E1B4 8003D5B4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 3E1B8 8003D5B8 AFB00020 */  sw         $s0, 0x20($sp)
/* 3E1BC 8003D5BC F7B60030 */  sdc1       $f22, 0x30($sp)
/* 3E1C0 8003D5C0 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 3E1C4 8003D5C4 00808021 */  addu       $s0, $a0, $zero
/* 3E1C8 8003D5C8 4485B000 */  mtc1       $a1, $f22
/* 3E1CC 8003D5CC C6000000 */  lwc1       $f0, ($s0)
/* 3E1D0 8003D5D0 E7A00010 */  swc1       $f0, 0x10($sp)
/* 3E1D4 8003D5D4 C6000004 */  lwc1       $f0, 4($s0)
/* 3E1D8 8003D5D8 E7A00014 */  swc1       $f0, 0x14($sp)
/* 3E1DC 8003D5DC 0C02BBF4 */  jal        func_800AEFD0
/* 3E1E0 8003D5E0 4600B306 */   mov.s     $f12, $f22
/* 3E1E4 8003D5E4 46000506 */  mov.s      $f20, $f0
/* 3E1E8 8003D5E8 0C02BAB0 */  jal        func_800AEAC0
/* 3E1EC 8003D5EC 4600B306 */   mov.s     $f12, $f22
/* 3E1F0 8003D5F0 C7A20010 */  lwc1       $f2, 0x10($sp)
/* 3E1F4 8003D5F4 4602A502 */  mul.s      $f20, $f20, $f2
/* 3E1F8 8003D5F8 C7A20014 */  lwc1       $f2, 0x14($sp)
/* 3E1FC 8003D5FC 46020002 */  mul.s      $f0, $f0, $f2
/* 3E200 8003D600 4600A501 */  sub.s      $f20, $f20, $f0
/* 3E204 8003D604 E6140000 */  swc1       $f20, ($s0)
/* 3E208 8003D608 0C02BBF4 */  jal        func_800AEFD0
/* 3E20C 8003D60C 4600B306 */   mov.s     $f12, $f22
/* 3E210 8003D610 46000506 */  mov.s      $f20, $f0
/* 3E214 8003D614 0C02BAB0 */  jal        func_800AEAC0
/* 3E218 8003D618 4600B306 */   mov.s     $f12, $f22
/* 3E21C 8003D61C C7A20014 */  lwc1       $f2, 0x14($sp)
/* 3E220 8003D620 4602A502 */  mul.s      $f20, $f20, $f2
/* 3E224 8003D624 C7A20010 */  lwc1       $f2, 0x10($sp)
/* 3E228 8003D628 46020002 */  mul.s      $f0, $f0, $f2
/* 3E22C 8003D62C 4600A500 */  add.s      $f20, $f20, $f0
/* 3E230 8003D630 E6140004 */  swc1       $f20, 4($s0)
/* 3E234 8003D634 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3E238 8003D638 8FB00020 */  lw         $s0, 0x20($sp)
/* 3E23C 8003D63C D7B60030 */  ldc1       $f22, 0x30($sp)
/* 3E240 8003D640 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 3E244 8003D644 03E00008 */  jr         $ra
/* 3E248 8003D648 27BD0038 */   addiu     $sp, $sp, 0x38
