	.set noat
	.set noreorder

glabel func_800F7994_CEE04
/* CEE04 800F7994 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CEE08 800F7998 AFBF0010 */  sw         $ra, 0x10($sp)
/* CEE0C 800F799C F7B40018 */  sdc1       $f20, 0x18($sp)
/* CEE10 800F79A0 4486A000 */  mtc1       $a2, $f20
/* CEE14 800F79A4 46006021 */  cvt.d.s    $f0, $f12
/* CEE18 800F79A8 3C018010 */  lui        $at, %hi(D_800FDA18)
/* CEE1C 800F79AC D422DA18 */  ldc1       $f2, %lo(D_800FDA18)($at)
/* CEE20 800F79B0 4620103E */  c.le.d     $f2, $f0
/* CEE24 800F79B4 00000000 */  nop
/* CEE28 800F79B8 00000000 */  nop
/* CEE2C 800F79BC 45020003 */  bc1fl      .L800F79CC
/* CEE30 800F79C0 460060A1 */   cvt.d.s   $f2, $f12
/* CEE34 800F79C4 0803DE7E */  j          .L800F79F8
/* CEE38 800F79C8 46220001 */   sub.d     $f0, $f0, $f2
.L800F79CC:
/* CEE3C 800F79CC 44800000 */  mtc1       $zero, $f0
/* CEE40 800F79D0 44800800 */  mtc1       $zero, $f1
/* CEE44 800F79D4 00000000 */  nop
/* CEE48 800F79D8 4620103C */  c.lt.d     $f2, $f0
/* CEE4C 800F79DC 00000000 */  nop
/* CEE50 800F79E0 00000000 */  nop
/* CEE54 800F79E4 45020006 */  bc1fl      .L800F7A00
/* CEE58 800F79E8 46007021 */   cvt.d.s   $f0, $f14
/* CEE5C 800F79EC 3C018010 */  lui        $at, %hi(D_800FDA20)
/* CEE60 800F79F0 D420DA20 */  ldc1       $f0, %lo(D_800FDA20)($at)
/* CEE64 800F79F4 46201000 */  add.d      $f0, $f2, $f0
.L800F79F8:
/* CEE68 800F79F8 46200320 */  cvt.s.d    $f12, $f0
/* CEE6C 800F79FC 46007021 */  cvt.d.s    $f0, $f14
.L800F7A00:
/* CEE70 800F7A00 3C018010 */  lui        $at, %hi(D_800FDA28)
/* CEE74 800F7A04 D422DA28 */  ldc1       $f2, %lo(D_800FDA28)($at)
/* CEE78 800F7A08 4620103E */  c.le.d     $f2, $f0
/* CEE7C 800F7A0C 00000000 */  nop
/* CEE80 800F7A10 00000000 */  nop
/* CEE84 800F7A14 45020003 */  bc1fl      .L800F7A24
/* CEE88 800F7A18 460070A1 */   cvt.d.s   $f2, $f14
/* CEE8C 800F7A1C 0803DE94 */  j          .L800F7A50
/* CEE90 800F7A20 46220001 */   sub.d     $f0, $f0, $f2
.L800F7A24:
/* CEE94 800F7A24 44800000 */  mtc1       $zero, $f0
/* CEE98 800F7A28 44800800 */  mtc1       $zero, $f1
/* CEE9C 800F7A2C 00000000 */  nop
/* CEEA0 800F7A30 4620103C */  c.lt.d     $f2, $f0
/* CEEA4 800F7A34 00000000 */  nop
/* CEEA8 800F7A38 00000000 */  nop
/* CEEAC 800F7A3C 45020006 */  bc1fl      .L800F7A58
/* CEEB0 800F7A40 460E6301 */   sub.s     $f12, $f12, $f14
/* CEEB4 800F7A44 3C018010 */  lui        $at, %hi(D_800FDA30)
/* CEEB8 800F7A48 D420DA30 */  ldc1       $f0, %lo(D_800FDA30)($at)
/* CEEBC 800F7A4C 46201000 */  add.d      $f0, $f2, $f0
.L800F7A50:
/* CEEC0 800F7A50 462003A0 */  cvt.s.d    $f14, $f0
/* CEEC4 800F7A54 460E6301 */  sub.s      $f12, $f12, $f14
.L800F7A58:
/* CEEC8 800F7A58 46006321 */  cvt.d.s    $f12, $f12
/* CEECC 800F7A5C 3C018010 */  lui        $at, %hi(D_800FDA38)
/* CEED0 800F7A60 D42EDA38 */  ldc1       $f14, %lo(D_800FDA38)($at)
/* CEED4 800F7A64 0C026D86 */  jal        func_8009B618
/* CEED8 800F7A68 462E6300 */   add.d     $f12, $f12, $f14
/* CEEDC 800F7A6C 46200120 */  cvt.s.d    $f4, $f0
/* CEEE0 800F7A70 460020A1 */  cvt.d.s    $f2, $f4
/* CEEE4 800F7A74 3C018010 */  lui        $at, %hi(D_800FDA40)
/* CEEE8 800F7A78 D420DA40 */  ldc1       $f0, %lo(D_800FDA40)($at)
/* CEEEC 800F7A7C 4620103C */  c.lt.d     $f2, $f0
/* CEEF0 800F7A80 00000000 */  nop
/* CEEF4 800F7A84 00000000 */  nop
/* CEEF8 800F7A88 45020008 */  bc1fl      .L800F7AAC
/* CEEFC 800F7A8C 46002021 */   cvt.d.s   $f0, $f4
/* CEF00 800F7A90 4614203E */  c.le.s     $f4, $f20
/* CEF04 800F7A94 00000000 */  nop
/* CEF08 800F7A98 00000000 */  nop
/* CEF0C 800F7A9C 45000013 */  bc1f       .L800F7AEC
/* CEF10 800F7AA0 4600A006 */   mov.s     $f0, $f20
/* CEF14 800F7AA4 0803DEBB */  j          .L800F7AEC
/* CEF18 800F7AA8 46002006 */   mov.s     $f0, $f4
.L800F7AAC:
/* CEF1C 800F7AAC 3C018010 */  lui        $at, %hi(D_800FDA48)
/* CEF20 800F7AB0 D422DA48 */  ldc1       $f2, %lo(D_800FDA48)($at)
/* CEF24 800F7AB4 46201081 */  sub.d      $f2, $f2, $f0
/* CEF28 800F7AB8 4600A021 */  cvt.d.s    $f0, $f20
/* CEF2C 800F7ABC 4620103E */  c.le.d     $f2, $f0
/* CEF30 800F7AC0 00000000 */  nop
/* CEF34 800F7AC4 00000000 */  nop
/* CEF38 800F7AC8 45030003 */  bc1tl      .L800F7AD8
/* CEF3C 800F7ACC 460020A1 */   cvt.d.s   $f2, $f4
/* CEF40 800F7AD0 0803DEBB */  j          .L800F7AEC
/* CEF44 800F7AD4 4600A007 */   neg.s     $f0, $f20
.L800F7AD8:
/* CEF48 800F7AD8 3C018010 */  lui        $at, %hi(D_800FDA50)
/* CEF4C 800F7ADC D420DA50 */  ldc1       $f0, %lo(D_800FDA50)($at)
/* CEF50 800F7AE0 46220001 */  sub.d      $f0, $f0, $f2
/* CEF54 800F7AE4 46200007 */  neg.d      $f0, $f0
/* CEF58 800F7AE8 46200020 */  cvt.s.d    $f0, $f0
.L800F7AEC:
/* CEF5C 800F7AEC 8FBF0010 */  lw         $ra, 0x10($sp)
/* CEF60 800F7AF0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* CEF64 800F7AF4 03E00008 */  jr         $ra
/* CEF68 800F7AF8 27BD0020 */   addiu     $sp, $sp, 0x20
