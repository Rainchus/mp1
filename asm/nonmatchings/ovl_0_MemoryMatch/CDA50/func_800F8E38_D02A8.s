	.set noat
	.set noreorder

glabel func_800F8E38_D02A8
/* D02A8 800F8E38 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D02AC 800F8E3C AFBF0018 */  sw         $ra, 0x18($sp)
/* D02B0 800F8E40 AFB10014 */  sw         $s1, 0x14($sp)
/* D02B4 800F8E44 AFB00010 */  sw         $s0, 0x10($sp)
/* D02B8 800F8E48 3C040012 */  lui        $a0, 0x12
/* D02BC 800F8E4C 0C03E37D */  jal        func_800F8DF4_D0264
/* D02C0 800F8E50 3484000F */   ori       $a0, $a0, 0xf
/* D02C4 800F8E54 3C108010 */  lui        $s0, %hi(D_800FDE30)
/* D02C8 800F8E58 2610DE30 */  addiu      $s0, $s0, %lo(D_800FDE30)
/* D02CC 800F8E5C A6020000 */  sh         $v0, ($s0)
/* D02D0 800F8E60 0C03E37D */  jal        func_800F8DF4_D0264
/* D02D4 800F8E64 24040075 */   addiu     $a0, $zero, 0x75
/* D02D8 800F8E68 A6020002 */  sh         $v0, 2($s0)
/* D02DC 800F8E6C 3C040012 */  lui        $a0, 0x12
/* D02E0 800F8E70 0C03E37D */  jal        func_800F8DF4_D0264
/* D02E4 800F8E74 34840013 */   ori       $a0, $a0, 0x13
/* D02E8 800F8E78 A6020004 */  sh         $v0, 4($s0)
/* D02EC 800F8E7C 3C040012 */  lui        $a0, 0x12
/* D02F0 800F8E80 0C03E37D */  jal        func_800F8DF4_D0264
/* D02F4 800F8E84 34840014 */   ori       $a0, $a0, 0x14
/* D02F8 800F8E88 A6020006 */  sh         $v0, 6($s0)
/* D02FC 800F8E8C 3C040012 */  lui        $a0, 0x12
/* D0300 800F8E90 0C03E37D */  jal        func_800F8DF4_D0264
/* D0304 800F8E94 34840015 */   ori       $a0, $a0, 0x15
/* D0308 800F8E98 A6020008 */  sh         $v0, 8($s0)
/* D030C 800F8E9C 3C040012 */  lui        $a0, 0x12
/* D0310 800F8EA0 0C03E37D */  jal        func_800F8DF4_D0264
/* D0314 800F8EA4 34840016 */   ori       $a0, $a0, 0x16
/* D0318 800F8EA8 A602000A */  sh         $v0, 0xa($s0)
/* D031C 800F8EAC 3C108010 */  lui        $s0, %hi(D_800FE318)
/* D0320 800F8EB0 2610E318 */  addiu      $s0, $s0, %lo(D_800FE318)
/* D0324 800F8EB4 00008821 */  addu       $s1, $zero, $zero
.L800F8EB8:
/* D0328 800F8EB8 24040001 */  addiu      $a0, $zero, 1
/* D032C 800F8EBC 0C0193BD */  jal        func_80064EF4
/* D0330 800F8EC0 00002821 */   addu      $a1, $zero, $zero
/* D0334 800F8EC4 A6020004 */  sh         $v0, 4($s0)
/* D0338 800F8EC8 00021400 */  sll        $v0, $v0, 0x10
/* D033C 800F8ECC 00022403 */  sra        $a0, $v0, 0x10
/* D0340 800F8ED0 00002821 */  addu       $a1, $zero, $zero
/* D0344 800F8ED4 0C019D20 */  jal        func_80067480
/* D0348 800F8ED8 2406FFFF */   addiu     $a2, $zero, -1
/* D034C 800F8EDC 86040004 */  lh         $a0, 4($s0)
/* D0350 800F8EE0 00002821 */  addu       $a1, $zero, $zero
/* D0354 800F8EE4 0C019D2F */  jal        func_800674BC
/* D0358 800F8EE8 34068000 */   ori       $a2, $zero, 0x8000
/* D035C 800F8EEC 86040004 */  lh         $a0, 4($s0)
/* D0360 800F8EF0 00002821 */  addu       $a1, $zero, $zero
/* D0364 800F8EF4 0C019CAC */  jal        func_800672B0
/* D0368 800F8EF8 00003021 */   addu      $a2, $zero, $zero
/* D036C 800F8EFC A6000000 */  sh         $zero, ($s0)
/* D0370 800F8F00 A6000002 */  sh         $zero, 2($s0)
/* D0374 800F8F04 A6000006 */  sh         $zero, 6($s0)
/* D0378 800F8F08 AE000008 */  sw         $zero, 8($s0)
/* D037C 800F8F0C AE00000C */  sw         $zero, 0xc($s0)
/* D0380 800F8F10 A6000016 */  sh         $zero, 0x16($s0)
/* D0384 800F8F14 A6000014 */  sh         $zero, 0x14($s0)
/* D0388 800F8F18 A6000012 */  sh         $zero, 0x12($s0)
/* D038C 800F8F1C A6000010 */  sh         $zero, 0x10($s0)
/* D0390 800F8F20 A600001E */  sh         $zero, 0x1e($s0)
/* D0394 800F8F24 A600001C */  sh         $zero, 0x1c($s0)
/* D0398 800F8F28 A600001A */  sh         $zero, 0x1a($s0)
/* D039C 800F8F2C A6000018 */  sh         $zero, 0x18($s0)
/* D03A0 800F8F30 26310001 */  addiu      $s1, $s1, 1
/* D03A4 800F8F34 3222FFFF */  andi       $v0, $s1, 0xffff
/* D03A8 800F8F38 2C420010 */  sltiu      $v0, $v0, 0x10
/* D03AC 800F8F3C 1440FFDE */  bnez       $v0, .L800F8EB8
/* D03B0 800F8F40 26100020 */   addiu     $s0, $s0, 0x20
/* D03B4 800F8F44 8FBF0018 */  lw         $ra, 0x18($sp)
/* D03B8 800F8F48 8FB10014 */  lw         $s1, 0x14($sp)
/* D03BC 800F8F4C 8FB00010 */  lw         $s0, 0x10($sp)
/* D03C0 800F8F50 03E00008 */  jr         $ra
/* D03C4 800F8F54 27BD0020 */   addiu     $sp, $sp, 0x20
