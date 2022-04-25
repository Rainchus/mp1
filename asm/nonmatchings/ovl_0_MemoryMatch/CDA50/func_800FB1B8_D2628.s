	.set noat
	.set noreorder

glabel func_800FB1B8_D2628
/* D2628 800FB1B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D262C 800FB1BC AFBF001C */  sw         $ra, 0x1c($sp)
/* D2630 800FB1C0 AFB00018 */  sw         $s0, 0x18($sp)
/* D2634 800FB1C4 0C03E5F4 */  jal        func_800F97D0_D0C40
/* D2638 800FB1C8 00808021 */   addu      $s0, $a0, $zero
/* D263C 800FB1CC 9203004C */  lbu        $v1, 0x4c($s0)
/* D2640 800FB1D0 000310C0 */  sll        $v0, $v1, 3
/* D2644 800FB1D4 00431023 */  subu       $v0, $v0, $v1
/* D2648 800FB1D8 00021080 */  sll        $v0, $v0, 2
/* D264C 800FB1DC 3C038010 */  lui        $v1, %hi(D_800FE2C8)
/* D2650 800FB1E0 2463E2C8 */  addiu      $v1, $v1, %lo(D_800FE2C8)
/* D2654 800FB1E4 00431021 */  addu       $v0, $v0, $v1
/* D2658 800FB1E8 C4400008 */  lwc1       $f0, 8($v0)
/* D265C 800FB1EC 46000021 */  cvt.d.s    $f0, $f0
/* D2660 800FB1F0 3C018010 */  lui        $at, %hi(D_800FDBF8)
/* D2664 800FB1F4 D422DBF8 */  ldc1       $f2, %lo(D_800FDBF8)($at)
/* D2668 800FB1F8 4620103C */  c.lt.d     $f2, $f0
/* D266C 800FB1FC 00000000 */  nop
/* D2670 800FB200 45000006 */  bc1f       .L800FB21C
/* D2674 800FB204 00000000 */   nop
/* D2678 800FB208 3C0142C8 */  lui        $at, 0x42c8
/* D267C 800FB20C 44810000 */  mtc1       $at, $f0
/* D2680 800FB210 00000000 */  nop
/* D2684 800FB214 0803EC91 */  j          .L800FB244
/* D2688 800FB218 E4400008 */   swc1      $f0, 8($v0)
.L800FB21C:
/* D268C 800FB21C C4400008 */  lwc1       $f0, 8($v0)
/* D2690 800FB220 46000021 */  cvt.d.s    $f0, $f0
/* D2694 800FB224 44801000 */  mtc1       $zero, $f2
/* D2698 800FB228 44801800 */  mtc1       $zero, $f3
/* D269C 800FB22C 00000000 */  nop
/* D26A0 800FB230 4622003C */  c.lt.d     $f0, $f2
/* D26A4 800FB234 00000000 */  nop
/* D26A8 800FB238 00000000 */  nop
/* D26AC 800FB23C 45030001 */  bc1tl      .L800FB244
/* D26B0 800FB240 AC400008 */   sw        $zero, 8($v0)
.L800FB244:
/* D26B4 800FB244 C440000C */  lwc1       $f0, 0xc($v0)
/* D26B8 800FB248 46000021 */  cvt.d.s    $f0, $f0
/* D26BC 800FB24C 3C018010 */  lui        $at, %hi(D_800FDC00)
/* D26C0 800FB250 D422DC00 */  ldc1       $f2, %lo(D_800FDC00)($at)
/* D26C4 800FB254 4622003C */  c.lt.d     $f0, $f2
/* D26C8 800FB258 00000000 */  nop
/* D26CC 800FB25C 45000006 */  bc1f       .L800FB278
/* D26D0 800FB260 00000000 */   nop
/* D26D4 800FB264 3C01C270 */  lui        $at, 0xc270
/* D26D8 800FB268 44810000 */  mtc1       $at, $f0
/* D26DC 800FB26C 00000000 */  nop
/* D26E0 800FB270 0803ECAA */  j          .L800FB2A8
/* D26E4 800FB274 E440000C */   swc1      $f0, 0xc($v0)
.L800FB278:
/* D26E8 800FB278 C440000C */  lwc1       $f0, 0xc($v0)
/* D26EC 800FB27C 46000021 */  cvt.d.s    $f0, $f0
/* D26F0 800FB280 3C018010 */  lui        $at, %hi(D_800FDC08)
/* D26F4 800FB284 D422DC08 */  ldc1       $f2, %lo(D_800FDC08)($at)
/* D26F8 800FB288 4620103C */  c.lt.d     $f2, $f0
/* D26FC 800FB28C 00000000 */  nop
/* D2700 800FB290 45000005 */  bc1f       .L800FB2A8
/* D2704 800FB294 00000000 */   nop
/* D2708 800FB298 3C014270 */  lui        $at, 0x4270
/* D270C 800FB29C 44810000 */  mtc1       $at, $f0
/* D2710 800FB2A0 00000000 */  nop
/* D2714 800FB2A4 E440000C */  swc1       $f0, 0xc($v0)
.L800FB2A8:
/* D2718 800FB2A8 C4400010 */  lwc1       $f0, 0x10($v0)
/* D271C 800FB2AC 46000021 */  cvt.d.s    $f0, $f0
/* D2720 800FB2B0 3C018010 */  lui        $at, %hi(D_800FDC10)
/* D2724 800FB2B4 D422DC10 */  ldc1       $f2, %lo(D_800FDC10)($at)
/* D2728 800FB2B8 4622003C */  c.lt.d     $f0, $f2
/* D272C 800FB2BC 00000000 */  nop
/* D2730 800FB2C0 45000006 */  bc1f       .L800FB2DC
/* D2734 800FB2C4 00000000 */   nop
/* D2738 800FB2C8 3C01C270 */  lui        $at, 0xc270
/* D273C 800FB2CC 44810000 */  mtc1       $at, $f0
/* D2740 800FB2D0 00000000 */  nop
/* D2744 800FB2D4 0803ECC3 */  j          .L800FB30C
/* D2748 800FB2D8 E4400010 */   swc1      $f0, 0x10($v0)
.L800FB2DC:
/* D274C 800FB2DC C4400010 */  lwc1       $f0, 0x10($v0)
/* D2750 800FB2E0 46000021 */  cvt.d.s    $f0, $f0
/* D2754 800FB2E4 3C018010 */  lui        $at, %hi(D_800FDC18)
/* D2758 800FB2E8 D422DC18 */  ldc1       $f2, %lo(D_800FDC18)($at)
/* D275C 800FB2EC 4620103C */  c.lt.d     $f2, $f0
/* D2760 800FB2F0 00000000 */  nop
/* D2764 800FB2F4 45000005 */  bc1f       .L800FB30C
/* D2768 800FB2F8 00000000 */   nop
/* D276C 800FB2FC 3C014270 */  lui        $at, 0x4270
/* D2770 800FB300 44810000 */  mtc1       $at, $f0
/* D2774 800FB304 00000000 */  nop
/* D2778 800FB308 E4400010 */  swc1       $f0, 0x10($v0)
.L800FB30C:
/* D277C 800FB30C 3C014409 */  lui        $at, 0x4409
/* D2780 800FB310 34218000 */  ori        $at, $at, 0x8000
/* D2784 800FB314 44810000 */  mtc1       $at, $f0
/* D2788 800FB318 00000000 */  nop
/* D278C 800FB31C E7A00010 */  swc1       $f0, 0x10($sp)
/* D2790 800FB320 3C0143FA */  lui        $at, 0x43fa
/* D2794 800FB324 44810000 */  mtc1       $at, $f0
/* D2798 800FB328 00000000 */  nop
/* D279C 800FB32C E7A00014 */  swc1       $f0, 0x14($sp)
/* D27A0 800FB330 3C04800F */  lui        $a0, %hi(D_800F2AF8)
/* D27A4 800FB334 8C842AF8 */  lw         $a0, %lo(D_800F2AF8)($a0)
/* D27A8 800FB338 8C450008 */  lw         $a1, 8($v0)
/* D27AC 800FB33C 3C06C409 */  lui        $a2, 0xc409
/* D27B0 800FB340 34C68000 */  ori        $a2, $a2, 0x8000
/* D27B4 800FB344 0C00240A */  jal        func_80009028
/* D27B8 800FB348 3C07C3FA */   lui       $a3, 0xc3fa
/* D27BC 800FB34C 8FBF001C */  lw         $ra, 0x1c($sp)
/* D27C0 800FB350 8FB00018 */  lw         $s0, 0x18($sp)
/* D27C4 800FB354 03E00008 */  jr         $ra
/* D27C8 800FB358 27BD0020 */   addiu     $sp, $sp, 0x20
/* D27CC 800FB35C 00000000 */  nop
