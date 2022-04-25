	.set noat
	.set noreorder

glabel func_8004D4A8
/* 4E0A8 8004D4A8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 4E0AC 8004D4AC AFBF0040 */  sw         $ra, 0x40($sp)
/* 4E0B0 8004D4B0 AFB3003C */  sw         $s3, 0x3c($sp)
/* 4E0B4 8004D4B4 AFB20038 */  sw         $s2, 0x38($sp)
/* 4E0B8 8004D4B8 AFB10034 */  sw         $s1, 0x34($sp)
/* 4E0BC 8004D4BC AFB00030 */  sw         $s0, 0x30($sp)
/* 4E0C0 8004D4C0 00A09821 */  addu       $s3, $a1, $zero
/* 4E0C4 8004D4C4 00048400 */  sll        $s0, $a0, 0x10
/* 4E0C8 8004D4C8 00108403 */  sra        $s0, $s0, 0x10
/* 4E0CC 8004D4CC 0C014AA3 */  jal        func_80052A8C
/* 4E0D0 8004D4D0 02002021 */   addu      $a0, $s0, $zero
/* 4E0D4 8004D4D4 00409021 */  addu       $s2, $v0, $zero
/* 4E0D8 8004D4D8 9644000E */  lhu        $a0, 0xe($s2)
/* 4E0DC 8004D4DC 0C013081 */  jal        func_8004C204
/* 4E0E0 8004D4E0 96450010 */   lhu       $a1, 0x10($s2)
/* 4E0E4 8004D4E4 00021400 */  sll        $v0, $v0, 0x10
/* 4E0E8 8004D4E8 02002021 */  addu       $a0, $s0, $zero
/* 4E0EC 8004D4EC 00022C03 */  sra        $a1, $v0, 0x10
/* 4E0F0 8004D4F0 0C0132DC */  jal        func_8004CB70
/* 4E0F4 8004D4F4 27A60010 */   addiu     $a2, $sp, 0x10
/* 4E0F8 8004D4F8 96440012 */  lhu        $a0, 0x12($s2)
/* 4E0FC 8004D4FC 0C013081 */  jal        func_8004C204
/* 4E100 8004D500 96450014 */   lhu       $a1, 0x14($s2)
/* 4E104 8004D504 00021400 */  sll        $v0, $v0, 0x10
/* 4E108 8004D508 27B10020 */  addiu      $s1, $sp, 0x20
/* 4E10C 8004D50C 02002021 */  addu       $a0, $s0, $zero
/* 4E110 8004D510 00022C03 */  sra        $a1, $v0, 0x10
/* 4E114 8004D514 0C0132DC */  jal        func_8004CB70
/* 4E118 8004D518 02203021 */   addu      $a2, $s1, $zero
/* 4E11C 8004D51C 8E460020 */  lw         $a2, 0x20($s2)
/* 4E120 8004D520 27A40010 */  addiu      $a0, $sp, 0x10
/* 4E124 8004D524 02202821 */  addu       $a1, $s1, $zero
/* 4E128 8004D528 0C013334 */  jal        func_8004CCD0
/* 4E12C 8004D52C 24C60018 */   addiu     $a2, $a2, 0x18
/* 4E130 8004D530 8E460020 */  lw         $a2, 0x20($s2)
/* 4E134 8004D534 27A40010 */  addiu      $a0, $sp, 0x10
/* 4E138 8004D538 02202821 */  addu       $a1, $s1, $zero
/* 4E13C 8004D53C 24C6000C */  addiu      $a2, $a2, 0xc
/* 4E140 8004D540 0C0134FD */  jal        func_8004D3F4
/* 4E144 8004D544 02603821 */   addu      $a3, $s3, $zero
/* 4E148 8004D548 0C018CEA */  jal        func_800633A8
/* 4E14C 8004D54C 00408021 */   addu      $s0, $v0, $zero
/* 4E150 8004D550 00402021 */  addu       $a0, $v0, $zero
/* 4E154 8004D554 0C018C9C */  jal        func_80063270
/* 4E158 8004D558 02002821 */   addu      $a1, $s0, $zero
/* 4E15C 8004D55C 0C018CD6 */  jal        func_80063358
/* 4E160 8004D560 00000000 */   nop
/* 4E164 8004D564 8FBF0040 */  lw         $ra, 0x40($sp)
/* 4E168 8004D568 8FB3003C */  lw         $s3, 0x3c($sp)
/* 4E16C 8004D56C 8FB20038 */  lw         $s2, 0x38($sp)
/* 4E170 8004D570 8FB10034 */  lw         $s1, 0x34($sp)
/* 4E174 8004D574 8FB00030 */  lw         $s0, 0x30($sp)
/* 4E178 8004D578 03E00008 */  jr         $ra
/* 4E17C 8004D57C 27BD0048 */   addiu     $sp, $sp, 0x48
