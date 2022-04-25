	.set noat
	.set noreorder

glabel func_8002B074
/* 2BC74 8002B074 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2BC78 8002B078 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2BC7C 8002B07C AFB20028 */  sw         $s2, 0x28($sp)
/* 2BC80 8002B080 AFB10024 */  sw         $s1, 0x24($sp)
/* 2BC84 8002B084 AFB00020 */  sw         $s0, 0x20($sp)
/* 2BC88 8002B088 00A08021 */  addu       $s0, $a1, $zero
/* 2BC8C 8002B08C 00C09021 */  addu       $s2, $a2, $zero
/* 2BC90 8002B090 3084FFFF */  andi       $a0, $a0, 0xffff
/* 2BC94 8002B094 24020004 */  addiu      $v0, $zero, 4
/* 2BC98 8002B098 1482001F */  bne        $a0, $v0, .L8002B118
/* 2BC9C 8002B09C 00E08821 */   addu      $s1, $a3, $zero
/* 2BCA0 8002B0A0 86050000 */  lh         $a1, ($s0)
/* 2BCA4 8002B0A4 86060004 */  lh         $a2, 4($s0)
/* 2BCA8 8002B0A8 86070006 */  lh         $a3, 6($s0)
/* 2BCAC 8002B0AC 27A20018 */  addiu      $v0, $sp, 0x18
/* 2BCB0 8002B0B0 AFA20010 */  sw         $v0, 0x10($sp)
/* 2BCB4 8002B0B4 27A2001C */  addiu      $v0, $sp, 0x1c
/* 2BCB8 8002B0B8 AFA20014 */  sw         $v0, 0x14($sp)
/* 2BCBC 8002B0BC 0C00AC6A */  jal        func_8002B1A8
/* 2BCC0 8002B0C0 02402021 */   addu      $a0, $s2, $zero
/* 2BCC4 8002B0C4 C622000C */  lwc1       $f2, 0xc($s1)
/* 2BCC8 8002B0C8 46020180 */  add.s      $f6, $f0, $f2
/* 2BCCC 8002B0CC C7A20018 */  lwc1       $f2, 0x18($sp)
/* 2BCD0 8002B0D0 C6200000 */  lwc1       $f0, ($s1)
/* 2BCD4 8002B0D4 46001081 */  sub.s      $f2, $f2, $f0
/* 2BCD8 8002B0D8 E7A20018 */  swc1       $f2, 0x18($sp)
/* 2BCDC 8002B0DC C7A0001C */  lwc1       $f0, 0x1c($sp)
/* 2BCE0 8002B0E0 C6240008 */  lwc1       $f4, 8($s1)
/* 2BCE4 8002B0E4 46040001 */  sub.s      $f0, $f0, $f4
/* 2BCE8 8002B0E8 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 2BCEC 8002B0EC 46021082 */  mul.s      $f2, $f2, $f2
/* 2BCF0 8002B0F0 00000000 */  nop
/* 2BCF4 8002B0F4 46000002 */  mul.s      $f0, $f0, $f0
/* 2BCF8 8002B0F8 46001080 */  add.s      $f2, $f2, $f0
/* 2BCFC 8002B0FC 46063002 */  mul.s      $f0, $f6, $f6
/* 2BD00 8002B100 4600103C */  c.lt.s     $f2, $f0
/* 2BD04 8002B104 00000000 */  nop
/* 2BD08 8002B108 45000003 */  bc1f       .L8002B118
/* 2BD0C 8002B10C 00000000 */   nop
/* 2BD10 8002B110 0800AC64 */  j          .L8002B190
/* 2BD14 8002B114 24020001 */   addiu     $v0, $zero, 1
.L8002B118:
/* 2BD18 8002B118 86050000 */  lh         $a1, ($s0)
/* 2BD1C 8002B11C 86060002 */  lh         $a2, 2($s0)
/* 2BD20 8002B120 86070004 */  lh         $a3, 4($s0)
/* 2BD24 8002B124 27A20018 */  addiu      $v0, $sp, 0x18
/* 2BD28 8002B128 AFA20010 */  sw         $v0, 0x10($sp)
/* 2BD2C 8002B12C 27A2001C */  addiu      $v0, $sp, 0x1c
/* 2BD30 8002B130 AFA20014 */  sw         $v0, 0x14($sp)
/* 2BD34 8002B134 0C00AC6A */  jal        func_8002B1A8
/* 2BD38 8002B138 02402021 */   addu      $a0, $s2, $zero
/* 2BD3C 8002B13C C622000C */  lwc1       $f2, 0xc($s1)
/* 2BD40 8002B140 46020180 */  add.s      $f6, $f0, $f2
/* 2BD44 8002B144 C7A20018 */  lwc1       $f2, 0x18($sp)
/* 2BD48 8002B148 C6200000 */  lwc1       $f0, ($s1)
/* 2BD4C 8002B14C 46001081 */  sub.s      $f2, $f2, $f0
/* 2BD50 8002B150 E7A20018 */  swc1       $f2, 0x18($sp)
/* 2BD54 8002B154 C7A0001C */  lwc1       $f0, 0x1c($sp)
/* 2BD58 8002B158 C6240008 */  lwc1       $f4, 8($s1)
/* 2BD5C 8002B15C 46040001 */  sub.s      $f0, $f0, $f4
/* 2BD60 8002B160 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 2BD64 8002B164 46021082 */  mul.s      $f2, $f2, $f2
/* 2BD68 8002B168 00000000 */  nop
/* 2BD6C 8002B16C 46000002 */  mul.s      $f0, $f0, $f0
/* 2BD70 8002B170 46001080 */  add.s      $f2, $f2, $f0
/* 2BD74 8002B174 46063002 */  mul.s      $f0, $f6, $f6
/* 2BD78 8002B178 4600103C */  c.lt.s     $f2, $f0
/* 2BD7C 8002B17C 00000000 */  nop
/* 2BD80 8002B180 00000000 */  nop
/* 2BD84 8002B184 45010002 */  bc1t       .L8002B190
/* 2BD88 8002B188 24020001 */   addiu     $v0, $zero, 1
/* 2BD8C 8002B18C 00001021 */  addu       $v0, $zero, $zero
.L8002B190:
/* 2BD90 8002B190 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2BD94 8002B194 8FB20028 */  lw         $s2, 0x28($sp)
/* 2BD98 8002B198 8FB10024 */  lw         $s1, 0x24($sp)
/* 2BD9C 8002B19C 8FB00020 */  lw         $s0, 0x20($sp)
/* 2BDA0 8002B1A0 03E00008 */  jr         $ra
/* 2BDA4 8002B1A4 27BD0030 */   addiu     $sp, $sp, 0x30
