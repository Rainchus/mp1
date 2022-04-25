	.set noat
	.set noreorder

glabel func_8004D580
/* 4E180 8004D580 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4E184 8004D584 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4E188 8004D588 AFB10014 */  sw         $s1, 0x14($sp)
/* 4E18C 8004D58C AFB00010 */  sw         $s0, 0x10($sp)
/* 4E190 8004D590 0C018CEA */  jal        func_800633A8
/* 4E194 8004D594 F7B40020 */   sdc1      $f20, 0x20($sp)
/* 4E198 8004D598 8C50008C */  lw         $s0, 0x8c($v0)
/* 4E19C 8004D59C C614001C */  lwc1       $f20, 0x1c($s0)
/* 4E1A0 8004D5A0 2611000C */  addiu      $s1, $s0, 0xc
/* 4E1A4 8004D5A4 02002021 */  addu       $a0, $s0, $zero
.L8004D5A8:
/* 4E1A8 8004D5A8 0C0284F0 */  jal        func_800A13C0
/* 4E1AC 8004D5AC 02202821 */   addu      $a1, $s1, $zero
/* 4E1B0 8004D5B0 4614003C */  c.lt.s     $f0, $f20
/* 4E1B4 8004D5B4 00000000 */  nop
/* 4E1B8 8004D5B8 00000000 */  nop
/* 4E1BC 8004D5BC 45010017 */  bc1t       .L8004D61C
/* 4E1C0 8004D5C0 02202821 */   addu      $a1, $s1, $zero
/* 4E1C4 8004D5C4 8E040018 */  lw         $a0, 0x18($s0)
/* 4E1C8 8004D5C8 0C0283A0 */  jal        func_800A0E80
/* 4E1CC 8004D5CC 02003021 */   addu      $a2, $s0, $zero
/* 4E1D0 8004D5D0 8E040018 */  lw         $a0, 0x18($s0)
/* 4E1D4 8004D5D4 0C00F502 */  jal        func_8003D408
/* 4E1D8 8004D5D8 00000000 */   nop
/* 4E1DC 8004D5DC 8E040018 */  lw         $a0, 0x18($s0)
/* 4E1E0 8004D5E0 4405A000 */  mfc1       $a1, $f20
/* 4E1E4 8004D5E4 00000000 */  nop
/* 4E1E8 8004D5E8 0C0283C0 */  jal        func_800A0F00
/* 4E1EC 8004D5EC 00803021 */   addu      $a2, $a0, $zero
/* 4E1F0 8004D5F0 8E040018 */  lw         $a0, 0x18($s0)
/* 4E1F4 8004D5F4 00802821 */  addu       $a1, $a0, $zero
/* 4E1F8 8004D5F8 0C028380 */  jal        func_800A0E00
/* 4E1FC 8004D5FC 02003021 */   addu      $a2, $s0, $zero
/* 4E200 8004D600 8E050018 */  lw         $a1, 0x18($s0)
/* 4E204 8004D604 0C028354 */  jal        func_800A0D50
/* 4E208 8004D608 02002021 */   addu      $a0, $s0, $zero
/* 4E20C 8004D60C 0C018D6D */  jal        func_800635B4
/* 4E210 8004D610 00000000 */   nop
/* 4E214 8004D614 0801356A */  j          .L8004D5A8
/* 4E218 8004D618 02002021 */   addu      $a0, $s0, $zero
.L8004D61C:
/* 4E21C 8004D61C 8E040018 */  lw         $a0, 0x18($s0)
/* 4E220 8004D620 0C028354 */  jal        func_800A0D50
/* 4E224 8004D624 2605000C */   addiu     $a1, $s0, 0xc
/* 4E228 8004D628 0C017764 */  jal        func_8005DD90
/* 4E22C 8004D62C 00002021 */   addu      $a0, $zero, $zero
/* 4E230 8004D630 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4E234 8004D634 8FB10014 */  lw         $s1, 0x14($sp)
/* 4E238 8004D638 8FB00010 */  lw         $s0, 0x10($sp)
/* 4E23C 8004D63C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4E240 8004D640 03E00008 */  jr         $ra
/* 4E244 8004D644 27BD0028 */   addiu     $sp, $sp, 0x28
