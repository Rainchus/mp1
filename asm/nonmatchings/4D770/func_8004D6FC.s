	.set noat
	.set noreorder

glabel func_8004D6FC
/* 4E2FC 8004D6FC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 4E300 8004D700 AFBF003C */  sw         $ra, 0x3c($sp)
/* 4E304 8004D704 AFB20038 */  sw         $s2, 0x38($sp)
/* 4E308 8004D708 AFB10034 */  sw         $s1, 0x34($sp)
/* 4E30C 8004D70C AFB00030 */  sw         $s0, 0x30($sp)
/* 4E310 8004D710 F7B40040 */  sdc1       $f20, 0x40($sp)
/* 4E314 8004D714 4485A000 */  mtc1       $a1, $f20
/* 4E318 8004D718 00048400 */  sll        $s0, $a0, 0x10
/* 4E31C 8004D71C 00108403 */  sra        $s0, $s0, 0x10
/* 4E320 8004D720 0C014AA3 */  jal        func_80052A8C
/* 4E324 8004D724 02002021 */   addu      $a0, $s0, $zero
/* 4E328 8004D728 00409021 */  addu       $s2, $v0, $zero
/* 4E32C 8004D72C 9644000E */  lhu        $a0, 0xe($s2)
/* 4E330 8004D730 0C013081 */  jal        func_8004C204
/* 4E334 8004D734 96450010 */   lhu       $a1, 0x10($s2)
/* 4E338 8004D738 00021400 */  sll        $v0, $v0, 0x10
/* 4E33C 8004D73C 02002021 */  addu       $a0, $s0, $zero
/* 4E340 8004D740 00022C03 */  sra        $a1, $v0, 0x10
/* 4E344 8004D744 0C0132DC */  jal        func_8004CB70
/* 4E348 8004D748 27A60010 */   addiu     $a2, $sp, 0x10
/* 4E34C 8004D74C 96440012 */  lhu        $a0, 0x12($s2)
/* 4E350 8004D750 0C013081 */  jal        func_8004C204
/* 4E354 8004D754 96450014 */   lhu       $a1, 0x14($s2)
/* 4E358 8004D758 00021400 */  sll        $v0, $v0, 0x10
/* 4E35C 8004D75C 27B10020 */  addiu      $s1, $sp, 0x20
/* 4E360 8004D760 02002021 */  addu       $a0, $s0, $zero
/* 4E364 8004D764 00022C03 */  sra        $a1, $v0, 0x10
/* 4E368 8004D768 0C0132DC */  jal        func_8004CB70
/* 4E36C 8004D76C 02203021 */   addu      $a2, $s1, $zero
/* 4E370 8004D770 8E460020 */  lw         $a2, 0x20($s2)
/* 4E374 8004D774 27A40010 */  addiu      $a0, $sp, 0x10
/* 4E378 8004D778 02202821 */  addu       $a1, $s1, $zero
/* 4E37C 8004D77C 0C013334 */  jal        func_8004CCD0
/* 4E380 8004D780 24C60018 */   addiu     $a2, $a2, 0x18
/* 4E384 8004D784 8E460020 */  lw         $a2, 0x20($s2)
/* 4E388 8004D788 27A40010 */  addiu      $a0, $sp, 0x10
/* 4E38C 8004D78C 02202821 */  addu       $a1, $s1, $zero
/* 4E390 8004D790 4407A000 */  mfc1       $a3, $f20
/* 4E394 8004D794 00000000 */  nop
/* 4E398 8004D798 0C013592 */  jal        func_8004D648
/* 4E39C 8004D79C 24C6000C */   addiu     $a2, $a2, 0xc
/* 4E3A0 8004D7A0 0C018CEA */  jal        func_800633A8
/* 4E3A4 8004D7A4 00408021 */   addu      $s0, $v0, $zero
/* 4E3A8 8004D7A8 00402021 */  addu       $a0, $v0, $zero
/* 4E3AC 8004D7AC 0C018C9C */  jal        func_80063270
/* 4E3B0 8004D7B0 02002821 */   addu      $a1, $s0, $zero
/* 4E3B4 8004D7B4 0C018CD6 */  jal        func_80063358
/* 4E3B8 8004D7B8 00000000 */   nop
/* 4E3BC 8004D7BC 8FBF003C */  lw         $ra, 0x3c($sp)
/* 4E3C0 8004D7C0 8FB20038 */  lw         $s2, 0x38($sp)
/* 4E3C4 8004D7C4 8FB10034 */  lw         $s1, 0x34($sp)
/* 4E3C8 8004D7C8 8FB00030 */  lw         $s0, 0x30($sp)
/* 4E3CC 8004D7CC D7B40040 */  ldc1       $f20, 0x40($sp)
/* 4E3D0 8004D7D0 03E00008 */  jr         $ra
/* 4E3D4 8004D7D4 27BD0048 */   addiu     $sp, $sp, 0x48
