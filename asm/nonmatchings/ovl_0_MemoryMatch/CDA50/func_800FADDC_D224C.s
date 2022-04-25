	.set noat
	.set noreorder

glabel func_800FADDC_D224C
/* D224C 800FADDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D2250 800FADE0 AFBF0018 */  sw         $ra, 0x18($sp)
/* D2254 800FADE4 AFB10014 */  sw         $s1, 0x14($sp)
/* D2258 800FADE8 AFB00010 */  sw         $s0, 0x10($sp)
/* D225C 800FADEC 00808821 */  addu       $s1, $a0, $zero
/* D2260 800FADF0 8E300050 */  lw         $s0, 0x50($s1)
/* D2264 800FADF4 44806000 */  mtc1       $zero, $f12
/* D2268 800FADF8 C60E003C */  lwc1       $f14, 0x3c($s0)
/* D226C 800FADFC 0C03DE65 */  jal        func_800F7994_CEE04
/* D2270 800FAE00 3C0641C8 */   lui       $a2, 0x41c8
/* D2274 800FAE04 C602003C */  lwc1       $f2, 0x3c($s0)
/* D2278 800FAE08 46020000 */  add.s      $f0, $f0, $f2
/* D227C 800FAE0C E600003C */  swc1       $f0, 0x3c($s0)
/* D2280 800FAE10 46000021 */  cvt.d.s    $f0, $f0
/* D2284 800FAE14 3C018010 */  lui        $at, %hi(D_800FDBD8)
/* D2288 800FAE18 D422DBD8 */  ldc1       $f2, %lo(D_800FDBD8)($at)
/* D228C 800FAE1C 4620103C */  c.lt.d     $f2, $f0
/* D2290 800FAE20 00000000 */  nop
/* D2294 800FAE24 45000003 */  bc1f       .L800FAE34
/* D2298 800FAE28 00000000 */   nop
/* D229C 800FAE2C 0803EB99 */  j          .L800FAE64
/* D22A0 800FAE30 46220001 */   sub.d     $f0, $f0, $f2
.L800FAE34:
/* D22A4 800FAE34 C600003C */  lwc1       $f0, 0x3c($s0)
/* D22A8 800FAE38 460000A1 */  cvt.d.s    $f2, $f0
/* D22AC 800FAE3C 44800000 */  mtc1       $zero, $f0
/* D22B0 800FAE40 44800800 */  mtc1       $zero, $f1
/* D22B4 800FAE44 00000000 */  nop
/* D22B8 800FAE48 4620103C */  c.lt.d     $f2, $f0
/* D22BC 800FAE4C 00000000 */  nop
/* D22C0 800FAE50 45000006 */  bc1f       .L800FAE6C
/* D22C4 800FAE54 00000000 */   nop
/* D22C8 800FAE58 3C018010 */  lui        $at, %hi(D_800FDBE0)
/* D22CC 800FAE5C D420DBE0 */  ldc1       $f0, %lo(D_800FDBE0)($at)
/* D22D0 800FAE60 46201000 */  add.d      $f0, $f2, $f0
.L800FAE64:
/* D22D4 800FAE64 46200020 */  cvt.s.d    $f0, $f0
/* D22D8 800FAE68 E600003C */  swc1       $f0, 0x3c($s0)
.L800FAE6C:
/* D22DC 800FAE6C 8E220040 */  lw         $v0, 0x40($s1)
/* D22E0 800FAE70 84420000 */  lh         $v0, ($v0)
/* D22E4 800FAE74 00022040 */  sll        $a0, $v0, 1
/* D22E8 800FAE78 00822021 */  addu       $a0, $a0, $v0
/* D22EC 800FAE7C 00042180 */  sll        $a0, $a0, 6
/* D22F0 800FAE80 3C02800F */  lui        $v0, %hi(D_800F2B7C)
/* D22F4 800FAE84 8C422B7C */  lw         $v0, %lo(D_800F2B7C)($v0)
/* D22F8 800FAE88 00822021 */  addu       $a0, $a0, $v0
/* D22FC 800FAE8C 2484007C */  addiu      $a0, $a0, 0x7c
/* D2300 800FAE90 00002821 */  addu       $a1, $zero, $zero
/* D2304 800FAE94 8E06003C */  lw         $a2, 0x3c($s0)
/* D2308 800FAE98 0C027B2C */  jal        func_8009ECB0
/* D230C 800FAE9C 00A03821 */   addu      $a3, $a1, $zero
/* D2310 800FAEA0 8FBF0018 */  lw         $ra, 0x18($sp)
/* D2314 800FAEA4 8FB10014 */  lw         $s1, 0x14($sp)
/* D2318 800FAEA8 8FB00010 */  lw         $s0, 0x10($sp)
/* D231C 800FAEAC 03E00008 */  jr         $ra
/* D2320 800FAEB0 27BD0020 */   addiu     $sp, $sp, 0x20
