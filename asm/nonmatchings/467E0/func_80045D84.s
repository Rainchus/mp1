	.set noat
	.set noreorder

glabel func_80045D84
/* 46984 80045D84 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 46988 80045D88 AFBF002C */  sw         $ra, 0x2c($sp)
/* 4698C 80045D8C AFB40028 */  sw         $s4, 0x28($sp)
/* 46990 80045D90 AFB30024 */  sw         $s3, 0x24($sp)
/* 46994 80045D94 AFB20020 */  sw         $s2, 0x20($sp)
/* 46998 80045D98 AFB1001C */  sw         $s1, 0x1c($sp)
/* 4699C 80045D9C AFB00018 */  sw         $s0, 0x18($sp)
/* 469A0 80045DA0 0080A021 */  addu       $s4, $a0, $zero
/* 469A4 80045DA4 02808821 */  addu       $s1, $s4, $zero
/* 469A8 80045DA8 00A09021 */  addu       $s2, $a1, $zero
/* 469AC 80045DAC 00C09821 */  addu       $s3, $a2, $zero
/* 469B0 80045DB0 0C00EDDD */  jal        func_8003B774
/* 469B4 80045DB4 24040014 */   addiu     $a0, $zero, 0x14
/* 469B8 80045DB8 00408021 */  addu       $s0, $v0, $zero
/* 469BC 80045DBC 12000022 */  beqz       $s0, .L80045E48
/* 469C0 80045DC0 24040100 */   addiu     $a0, $zero, 0x100
/* 469C4 80045DC4 A2110000 */  sb         $s1, ($s0)
/* 469C8 80045DC8 A6120002 */  sh         $s2, 2($s0)
/* 469CC 80045DCC A2130001 */  sb         $s3, 1($s0)
/* 469D0 80045DD0 3C028004 */  lui        $v0, %hi(func_80045D1C)
/* 469D4 80045DD4 24425D1C */  addiu      $v0, $v0, %lo(func_80045D1C)
/* 469D8 80045DD8 AFA20010 */  sw         $v0, 0x10($sp)
/* 469DC 80045DDC 00002821 */  addu       $a1, $zero, $zero
/* 469E0 80045DE0 00003021 */  addu       $a2, $zero, $zero
/* 469E4 80045DE4 0C0174E1 */  jal        func_8005D384
/* 469E8 80045DE8 2407FFFF */   addiu     $a3, $zero, -1
/* 469EC 80045DEC AE020004 */  sw         $v0, 4($s0)
/* 469F0 80045DF0 AC500050 */  sw         $s0, 0x50($v0)
/* 469F4 80045DF4 8E040004 */  lw         $a0, 4($s0)
/* 469F8 80045DF8 0C01762E */  jal        func_8005D8B8
/* 469FC 80045DFC 24050080 */   addiu     $a1, $zero, 0x80
/* 46A00 80045E00 2402FFFF */  addiu      $v0, $zero, -1
/* 46A04 80045E04 A6020008 */  sh         $v0, 8($s0)
/* 46A08 80045E08 00141400 */  sll        $v0, $s4, 0x10
/* 46A0C 80045E0C 00021403 */  sra        $v0, $v0, 0x10
/* 46A10 80045E10 24030006 */  addiu      $v1, $zero, 6
/* 46A14 80045E14 5443000C */  bnel       $v0, $v1, .L80045E48
/* 46A18 80045E18 AE000010 */   sw        $zero, 0x10($s0)
/* 46A1C 80045E1C 0C00EDDD */  jal        func_8003B774
/* 46A20 80045E20 24040008 */   addiu     $a0, $zero, 8
/* 46A24 80045E24 AE020010 */  sw         $v0, 0x10($s0)
/* 46A28 80045E28 3C05800D */  lui        $a1, %hi(D_800CAF7C)
/* 46A2C 80045E2C 24A5AF7C */  addiu      $a1, $a1, %lo(D_800CAF7C)
/* 46A30 80045E30 3C06800F */  lui        $a2, %hi(D_800F3FF2)
/* 46A34 80045E34 84C63FF2 */  lh         $a2, %lo(D_800F3FF2)($a2)
/* 46A38 80045E38 0C023124 */  jal        func_8008C490
/* 46A3C 80045E3C 00402021 */   addu      $a0, $v0, $zero
/* 46A40 80045E40 08011793 */  j          .L80045E4C
/* 46A44 80045E44 02001021 */   addu      $v0, $s0, $zero
.L80045E48:
/* 46A48 80045E48 02001021 */  addu       $v0, $s0, $zero
.L80045E4C:
/* 46A4C 80045E4C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 46A50 80045E50 8FB40028 */  lw         $s4, 0x28($sp)
/* 46A54 80045E54 8FB30024 */  lw         $s3, 0x24($sp)
/* 46A58 80045E58 8FB20020 */  lw         $s2, 0x20($sp)
/* 46A5C 80045E5C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 46A60 80045E60 8FB00018 */  lw         $s0, 0x18($sp)
/* 46A64 80045E64 03E00008 */  jr         $ra
/* 46A68 80045E68 27BD0030 */   addiu     $sp, $sp, 0x30
