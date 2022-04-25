	.set noat
	.set noreorder

glabel func_800FAEB4_D2324
/* D2324 800FAEB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D2328 800FAEB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D232C 800FAEBC AFB00010 */  sw         $s0, 0x10($sp)
/* D2330 800FAEC0 00808021 */  addu       $s0, $a0, $zero
/* D2334 800FAEC4 8E020050 */  lw         $v0, 0x50($s0)
/* D2338 800FAEC8 C44C003C */  lwc1       $f12, 0x3c($v0)
/* D233C 800FAECC 3C018010 */  lui        $at, %hi(D_800FD8A8)
/* D2340 800FAED0 C42ED8A8 */  lwc1       $f14, %lo(D_800FD8A8)($at)
/* D2344 800FAED4 0C03DE65 */  jal        func_800F7994_CEE04
/* D2348 800FAED8 3C0641C8 */   lui       $a2, 0x41c8
/* D234C 800FAEDC 3C018010 */  lui        $at, %hi(D_800FD8A8)
/* D2350 800FAEE0 C422D8A8 */  lwc1       $f2, %lo(D_800FD8A8)($at)
/* D2354 800FAEE4 46020000 */  add.s      $f0, $f0, $f2
/* D2358 800FAEE8 3C018010 */  lui        $at, %hi(D_800FD8A8)
/* D235C 800FAEEC E420D8A8 */  swc1       $f0, %lo(D_800FD8A8)($at)
/* D2360 800FAEF0 46000021 */  cvt.d.s    $f0, $f0
/* D2364 800FAEF4 3C018010 */  lui        $at, %hi(D_800FDBE8)
/* D2368 800FAEF8 D422DBE8 */  ldc1       $f2, %lo(D_800FDBE8)($at)
/* D236C 800FAEFC 4620103C */  c.lt.d     $f2, $f0
/* D2370 800FAF00 00000000 */  nop
/* D2374 800FAF04 45000003 */  bc1f       .L800FAF14
/* D2378 800FAF08 00000000 */   nop
/* D237C 800FAF0C 0803EBD2 */  j          .L800FAF48
/* D2380 800FAF10 46220001 */   sub.d     $f0, $f0, $f2
.L800FAF14:
/* D2384 800FAF14 3C018010 */  lui        $at, %hi(D_800FD8A8)
/* D2388 800FAF18 C420D8A8 */  lwc1       $f0, %lo(D_800FD8A8)($at)
/* D238C 800FAF1C 460000A1 */  cvt.d.s    $f2, $f0
/* D2390 800FAF20 44800000 */  mtc1       $zero, $f0
/* D2394 800FAF24 44800800 */  mtc1       $zero, $f1
/* D2398 800FAF28 00000000 */  nop
/* D239C 800FAF2C 4620103C */  c.lt.d     $f2, $f0
/* D23A0 800FAF30 00000000 */  nop
/* D23A4 800FAF34 45000007 */  bc1f       .L800FAF54
/* D23A8 800FAF38 00000000 */   nop
/* D23AC 800FAF3C 3C018010 */  lui        $at, %hi(D_800FDBF0)
/* D23B0 800FAF40 D420DBF0 */  ldc1       $f0, %lo(D_800FDBF0)($at)
/* D23B4 800FAF44 46201000 */  add.d      $f0, $f2, $f0
.L800FAF48:
/* D23B8 800FAF48 46200020 */  cvt.s.d    $f0, $f0
/* D23BC 800FAF4C 3C018010 */  lui        $at, %hi(D_800FD8A8)
/* D23C0 800FAF50 E420D8A8 */  swc1       $f0, %lo(D_800FD8A8)($at)
.L800FAF54:
/* D23C4 800FAF54 8E020040 */  lw         $v0, 0x40($s0)
/* D23C8 800FAF58 84420000 */  lh         $v0, ($v0)
/* D23CC 800FAF5C 00022040 */  sll        $a0, $v0, 1
/* D23D0 800FAF60 00822021 */  addu       $a0, $a0, $v0
/* D23D4 800FAF64 00042180 */  sll        $a0, $a0, 6
/* D23D8 800FAF68 3C02800F */  lui        $v0, %hi(D_800F2B7C)
/* D23DC 800FAF6C 8C422B7C */  lw         $v0, %lo(D_800F2B7C)($v0)
/* D23E0 800FAF70 00822021 */  addu       $a0, $a0, $v0
/* D23E4 800FAF74 2484007C */  addiu      $a0, $a0, 0x7c
/* D23E8 800FAF78 00002821 */  addu       $a1, $zero, $zero
/* D23EC 800FAF7C 3C068010 */  lui        $a2, %hi(D_800FD8A8)
/* D23F0 800FAF80 8CC6D8A8 */  lw         $a2, %lo(D_800FD8A8)($a2)
/* D23F4 800FAF84 0C027B2C */  jal        func_8009ECB0
/* D23F8 800FAF88 00A03821 */   addu      $a3, $a1, $zero
/* D23FC 800FAF8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* D2400 800FAF90 8FB00010 */  lw         $s0, 0x10($sp)
/* D2404 800FAF94 03E00008 */  jr         $ra
/* D2408 800FAF98 27BD0018 */   addiu     $sp, $sp, 0x18
