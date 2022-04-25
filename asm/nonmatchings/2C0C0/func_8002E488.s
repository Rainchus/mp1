	.set noat
	.set noreorder

glabel func_8002E488
/* 2F088 8002E488 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2F08C 8002E48C AFBF0028 */  sw         $ra, 0x28($sp)
/* 2F090 8002E490 AFB50024 */  sw         $s5, 0x24($sp)
/* 2F094 8002E494 AFB40020 */  sw         $s4, 0x20($sp)
/* 2F098 8002E498 AFB3001C */  sw         $s3, 0x1c($sp)
/* 2F09C 8002E49C AFB20018 */  sw         $s2, 0x18($sp)
/* 2F0A0 8002E4A0 AFB10014 */  sw         $s1, 0x14($sp)
/* 2F0A4 8002E4A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 2F0A8 8002E4A8 3C02800F */  lui        $v0, %hi(D_800F3292)
/* 2F0AC 8002E4AC 84423292 */  lh         $v0, %lo(D_800F3292)($v0)
/* 2F0B0 8002E4B0 10400A1E */  beqz       $v0, .L80030D2C
/* 2F0B4 8002E4B4 00A0A821 */   addu      $s5, $a1, $zero
/* 2F0B8 8002E4B8 3C02800F */  lui        $v0, %hi(D_800EDA94)
/* 2F0BC 8002E4BC 2442DA94 */  addiu      $v0, $v0, %lo(D_800EDA94)
/* 2F0C0 8002E4C0 8C530000 */  lw         $s3, ($v0)
/* 2F0C4 8002E4C4 8C540004 */  lw         $s4, 4($v0)
/* 2F0C8 8002E4C8 02602021 */  addu       $a0, $s3, $zero
/* 2F0CC 8002E4CC 8EA60000 */  lw         $a2, ($s5)
/* 2F0D0 8002E4D0 0C00C415 */  jal        func_80031054
/* 2F0D4 8002E4D4 02802821 */   addu      $a1, $s4, $zero
/* 2F0D8 8002E4D8 2402FFFF */  addiu      $v0, $zero, -1
/* 2F0DC 8002E4DC 16820104 */  bne        $s4, $v0, .L8002E8F0
/* 2F0E0 8002E4E0 24020029 */   addiu     $v0, $zero, 0x29
/* 2F0E4 8002E4E4 3C02800F */  lui        $v0, %hi(D_800ECB14)
/* 2F0E8 8002E4E8 8C42CB14 */  lw         $v0, %lo(D_800ECB14)($v0)
/* 2F0EC 8002E4EC 30420200 */  andi       $v0, $v0, 0x200
/* 2F0F0 8002E4F0 10400081 */  beqz       $v0, .L8002E6F8
/* 2F0F4 8002E4F4 00000000 */   nop
/* 2F0F8 8002E4F8 92620001 */  lbu        $v0, 1($s3)
/* 2F0FC 8002E4FC 44821000 */  mtc1       $v0, $f2
/* 2F100 8002E500 00000000 */  nop
/* 2F104 8002E504 468010A0 */  cvt.s.w    $f2, $f2
/* 2F108 8002E508 3C01800F */  lui        $at, %hi(D_800F524C)
/* 2F10C 8002E50C C420524C */  lwc1       $f0, %lo(D_800F524C)($at)
/* 2F110 8002E510 46001082 */  mul.s      $f2, $f2, $f0
/* 2F114 8002E514 3C014F00 */  lui        $at, 0x4f00
/* 2F118 8002E518 44810000 */  mtc1       $at, $f0
/* 2F11C 8002E51C 00000000 */  nop
/* 2F120 8002E520 4602003E */  c.le.s     $f0, $f2
/* 2F124 8002E524 00000000 */  nop
/* 2F128 8002E528 00000000 */  nop
/* 2F12C 8002E52C 45030006 */  bc1tl      .L8002E548
/* 2F130 8002E530 46001001 */   sub.s     $f0, $f2, $f0
/* 2F134 8002E534 4600100D */  trunc.w.s  $f0, $f2
/* 2F138 8002E538 44040000 */  mfc1       $a0, $f0
/* 2F13C 8002E53C 00000000 */  nop
/* 2F140 8002E540 0800B958 */  j          .L8002E560
/* 2F144 8002E544 00809021 */   addu      $s2, $a0, $zero
.L8002E548:
/* 2F148 8002E548 3C028000 */  lui        $v0, 0x8000
/* 2F14C 8002E54C 4600008D */  trunc.w.s  $f2, $f0
/* 2F150 8002E550 44041000 */  mfc1       $a0, $f2
/* 2F154 8002E554 00000000 */  nop
/* 2F158 8002E558 00822025 */  or         $a0, $a0, $v0
/* 2F15C 8002E55C 00809021 */  addu       $s2, $a0, $zero
.L8002E560:
/* 2F160 8002E560 3242FFFF */  andi       $v0, $s2, 0xffff
/* 2F164 8002E564 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2F168 8002E568 50400001 */  beql       $v0, $zero, .L8002E570
/* 2F16C 8002E56C 241200FF */   addiu     $s2, $zero, 0xff
.L8002E570:
/* 2F170 8002E570 92620002 */  lbu        $v0, 2($s3)
/* 2F174 8002E574 44821000 */  mtc1       $v0, $f2
/* 2F178 8002E578 00000000 */  nop
/* 2F17C 8002E57C 468010A0 */  cvt.s.w    $f2, $f2
/* 2F180 8002E580 3C01800F */  lui        $at, %hi(D_800F524C)
/* 2F184 8002E584 C420524C */  lwc1       $f0, %lo(D_800F524C)($at)
/* 2F188 8002E588 46001082 */  mul.s      $f2, $f2, $f0
/* 2F18C 8002E58C 3C014F00 */  lui        $at, 0x4f00
/* 2F190 8002E590 44810000 */  mtc1       $at, $f0
/* 2F194 8002E594 00000000 */  nop
/* 2F198 8002E598 4602003E */  c.le.s     $f0, $f2
/* 2F19C 8002E59C 00000000 */  nop
/* 2F1A0 8002E5A0 00000000 */  nop
/* 2F1A4 8002E5A4 45030006 */  bc1tl      .L8002E5C0
/* 2F1A8 8002E5A8 46001001 */   sub.s     $f0, $f2, $f0
/* 2F1AC 8002E5AC 4600100D */  trunc.w.s  $f0, $f2
/* 2F1B0 8002E5B0 44040000 */  mfc1       $a0, $f0
/* 2F1B4 8002E5B4 00000000 */  nop
/* 2F1B8 8002E5B8 0800B976 */  j          .L8002E5D8
/* 2F1BC 8002E5BC 00808821 */   addu      $s1, $a0, $zero
.L8002E5C0:
/* 2F1C0 8002E5C0 3C028000 */  lui        $v0, 0x8000
/* 2F1C4 8002E5C4 4600008D */  trunc.w.s  $f2, $f0
/* 2F1C8 8002E5C8 44041000 */  mfc1       $a0, $f2
/* 2F1CC 8002E5CC 00000000 */  nop
/* 2F1D0 8002E5D0 00822025 */  or         $a0, $a0, $v0
/* 2F1D4 8002E5D4 00808821 */  addu       $s1, $a0, $zero
.L8002E5D8:
/* 2F1D8 8002E5D8 3222FFFF */  andi       $v0, $s1, 0xffff
/* 2F1DC 8002E5DC 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2F1E0 8002E5E0 50400001 */  beql       $v0, $zero, .L8002E5E8
/* 2F1E4 8002E5E4 241100FF */   addiu     $s1, $zero, 0xff
.L8002E5E8:
/* 2F1E8 8002E5E8 92620003 */  lbu        $v0, 3($s3)
/* 2F1EC 8002E5EC 44821000 */  mtc1       $v0, $f2
/* 2F1F0 8002E5F0 00000000 */  nop
/* 2F1F4 8002E5F4 468010A0 */  cvt.s.w    $f2, $f2
/* 2F1F8 8002E5F8 3C01800F */  lui        $at, %hi(D_800F524C)
/* 2F1FC 8002E5FC C420524C */  lwc1       $f0, %lo(D_800F524C)($at)
/* 2F200 8002E600 46001082 */  mul.s      $f2, $f2, $f0
/* 2F204 8002E604 3C014F00 */  lui        $at, 0x4f00
/* 2F208 8002E608 44810000 */  mtc1       $at, $f0
/* 2F20C 8002E60C 00000000 */  nop
/* 2F210 8002E610 4602003E */  c.le.s     $f0, $f2
/* 2F214 8002E614 00000000 */  nop
/* 2F218 8002E618 00000000 */  nop
/* 2F21C 8002E61C 45030006 */  bc1tl      .L8002E638
/* 2F220 8002E620 46001001 */   sub.s     $f0, $f2, $f0
/* 2F224 8002E624 4600100D */  trunc.w.s  $f0, $f2
/* 2F228 8002E628 44040000 */  mfc1       $a0, $f0
/* 2F22C 8002E62C 00000000 */  nop
/* 2F230 8002E630 0800B994 */  j          .L8002E650
/* 2F234 8002E634 00808021 */   addu      $s0, $a0, $zero
.L8002E638:
/* 2F238 8002E638 3C028000 */  lui        $v0, 0x8000
/* 2F23C 8002E63C 4600008D */  trunc.w.s  $f2, $f0
/* 2F240 8002E640 44041000 */  mfc1       $a0, $f2
/* 2F244 8002E644 00000000 */  nop
/* 2F248 8002E648 00822025 */  or         $a0, $a0, $v0
/* 2F24C 8002E64C 00808021 */  addu       $s0, $a0, $zero
.L8002E650:
/* 2F250 8002E650 3202FFFF */  andi       $v0, $s0, 0xffff
/* 2F254 8002E654 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2F258 8002E658 50400001 */  beql       $v0, $zero, .L8002E660
/* 2F25C 8002E65C 241000FF */   addiu     $s0, $zero, 0xff
.L8002E660:
/* 2F260 8002E660 3C03800F */  lui        $v1, %hi(D_800F3760)
/* 2F264 8002E664 94633760 */  lhu        $v1, %lo(D_800F3760)($v1)
/* 2F268 8002E668 3242FFFF */  andi       $v0, $s2, 0xffff
/* 2F26C 8002E66C 14620009 */  bne        $v1, $v0, .L8002E694
/* 2F270 8002E670 3222FFFF */   andi      $v0, $s1, 0xffff
/* 2F274 8002E674 3C03800F */  lui        $v1, %hi(D_800F37D0)
/* 2F278 8002E678 946337D0 */  lhu        $v1, %lo(D_800F37D0)($v1)
/* 2F27C 8002E67C 14620005 */  bne        $v1, $v0, .L8002E694
/* 2F280 8002E680 3202FFFF */   andi      $v0, $s0, 0xffff
/* 2F284 8002E684 3C03800F */  lui        $v1, %hi(D_800EDEB2)
/* 2F288 8002E688 9463DEB2 */  lhu        $v1, %lo(D_800EDEB2)($v1)
/* 2F28C 8002E68C 1062001A */  beq        $v1, $v0, .L8002E6F8
/* 2F290 8002E690 00000000 */   nop
.L8002E694:
/* 2F294 8002E694 3C01800F */  lui        $at, %hi(D_800F3760)
/* 2F298 8002E698 A4323760 */  sh         $s2, %lo(D_800F3760)($at)
/* 2F29C 8002E69C 3C01800F */  lui        $at, %hi(D_800F37D0)
/* 2F2A0 8002E6A0 A43137D0 */  sh         $s1, %lo(D_800F37D0)($at)
/* 2F2A4 8002E6A4 3C01800F */  lui        $at, %hi(D_800EDEB2)
/* 2F2A8 8002E6A8 A430DEB2 */  sh         $s0, %lo(D_800EDEB2)($at)
/* 2F2AC 8002E6AC 3C05800F */  lui        $a1, %hi(D_800EE9A0)
/* 2F2B0 8002E6B0 94A5E9A0 */  lhu        $a1, %lo(D_800EE9A0)($a1)
/* 2F2B4 8002E6B4 24A50001 */  addiu      $a1, $a1, 1
/* 2F2B8 8002E6B8 00052C00 */  sll        $a1, $a1, 0x10
/* 2F2BC 8002E6BC 3C03800F */  lui        $v1, %hi(D_800F3760)
/* 2F2C0 8002E6C0 94633760 */  lhu        $v1, %lo(D_800F3760)($v1)
/* 2F2C4 8002E6C4 00031E00 */  sll        $v1, $v1, 0x18
/* 2F2C8 8002E6C8 3C02800F */  lui        $v0, %hi(D_800F37D0)
/* 2F2CC 8002E6CC 944237D0 */  lhu        $v0, %lo(D_800F37D0)($v0)
/* 2F2D0 8002E6D0 00021400 */  sll        $v0, $v0, 0x10
/* 2F2D4 8002E6D4 00621821 */  addu       $v1, $v1, $v0
/* 2F2D8 8002E6D8 3C06800F */  lui        $a2, %hi(D_800EDEB2)
/* 2F2DC 8002E6DC 94C6DEB2 */  lhu        $a2, %lo(D_800EDEB2)($a2)
/* 2F2E0 8002E6E0 00063200 */  sll        $a2, $a2, 8
/* 2F2E4 8002E6E4 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2F2E8 8002E6E8 248437DC */  addiu      $a0, $a0, %lo(D_800F37DC)
/* 2F2EC 8002E6EC 00052C03 */  sra        $a1, $a1, 0x10
/* 2F2F0 8002E6F0 0C00CFEC */  jal        func_80033FB0
/* 2F2F4 8002E6F4 00663021 */   addu      $a2, $v1, $a2
.L8002E6F8:
/* 2F2F8 8002E6F8 92620005 */  lbu        $v0, 5($s3)
/* 2F2FC 8002E6FC 44821000 */  mtc1       $v0, $f2
/* 2F300 8002E700 00000000 */  nop
/* 2F304 8002E704 468010A0 */  cvt.s.w    $f2, $f2
/* 2F308 8002E708 3C01800F */  lui        $at, %hi(D_800F5028)
/* 2F30C 8002E70C C4205028 */  lwc1       $f0, %lo(D_800F5028)($at)
/* 2F310 8002E710 46001082 */  mul.s      $f2, $f2, $f0
/* 2F314 8002E714 3C014F00 */  lui        $at, 0x4f00
/* 2F318 8002E718 44810000 */  mtc1       $at, $f0
/* 2F31C 8002E71C 00000000 */  nop
/* 2F320 8002E720 4602003E */  c.le.s     $f0, $f2
/* 2F324 8002E724 00000000 */  nop
/* 2F328 8002E728 00000000 */  nop
/* 2F32C 8002E72C 45030006 */  bc1tl      .L8002E748
/* 2F330 8002E730 46001001 */   sub.s     $f0, $f2, $f0
/* 2F334 8002E734 4600100D */  trunc.w.s  $f0, $f2
/* 2F338 8002E738 44040000 */  mfc1       $a0, $f0
/* 2F33C 8002E73C 00000000 */  nop
/* 2F340 8002E740 0800B9D8 */  j          .L8002E760
/* 2F344 8002E744 00809021 */   addu      $s2, $a0, $zero
.L8002E748:
/* 2F348 8002E748 3C028000 */  lui        $v0, 0x8000
/* 2F34C 8002E74C 4600008D */  trunc.w.s  $f2, $f0
/* 2F350 8002E750 44041000 */  mfc1       $a0, $f2
/* 2F354 8002E754 00000000 */  nop
/* 2F358 8002E758 00822025 */  or         $a0, $a0, $v0
/* 2F35C 8002E75C 00809021 */  addu       $s2, $a0, $zero
.L8002E760:
/* 2F360 8002E760 3242FFFF */  andi       $v0, $s2, 0xffff
/* 2F364 8002E764 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2F368 8002E768 50400001 */  beql       $v0, $zero, .L8002E770
/* 2F36C 8002E76C 241200FF */   addiu     $s2, $zero, 0xff
.L8002E770:
/* 2F370 8002E770 92620006 */  lbu        $v0, 6($s3)
/* 2F374 8002E774 44821000 */  mtc1       $v0, $f2
/* 2F378 8002E778 00000000 */  nop
/* 2F37C 8002E77C 468010A0 */  cvt.s.w    $f2, $f2
/* 2F380 8002E780 3C01800F */  lui        $at, %hi(D_800F5028)
/* 2F384 8002E784 C4205028 */  lwc1       $f0, %lo(D_800F5028)($at)
/* 2F388 8002E788 46001082 */  mul.s      $f2, $f2, $f0
/* 2F38C 8002E78C 3C014F00 */  lui        $at, 0x4f00
/* 2F390 8002E790 44810000 */  mtc1       $at, $f0
/* 2F394 8002E794 00000000 */  nop
/* 2F398 8002E798 4602003E */  c.le.s     $f0, $f2
/* 2F39C 8002E79C 00000000 */  nop
/* 2F3A0 8002E7A0 00000000 */  nop
/* 2F3A4 8002E7A4 45030006 */  bc1tl      .L8002E7C0
/* 2F3A8 8002E7A8 46001001 */   sub.s     $f0, $f2, $f0
/* 2F3AC 8002E7AC 4600100D */  trunc.w.s  $f0, $f2
/* 2F3B0 8002E7B0 44040000 */  mfc1       $a0, $f0
/* 2F3B4 8002E7B4 00000000 */  nop
/* 2F3B8 8002E7B8 0800B9F6 */  j          .L8002E7D8
/* 2F3BC 8002E7BC 00808821 */   addu      $s1, $a0, $zero
.L8002E7C0:
/* 2F3C0 8002E7C0 3C028000 */  lui        $v0, 0x8000
/* 2F3C4 8002E7C4 4600008D */  trunc.w.s  $f2, $f0
/* 2F3C8 8002E7C8 44041000 */  mfc1       $a0, $f2
/* 2F3CC 8002E7CC 00000000 */  nop
/* 2F3D0 8002E7D0 00822025 */  or         $a0, $a0, $v0
/* 2F3D4 8002E7D4 00808821 */  addu       $s1, $a0, $zero
.L8002E7D8:
/* 2F3D8 8002E7D8 3222FFFF */  andi       $v0, $s1, 0xffff
/* 2F3DC 8002E7DC 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2F3E0 8002E7E0 50400001 */  beql       $v0, $zero, .L8002E7E8
/* 2F3E4 8002E7E4 241100FF */   addiu     $s1, $zero, 0xff
.L8002E7E8:
/* 2F3E8 8002E7E8 92620007 */  lbu        $v0, 7($s3)
/* 2F3EC 8002E7EC 44821000 */  mtc1       $v0, $f2
/* 2F3F0 8002E7F0 00000000 */  nop
/* 2F3F4 8002E7F4 468010A0 */  cvt.s.w    $f2, $f2
/* 2F3F8 8002E7F8 3C01800F */  lui        $at, %hi(D_800F5028)
/* 2F3FC 8002E7FC C4205028 */  lwc1       $f0, %lo(D_800F5028)($at)
/* 2F400 8002E800 46001082 */  mul.s      $f2, $f2, $f0
/* 2F404 8002E804 3C014F00 */  lui        $at, 0x4f00
/* 2F408 8002E808 44810000 */  mtc1       $at, $f0
/* 2F40C 8002E80C 00000000 */  nop
/* 2F410 8002E810 4602003E */  c.le.s     $f0, $f2
/* 2F414 8002E814 00000000 */  nop
/* 2F418 8002E818 00000000 */  nop
/* 2F41C 8002E81C 45030006 */  bc1tl      .L8002E838
/* 2F420 8002E820 46001001 */   sub.s     $f0, $f2, $f0
/* 2F424 8002E824 4600100D */  trunc.w.s  $f0, $f2
/* 2F428 8002E828 44040000 */  mfc1       $a0, $f0
/* 2F42C 8002E82C 00000000 */  nop
/* 2F430 8002E830 0800BA14 */  j          .L8002E850
/* 2F434 8002E834 00808021 */   addu      $s0, $a0, $zero
.L8002E838:
/* 2F438 8002E838 3C028000 */  lui        $v0, 0x8000
/* 2F43C 8002E83C 4600008D */  trunc.w.s  $f2, $f0
/* 2F440 8002E840 44041000 */  mfc1       $a0, $f2
/* 2F444 8002E844 00000000 */  nop
/* 2F448 8002E848 00822025 */  or         $a0, $a0, $v0
/* 2F44C 8002E84C 00808021 */  addu       $s0, $a0, $zero
.L8002E850:
/* 2F450 8002E850 3202FFFF */  andi       $v0, $s0, 0xffff
/* 2F454 8002E854 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2F458 8002E858 50400001 */  beql       $v0, $zero, .L8002E860
/* 2F45C 8002E85C 241000FF */   addiu     $s0, $zero, 0xff
.L8002E860:
/* 2F460 8002E860 3C03800F */  lui        $v1, %hi(D_800EE322)
/* 2F464 8002E864 9463E322 */  lhu        $v1, %lo(D_800EE322)($v1)
/* 2F468 8002E868 3242FFFF */  andi       $v0, $s2, 0xffff
/* 2F46C 8002E86C 14620009 */  bne        $v1, $v0, .L8002E894
/* 2F470 8002E870 3222FFFF */   andi      $v0, $s1, 0xffff
/* 2F474 8002E874 3C03800F */  lui        $v1, %hi(D_800EE732)
/* 2F478 8002E878 9463E732 */  lhu        $v1, %lo(D_800EE732)($v1)
/* 2F47C 8002E87C 14620005 */  bne        $v1, $v0, .L8002E894
/* 2F480 8002E880 3202FFFF */   andi      $v0, $s0, 0xffff
/* 2F484 8002E884 3C03800F */  lui        $v1, %hi(D_800EDEC8)
/* 2F488 8002E888 9463DEC8 */  lhu        $v1, %lo(D_800EDEC8)($v1)
/* 2F48C 8002E88C 106208B4 */  beq        $v1, $v0, .L80030B60
/* 2F490 8002E890 00000000 */   nop
.L8002E894:
/* 2F494 8002E894 3C01800F */  lui        $at, %hi(D_800EE322)
/* 2F498 8002E898 A432E322 */  sh         $s2, %lo(D_800EE322)($at)
/* 2F49C 8002E89C 3C01800F */  lui        $at, %hi(D_800EE732)
/* 2F4A0 8002E8A0 A431E732 */  sh         $s1, %lo(D_800EE732)($at)
/* 2F4A4 8002E8A4 3C01800F */  lui        $at, %hi(D_800EDEC8)
/* 2F4A8 8002E8A8 A430DEC8 */  sh         $s0, %lo(D_800EDEC8)($at)
/* 2F4AC 8002E8AC 3C06800F */  lui        $a2, %hi(D_800EE322)
/* 2F4B0 8002E8B0 94C6E322 */  lhu        $a2, %lo(D_800EE322)($a2)
/* 2F4B4 8002E8B4 00063600 */  sll        $a2, $a2, 0x18
/* 2F4B8 8002E8B8 3C02800F */  lui        $v0, %hi(D_800EE732)
/* 2F4BC 8002E8BC 9442E732 */  lhu        $v0, %lo(D_800EE732)($v0)
/* 2F4C0 8002E8C0 00021400 */  sll        $v0, $v0, 0x10
/* 2F4C4 8002E8C4 00C23021 */  addu       $a2, $a2, $v0
/* 2F4C8 8002E8C8 3C02800F */  lui        $v0, %hi(D_800EDEC8)
/* 2F4CC 8002E8CC 9442DEC8 */  lhu        $v0, %lo(D_800EDEC8)($v0)
/* 2F4D0 8002E8D0 00021200 */  sll        $v0, $v0, 8
/* 2F4D4 8002E8D4 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2F4D8 8002E8D8 248437DC */  addiu      $a0, $a0, %lo(D_800F37DC)
/* 2F4DC 8002E8DC 24050001 */  addiu      $a1, $zero, 1
/* 2F4E0 8002E8E0 0C00CFEC */  jal        func_80033FB0
/* 2F4E4 8002E8E4 00C23021 */   addu      $a2, $a2, $v0
/* 2F4E8 8002E8E8 0800C2D8 */  j          .L80030B60
/* 2F4EC 8002E8EC 00000000 */   nop
.L8002E8F0:
/* 2F4F0 8002E8F0 82830000 */  lb         $v1, ($s4)
/* 2F4F4 8002E8F4 10620061 */  beq        $v1, $v0, .L8002EA7C
/* 2F4F8 8002E8F8 28620029 */   slti      $v0, $v1, 0x29
/* 2F4FC 8002E8FC 1440007E */  bnez       $v0, .L8002EAF8
/* 2F500 8002E900 2862002C */   slti      $v0, $v1, 0x2c
/* 2F504 8002E904 1040007C */  beqz       $v0, .L8002EAF8
/* 2F508 8002E908 00000000 */   nop
/* 2F50C 8002E90C 92620001 */  lbu        $v0, 1($s3)
/* 2F510 8002E910 44821000 */  mtc1       $v0, $f2
/* 2F514 8002E914 00000000 */  nop
/* 2F518 8002E918 468010A0 */  cvt.s.w    $f2, $f2
/* 2F51C 8002E91C 3C01800F */  lui        $at, %hi(D_800F524C)
/* 2F520 8002E920 C420524C */  lwc1       $f0, %lo(D_800F524C)($at)
/* 2F524 8002E924 46001082 */  mul.s      $f2, $f2, $f0
/* 2F528 8002E928 3C014F00 */  lui        $at, 0x4f00
/* 2F52C 8002E92C 44810000 */  mtc1       $at, $f0
/* 2F530 8002E930 00000000 */  nop
/* 2F534 8002E934 4602003E */  c.le.s     $f0, $f2
/* 2F538 8002E938 00000000 */  nop
/* 2F53C 8002E93C 00000000 */  nop
/* 2F540 8002E940 45030006 */  bc1tl      .L8002E95C
/* 2F544 8002E944 46001001 */   sub.s     $f0, $f2, $f0
/* 2F548 8002E948 4600100D */  trunc.w.s  $f0, $f2
/* 2F54C 8002E94C 44040000 */  mfc1       $a0, $f0
/* 2F550 8002E950 00000000 */  nop
/* 2F554 8002E954 0800BA5D */  j          .L8002E974
/* 2F558 8002E958 00809021 */   addu      $s2, $a0, $zero
.L8002E95C:
/* 2F55C 8002E95C 3C028000 */  lui        $v0, 0x8000
/* 2F560 8002E960 4600008D */  trunc.w.s  $f2, $f0
/* 2F564 8002E964 44041000 */  mfc1       $a0, $f2
/* 2F568 8002E968 00000000 */  nop
/* 2F56C 8002E96C 00822025 */  or         $a0, $a0, $v0
/* 2F570 8002E970 00809021 */  addu       $s2, $a0, $zero
.L8002E974:
/* 2F574 8002E974 3242FFFF */  andi       $v0, $s2, 0xffff
/* 2F578 8002E978 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2F57C 8002E97C 50400001 */  beql       $v0, $zero, .L8002E984
/* 2F580 8002E980 241200FF */   addiu     $s2, $zero, 0xff
.L8002E984:
/* 2F584 8002E984 92620002 */  lbu        $v0, 2($s3)
/* 2F588 8002E988 44821000 */  mtc1       $v0, $f2
/* 2F58C 8002E98C 00000000 */  nop
/* 2F590 8002E990 468010A0 */  cvt.s.w    $f2, $f2
/* 2F594 8002E994 3C01800F */  lui        $at, %hi(D_800F524C)
/* 2F598 8002E998 C420524C */  lwc1       $f0, %lo(D_800F524C)($at)
/* 2F59C 8002E99C 46001082 */  mul.s      $f2, $f2, $f0
/* 2F5A0 8002E9A0 3C014F00 */  lui        $at, 0x4f00
/* 2F5A4 8002E9A4 44810000 */  mtc1       $at, $f0
/* 2F5A8 8002E9A8 00000000 */  nop
/* 2F5AC 8002E9AC 4602003E */  c.le.s     $f0, $f2
/* 2F5B0 8002E9B0 00000000 */  nop
/* 2F5B4 8002E9B4 00000000 */  nop
/* 2F5B8 8002E9B8 45030006 */  bc1tl      .L8002E9D4
/* 2F5BC 8002E9BC 46001001 */   sub.s     $f0, $f2, $f0
/* 2F5C0 8002E9C0 4600100D */  trunc.w.s  $f0, $f2
/* 2F5C4 8002E9C4 44040000 */  mfc1       $a0, $f0
/* 2F5C8 8002E9C8 00000000 */  nop
/* 2F5CC 8002E9CC 0800BA7B */  j          .L8002E9EC
/* 2F5D0 8002E9D0 00808821 */   addu      $s1, $a0, $zero
.L8002E9D4:
/* 2F5D4 8002E9D4 3C028000 */  lui        $v0, 0x8000
/* 2F5D8 8002E9D8 4600008D */  trunc.w.s  $f2, $f0
/* 2F5DC 8002E9DC 44041000 */  mfc1       $a0, $f2
/* 2F5E0 8002E9E0 00000000 */  nop
/* 2F5E4 8002E9E4 00822025 */  or         $a0, $a0, $v0
/* 2F5E8 8002E9E8 00808821 */  addu       $s1, $a0, $zero
.L8002E9EC:
/* 2F5EC 8002E9EC 3222FFFF */  andi       $v0, $s1, 0xffff
/* 2F5F0 8002E9F0 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2F5F4 8002E9F4 50400001 */  beql       $v0, $zero, .L8002E9FC
/* 2F5F8 8002E9F8 241100FF */   addiu     $s1, $zero, 0xff
.L8002E9FC:
/* 2F5FC 8002E9FC 92620003 */  lbu        $v0, 3($s3)
/* 2F600 8002EA00 44821000 */  mtc1       $v0, $f2
/* 2F604 8002EA04 00000000 */  nop
/* 2F608 8002EA08 468010A0 */  cvt.s.w    $f2, $f2
/* 2F60C 8002EA0C 3C01800F */  lui        $at, %hi(D_800F524C)
/* 2F610 8002EA10 C420524C */  lwc1       $f0, %lo(D_800F524C)($at)
/* 2F614 8002EA14 46001082 */  mul.s      $f2, $f2, $f0
/* 2F618 8002EA18 3C014F00 */  lui        $at, 0x4f00
/* 2F61C 8002EA1C 44810000 */  mtc1       $at, $f0
/* 2F620 8002EA20 00000000 */  nop
/* 2F624 8002EA24 4602003E */  c.le.s     $f0, $f2
/* 2F628 8002EA28 00000000 */  nop
/* 2F62C 8002EA2C 00000000 */  nop
/* 2F630 8002EA30 45030006 */  bc1tl      .L8002EA4C
/* 2F634 8002EA34 46001001 */   sub.s     $f0, $f2, $f0
/* 2F638 8002EA38 4600100D */  trunc.w.s  $f0, $f2
/* 2F63C 8002EA3C 44040000 */  mfc1       $a0, $f0
/* 2F640 8002EA40 00000000 */  nop
/* 2F644 8002EA44 0800BA99 */  j          .L8002EA64
/* 2F648 8002EA48 00808021 */   addu      $s0, $a0, $zero
.L8002EA4C:
/* 2F64C 8002EA4C 3C028000 */  lui        $v0, 0x8000
/* 2F650 8002EA50 4600008D */  trunc.w.s  $f2, $f0
/* 2F654 8002EA54 44041000 */  mfc1       $a0, $f2
/* 2F658 8002EA58 00000000 */  nop
/* 2F65C 8002EA5C 00822025 */  or         $a0, $a0, $v0
/* 2F660 8002EA60 00808021 */  addu       $s0, $a0, $zero
.L8002EA64:
/* 2F664 8002EA64 3202FFFF */  andi       $v0, $s0, 0xffff
/* 2F668 8002EA68 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2F66C 8002EA6C 50400022 */  beql       $v0, $zero, .L8002EAF8
/* 2F670 8002EA70 241000FF */   addiu     $s0, $zero, 0xff
/* 2F674 8002EA74 0800BABE */  j          .L8002EAF8
/* 2F678 8002EA78 00000000 */   nop
.L8002EA7C:
/* 2F67C 8002EA7C 3C01800F */  lui        $at, %hi(D_800F524C)
/* 2F680 8002EA80 C422524C */  lwc1       $f2, %lo(D_800F524C)($at)
/* 2F684 8002EA84 3C01437F */  lui        $at, 0x437f
/* 2F688 8002EA88 44810000 */  mtc1       $at, $f0
/* 2F68C 8002EA8C 00000000 */  nop
/* 2F690 8002EA90 46001082 */  mul.s      $f2, $f2, $f0
/* 2F694 8002EA94 3C014F00 */  lui        $at, 0x4f00
/* 2F698 8002EA98 44810000 */  mtc1       $at, $f0
/* 2F69C 8002EA9C 00000000 */  nop
/* 2F6A0 8002EAA0 4602003E */  c.le.s     $f0, $f2
/* 2F6A4 8002EAA4 00000000 */  nop
/* 2F6A8 8002EAA8 00000000 */  nop
/* 2F6AC 8002EAAC 45030006 */  bc1tl      .L8002EAC8
/* 2F6B0 8002EAB0 46001001 */   sub.s     $f0, $f2, $f0
/* 2F6B4 8002EAB4 4600100D */  trunc.w.s  $f0, $f2
/* 2F6B8 8002EAB8 44040000 */  mfc1       $a0, $f0
/* 2F6BC 8002EABC 00000000 */  nop
/* 2F6C0 8002EAC0 0800BAB8 */  j          .L8002EAE0
/* 2F6C4 8002EAC4 00809021 */   addu      $s2, $a0, $zero
.L8002EAC8:
/* 2F6C8 8002EAC8 3C028000 */  lui        $v0, 0x8000
/* 2F6CC 8002EACC 4600008D */  trunc.w.s  $f2, $f0
/* 2F6D0 8002EAD0 44041000 */  mfc1       $a0, $f2
/* 2F6D4 8002EAD4 00000000 */  nop
/* 2F6D8 8002EAD8 00822025 */  or         $a0, $a0, $v0
/* 2F6DC 8002EADC 00809021 */  addu       $s2, $a0, $zero
.L8002EAE0:
/* 2F6E0 8002EAE0 3242FFFF */  andi       $v0, $s2, 0xffff
/* 2F6E4 8002EAE4 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2F6E8 8002EAE8 50400001 */  beql       $v0, $zero, .L8002EAF0
/* 2F6EC 8002EAEC 241200FF */   addiu     $s2, $zero, 0xff
.L8002EAF0:
/* 2F6F0 8002EAF0 02408021 */  addu       $s0, $s2, $zero
/* 2F6F4 8002EAF4 02008821 */  addu       $s1, $s0, $zero
.L8002EAF8:
/* 2F6F8 8002EAF8 3C02800F */  lui        $v0, %hi(D_800ECB14)
/* 2F6FC 8002EAFC 8C42CB14 */  lw         $v0, %lo(D_800ECB14)($v0)
/* 2F700 8002EB00 30420200 */  andi       $v0, $v0, 0x200
/* 2F704 8002EB04 10400026 */  beqz       $v0, .L8002EBA0
/* 2F708 8002EB08 3242FFFF */   andi      $v0, $s2, 0xffff
/* 2F70C 8002EB0C 3C03800F */  lui        $v1, %hi(D_800F3760)
/* 2F710 8002EB10 94633760 */  lhu        $v1, %lo(D_800F3760)($v1)
/* 2F714 8002EB14 14620009 */  bne        $v1, $v0, .L8002EB3C
/* 2F718 8002EB18 3222FFFF */   andi      $v0, $s1, 0xffff
/* 2F71C 8002EB1C 3C03800F */  lui        $v1, %hi(D_800F37D0)
/* 2F720 8002EB20 946337D0 */  lhu        $v1, %lo(D_800F37D0)($v1)
/* 2F724 8002EB24 14620005 */  bne        $v1, $v0, .L8002EB3C
/* 2F728 8002EB28 3202FFFF */   andi      $v0, $s0, 0xffff
/* 2F72C 8002EB2C 3C03800F */  lui        $v1, %hi(D_800EDEB2)
/* 2F730 8002EB30 9463DEB2 */  lhu        $v1, %lo(D_800EDEB2)($v1)
/* 2F734 8002EB34 1062001A */  beq        $v1, $v0, .L8002EBA0
/* 2F738 8002EB38 00000000 */   nop
.L8002EB3C:
/* 2F73C 8002EB3C 3C01800F */  lui        $at, %hi(D_800F3760)
/* 2F740 8002EB40 A4323760 */  sh         $s2, %lo(D_800F3760)($at)
/* 2F744 8002EB44 3C01800F */  lui        $at, %hi(D_800F37D0)
/* 2F748 8002EB48 A43137D0 */  sh         $s1, %lo(D_800F37D0)($at)
/* 2F74C 8002EB4C 3C01800F */  lui        $at, %hi(D_800EDEB2)
/* 2F750 8002EB50 A430DEB2 */  sh         $s0, %lo(D_800EDEB2)($at)
/* 2F754 8002EB54 3C05800F */  lui        $a1, %hi(D_800EE9A0)
/* 2F758 8002EB58 94A5E9A0 */  lhu        $a1, %lo(D_800EE9A0)($a1)
/* 2F75C 8002EB5C 24A50001 */  addiu      $a1, $a1, 1
/* 2F760 8002EB60 00052C00 */  sll        $a1, $a1, 0x10
/* 2F764 8002EB64 3C03800F */  lui        $v1, %hi(D_800F3760)
/* 2F768 8002EB68 94633760 */  lhu        $v1, %lo(D_800F3760)($v1)
/* 2F76C 8002EB6C 00031E00 */  sll        $v1, $v1, 0x18
/* 2F770 8002EB70 3C02800F */  lui        $v0, %hi(D_800F37D0)
/* 2F774 8002EB74 944237D0 */  lhu        $v0, %lo(D_800F37D0)($v0)
/* 2F778 8002EB78 00021400 */  sll        $v0, $v0, 0x10
/* 2F77C 8002EB7C 00621821 */  addu       $v1, $v1, $v0
/* 2F780 8002EB80 3C06800F */  lui        $a2, %hi(D_800EDEB2)
/* 2F784 8002EB84 94C6DEB2 */  lhu        $a2, %lo(D_800EDEB2)($a2)
/* 2F788 8002EB88 00063200 */  sll        $a2, $a2, 8
/* 2F78C 8002EB8C 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2F790 8002EB90 248437DC */  addiu      $a0, $a0, %lo(D_800F37DC)
/* 2F794 8002EB94 00052C03 */  sra        $a1, $a1, 0x10
/* 2F798 8002EB98 0C00CFEC */  jal        func_80033FB0
/* 2F79C 8002EB9C 00663021 */   addu      $a2, $v1, $a2
.L8002EBA0:
/* 2F7A0 8002EBA0 82830000 */  lb         $v1, ($s4)
/* 2F7A4 8002EBA4 24020029 */  addiu      $v0, $zero, 0x29
/* 2F7A8 8002EBA8 1062004F */  beq        $v1, $v0, .L8002ECE8
/* 2F7AC 8002EBAC 2402002B */   addiu     $v0, $zero, 0x2b
/* 2F7B0 8002EBB0 1462006D */  bne        $v1, $v0, .L8002ED68
/* 2F7B4 8002EBB4 00000000 */   nop
/* 2F7B8 8002EBB8 92820005 */  lbu        $v0, 5($s4)
/* 2F7BC 8002EBBC 44821000 */  mtc1       $v0, $f2
/* 2F7C0 8002EBC0 00000000 */  nop
/* 2F7C4 8002EBC4 468010A0 */  cvt.s.w    $f2, $f2
/* 2F7C8 8002EBC8 3C01800F */  lui        $at, %hi(D_800F5028)
/* 2F7CC 8002EBCC C4205028 */  lwc1       $f0, %lo(D_800F5028)($at)
/* 2F7D0 8002EBD0 46001082 */  mul.s      $f2, $f2, $f0
/* 2F7D4 8002EBD4 3C014F00 */  lui        $at, 0x4f00
/* 2F7D8 8002EBD8 44810000 */  mtc1       $at, $f0
/* 2F7DC 8002EBDC 00000000 */  nop
/* 2F7E0 8002EBE0 4602003E */  c.le.s     $f0, $f2
/* 2F7E4 8002EBE4 00000000 */  nop
/* 2F7E8 8002EBE8 00000000 */  nop
/* 2F7EC 8002EBEC 45030006 */  bc1tl      .L8002EC08
/* 2F7F0 8002EBF0 46001001 */   sub.s     $f0, $f2, $f0
/* 2F7F4 8002EBF4 4600100D */  trunc.w.s  $f0, $f2
/* 2F7F8 8002EBF8 44040000 */  mfc1       $a0, $f0
/* 2F7FC 8002EBFC 00000000 */  nop
/* 2F800 8002EC00 0800BB08 */  j          .L8002EC20
/* 2F804 8002EC04 00809021 */   addu      $s2, $a0, $zero
.L8002EC08:
/* 2F808 8002EC08 3C028000 */  lui        $v0, 0x8000
/* 2F80C 8002EC0C 4600008D */  trunc.w.s  $f2, $f0
/* 2F810 8002EC10 44041000 */  mfc1       $a0, $f2
/* 2F814 8002EC14 00000000 */  nop
/* 2F818 8002EC18 00822025 */  or         $a0, $a0, $v0
/* 2F81C 8002EC1C 00809021 */  addu       $s2, $a0, $zero
.L8002EC20:
/* 2F820 8002EC20 3242FFFF */  andi       $v0, $s2, 0xffff
/* 2F824 8002EC24 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2F828 8002EC28 50400001 */  beql       $v0, $zero, .L8002EC30
/* 2F82C 8002EC2C 241200FF */   addiu     $s2, $zero, 0xff
.L8002EC30:
/* 2F830 8002EC30 92820006 */  lbu        $v0, 6($s4)
/* 2F834 8002EC34 44821000 */  mtc1       $v0, $f2
/* 2F838 8002EC38 00000000 */  nop
/* 2F83C 8002EC3C 468010A0 */  cvt.s.w    $f2, $f2
/* 2F840 8002EC40 3C01800F */  lui        $at, %hi(D_800F5028)
/* 2F844 8002EC44 C4205028 */  lwc1       $f0, %lo(D_800F5028)($at)
/* 2F848 8002EC48 46001082 */  mul.s      $f2, $f2, $f0
/* 2F84C 8002EC4C 3C014F00 */  lui        $at, 0x4f00
/* 2F850 8002EC50 44810000 */  mtc1       $at, $f0
/* 2F854 8002EC54 00000000 */  nop
/* 2F858 8002EC58 4602003E */  c.le.s     $f0, $f2
/* 2F85C 8002EC5C 00000000 */  nop
/* 2F860 8002EC60 00000000 */  nop
/* 2F864 8002EC64 45030006 */  bc1tl      .L8002EC80
/* 2F868 8002EC68 46001001 */   sub.s     $f0, $f2, $f0
/* 2F86C 8002EC6C 4600100D */  trunc.w.s  $f0, $f2
/* 2F870 8002EC70 44040000 */  mfc1       $a0, $f0
/* 2F874 8002EC74 00000000 */  nop
/* 2F878 8002EC78 0800BB26 */  j          .L8002EC98
/* 2F87C 8002EC7C 00808821 */   addu      $s1, $a0, $zero
.L8002EC80:
/* 2F880 8002EC80 3C028000 */  lui        $v0, 0x8000
/* 2F884 8002EC84 4600008D */  trunc.w.s  $f2, $f0
/* 2F888 8002EC88 44041000 */  mfc1       $a0, $f2
/* 2F88C 8002EC8C 00000000 */  nop
/* 2F890 8002EC90 00822025 */  or         $a0, $a0, $v0
/* 2F894 8002EC94 00808821 */  addu       $s1, $a0, $zero
.L8002EC98:
/* 2F898 8002EC98 3222FFFF */  andi       $v0, $s1, 0xffff
/* 2F89C 8002EC9C 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2F8A0 8002ECA0 50400001 */  beql       $v0, $zero, .L8002ECA8
/* 2F8A4 8002ECA4 241100FF */   addiu     $s1, $zero, 0xff
.L8002ECA8:
/* 2F8A8 8002ECA8 92820007 */  lbu        $v0, 7($s4)
/* 2F8AC 8002ECAC 44821000 */  mtc1       $v0, $f2
/* 2F8B0 8002ECB0 00000000 */  nop
/* 2F8B4 8002ECB4 468010A0 */  cvt.s.w    $f2, $f2
/* 2F8B8 8002ECB8 3C01800F */  lui        $at, %hi(D_800F5028)
/* 2F8BC 8002ECBC C4205028 */  lwc1       $f0, %lo(D_800F5028)($at)
/* 2F8C0 8002ECC0 46001082 */  mul.s      $f2, $f2, $f0
/* 2F8C4 8002ECC4 3C014F00 */  lui        $at, 0x4f00
/* 2F8C8 8002ECC8 44810000 */  mtc1       $at, $f0
/* 2F8CC 8002ECCC 00000000 */  nop
/* 2F8D0 8002ECD0 4602003E */  c.le.s     $f0, $f2
/* 2F8D4 8002ECD4 00000000 */  nop
/* 2F8D8 8002ECD8 4500006E */  bc1f       .L8002EE94
/* 2F8DC 8002ECDC 00000000 */   nop
/* 2F8E0 8002ECE0 0800BBAA */  j          .L8002EEA8
/* 2F8E4 8002ECE4 46001001 */   sub.s     $f0, $f2, $f0
.L8002ECE8:
/* 2F8E8 8002ECE8 3C01800F */  lui        $at, %hi(D_800F5028)
/* 2F8EC 8002ECEC C4225028 */  lwc1       $f2, %lo(D_800F5028)($at)
/* 2F8F0 8002ECF0 3C01437F */  lui        $at, 0x437f
/* 2F8F4 8002ECF4 44810000 */  mtc1       $at, $f0
/* 2F8F8 8002ECF8 00000000 */  nop
/* 2F8FC 8002ECFC 46001082 */  mul.s      $f2, $f2, $f0
/* 2F900 8002ED00 3C014F00 */  lui        $at, 0x4f00
/* 2F904 8002ED04 44810000 */  mtc1       $at, $f0
/* 2F908 8002ED08 00000000 */  nop
/* 2F90C 8002ED0C 4602003E */  c.le.s     $f0, $f2
/* 2F910 8002ED10 00000000 */  nop
/* 2F914 8002ED14 00000000 */  nop
/* 2F918 8002ED18 45030006 */  bc1tl      .L8002ED34
/* 2F91C 8002ED1C 46001001 */   sub.s     $f0, $f2, $f0
/* 2F920 8002ED20 4600100D */  trunc.w.s  $f0, $f2
/* 2F924 8002ED24 44040000 */  mfc1       $a0, $f0
/* 2F928 8002ED28 00000000 */  nop
/* 2F92C 8002ED2C 0800BB53 */  j          .L8002ED4C
/* 2F930 8002ED30 00809021 */   addu      $s2, $a0, $zero
.L8002ED34:
/* 2F934 8002ED34 3C028000 */  lui        $v0, 0x8000
/* 2F938 8002ED38 4600008D */  trunc.w.s  $f2, $f0
/* 2F93C 8002ED3C 44041000 */  mfc1       $a0, $f2
/* 2F940 8002ED40 00000000 */  nop
/* 2F944 8002ED44 00822025 */  or         $a0, $a0, $v0
/* 2F948 8002ED48 00809021 */  addu       $s2, $a0, $zero
.L8002ED4C:
/* 2F94C 8002ED4C 3242FFFF */  andi       $v0, $s2, 0xffff
/* 2F950 8002ED50 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2F954 8002ED54 50400001 */  beql       $v0, $zero, .L8002ED5C
/* 2F958 8002ED58 241200FF */   addiu     $s2, $zero, 0xff
.L8002ED5C:
/* 2F95C 8002ED5C 02408021 */  addu       $s0, $s2, $zero
/* 2F960 8002ED60 0800BBB4 */  j          .L8002EED0
/* 2F964 8002ED64 02008821 */   addu      $s1, $s0, $zero
.L8002ED68:
/* 2F968 8002ED68 92620005 */  lbu        $v0, 5($s3)
/* 2F96C 8002ED6C 44821000 */  mtc1       $v0, $f2
/* 2F970 8002ED70 00000000 */  nop
/* 2F974 8002ED74 468010A0 */  cvt.s.w    $f2, $f2
/* 2F978 8002ED78 3C01800F */  lui        $at, %hi(D_800F5028)
/* 2F97C 8002ED7C C4205028 */  lwc1       $f0, %lo(D_800F5028)($at)
/* 2F980 8002ED80 46001082 */  mul.s      $f2, $f2, $f0
/* 2F984 8002ED84 3C014F00 */  lui        $at, 0x4f00
/* 2F988 8002ED88 44810000 */  mtc1       $at, $f0
/* 2F98C 8002ED8C 00000000 */  nop
/* 2F990 8002ED90 4602003E */  c.le.s     $f0, $f2
/* 2F994 8002ED94 00000000 */  nop
/* 2F998 8002ED98 00000000 */  nop
/* 2F99C 8002ED9C 45030006 */  bc1tl      .L8002EDB8
/* 2F9A0 8002EDA0 46001001 */   sub.s     $f0, $f2, $f0
/* 2F9A4 8002EDA4 4600100D */  trunc.w.s  $f0, $f2
/* 2F9A8 8002EDA8 44040000 */  mfc1       $a0, $f0
/* 2F9AC 8002EDAC 00000000 */  nop
/* 2F9B0 8002EDB0 0800BB74 */  j          .L8002EDD0
/* 2F9B4 8002EDB4 00809021 */   addu      $s2, $a0, $zero
.L8002EDB8:
/* 2F9B8 8002EDB8 3C028000 */  lui        $v0, 0x8000
/* 2F9BC 8002EDBC 4600008D */  trunc.w.s  $f2, $f0
/* 2F9C0 8002EDC0 44041000 */  mfc1       $a0, $f2
/* 2F9C4 8002EDC4 00000000 */  nop
/* 2F9C8 8002EDC8 00822025 */  or         $a0, $a0, $v0
/* 2F9CC 8002EDCC 00809021 */  addu       $s2, $a0, $zero
.L8002EDD0:
/* 2F9D0 8002EDD0 3242FFFF */  andi       $v0, $s2, 0xffff
/* 2F9D4 8002EDD4 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2F9D8 8002EDD8 50400001 */  beql       $v0, $zero, .L8002EDE0
/* 2F9DC 8002EDDC 241200FF */   addiu     $s2, $zero, 0xff
.L8002EDE0:
/* 2F9E0 8002EDE0 92620006 */  lbu        $v0, 6($s3)
/* 2F9E4 8002EDE4 44821000 */  mtc1       $v0, $f2
/* 2F9E8 8002EDE8 00000000 */  nop
/* 2F9EC 8002EDEC 468010A0 */  cvt.s.w    $f2, $f2
/* 2F9F0 8002EDF0 3C01800F */  lui        $at, %hi(D_800F5028)
/* 2F9F4 8002EDF4 C4205028 */  lwc1       $f0, %lo(D_800F5028)($at)
/* 2F9F8 8002EDF8 46001082 */  mul.s      $f2, $f2, $f0
/* 2F9FC 8002EDFC 3C014F00 */  lui        $at, 0x4f00
/* 2FA00 8002EE00 44810000 */  mtc1       $at, $f0
/* 2FA04 8002EE04 00000000 */  nop
/* 2FA08 8002EE08 4602003E */  c.le.s     $f0, $f2
/* 2FA0C 8002EE0C 00000000 */  nop
/* 2FA10 8002EE10 00000000 */  nop
/* 2FA14 8002EE14 45030006 */  bc1tl      .L8002EE30
/* 2FA18 8002EE18 46001001 */   sub.s     $f0, $f2, $f0
/* 2FA1C 8002EE1C 4600100D */  trunc.w.s  $f0, $f2
/* 2FA20 8002EE20 44040000 */  mfc1       $a0, $f0
/* 2FA24 8002EE24 00000000 */  nop
/* 2FA28 8002EE28 0800BB92 */  j          .L8002EE48
/* 2FA2C 8002EE2C 00808821 */   addu      $s1, $a0, $zero
.L8002EE30:
/* 2FA30 8002EE30 3C028000 */  lui        $v0, 0x8000
/* 2FA34 8002EE34 4600008D */  trunc.w.s  $f2, $f0
/* 2FA38 8002EE38 44041000 */  mfc1       $a0, $f2
/* 2FA3C 8002EE3C 00000000 */  nop
/* 2FA40 8002EE40 00822025 */  or         $a0, $a0, $v0
/* 2FA44 8002EE44 00808821 */  addu       $s1, $a0, $zero
.L8002EE48:
/* 2FA48 8002EE48 3222FFFF */  andi       $v0, $s1, 0xffff
/* 2FA4C 8002EE4C 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2FA50 8002EE50 50400001 */  beql       $v0, $zero, .L8002EE58
/* 2FA54 8002EE54 241100FF */   addiu     $s1, $zero, 0xff
.L8002EE58:
/* 2FA58 8002EE58 92620007 */  lbu        $v0, 7($s3)
/* 2FA5C 8002EE5C 44821000 */  mtc1       $v0, $f2
/* 2FA60 8002EE60 00000000 */  nop
/* 2FA64 8002EE64 468010A0 */  cvt.s.w    $f2, $f2
/* 2FA68 8002EE68 3C01800F */  lui        $at, %hi(D_800F5028)
/* 2FA6C 8002EE6C C4205028 */  lwc1       $f0, %lo(D_800F5028)($at)
/* 2FA70 8002EE70 46001082 */  mul.s      $f2, $f2, $f0
/* 2FA74 8002EE74 3C014F00 */  lui        $at, 0x4f00
/* 2FA78 8002EE78 44810000 */  mtc1       $at, $f0
/* 2FA7C 8002EE7C 00000000 */  nop
/* 2FA80 8002EE80 4602003E */  c.le.s     $f0, $f2
/* 2FA84 8002EE84 00000000 */  nop
/* 2FA88 8002EE88 00000000 */  nop
/* 2FA8C 8002EE8C 45030006 */  bc1tl      .L8002EEA8
/* 2FA90 8002EE90 46001001 */   sub.s     $f0, $f2, $f0
.L8002EE94:
/* 2FA94 8002EE94 4600100D */  trunc.w.s  $f0, $f2
/* 2FA98 8002EE98 44040000 */  mfc1       $a0, $f0
/* 2FA9C 8002EE9C 00000000 */  nop
/* 2FAA0 8002EEA0 0800BBB0 */  j          .L8002EEC0
/* 2FAA4 8002EEA4 00808021 */   addu      $s0, $a0, $zero
.L8002EEA8:
/* 2FAA8 8002EEA8 3C028000 */  lui        $v0, 0x8000
/* 2FAAC 8002EEAC 4600008D */  trunc.w.s  $f2, $f0
/* 2FAB0 8002EEB0 44041000 */  mfc1       $a0, $f2
/* 2FAB4 8002EEB4 00000000 */  nop
/* 2FAB8 8002EEB8 00822025 */  or         $a0, $a0, $v0
/* 2FABC 8002EEBC 00808021 */  addu       $s0, $a0, $zero
.L8002EEC0:
/* 2FAC0 8002EEC0 3202FFFF */  andi       $v0, $s0, 0xffff
/* 2FAC4 8002EEC4 2C420100 */  sltiu      $v0, $v0, 0x100
/* 2FAC8 8002EEC8 50400001 */  beql       $v0, $zero, .L8002EED0
/* 2FACC 8002EECC 241000FF */   addiu     $s0, $zero, 0xff
.L8002EED0:
/* 2FAD0 8002EED0 3C03800F */  lui        $v1, %hi(D_800EE322)
/* 2FAD4 8002EED4 9463E322 */  lhu        $v1, %lo(D_800EE322)($v1)
/* 2FAD8 8002EED8 3242FFFF */  andi       $v0, $s2, 0xffff
/* 2FADC 8002EEDC 14620009 */  bne        $v1, $v0, .L8002EF04
/* 2FAE0 8002EEE0 3222FFFF */   andi      $v0, $s1, 0xffff
/* 2FAE4 8002EEE4 3C03800F */  lui        $v1, %hi(D_800EE732)
/* 2FAE8 8002EEE8 9463E732 */  lhu        $v1, %lo(D_800EE732)($v1)
/* 2FAEC 8002EEEC 14620005 */  bne        $v1, $v0, .L8002EF04
/* 2FAF0 8002EEF0 3202FFFF */   andi      $v0, $s0, 0xffff
/* 2FAF4 8002EEF4 3C03800F */  lui        $v1, %hi(D_800EDEC8)
/* 2FAF8 8002EEF8 9463DEC8 */  lhu        $v1, %lo(D_800EDEC8)($v1)
/* 2FAFC 8002EEFC 10620016 */  beq        $v1, $v0, .L8002EF58
/* 2FB00 8002EF00 00000000 */   nop
.L8002EF04:
/* 2FB04 8002EF04 3C01800F */  lui        $at, %hi(D_800EE322)
/* 2FB08 8002EF08 A432E322 */  sh         $s2, %lo(D_800EE322)($at)
/* 2FB0C 8002EF0C 3C01800F */  lui        $at, %hi(D_800EE732)
/* 2FB10 8002EF10 A431E732 */  sh         $s1, %lo(D_800EE732)($at)
/* 2FB14 8002EF14 3C01800F */  lui        $at, %hi(D_800EDEC8)
/* 2FB18 8002EF18 A430DEC8 */  sh         $s0, %lo(D_800EDEC8)($at)
/* 2FB1C 8002EF1C 3C06800F */  lui        $a2, %hi(D_800EE322)
/* 2FB20 8002EF20 94C6E322 */  lhu        $a2, %lo(D_800EE322)($a2)
/* 2FB24 8002EF24 00063600 */  sll        $a2, $a2, 0x18
/* 2FB28 8002EF28 3C02800F */  lui        $v0, %hi(D_800EE732)
/* 2FB2C 8002EF2C 9442E732 */  lhu        $v0, %lo(D_800EE732)($v0)
/* 2FB30 8002EF30 00021400 */  sll        $v0, $v0, 0x10
/* 2FB34 8002EF34 00C23021 */  addu       $a2, $a2, $v0
/* 2FB38 8002EF38 3C02800F */  lui        $v0, %hi(D_800EDEC8)
/* 2FB3C 8002EF3C 9442DEC8 */  lhu        $v0, %lo(D_800EDEC8)($v0)
/* 2FB40 8002EF40 00021200 */  sll        $v0, $v0, 8
/* 2FB44 8002EF44 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2FB48 8002EF48 248437DC */  addiu      $a0, $a0, %lo(D_800F37DC)
/* 2FB4C 8002EF4C 24050001 */  addiu      $a1, $zero, 1
/* 2FB50 8002EF50 0C00CFEC */  jal        func_80033FB0
/* 2FB54 8002EF54 00C23021 */   addu      $a2, $a2, $v0
.L8002EF58:
/* 2FB58 8002EF58 8E82000C */  lw         $v0, 0xc($s4)
/* 2FB5C 8002EF5C 8C430024 */  lw         $v1, 0x24($v0)
/* 2FB60 8002EF60 3C02800F */  lui        $v0, %hi(D_800F328C)
/* 2FB64 8002EF64 8C42328C */  lw         $v0, %lo(D_800F328C)($v0)
/* 2FB68 8002EF68 106206FD */  beq        $v1, $v0, .L80030B60
/* 2FB6C 8002EF6C 3C030E00 */   lui       $v1, 0xe00
/* 2FB70 8002EF70 8EA20000 */  lw         $v0, ($s5)
/* 2FB74 8002EF74 00431024 */  and        $v0, $v0, $v1
/* 2FB78 8002EF78 144006F9 */  bnez       $v0, .L80030B60
/* 2FB7C 8002EF7C 00000000 */   nop
/* 2FB80 8002EF80 3C02800F */  lui        $v0, %hi(D_800F64FA)
/* 2FB84 8002EF84 944264FA */  lhu        $v0, %lo(D_800F64FA)($v0)
/* 2FB88 8002EF88 24420001 */  addiu      $v0, $v0, 1
/* 2FB8C 8002EF8C 3C01800F */  lui        $at, %hi(D_800F64FA)
/* 2FB90 8002EF90 A42264FA */  sh         $v0, %lo(D_800F64FA)($at)
/* 2FB94 8002EF94 8E87000C */  lw         $a3, 0xc($s4)
/* 2FB98 8002EF98 8CE20024 */  lw         $v0, 0x24($a3)
/* 2FB9C 8002EF9C 3C01800F */  lui        $at, %hi(D_800F328C)
/* 2FBA0 8002EFA0 AC22328C */  sw         $v0, %lo(D_800F328C)($at)
/* 2FBA4 8002EFA4 82830003 */  lb         $v1, 3($s4)
/* 2FBA8 8002EFA8 2402FFFF */  addiu      $v0, $zero, -1
/* 2FBAC 8002EFAC 10620006 */  beq        $v1, $v0, .L8002EFC8
/* 2FBB0 8002EFB0 00034600 */   sll       $t0, $v1, 0x18
/* 2FBB4 8002EFB4 8EA20000 */  lw         $v0, ($s5)
/* 2FBB8 8002EFB8 3C030004 */  lui        $v1, 4
/* 2FBBC 8002EFBC 00431025 */  or         $v0, $v0, $v1
/* 2FBC0 8002EFC0 0800BBF3 */  j          .L8002EFCC
/* 2FBC4 8002EFC4 AEA20000 */   sw        $v0, ($s5)
.L8002EFC8:
/* 2FBC8 8002EFC8 8CE80024 */  lw         $t0, 0x24($a3)
.L8002EFCC:
/* 2FBCC 8002EFCC 90E30018 */  lbu        $v1, 0x18($a3)
/* 2FBD0 8002EFD0 24020002 */  addiu      $v0, $zero, 2
/* 2FBD4 8002EFD4 106202F4 */  beq        $v1, $v0, .L8002FBA8
/* 2FBD8 8002EFD8 00000000 */   nop
/* 2FBDC 8002EFDC 3C02800F */  lui        $v0, %hi(D_800F37DC)
/* 2FBE0 8002EFE0 8C4237DC */  lw         $v0, %lo(D_800F37DC)($v0)
/* 2FBE4 8002EFE4 24430008 */  addiu      $v1, $v0, 8
/* 2FBE8 8002EFE8 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2FBEC 8002EFEC AC2337DC */  sw         $v1, %lo(D_800F37DC)($at)
/* 2FBF0 8002EFF0 3C03E300 */  lui        $v1, 0xe300
/* 2FBF4 8002EFF4 34631001 */  ori        $v1, $v1, 0x1001
/* 2FBF8 8002EFF8 AC430000 */  sw         $v1, ($v0)
/* 2FBFC 8002EFFC AC400004 */  sw         $zero, 4($v0)
/* 2FC00 8002F000 90E20019 */  lbu        $v0, 0x19($a3)
/* 2FC04 8002F004 10400137 */  beqz       $v0, .L8002F4E4
/* 2FC08 8002F008 00401821 */   addu      $v1, $v0, $zero
/* 2FC0C 8002F00C 24020001 */  addiu      $v0, $zero, 1
/* 2FC10 8002F010 10620012 */  beq        $v1, $v0, .L8002F05C
/* 2FC14 8002F014 28620002 */   slti      $v0, $v1, 2
/* 2FC18 8002F018 50400005 */  beql       $v0, $zero, .L8002F030
/* 2FC1C 8002F01C 24020002 */   addiu     $v0, $zero, 2
/* 2FC20 8002F020 1060001B */  beqz       $v1, .L8002F090
/* 2FC24 8002F024 24030002 */   addiu     $v1, $zero, 2
/* 2FC28 8002F028 0800BC30 */  j          .L8002F0C0
/* 2FC2C 8002F02C 24020003 */   addiu     $v0, $zero, 3
.L8002F030:
/* 2FC30 8002F030 14620023 */  bne        $v1, $v0, .L8002F0C0
/* 2FC34 8002F034 24020003 */   addiu     $v0, $zero, 3
/* 2FC38 8002F038 3C01800F */  lui        $at, %hi(D_800ED568)
/* 2FC3C 8002F03C AC23D568 */  sw         $v1, %lo(D_800ED568)($at)
/* 2FC40 8002F040 3C01800F */  lui        $at, %hi(D_800ED734)
/* 2FC44 8002F044 AC20D734 */  sw         $zero, %lo(D_800ED734)($at)
/* 2FC48 8002F048 3C01800F */  lui        $at, %hi(D_800F64C0)
/* 2FC4C 8002F04C AC2364C0 */  sw         $v1, %lo(D_800F64C0)($at)
/* 2FC50 8002F050 3C01800F */  lui        $at, %hi(D_800EC6F4)
/* 2FC54 8002F054 0800BC3A */  j          .L8002F0E8
/* 2FC58 8002F058 AC23C6F4 */   sw        $v1, %lo(D_800EC6F4)($at)
.L8002F05C:
/* 2FC5C 8002F05C 24020002 */  addiu      $v0, $zero, 2
/* 2FC60 8002F060 3C01800F */  lui        $at, %hi(D_800ED568)
/* 2FC64 8002F064 AC22D568 */  sw         $v0, %lo(D_800ED568)($at)
/* 2FC68 8002F068 24020001 */  addiu      $v0, $zero, 1
/* 2FC6C 8002F06C 3C01800F */  lui        $at, %hi(D_800ED734)
/* 2FC70 8002F070 AC22D734 */  sw         $v0, %lo(D_800ED734)($at)
/* 2FC74 8002F074 3C01800F */  lui        $at, %hi(D_800F64C0)
/* 2FC78 8002F078 AC2264C0 */  sw         $v0, %lo(D_800F64C0)($at)
/* 2FC7C 8002F07C 3C01800F */  lui        $at, %hi(D_800EC6F4)
/* 2FC80 8002F080 AC22C6F4 */  sw         $v0, %lo(D_800EC6F4)($at)
/* 2FC84 8002F084 3C01800F */  lui        $at, %hi(D_800F37E4)
/* 2FC88 8002F088 0800BC3C */  j          .L8002F0F0
/* 2FC8C 8002F08C AC2237E4 */   sw        $v0, %lo(D_800F37E4)($at)
.L8002F090:
/* 2FC90 8002F090 3C01800F */  lui        $at, %hi(D_800ED568)
/* 2FC94 8002F094 AC23D568 */  sw         $v1, %lo(D_800ED568)($at)
/* 2FC98 8002F098 24020003 */  addiu      $v0, $zero, 3
/* 2FC9C 8002F09C 3C01800F */  lui        $at, %hi(D_800ED734)
/* 2FCA0 8002F0A0 AC22D734 */  sw         $v0, %lo(D_800ED734)($at)
/* 2FCA4 8002F0A4 3C01800F */  lui        $at, %hi(D_800F64C0)
/* 2FCA8 8002F0A8 AC2064C0 */  sw         $zero, %lo(D_800F64C0)($at)
/* 2FCAC 8002F0AC 3C01800F */  lui        $at, %hi(D_800EC6F4)
/* 2FCB0 8002F0B0 AC20C6F4 */  sw         $zero, %lo(D_800EC6F4)($at)
/* 2FCB4 8002F0B4 3C01800F */  lui        $at, %hi(D_800F37E4)
/* 2FCB8 8002F0B8 0800BC3C */  j          .L8002F0F0
/* 2FCBC 8002F0BC AC2337E4 */   sw        $v1, %lo(D_800F37E4)($at)
.L8002F0C0:
/* 2FCC0 8002F0C0 3C01800F */  lui        $at, %hi(D_800ED568)
/* 2FCC4 8002F0C4 AC22D568 */  sw         $v0, %lo(D_800ED568)($at)
/* 2FCC8 8002F0C8 3C01800F */  lui        $at, %hi(D_800ED734)
/* 2FCCC 8002F0CC AC20D734 */  sw         $zero, %lo(D_800ED734)($at)
/* 2FCD0 8002F0D0 24020004 */  addiu      $v0, $zero, 4
/* 2FCD4 8002F0D4 3C01800F */  lui        $at, %hi(D_800F64C0)
/* 2FCD8 8002F0D8 AC2264C0 */  sw         $v0, %lo(D_800F64C0)($at)
/* 2FCDC 8002F0DC 24020002 */  addiu      $v0, $zero, 2
/* 2FCE0 8002F0E0 3C01800F */  lui        $at, %hi(D_800EC6F4)
/* 2FCE4 8002F0E4 AC22C6F4 */  sw         $v0, %lo(D_800EC6F4)($at)
.L8002F0E8:
/* 2FCE8 8002F0E8 3C01800F */  lui        $at, %hi(D_800F37E4)
/* 2FCEC 8002F0EC AC2037E4 */  sw         $zero, %lo(D_800F37E4)($at)
.L8002F0F0:
/* 2FCF0 8002F0F0 3C05800F */  lui        $a1, %hi(D_800F37DC)
/* 2FCF4 8002F0F4 8CA537DC */  lw         $a1, %lo(D_800F37DC)($a1)
/* 2FCF8 8002F0F8 24A60008 */  addiu      $a2, $a1, 8
/* 2FCFC 8002F0FC 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2FD00 8002F100 AC2637DC */  sw         $a2, %lo(D_800F37DC)($at)
/* 2FD04 8002F104 90E30018 */  lbu        $v1, 0x18($a3)
/* 2FD08 8002F108 30630007 */  andi       $v1, $v1, 7
/* 2FD0C 8002F10C 00031D40 */  sll        $v1, $v1, 0x15
/* 2FD10 8002F110 3C04800F */  lui        $a0, %hi(D_800ED568)
/* 2FD14 8002F114 8C84D568 */  lw         $a0, %lo(D_800ED568)($a0)
/* 2FD18 8002F118 30840003 */  andi       $a0, $a0, 3
/* 2FD1C 8002F11C 000424C0 */  sll        $a0, $a0, 0x13
/* 2FD20 8002F120 3C02FD00 */  lui        $v0, 0xfd00
/* 2FD24 8002F124 00821025 */  or         $v0, $a0, $v0
/* 2FD28 8002F128 00621825 */  or         $v1, $v1, $v0
/* 2FD2C 8002F12C ACA30000 */  sw         $v1, ($a1)
/* 2FD30 8002F130 ACA80004 */  sw         $t0, 4($a1)
/* 2FD34 8002F134 24A20010 */  addiu      $v0, $a1, 0x10
/* 2FD38 8002F138 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2FD3C 8002F13C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2FD40 8002F140 90E20018 */  lbu        $v0, 0x18($a3)
/* 2FD44 8002F144 30420007 */  andi       $v0, $v0, 7
/* 2FD48 8002F148 00021540 */  sll        $v0, $v0, 0x15
/* 2FD4C 8002F14C 3C03F500 */  lui        $v1, 0xf500
/* 2FD50 8002F150 00832025 */  or         $a0, $a0, $v1
/* 2FD54 8002F154 00441025 */  or         $v0, $v0, $a0
/* 2FD58 8002F158 ACA20008 */  sw         $v0, 8($a1)
/* 2FD5C 8002F15C 92820002 */  lbu        $v0, 2($s4)
/* 2FD60 8002F160 30450003 */  andi       $a1, $v0, 3
/* 2FD64 8002F164 00052C80 */  sll        $a1, $a1, 0x12
/* 2FD68 8002F168 3C020700 */  lui        $v0, 0x700
/* 2FD6C 8002F16C 00A22825 */  or         $a1, $a1, $v0
/* 2FD70 8002F170 92820001 */  lbu        $v0, 1($s4)
/* 2FD74 8002F174 30440003 */  andi       $a0, $v0, 3
/* 2FD78 8002F178 90E3001B */  lbu        $v1, 0x1b($a3)
/* 2FD7C 8002F17C 2C620003 */  sltiu      $v0, $v1, 3
/* 2FD80 8002F180 14400021 */  bnez       $v0, .L8002F208
/* 2FD84 8002F184 00042200 */   sll       $a0, $a0, 8
/* 2FD88 8002F188 2C620005 */  sltiu      $v0, $v1, 5
/* 2FD8C 8002F18C 1440001F */  bnez       $v0, .L8002F20C
/* 2FD90 8002F190 34828000 */   ori       $v0, $a0, 0x8000
/* 2FD94 8002F194 2C620009 */  sltiu      $v0, $v1, 9
/* 2FD98 8002F198 1440001C */  bnez       $v0, .L8002F20C
/* 2FD9C 8002F19C 3482C000 */   ori       $v0, $a0, 0xc000
/* 2FDA0 8002F1A0 2C620011 */  sltiu      $v0, $v1, 0x11
/* 2FDA4 8002F1A4 14400016 */  bnez       $v0, .L8002F200
/* 2FDA8 8002F1A8 3C020001 */   lui       $v0, 1
/* 2FDAC 8002F1AC 2C620021 */  sltiu      $v0, $v1, 0x21
/* 2FDB0 8002F1B0 14400010 */  bnez       $v0, .L8002F1F4
/* 2FDB4 8002F1B4 3C020001 */   lui       $v0, 1
/* 2FDB8 8002F1B8 2C620041 */  sltiu      $v0, $v1, 0x41
/* 2FDBC 8002F1BC 1440000A */  bnez       $v0, .L8002F1E8
/* 2FDC0 8002F1C0 3C020001 */   lui       $v0, 1
/* 2FDC4 8002F1C4 2C620081 */  sltiu      $v0, $v1, 0x81
/* 2FDC8 8002F1C8 50400005 */  beql       $v0, $zero, .L8002F1E0
/* 2FDCC 8002F1CC 3C020002 */   lui       $v0, 2
/* 2FDD0 8002F1D0 3C020001 */  lui        $v0, 1
/* 2FDD4 8002F1D4 3442C000 */  ori        $v0, $v0, 0xc000
/* 2FDD8 8002F1D8 0800BC83 */  j          .L8002F20C
/* 2FDDC 8002F1DC 00821025 */   or        $v0, $a0, $v0
.L8002F1E0:
/* 2FDE0 8002F1E0 0800BC83 */  j          .L8002F20C
/* 2FDE4 8002F1E4 00821025 */   or        $v0, $a0, $v0
.L8002F1E8:
/* 2FDE8 8002F1E8 34428000 */  ori        $v0, $v0, 0x8000
/* 2FDEC 8002F1EC 0800BC83 */  j          .L8002F20C
/* 2FDF0 8002F1F0 00821025 */   or        $v0, $a0, $v0
.L8002F1F4:
/* 2FDF4 8002F1F4 34424000 */  ori        $v0, $v0, 0x4000
/* 2FDF8 8002F1F8 0800BC83 */  j          .L8002F20C
/* 2FDFC 8002F1FC 00821025 */   or        $v0, $a0, $v0
.L8002F200:
/* 2FE00 8002F200 0800BC83 */  j          .L8002F20C
/* 2FE04 8002F204 00821025 */   or        $v0, $a0, $v0
.L8002F208:
/* 2FE08 8002F208 34824000 */  ori        $v0, $a0, 0x4000
.L8002F20C:
/* 2FE0C 8002F20C 00A22025 */  or         $a0, $a1, $v0
/* 2FE10 8002F210 90E3001A */  lbu        $v1, 0x1a($a3)
/* 2FE14 8002F214 2C620003 */  sltiu      $v0, $v1, 3
/* 2FE18 8002F218 14400014 */  bnez       $v0, .L8002F26C
/* 2FE1C 8002F21C 34820010 */   ori       $v0, $a0, 0x10
/* 2FE20 8002F220 2C620005 */  sltiu      $v0, $v1, 5
/* 2FE24 8002F224 14400011 */  bnez       $v0, .L8002F26C
/* 2FE28 8002F228 34820020 */   ori       $v0, $a0, 0x20
/* 2FE2C 8002F22C 2C620009 */  sltiu      $v0, $v1, 9
/* 2FE30 8002F230 1440000E */  bnez       $v0, .L8002F26C
/* 2FE34 8002F234 34820030 */   ori       $v0, $a0, 0x30
/* 2FE38 8002F238 2C620011 */  sltiu      $v0, $v1, 0x11
/* 2FE3C 8002F23C 1440000B */  bnez       $v0, .L8002F26C
/* 2FE40 8002F240 34820040 */   ori       $v0, $a0, 0x40
/* 2FE44 8002F244 2C620021 */  sltiu      $v0, $v1, 0x21
/* 2FE48 8002F248 14400008 */  bnez       $v0, .L8002F26C
/* 2FE4C 8002F24C 34820050 */   ori       $v0, $a0, 0x50
/* 2FE50 8002F250 2C620041 */  sltiu      $v0, $v1, 0x41
/* 2FE54 8002F254 14400005 */  bnez       $v0, .L8002F26C
/* 2FE58 8002F258 34820060 */   ori       $v0, $a0, 0x60
/* 2FE5C 8002F25C 2C620081 */  sltiu      $v0, $v1, 0x81
/* 2FE60 8002F260 14400002 */  bnez       $v0, .L8002F26C
/* 2FE64 8002F264 34820070 */   ori       $v0, $a0, 0x70
/* 2FE68 8002F268 34820080 */  ori        $v0, $a0, 0x80
.L8002F26C:
/* 2FE6C 8002F26C ACC20004 */  sw         $v0, 4($a2)
/* 2FE70 8002F270 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 2FE74 8002F274 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 2FE78 8002F278 24640008 */  addiu      $a0, $v1, 8
/* 2FE7C 8002F27C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2FE80 8002F280 AC2437DC */  sw         $a0, %lo(D_800F37DC)($at)
/* 2FE84 8002F284 3C02E600 */  lui        $v0, 0xe600
/* 2FE88 8002F288 AC620000 */  sw         $v0, ($v1)
/* 2FE8C 8002F28C AC600004 */  sw         $zero, 4($v1)
/* 2FE90 8002F290 24620010 */  addiu      $v0, $v1, 0x10
/* 2FE94 8002F294 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2FE98 8002F298 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2FE9C 8002F29C 3C02F300 */  lui        $v0, 0xf300
/* 2FEA0 8002F2A0 AC620008 */  sw         $v0, 8($v1)
/* 2FEA4 8002F2A4 90E2001A */  lbu        $v0, 0x1a($a3)
/* 2FEA8 8002F2A8 3C03800F */  lui        $v1, %hi(D_800F64C0)
/* 2FEAC 8002F2AC 8C6364C0 */  lw         $v1, %lo(D_800F64C0)($v1)
/* 2FEB0 8002F2B0 00430018 */  mult       $v0, $v1
/* 2FEB4 8002F2B4 00001012 */  mflo       $v0
/* 2FEB8 8002F2B8 000210C2 */  srl        $v0, $v0, 3
/* 2FEBC 8002F2BC 00000000 */  nop
/* 2FEC0 8002F2C0 10400002 */  beqz       $v0, .L8002F2CC
/* 2FEC4 8002F2C4 24060800 */   addiu     $a2, $zero, 0x800
/* 2FEC8 8002F2C8 244607FF */  addiu      $a2, $v0, 0x7ff
.L8002F2CC:
/* 2FECC 8002F2CC 90E5001A */  lbu        $a1, 0x1a($a3)
/* 2FED0 8002F2D0 90E2001B */  lbu        $v0, 0x1b($a3)
/* 2FED4 8002F2D4 00A20018 */  mult       $a1, $v0
/* 2FED8 8002F2D8 00002812 */  mflo       $a1
/* 2FEDC 8002F2DC 3C02800F */  lui        $v0, %hi(D_800ED734)
/* 2FEE0 8002F2E0 8C42D734 */  lw         $v0, %lo(D_800ED734)($v0)
/* 2FEE4 8002F2E4 00A22821 */  addu       $a1, $a1, $v0
/* 2FEE8 8002F2E8 3C02800F */  lui        $v0, %hi(D_800F37E4)
/* 2FEEC 8002F2EC 8C4237E4 */  lw         $v0, %lo(D_800F37E4)($v0)
/* 2FEF0 8002F2F0 00452806 */  srlv       $a1, $a1, $v0
/* 2FEF4 8002F2F4 24A5FFFF */  addiu      $a1, $a1, -1
/* 2FEF8 8002F2F8 2CA20800 */  sltiu      $v0, $a1, 0x800
/* 2FEFC 8002F2FC 50400001 */  beql       $v0, $zero, .L8002F304
/* 2FF00 8002F300 240507FF */   addiu     $a1, $zero, 0x7ff
.L8002F304:
/* 2FF04 8002F304 30A50FFF */  andi       $a1, $a1, 0xfff
/* 2FF08 8002F308 00052B00 */  sll        $a1, $a1, 0xc
/* 2FF0C 8002F30C 3C020700 */  lui        $v0, 0x700
/* 2FF10 8002F310 00A22825 */  or         $a1, $a1, $v0
/* 2FF14 8002F314 90E2001A */  lbu        $v0, 0x1a($a3)
/* 2FF18 8002F318 3C03800F */  lui        $v1, %hi(D_800F64C0)
/* 2FF1C 8002F31C 8C6364C0 */  lw         $v1, %lo(D_800F64C0)($v1)
/* 2FF20 8002F320 00430018 */  mult       $v0, $v1
/* 2FF24 8002F324 00001012 */  mflo       $v0
/* 2FF28 8002F328 000210C2 */  srl        $v0, $v0, 3
/* 2FF2C 8002F32C 00000000 */  nop
/* 2FF30 8002F330 50400007 */  beql       $v0, $zero, .L8002F350
/* 2FF34 8002F334 30C20FFF */   andi      $v0, $a2, 0xfff
/* 2FF38 8002F338 00C2001B */  divu       $zero, $a2, $v0
/* 2FF3C 8002F33C 14400002 */  bnez       $v0, .L8002F348
/* 2FF40 8002F340 00000000 */   nop
/* 2FF44 8002F344 0007000D */  break      7
.L8002F348:
/* 2FF48 8002F348 00001012 */   mflo      $v0
/* 2FF4C 8002F34C 30420FFF */  andi       $v0, $v0, 0xfff
.L8002F350:
/* 2FF50 8002F350 00A21025 */  or         $v0, $a1, $v0
/* 2FF54 8002F354 AC820004 */  sw         $v0, 4($a0)
/* 2FF58 8002F358 3C05800F */  lui        $a1, %hi(D_800F37DC)
/* 2FF5C 8002F35C 8CA537DC */  lw         $a1, %lo(D_800F37DC)($a1)
/* 2FF60 8002F360 24A30008 */  addiu      $v1, $a1, 8
/* 2FF64 8002F364 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2FF68 8002F368 AC2337DC */  sw         $v1, %lo(D_800F37DC)($at)
/* 2FF6C 8002F36C 3C02E700 */  lui        $v0, 0xe700
/* 2FF70 8002F370 ACA20000 */  sw         $v0, ($a1)
/* 2FF74 8002F374 ACA00004 */  sw         $zero, 4($a1)
/* 2FF78 8002F378 24A20010 */  addiu      $v0, $a1, 0x10
/* 2FF7C 8002F37C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2FF80 8002F380 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2FF84 8002F384 00603021 */  addu       $a2, $v1, $zero
/* 2FF88 8002F388 90E40018 */  lbu        $a0, 0x18($a3)
/* 2FF8C 8002F38C 30840007 */  andi       $a0, $a0, 7
/* 2FF90 8002F390 00042540 */  sll        $a0, $a0, 0x15
/* 2FF94 8002F394 90E20019 */  lbu        $v0, 0x19($a3)
/* 2FF98 8002F398 30420003 */  andi       $v0, $v0, 3
/* 2FF9C 8002F39C 000214C0 */  sll        $v0, $v0, 0x13
/* 2FFA0 8002F3A0 3C03F500 */  lui        $v1, 0xf500
/* 2FFA4 8002F3A4 00431025 */  or         $v0, $v0, $v1
/* 2FFA8 8002F3A8 00822025 */  or         $a0, $a0, $v0
/* 2FFAC 8002F3AC 90E2001A */  lbu        $v0, 0x1a($a3)
/* 2FFB0 8002F3B0 3C03800F */  lui        $v1, %hi(D_800EC6F4)
/* 2FFB4 8002F3B4 8C63C6F4 */  lw         $v1, %lo(D_800EC6F4)($v1)
/* 2FFB8 8002F3B8 00430018 */  mult       $v0, $v1
/* 2FFBC 8002F3BC 00001012 */  mflo       $v0
/* 2FFC0 8002F3C0 24420007 */  addiu      $v0, $v0, 7
/* 2FFC4 8002F3C4 000210C2 */  srl        $v0, $v0, 3
/* 2FFC8 8002F3C8 304201FF */  andi       $v0, $v0, 0x1ff
/* 2FFCC 8002F3CC 00021240 */  sll        $v0, $v0, 9
/* 2FFD0 8002F3D0 00822025 */  or         $a0, $a0, $v0
/* 2FFD4 8002F3D4 ACA40008 */  sw         $a0, 8($a1)
/* 2FFD8 8002F3D8 92820002 */  lbu        $v0, 2($s4)
/* 2FFDC 8002F3DC 30450003 */  andi       $a1, $v0, 3
/* 2FFE0 8002F3E0 00052C80 */  sll        $a1, $a1, 0x12
/* 2FFE4 8002F3E4 92820001 */  lbu        $v0, 1($s4)
/* 2FFE8 8002F3E8 30440003 */  andi       $a0, $v0, 3
/* 2FFEC 8002F3EC 90E3001B */  lbu        $v1, 0x1b($a3)
/* 2FFF0 8002F3F0 2C620003 */  sltiu      $v0, $v1, 3
/* 2FFF4 8002F3F4 14400021 */  bnez       $v0, .L8002F47C
/* 2FFF8 8002F3F8 00042200 */   sll       $a0, $a0, 8
/* 2FFFC 8002F3FC 2C620005 */  sltiu      $v0, $v1, 5
/* 30000 8002F400 1440001F */  bnez       $v0, .L8002F480
/* 30004 8002F404 34828000 */   ori       $v0, $a0, 0x8000
/* 30008 8002F408 2C620009 */  sltiu      $v0, $v1, 9
/* 3000C 8002F40C 1440001C */  bnez       $v0, .L8002F480
/* 30010 8002F410 3482C000 */   ori       $v0, $a0, 0xc000
/* 30014 8002F414 2C620011 */  sltiu      $v0, $v1, 0x11
/* 30018 8002F418 14400016 */  bnez       $v0, .L8002F474
/* 3001C 8002F41C 3C020001 */   lui       $v0, 1
/* 30020 8002F420 2C620021 */  sltiu      $v0, $v1, 0x21
/* 30024 8002F424 14400010 */  bnez       $v0, .L8002F468
/* 30028 8002F428 3C020001 */   lui       $v0, 1
/* 3002C 8002F42C 2C620041 */  sltiu      $v0, $v1, 0x41
/* 30030 8002F430 1440000A */  bnez       $v0, .L8002F45C
/* 30034 8002F434 3C020001 */   lui       $v0, 1
/* 30038 8002F438 2C620081 */  sltiu      $v0, $v1, 0x81
/* 3003C 8002F43C 50400005 */  beql       $v0, $zero, .L8002F454
/* 30040 8002F440 3C020002 */   lui       $v0, 2
/* 30044 8002F444 3C020001 */  lui        $v0, 1
/* 30048 8002F448 3442C000 */  ori        $v0, $v0, 0xc000
/* 3004C 8002F44C 0800BD20 */  j          .L8002F480
/* 30050 8002F450 00821025 */   or        $v0, $a0, $v0
.L8002F454:
/* 30054 8002F454 0800BD20 */  j          .L8002F480
/* 30058 8002F458 00821025 */   or        $v0, $a0, $v0
.L8002F45C:
/* 3005C 8002F45C 34428000 */  ori        $v0, $v0, 0x8000
/* 30060 8002F460 0800BD20 */  j          .L8002F480
/* 30064 8002F464 00821025 */   or        $v0, $a0, $v0
.L8002F468:
/* 30068 8002F468 34424000 */  ori        $v0, $v0, 0x4000
/* 3006C 8002F46C 0800BD20 */  j          .L8002F480
/* 30070 8002F470 00821025 */   or        $v0, $a0, $v0
.L8002F474:
/* 30074 8002F474 0800BD20 */  j          .L8002F480
/* 30078 8002F478 00821025 */   or        $v0, $a0, $v0
.L8002F47C:
/* 3007C 8002F47C 34824000 */  ori        $v0, $a0, 0x4000
.L8002F480:
/* 30080 8002F480 00A22025 */  or         $a0, $a1, $v0
/* 30084 8002F484 90E3001A */  lbu        $v1, 0x1a($a3)
/* 30088 8002F488 2C620003 */  sltiu      $v0, $v1, 3
/* 3008C 8002F48C 144005A1 */  bnez       $v0, .L80030B14
/* 30090 8002F490 34820010 */   ori       $v0, $a0, 0x10
/* 30094 8002F494 2C620005 */  sltiu      $v0, $v1, 5
/* 30098 8002F498 1440059E */  bnez       $v0, .L80030B14
/* 3009C 8002F49C 34820020 */   ori       $v0, $a0, 0x20
/* 300A0 8002F4A0 2C620009 */  sltiu      $v0, $v1, 9
/* 300A4 8002F4A4 1440059B */  bnez       $v0, .L80030B14
/* 300A8 8002F4A8 34820030 */   ori       $v0, $a0, 0x30
/* 300AC 8002F4AC 2C620011 */  sltiu      $v0, $v1, 0x11
/* 300B0 8002F4B0 14400598 */  bnez       $v0, .L80030B14
/* 300B4 8002F4B4 34820040 */   ori       $v0, $a0, 0x40
/* 300B8 8002F4B8 2C620021 */  sltiu      $v0, $v1, 0x21
/* 300BC 8002F4BC 14400595 */  bnez       $v0, .L80030B14
/* 300C0 8002F4C0 34820050 */   ori       $v0, $a0, 0x50
/* 300C4 8002F4C4 2C620041 */  sltiu      $v0, $v1, 0x41
/* 300C8 8002F4C8 14400592 */  bnez       $v0, .L80030B14
/* 300CC 8002F4CC 34820060 */   ori       $v0, $a0, 0x60
/* 300D0 8002F4D0 2C620081 */  sltiu      $v0, $v1, 0x81
/* 300D4 8002F4D4 1440058F */  bnez       $v0, .L80030B14
/* 300D8 8002F4D8 34820070 */   ori       $v0, $a0, 0x70
/* 300DC 8002F4DC 0800C2C5 */  j          .L80030B14
/* 300E0 8002F4E0 34820080 */   ori       $v0, $a0, 0x80
.L8002F4E4:
/* 300E4 8002F4E4 90E2001A */  lbu        $v0, 0x1a($a3)
/* 300E8 8002F4E8 2C420010 */  sltiu      $v0, $v0, 0x10
/* 300EC 8002F4EC 104000E2 */  beqz       $v0, .L8002F878
/* 300F0 8002F4F0 3C03FD10 */   lui       $v1, 0xfd10
/* 300F4 8002F4F4 3C05800F */  lui        $a1, %hi(D_800F37DC)
/* 300F8 8002F4F8 8CA537DC */  lw         $a1, %lo(D_800F37DC)($a1)
/* 300FC 8002F4FC 24A60008 */  addiu      $a2, $a1, 8
/* 30100 8002F500 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30104 8002F504 AC2637DC */  sw         $a2, %lo(D_800F37DC)($at)
/* 30108 8002F508 90E30018 */  lbu        $v1, 0x18($a3)
/* 3010C 8002F50C 30630007 */  andi       $v1, $v1, 7
/* 30110 8002F510 00031D40 */  sll        $v1, $v1, 0x15
/* 30114 8002F514 90E2001A */  lbu        $v0, 0x1a($a3)
/* 30118 8002F518 00021042 */  srl        $v0, $v0, 1
/* 3011C 8002F51C 2442FFFF */  addiu      $v0, $v0, -1
/* 30120 8002F520 30420FFF */  andi       $v0, $v0, 0xfff
/* 30124 8002F524 3C04FD08 */  lui        $a0, 0xfd08
/* 30128 8002F528 00441025 */  or         $v0, $v0, $a0
/* 3012C 8002F52C 00621825 */  or         $v1, $v1, $v0
/* 30130 8002F530 ACA30000 */  sw         $v1, ($a1)
/* 30134 8002F534 ACA80004 */  sw         $t0, 4($a1)
/* 30138 8002F538 24A20010 */  addiu      $v0, $a1, 0x10
/* 3013C 8002F53C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30140 8002F540 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30144 8002F544 90E30018 */  lbu        $v1, 0x18($a3)
/* 30148 8002F548 30630007 */  andi       $v1, $v1, 7
/* 3014C 8002F54C 00031D40 */  sll        $v1, $v1, 0x15
/* 30150 8002F550 90E2001A */  lbu        $v0, 0x1a($a3)
/* 30154 8002F554 24420001 */  addiu      $v0, $v0, 1
/* 30158 8002F558 00021043 */  sra        $v0, $v0, 1
/* 3015C 8002F55C 24420007 */  addiu      $v0, $v0, 7
/* 30160 8002F560 000210C2 */  srl        $v0, $v0, 3
/* 30164 8002F564 00021240 */  sll        $v0, $v0, 9
/* 30168 8002F568 3C04F508 */  lui        $a0, 0xf508
/* 3016C 8002F56C 00441025 */  or         $v0, $v0, $a0
/* 30170 8002F570 00621825 */  or         $v1, $v1, $v0
/* 30174 8002F574 ACA30008 */  sw         $v1, 8($a1)
/* 30178 8002F578 92820002 */  lbu        $v0, 2($s4)
/* 3017C 8002F57C 30450003 */  andi       $a1, $v0, 3
/* 30180 8002F580 00052C80 */  sll        $a1, $a1, 0x12
/* 30184 8002F584 3C020700 */  lui        $v0, 0x700
/* 30188 8002F588 00A22825 */  or         $a1, $a1, $v0
/* 3018C 8002F58C 92820001 */  lbu        $v0, 1($s4)
/* 30190 8002F590 30440003 */  andi       $a0, $v0, 3
/* 30194 8002F594 90E3001B */  lbu        $v1, 0x1b($a3)
/* 30198 8002F598 2C620003 */  sltiu      $v0, $v1, 3
/* 3019C 8002F59C 14400021 */  bnez       $v0, .L8002F624
/* 301A0 8002F5A0 00042200 */   sll       $a0, $a0, 8
/* 301A4 8002F5A4 2C620005 */  sltiu      $v0, $v1, 5
/* 301A8 8002F5A8 1440001F */  bnez       $v0, .L8002F628
/* 301AC 8002F5AC 34828000 */   ori       $v0, $a0, 0x8000
/* 301B0 8002F5B0 2C620009 */  sltiu      $v0, $v1, 9
/* 301B4 8002F5B4 1440001C */  bnez       $v0, .L8002F628
/* 301B8 8002F5B8 3482C000 */   ori       $v0, $a0, 0xc000
/* 301BC 8002F5BC 2C620011 */  sltiu      $v0, $v1, 0x11
/* 301C0 8002F5C0 14400016 */  bnez       $v0, .L8002F61C
/* 301C4 8002F5C4 3C020001 */   lui       $v0, 1
/* 301C8 8002F5C8 2C620021 */  sltiu      $v0, $v1, 0x21
/* 301CC 8002F5CC 14400010 */  bnez       $v0, .L8002F610
/* 301D0 8002F5D0 3C020001 */   lui       $v0, 1
/* 301D4 8002F5D4 2C620041 */  sltiu      $v0, $v1, 0x41
/* 301D8 8002F5D8 1440000A */  bnez       $v0, .L8002F604
/* 301DC 8002F5DC 3C020001 */   lui       $v0, 1
/* 301E0 8002F5E0 2C620081 */  sltiu      $v0, $v1, 0x81
/* 301E4 8002F5E4 50400005 */  beql       $v0, $zero, .L8002F5FC
/* 301E8 8002F5E8 3C020002 */   lui       $v0, 2
/* 301EC 8002F5EC 3C020001 */  lui        $v0, 1
/* 301F0 8002F5F0 3442C000 */  ori        $v0, $v0, 0xc000
/* 301F4 8002F5F4 0800BD8A */  j          .L8002F628
/* 301F8 8002F5F8 00821025 */   or        $v0, $a0, $v0
.L8002F5FC:
/* 301FC 8002F5FC 0800BD8A */  j          .L8002F628
/* 30200 8002F600 00821025 */   or        $v0, $a0, $v0
.L8002F604:
/* 30204 8002F604 34428000 */  ori        $v0, $v0, 0x8000
/* 30208 8002F608 0800BD8A */  j          .L8002F628
/* 3020C 8002F60C 00821025 */   or        $v0, $a0, $v0
.L8002F610:
/* 30210 8002F610 34424000 */  ori        $v0, $v0, 0x4000
/* 30214 8002F614 0800BD8A */  j          .L8002F628
/* 30218 8002F618 00821025 */   or        $v0, $a0, $v0
.L8002F61C:
/* 3021C 8002F61C 0800BD8A */  j          .L8002F628
/* 30220 8002F620 00821025 */   or        $v0, $a0, $v0
.L8002F624:
/* 30224 8002F624 34824000 */  ori        $v0, $a0, 0x4000
.L8002F628:
/* 30228 8002F628 00A22025 */  or         $a0, $a1, $v0
/* 3022C 8002F62C 90E3001A */  lbu        $v1, 0x1a($a3)
/* 30230 8002F630 2C620003 */  sltiu      $v0, $v1, 3
/* 30234 8002F634 14400014 */  bnez       $v0, .L8002F688
/* 30238 8002F638 34820010 */   ori       $v0, $a0, 0x10
/* 3023C 8002F63C 2C620005 */  sltiu      $v0, $v1, 5
/* 30240 8002F640 14400011 */  bnez       $v0, .L8002F688
/* 30244 8002F644 34820020 */   ori       $v0, $a0, 0x20
/* 30248 8002F648 2C620009 */  sltiu      $v0, $v1, 9
/* 3024C 8002F64C 1440000E */  bnez       $v0, .L8002F688
/* 30250 8002F650 34820030 */   ori       $v0, $a0, 0x30
/* 30254 8002F654 2C620011 */  sltiu      $v0, $v1, 0x11
/* 30258 8002F658 1440000B */  bnez       $v0, .L8002F688
/* 3025C 8002F65C 34820040 */   ori       $v0, $a0, 0x40
/* 30260 8002F660 2C620021 */  sltiu      $v0, $v1, 0x21
/* 30264 8002F664 14400008 */  bnez       $v0, .L8002F688
/* 30268 8002F668 34820050 */   ori       $v0, $a0, 0x50
/* 3026C 8002F66C 2C620041 */  sltiu      $v0, $v1, 0x41
/* 30270 8002F670 14400005 */  bnez       $v0, .L8002F688
/* 30274 8002F674 34820060 */   ori       $v0, $a0, 0x60
/* 30278 8002F678 2C620081 */  sltiu      $v0, $v1, 0x81
/* 3027C 8002F67C 14400002 */  bnez       $v0, .L8002F688
/* 30280 8002F680 34820070 */   ori       $v0, $a0, 0x70
/* 30284 8002F684 34820080 */  ori        $v0, $a0, 0x80
.L8002F688:
/* 30288 8002F688 ACC20004 */  sw         $v0, 4($a2)
/* 3028C 8002F68C 3C05800F */  lui        $a1, %hi(D_800F37DC)
/* 30290 8002F690 8CA537DC */  lw         $a1, %lo(D_800F37DC)($a1)
/* 30294 8002F694 24A20008 */  addiu      $v0, $a1, 8
/* 30298 8002F698 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 3029C 8002F69C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 302A0 8002F6A0 3C02E600 */  lui        $v0, 0xe600
/* 302A4 8002F6A4 ACA20000 */  sw         $v0, ($a1)
/* 302A8 8002F6A8 ACA00004 */  sw         $zero, 4($a1)
/* 302AC 8002F6AC 24A20010 */  addiu      $v0, $a1, 0x10
/* 302B0 8002F6B0 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 302B4 8002F6B4 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 302B8 8002F6B8 3C02F400 */  lui        $v0, 0xf400
/* 302BC 8002F6BC ACA20008 */  sw         $v0, 8($a1)
/* 302C0 8002F6C0 90E4001A */  lbu        $a0, 0x1a($a3)
/* 302C4 8002F6C4 00042340 */  sll        $a0, $a0, 0xd
/* 302C8 8002F6C8 90E2001B */  lbu        $v0, 0x1b($a3)
/* 302CC 8002F6CC 00021080 */  sll        $v0, $v0, 2
/* 302D0 8002F6D0 3C030700 */  lui        $v1, 0x700
/* 302D4 8002F6D4 00431025 */  or         $v0, $v0, $v1
/* 302D8 8002F6D8 00822025 */  or         $a0, $a0, $v0
/* 302DC 8002F6DC ACA4000C */  sw         $a0, 0xc($a1)
/* 302E0 8002F6E0 24A30018 */  addiu      $v1, $a1, 0x18
/* 302E4 8002F6E4 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 302E8 8002F6E8 AC2337DC */  sw         $v1, %lo(D_800F37DC)($at)
/* 302EC 8002F6EC 3C02E700 */  lui        $v0, 0xe700
/* 302F0 8002F6F0 ACA20010 */  sw         $v0, 0x10($a1)
/* 302F4 8002F6F4 ACA00014 */  sw         $zero, 0x14($a1)
/* 302F8 8002F6F8 24A20020 */  addiu      $v0, $a1, 0x20
/* 302FC 8002F6FC 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30300 8002F700 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30304 8002F704 00603021 */  addu       $a2, $v1, $zero
/* 30308 8002F708 90E30018 */  lbu        $v1, 0x18($a3)
/* 3030C 8002F70C 30630007 */  andi       $v1, $v1, 7
/* 30310 8002F710 00031D40 */  sll        $v1, $v1, 0x15
/* 30314 8002F714 90E2001A */  lbu        $v0, 0x1a($a3)
/* 30318 8002F718 24420001 */  addiu      $v0, $v0, 1
/* 3031C 8002F71C 00021043 */  sra        $v0, $v0, 1
/* 30320 8002F720 24420007 */  addiu      $v0, $v0, 7
/* 30324 8002F724 000210C2 */  srl        $v0, $v0, 3
/* 30328 8002F728 00021240 */  sll        $v0, $v0, 9
/* 3032C 8002F72C 3C04F500 */  lui        $a0, 0xf500
/* 30330 8002F730 00441025 */  or         $v0, $v0, $a0
/* 30334 8002F734 00621825 */  or         $v1, $v1, $v0
/* 30338 8002F738 ACA30018 */  sw         $v1, 0x18($a1)
/* 3033C 8002F73C 92820002 */  lbu        $v0, 2($s4)
/* 30340 8002F740 30450003 */  andi       $a1, $v0, 3
/* 30344 8002F744 00052C80 */  sll        $a1, $a1, 0x12
/* 30348 8002F748 92820001 */  lbu        $v0, 1($s4)
/* 3034C 8002F74C 30440003 */  andi       $a0, $v0, 3
/* 30350 8002F750 90E3001B */  lbu        $v1, 0x1b($a3)
/* 30354 8002F754 2C620003 */  sltiu      $v0, $v1, 3
/* 30358 8002F758 14400021 */  bnez       $v0, .L8002F7E0
/* 3035C 8002F75C 00042200 */   sll       $a0, $a0, 8
/* 30360 8002F760 2C620005 */  sltiu      $v0, $v1, 5
/* 30364 8002F764 1440001F */  bnez       $v0, .L8002F7E4
/* 30368 8002F768 34828000 */   ori       $v0, $a0, 0x8000
/* 3036C 8002F76C 2C620009 */  sltiu      $v0, $v1, 9
/* 30370 8002F770 1440001C */  bnez       $v0, .L8002F7E4
/* 30374 8002F774 3482C000 */   ori       $v0, $a0, 0xc000
/* 30378 8002F778 2C620011 */  sltiu      $v0, $v1, 0x11
/* 3037C 8002F77C 14400016 */  bnez       $v0, .L8002F7D8
/* 30380 8002F780 3C020001 */   lui       $v0, 1
/* 30384 8002F784 2C620021 */  sltiu      $v0, $v1, 0x21
/* 30388 8002F788 14400010 */  bnez       $v0, .L8002F7CC
/* 3038C 8002F78C 3C020001 */   lui       $v0, 1
/* 30390 8002F790 2C620041 */  sltiu      $v0, $v1, 0x41
/* 30394 8002F794 1440000A */  bnez       $v0, .L8002F7C0
/* 30398 8002F798 3C020001 */   lui       $v0, 1
/* 3039C 8002F79C 2C620081 */  sltiu      $v0, $v1, 0x81
/* 303A0 8002F7A0 50400005 */  beql       $v0, $zero, .L8002F7B8
/* 303A4 8002F7A4 3C020002 */   lui       $v0, 2
/* 303A8 8002F7A8 3C020001 */  lui        $v0, 1
/* 303AC 8002F7AC 3442C000 */  ori        $v0, $v0, 0xc000
/* 303B0 8002F7B0 0800BDF9 */  j          .L8002F7E4
/* 303B4 8002F7B4 00821025 */   or        $v0, $a0, $v0
.L8002F7B8:
/* 303B8 8002F7B8 0800BDF9 */  j          .L8002F7E4
/* 303BC 8002F7BC 00821025 */   or        $v0, $a0, $v0
.L8002F7C0:
/* 303C0 8002F7C0 34428000 */  ori        $v0, $v0, 0x8000
/* 303C4 8002F7C4 0800BDF9 */  j          .L8002F7E4
/* 303C8 8002F7C8 00821025 */   or        $v0, $a0, $v0
.L8002F7CC:
/* 303CC 8002F7CC 34424000 */  ori        $v0, $v0, 0x4000
/* 303D0 8002F7D0 0800BDF9 */  j          .L8002F7E4
/* 303D4 8002F7D4 00821025 */   or        $v0, $a0, $v0
.L8002F7D8:
/* 303D8 8002F7D8 0800BDF9 */  j          .L8002F7E4
/* 303DC 8002F7DC 00821025 */   or        $v0, $a0, $v0
.L8002F7E0:
/* 303E0 8002F7E0 34824000 */  ori        $v0, $a0, 0x4000
.L8002F7E4:
/* 303E4 8002F7E4 00A22025 */  or         $a0, $a1, $v0
/* 303E8 8002F7E8 90E3001A */  lbu        $v1, 0x1a($a3)
/* 303EC 8002F7EC 2C620003 */  sltiu      $v0, $v1, 3
/* 303F0 8002F7F0 14400014 */  bnez       $v0, .L8002F844
/* 303F4 8002F7F4 34820010 */   ori       $v0, $a0, 0x10
/* 303F8 8002F7F8 2C620005 */  sltiu      $v0, $v1, 5
/* 303FC 8002F7FC 14400011 */  bnez       $v0, .L8002F844
/* 30400 8002F800 34820020 */   ori       $v0, $a0, 0x20
/* 30404 8002F804 2C620009 */  sltiu      $v0, $v1, 9
/* 30408 8002F808 1440000E */  bnez       $v0, .L8002F844
/* 3040C 8002F80C 34820030 */   ori       $v0, $a0, 0x30
/* 30410 8002F810 2C620011 */  sltiu      $v0, $v1, 0x11
/* 30414 8002F814 1440000B */  bnez       $v0, .L8002F844
/* 30418 8002F818 34820040 */   ori       $v0, $a0, 0x40
/* 3041C 8002F81C 2C620021 */  sltiu      $v0, $v1, 0x21
/* 30420 8002F820 14400008 */  bnez       $v0, .L8002F844
/* 30424 8002F824 34820050 */   ori       $v0, $a0, 0x50
/* 30428 8002F828 2C620041 */  sltiu      $v0, $v1, 0x41
/* 3042C 8002F82C 14400005 */  bnez       $v0, .L8002F844
/* 30430 8002F830 34820060 */   ori       $v0, $a0, 0x60
/* 30434 8002F834 2C620081 */  sltiu      $v0, $v1, 0x81
/* 30438 8002F838 50400002 */  beql       $v0, $zero, .L8002F844
/* 3043C 8002F83C 34820080 */   ori       $v0, $a0, 0x80
/* 30440 8002F840 34820070 */  ori        $v0, $a0, 0x70
.L8002F844:
/* 30444 8002F844 ACC20004 */  sw         $v0, 4($a2)
/* 30448 8002F848 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 3044C 8002F84C 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 30450 8002F850 24820008 */  addiu      $v0, $a0, 8
/* 30454 8002F854 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30458 8002F858 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 3045C 8002F85C 3C02F200 */  lui        $v0, 0xf200
/* 30460 8002F860 AC820000 */  sw         $v0, ($a0)
/* 30464 8002F864 90E3001A */  lbu        $v1, 0x1a($a3)
/* 30468 8002F868 00031B80 */  sll        $v1, $v1, 0xe
/* 3046C 8002F86C 90E2001B */  lbu        $v0, 0x1b($a3)
/* 30470 8002F870 0800C2D6 */  j          .L80030B58
/* 30474 8002F874 00021080 */   sll       $v0, $v0, 2
.L8002F878:
/* 30478 8002F878 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 3047C 8002F87C 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 30480 8002F880 24850008 */  addiu      $a1, $a0, 8
/* 30484 8002F884 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30488 8002F888 AC2537DC */  sw         $a1, %lo(D_800F37DC)($at)
/* 3048C 8002F88C 90E20018 */  lbu        $v0, 0x18($a3)
/* 30490 8002F890 30420007 */  andi       $v0, $v0, 7
/* 30494 8002F894 00021540 */  sll        $v0, $v0, 0x15
/* 30498 8002F898 00431025 */  or         $v0, $v0, $v1
/* 3049C 8002F89C AC820000 */  sw         $v0, ($a0)
/* 304A0 8002F8A0 AC880004 */  sw         $t0, 4($a0)
/* 304A4 8002F8A4 24820010 */  addiu      $v0, $a0, 0x10
/* 304A8 8002F8A8 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 304AC 8002F8AC AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 304B0 8002F8B0 90E20018 */  lbu        $v0, 0x18($a3)
/* 304B4 8002F8B4 30420007 */  andi       $v0, $v0, 7
/* 304B8 8002F8B8 00021540 */  sll        $v0, $v0, 0x15
/* 304BC 8002F8BC 3C03F510 */  lui        $v1, 0xf510
/* 304C0 8002F8C0 00431025 */  or         $v0, $v0, $v1
/* 304C4 8002F8C4 AC820008 */  sw         $v0, 8($a0)
/* 304C8 8002F8C8 92820002 */  lbu        $v0, 2($s4)
/* 304CC 8002F8CC 30460003 */  andi       $a2, $v0, 3
/* 304D0 8002F8D0 00063480 */  sll        $a2, $a2, 0x12
/* 304D4 8002F8D4 3C020700 */  lui        $v0, 0x700
/* 304D8 8002F8D8 00C23025 */  or         $a2, $a2, $v0
/* 304DC 8002F8DC 92820001 */  lbu        $v0, 1($s4)
/* 304E0 8002F8E0 30440003 */  andi       $a0, $v0, 3
/* 304E4 8002F8E4 90E3001B */  lbu        $v1, 0x1b($a3)
/* 304E8 8002F8E8 2C620003 */  sltiu      $v0, $v1, 3
/* 304EC 8002F8EC 14400021 */  bnez       $v0, .L8002F974
/* 304F0 8002F8F0 00042200 */   sll       $a0, $a0, 8
/* 304F4 8002F8F4 2C620005 */  sltiu      $v0, $v1, 5
/* 304F8 8002F8F8 1440001F */  bnez       $v0, .L8002F978
/* 304FC 8002F8FC 34828000 */   ori       $v0, $a0, 0x8000
/* 30500 8002F900 2C620009 */  sltiu      $v0, $v1, 9
/* 30504 8002F904 1440001C */  bnez       $v0, .L8002F978
/* 30508 8002F908 3482C000 */   ori       $v0, $a0, 0xc000
/* 3050C 8002F90C 2C620011 */  sltiu      $v0, $v1, 0x11
/* 30510 8002F910 14400016 */  bnez       $v0, .L8002F96C
/* 30514 8002F914 3C020001 */   lui       $v0, 1
/* 30518 8002F918 2C620021 */  sltiu      $v0, $v1, 0x21
/* 3051C 8002F91C 14400010 */  bnez       $v0, .L8002F960
/* 30520 8002F920 3C020001 */   lui       $v0, 1
/* 30524 8002F924 2C620041 */  sltiu      $v0, $v1, 0x41
/* 30528 8002F928 1440000A */  bnez       $v0, .L8002F954
/* 3052C 8002F92C 3C020001 */   lui       $v0, 1
/* 30530 8002F930 2C620081 */  sltiu      $v0, $v1, 0x81
/* 30534 8002F934 50400005 */  beql       $v0, $zero, .L8002F94C
/* 30538 8002F938 3C020002 */   lui       $v0, 2
/* 3053C 8002F93C 3C020001 */  lui        $v0, 1
/* 30540 8002F940 3442C000 */  ori        $v0, $v0, 0xc000
/* 30544 8002F944 0800BE5E */  j          .L8002F978
/* 30548 8002F948 00821025 */   or        $v0, $a0, $v0
.L8002F94C:
/* 3054C 8002F94C 0800BE5E */  j          .L8002F978
/* 30550 8002F950 00821025 */   or        $v0, $a0, $v0
.L8002F954:
/* 30554 8002F954 34428000 */  ori        $v0, $v0, 0x8000
/* 30558 8002F958 0800BE5E */  j          .L8002F978
/* 3055C 8002F95C 00821025 */   or        $v0, $a0, $v0
.L8002F960:
/* 30560 8002F960 34424000 */  ori        $v0, $v0, 0x4000
/* 30564 8002F964 0800BE5E */  j          .L8002F978
/* 30568 8002F968 00821025 */   or        $v0, $a0, $v0
.L8002F96C:
/* 3056C 8002F96C 0800BE5E */  j          .L8002F978
/* 30570 8002F970 00821025 */   or        $v0, $a0, $v0
.L8002F974:
/* 30574 8002F974 34824000 */  ori        $v0, $a0, 0x4000
.L8002F978:
/* 30578 8002F978 00C22025 */  or         $a0, $a2, $v0
/* 3057C 8002F97C 90E3001A */  lbu        $v1, 0x1a($a3)
/* 30580 8002F980 2C620003 */  sltiu      $v0, $v1, 3
/* 30584 8002F984 14400014 */  bnez       $v0, .L8002F9D8
/* 30588 8002F988 34820010 */   ori       $v0, $a0, 0x10
/* 3058C 8002F98C 2C620005 */  sltiu      $v0, $v1, 5
/* 30590 8002F990 14400011 */  bnez       $v0, .L8002F9D8
/* 30594 8002F994 34820020 */   ori       $v0, $a0, 0x20
/* 30598 8002F998 2C620009 */  sltiu      $v0, $v1, 9
/* 3059C 8002F99C 1440000E */  bnez       $v0, .L8002F9D8
/* 305A0 8002F9A0 34820030 */   ori       $v0, $a0, 0x30
/* 305A4 8002F9A4 2C620011 */  sltiu      $v0, $v1, 0x11
/* 305A8 8002F9A8 1440000B */  bnez       $v0, .L8002F9D8
/* 305AC 8002F9AC 34820040 */   ori       $v0, $a0, 0x40
/* 305B0 8002F9B0 2C620021 */  sltiu      $v0, $v1, 0x21
/* 305B4 8002F9B4 14400008 */  bnez       $v0, .L8002F9D8
/* 305B8 8002F9B8 34820050 */   ori       $v0, $a0, 0x50
/* 305BC 8002F9BC 2C620041 */  sltiu      $v0, $v1, 0x41
/* 305C0 8002F9C0 14400005 */  bnez       $v0, .L8002F9D8
/* 305C4 8002F9C4 34820060 */   ori       $v0, $a0, 0x60
/* 305C8 8002F9C8 2C620081 */  sltiu      $v0, $v1, 0x81
/* 305CC 8002F9CC 14400002 */  bnez       $v0, .L8002F9D8
/* 305D0 8002F9D0 34820070 */   ori       $v0, $a0, 0x70
/* 305D4 8002F9D4 34820080 */  ori        $v0, $a0, 0x80
.L8002F9D8:
/* 305D8 8002F9D8 ACA20004 */  sw         $v0, 4($a1)
/* 305DC 8002F9DC 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 305E0 8002F9E0 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 305E4 8002F9E4 24640008 */  addiu      $a0, $v1, 8
/* 305E8 8002F9E8 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 305EC 8002F9EC AC2437DC */  sw         $a0, %lo(D_800F37DC)($at)
/* 305F0 8002F9F0 3C02E600 */  lui        $v0, 0xe600
/* 305F4 8002F9F4 AC620000 */  sw         $v0, ($v1)
/* 305F8 8002F9F8 AC600004 */  sw         $zero, 4($v1)
/* 305FC 8002F9FC 24620010 */  addiu      $v0, $v1, 0x10
/* 30600 8002FA00 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30604 8002FA04 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30608 8002FA08 3C02F300 */  lui        $v0, %hi(D_F30007FF)
/* 3060C 8002FA0C AC620008 */  sw         $v0, 8($v1)
/* 30610 8002FA10 90E2001A */  lbu        $v0, 0x1a($a3)
/* 30614 8002FA14 00021102 */  srl        $v0, $v0, 4
/* 30618 8002FA18 14400002 */  bnez       $v0, .L8002FA24
/* 3061C 8002FA1C 244307FF */   addiu     $v1, $v0, %lo(D_F30007FF)
/* 30620 8002FA20 24030800 */  addiu      $v1, $zero, 0x800
.L8002FA24:
/* 30624 8002FA24 90E5001A */  lbu        $a1, 0x1a($a3)
/* 30628 8002FA28 90E2001B */  lbu        $v0, 0x1b($a3)
/* 3062C 8002FA2C 00A20018 */  mult       $a1, $v0
/* 30630 8002FA30 00002812 */  mflo       $a1
/* 30634 8002FA34 24A50003 */  addiu      $a1, $a1, 3
/* 30638 8002FA38 00052883 */  sra        $a1, $a1, 2
/* 3063C 8002FA3C 24A5FFFF */  addiu      $a1, $a1, -1
/* 30640 8002FA40 28A20800 */  slti       $v0, $a1, 0x800
/* 30644 8002FA44 50400001 */  beql       $v0, $zero, .L8002FA4C
/* 30648 8002FA48 240507FF */   addiu     $a1, $zero, 0x7ff
.L8002FA4C:
/* 3064C 8002FA4C 30A50FFF */  andi       $a1, $a1, 0xfff
/* 30650 8002FA50 00052B00 */  sll        $a1, $a1, 0xc
/* 30654 8002FA54 3C020700 */  lui        $v0, 0x700
/* 30658 8002FA58 00A22825 */  or         $a1, $a1, $v0
/* 3065C 8002FA5C 90E2001A */  lbu        $v0, 0x1a($a3)
/* 30660 8002FA60 00021102 */  srl        $v0, $v0, 4
/* 30664 8002FA64 5040000D */  beql       $v0, $zero, .L8002FA9C
/* 30668 8002FA68 30620FFF */   andi      $v0, $v1, 0xfff
/* 3066C 8002FA6C 0062001A */  div        $zero, $v1, $v0
/* 30670 8002FA70 14400002 */  bnez       $v0, .L8002FA7C
/* 30674 8002FA74 00000000 */   nop
/* 30678 8002FA78 0007000D */  break      7
.L8002FA7C:
/* 3067C 8002FA7C 2401FFFF */   addiu     $at, $zero, -1
/* 30680 8002FA80 14410004 */  bne        $v0, $at, .L8002FA94
/* 30684 8002FA84 3C018000 */   lui       $at, 0x8000
/* 30688 8002FA88 14610002 */  bne        $v1, $at, .L8002FA94
/* 3068C 8002FA8C 00000000 */   nop
/* 30690 8002FA90 0006000D */  break      6
.L8002FA94:
/* 30694 8002FA94 00001012 */   mflo      $v0
/* 30698 8002FA98 30420FFF */  andi       $v0, $v0, 0xfff
.L8002FA9C:
/* 3069C 8002FA9C 00A21025 */  or         $v0, $a1, $v0
/* 306A0 8002FAA0 AC820004 */  sw         $v0, 4($a0)
/* 306A4 8002FAA4 3C05800F */  lui        $a1, %hi(D_800F37DC)
/* 306A8 8002FAA8 8CA537DC */  lw         $a1, %lo(D_800F37DC)($a1)
/* 306AC 8002FAAC 24A30008 */  addiu      $v1, $a1, 8
/* 306B0 8002FAB0 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 306B4 8002FAB4 AC2337DC */  sw         $v1, %lo(D_800F37DC)($at)
/* 306B8 8002FAB8 3C02E700 */  lui        $v0, 0xe700
/* 306BC 8002FABC ACA20000 */  sw         $v0, ($a1)
/* 306C0 8002FAC0 ACA00004 */  sw         $zero, 4($a1)
/* 306C4 8002FAC4 24A20010 */  addiu      $v0, $a1, 0x10
/* 306C8 8002FAC8 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 306CC 8002FACC AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 306D0 8002FAD0 00603021 */  addu       $a2, $v1, $zero
/* 306D4 8002FAD4 90E30018 */  lbu        $v1, 0x18($a3)
/* 306D8 8002FAD8 30630007 */  andi       $v1, $v1, 7
/* 306DC 8002FADC 00031D40 */  sll        $v1, $v1, 0x15
/* 306E0 8002FAE0 90E2001A */  lbu        $v0, 0x1a($a3)
/* 306E4 8002FAE4 00021042 */  srl        $v0, $v0, 1
/* 306E8 8002FAE8 24420007 */  addiu      $v0, $v0, 7
/* 306EC 8002FAEC 000210C2 */  srl        $v0, $v0, 3
/* 306F0 8002FAF0 00021240 */  sll        $v0, $v0, 9
/* 306F4 8002FAF4 3C04F500 */  lui        $a0, 0xf500
/* 306F8 8002FAF8 00441025 */  or         $v0, $v0, $a0
/* 306FC 8002FAFC 00621825 */  or         $v1, $v1, $v0
/* 30700 8002FB00 ACA30008 */  sw         $v1, 8($a1)
/* 30704 8002FB04 92820002 */  lbu        $v0, 2($s4)
/* 30708 8002FB08 30450003 */  andi       $a1, $v0, 3
/* 3070C 8002FB0C 00052C80 */  sll        $a1, $a1, 0x12
/* 30710 8002FB10 92820001 */  lbu        $v0, 1($s4)
/* 30714 8002FB14 30440003 */  andi       $a0, $v0, 3
/* 30718 8002FB18 90E3001B */  lbu        $v1, 0x1b($a3)
/* 3071C 8002FB1C 2C620003 */  sltiu      $v0, $v1, 3
/* 30720 8002FB20 1440FE56 */  bnez       $v0, .L8002F47C
/* 30724 8002FB24 00042200 */   sll       $a0, $a0, 8
/* 30728 8002FB28 2C620005 */  sltiu      $v0, $v1, 5
/* 3072C 8002FB2C 1440FE54 */  bnez       $v0, .L8002F480
/* 30730 8002FB30 34828000 */   ori       $v0, $a0, 0x8000
/* 30734 8002FB34 2C620009 */  sltiu      $v0, $v1, 9
/* 30738 8002FB38 1440FE51 */  bnez       $v0, .L8002F480
/* 3073C 8002FB3C 3482C000 */   ori       $v0, $a0, 0xc000
/* 30740 8002FB40 2C620011 */  sltiu      $v0, $v1, 0x11
/* 30744 8002FB44 14400016 */  bnez       $v0, .L8002FBA0
/* 30748 8002FB48 3C020001 */   lui       $v0, 1
/* 3074C 8002FB4C 2C620021 */  sltiu      $v0, $v1, 0x21
/* 30750 8002FB50 14400010 */  bnez       $v0, .L8002FB94
/* 30754 8002FB54 3C020001 */   lui       $v0, 1
/* 30758 8002FB58 2C620041 */  sltiu      $v0, $v1, 0x41
/* 3075C 8002FB5C 1440000A */  bnez       $v0, .L8002FB88
/* 30760 8002FB60 3C020001 */   lui       $v0, 1
/* 30764 8002FB64 2C620081 */  sltiu      $v0, $v1, 0x81
/* 30768 8002FB68 50400005 */  beql       $v0, $zero, .L8002FB80
/* 3076C 8002FB6C 3C020002 */   lui       $v0, 2
/* 30770 8002FB70 3C020001 */  lui        $v0, 1
/* 30774 8002FB74 3442C000 */  ori        $v0, $v0, 0xc000
/* 30778 8002FB78 0800BD20 */  j          .L8002F480
/* 3077C 8002FB7C 00821025 */   or        $v0, $a0, $v0
.L8002FB80:
/* 30780 8002FB80 0800BD20 */  j          .L8002F480
/* 30784 8002FB84 00821025 */   or        $v0, $a0, $v0
.L8002FB88:
/* 30788 8002FB88 34428000 */  ori        $v0, $v0, 0x8000
/* 3078C 8002FB8C 0800BD20 */  j          .L8002F480
/* 30790 8002FB90 00821025 */   or        $v0, $a0, $v0
.L8002FB94:
/* 30794 8002FB94 34424000 */  ori        $v0, $v0, 0x4000
/* 30798 8002FB98 0800BD20 */  j          .L8002F480
/* 3079C 8002FB9C 00821025 */   or        $v0, $a0, $v0
.L8002FBA0:
/* 307A0 8002FBA0 0800BD20 */  j          .L8002F480
/* 307A4 8002FBA4 00821025 */   or        $v0, $a0, $v0
.L8002FBA8:
/* 307A8 8002FBA8 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 307AC 8002FBAC 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 307B0 8002FBB0 24620008 */  addiu      $v0, $v1, 8
/* 307B4 8002FBB4 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 307B8 8002FBB8 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 307BC 8002FBBC 3C02E300 */  lui        $v0, 0xe300
/* 307C0 8002FBC0 34421001 */  ori        $v0, $v0, 0x1001
/* 307C4 8002FBC4 AC620000 */  sw         $v0, ($v1)
/* 307C8 8002FBC8 34028000 */  ori        $v0, $zero, 0x8000
/* 307CC 8002FBCC AC620004 */  sw         $v0, 4($v1)
/* 307D0 8002FBD0 82830004 */  lb         $v1, 4($s4)
/* 307D4 8002FBD4 2402FFFF */  addiu      $v0, $zero, -1
/* 307D8 8002FBD8 10620006 */  beq        $v1, $v0, .L8002FBF4
/* 307DC 8002FBDC 00032600 */   sll       $a0, $v1, 0x18
/* 307E0 8002FBE0 8EA20000 */  lw         $v0, ($s5)
/* 307E4 8002FBE4 3C030004 */  lui        $v1, 4
/* 307E8 8002FBE8 00431025 */  or         $v0, $v0, $v1
/* 307EC 8002FBEC 0800BEFF */  j          .L8002FBFC
/* 307F0 8002FBF0 AEA20000 */   sw        $v0, ($s5)
.L8002FBF4:
/* 307F4 8002FBF4 8CE2002C */  lw         $v0, 0x2c($a3)
/* 307F8 8002FBF8 8C440024 */  lw         $a0, 0x24($v0)
.L8002FBFC:
/* 307FC 8002FBFC 8CE2002C */  lw         $v0, 0x2c($a3)
/* 30800 8002FC00 8442001A */  lh         $v0, 0x1a($v0)
/* 30804 8002FC04 28420011 */  slti       $v0, $v0, 0x11
/* 30808 8002FC08 104001D8 */  beqz       $v0, .L8003036C
/* 3080C 8002FC0C 3C090700 */   lui       $t1, 0x700
/* 30810 8002FC10 3C06800F */  lui        $a2, %hi(D_800F37DC)
/* 30814 8002FC14 8CC637DC */  lw         $a2, %lo(D_800F37DC)($a2)
/* 30818 8002FC18 24C20008 */  addiu      $v0, $a2, 8
/* 3081C 8002FC1C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30820 8002FC20 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30824 8002FC24 3C02FD10 */  lui        $v0, 0xfd10
/* 30828 8002FC28 ACC20000 */  sw         $v0, ($a2)
/* 3082C 8002FC2C ACC40004 */  sw         $a0, 4($a2)
/* 30830 8002FC30 24C20010 */  addiu      $v0, $a2, 0x10
/* 30834 8002FC34 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30838 8002FC38 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 3083C 8002FC3C 3C02E800 */  lui        $v0, 0xe800
/* 30840 8002FC40 ACC20008 */  sw         $v0, 8($a2)
/* 30844 8002FC44 ACC0000C */  sw         $zero, 0xc($a2)
/* 30848 8002FC48 24C20018 */  addiu      $v0, $a2, 0x18
/* 3084C 8002FC4C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30850 8002FC50 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30854 8002FC54 3C02F500 */  lui        $v0, 0xf500
/* 30858 8002FC58 34420100 */  ori        $v0, $v0, 0x100
/* 3085C 8002FC5C ACC20010 */  sw         $v0, 0x10($a2)
/* 30860 8002FC60 ACC90014 */  sw         $t1, 0x14($a2)
/* 30864 8002FC64 24C20020 */  addiu      $v0, $a2, 0x20
/* 30868 8002FC68 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 3086C 8002FC6C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30870 8002FC70 3C02E600 */  lui        $v0, 0xe600
/* 30874 8002FC74 ACC20018 */  sw         $v0, 0x18($a2)
/* 30878 8002FC78 ACC0001C */  sw         $zero, 0x1c($a2)
/* 3087C 8002FC7C 24C20028 */  addiu      $v0, $a2, 0x28
/* 30880 8002FC80 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30884 8002FC84 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30888 8002FC88 3C02F000 */  lui        $v0, 0xf000
/* 3088C 8002FC8C ACC20020 */  sw         $v0, 0x20($a2)
/* 30890 8002FC90 3C020703 */  lui        $v0, 0x703
/* 30894 8002FC94 3442C000 */  ori        $v0, $v0, 0xc000
/* 30898 8002FC98 ACC20024 */  sw         $v0, 0x24($a2)
/* 3089C 8002FC9C 24C20030 */  addiu      $v0, $a2, 0x30
/* 308A0 8002FCA0 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 308A4 8002FCA4 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 308A8 8002FCA8 3C02E700 */  lui        $v0, 0xe700
/* 308AC 8002FCAC ACC20028 */  sw         $v0, 0x28($a2)
/* 308B0 8002FCB0 ACC0002C */  sw         $zero, 0x2c($a2)
/* 308B4 8002FCB4 90E2001A */  lbu        $v0, 0x1a($a3)
/* 308B8 8002FCB8 2C420010 */  sltiu      $v0, $v0, 0x10
/* 308BC 8002FCBC 104000DE */  beqz       $v0, .L80030038
/* 308C0 8002FCC0 24C50038 */   addiu     $a1, $a2, 0x38
/* 308C4 8002FCC4 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 308C8 8002FCC8 AC2537DC */  sw         $a1, %lo(D_800F37DC)($at)
/* 308CC 8002FCCC 90E30018 */  lbu        $v1, 0x18($a3)
/* 308D0 8002FCD0 30630007 */  andi       $v1, $v1, 7
/* 308D4 8002FCD4 00031D40 */  sll        $v1, $v1, 0x15
/* 308D8 8002FCD8 90E2001A */  lbu        $v0, 0x1a($a3)
/* 308DC 8002FCDC 00021042 */  srl        $v0, $v0, 1
/* 308E0 8002FCE0 2442FFFF */  addiu      $v0, $v0, -1
/* 308E4 8002FCE4 30420FFF */  andi       $v0, $v0, 0xfff
/* 308E8 8002FCE8 3C04FD08 */  lui        $a0, 0xfd08
/* 308EC 8002FCEC 00441025 */  or         $v0, $v0, $a0
/* 308F0 8002FCF0 00621825 */  or         $v1, $v1, $v0
/* 308F4 8002FCF4 ACC30030 */  sw         $v1, 0x30($a2)
/* 308F8 8002FCF8 ACC80034 */  sw         $t0, 0x34($a2)
/* 308FC 8002FCFC 24C20040 */  addiu      $v0, $a2, 0x40
/* 30900 8002FD00 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30904 8002FD04 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30908 8002FD08 90E30018 */  lbu        $v1, 0x18($a3)
/* 3090C 8002FD0C 30630007 */  andi       $v1, $v1, 7
/* 30910 8002FD10 00031D40 */  sll        $v1, $v1, 0x15
/* 30914 8002FD14 90E2001A */  lbu        $v0, 0x1a($a3)
/* 30918 8002FD18 24420001 */  addiu      $v0, $v0, 1
/* 3091C 8002FD1C 00021043 */  sra        $v0, $v0, 1
/* 30920 8002FD20 24420007 */  addiu      $v0, $v0, 7
/* 30924 8002FD24 000210C2 */  srl        $v0, $v0, 3
/* 30928 8002FD28 00021240 */  sll        $v0, $v0, 9
/* 3092C 8002FD2C 3C04F508 */  lui        $a0, 0xf508
/* 30930 8002FD30 00441025 */  or         $v0, $v0, $a0
/* 30934 8002FD34 00621825 */  or         $v1, $v1, $v0
/* 30938 8002FD38 ACC30038 */  sw         $v1, 0x38($a2)
/* 3093C 8002FD3C 92820002 */  lbu        $v0, 2($s4)
/* 30940 8002FD40 30460003 */  andi       $a2, $v0, 3
/* 30944 8002FD44 00063480 */  sll        $a2, $a2, 0x12
/* 30948 8002FD48 00C93025 */  or         $a2, $a2, $t1
/* 3094C 8002FD4C 92820001 */  lbu        $v0, 1($s4)
/* 30950 8002FD50 30440003 */  andi       $a0, $v0, 3
/* 30954 8002FD54 90E3001B */  lbu        $v1, 0x1b($a3)
/* 30958 8002FD58 2C620003 */  sltiu      $v0, $v1, 3
/* 3095C 8002FD5C 14400021 */  bnez       $v0, .L8002FDE4
/* 30960 8002FD60 00042200 */   sll       $a0, $a0, 8
/* 30964 8002FD64 2C620005 */  sltiu      $v0, $v1, 5
/* 30968 8002FD68 1440001F */  bnez       $v0, .L8002FDE8
/* 3096C 8002FD6C 34828000 */   ori       $v0, $a0, 0x8000
/* 30970 8002FD70 2C620009 */  sltiu      $v0, $v1, 9
/* 30974 8002FD74 1440001C */  bnez       $v0, .L8002FDE8
/* 30978 8002FD78 3482C000 */   ori       $v0, $a0, 0xc000
/* 3097C 8002FD7C 2C620011 */  sltiu      $v0, $v1, 0x11
/* 30980 8002FD80 14400016 */  bnez       $v0, .L8002FDDC
/* 30984 8002FD84 3C020001 */   lui       $v0, 1
/* 30988 8002FD88 2C620021 */  sltiu      $v0, $v1, 0x21
/* 3098C 8002FD8C 14400010 */  bnez       $v0, .L8002FDD0
/* 30990 8002FD90 3C020001 */   lui       $v0, 1
/* 30994 8002FD94 2C620041 */  sltiu      $v0, $v1, 0x41
/* 30998 8002FD98 1440000A */  bnez       $v0, .L8002FDC4
/* 3099C 8002FD9C 3C020001 */   lui       $v0, 1
/* 309A0 8002FDA0 2C620081 */  sltiu      $v0, $v1, 0x81
/* 309A4 8002FDA4 50400005 */  beql       $v0, $zero, .L8002FDBC
/* 309A8 8002FDA8 3C020002 */   lui       $v0, 2
/* 309AC 8002FDAC 3C020001 */  lui        $v0, 1
/* 309B0 8002FDB0 3442C000 */  ori        $v0, $v0, 0xc000
/* 309B4 8002FDB4 0800BF7A */  j          .L8002FDE8
/* 309B8 8002FDB8 00821025 */   or        $v0, $a0, $v0
.L8002FDBC:
/* 309BC 8002FDBC 0800BF7A */  j          .L8002FDE8
/* 309C0 8002FDC0 00821025 */   or        $v0, $a0, $v0
.L8002FDC4:
/* 309C4 8002FDC4 34428000 */  ori        $v0, $v0, 0x8000
/* 309C8 8002FDC8 0800BF7A */  j          .L8002FDE8
/* 309CC 8002FDCC 00821025 */   or        $v0, $a0, $v0
.L8002FDD0:
/* 309D0 8002FDD0 34424000 */  ori        $v0, $v0, 0x4000
/* 309D4 8002FDD4 0800BF7A */  j          .L8002FDE8
/* 309D8 8002FDD8 00821025 */   or        $v0, $a0, $v0
.L8002FDDC:
/* 309DC 8002FDDC 0800BF7A */  j          .L8002FDE8
/* 309E0 8002FDE0 00821025 */   or        $v0, $a0, $v0
.L8002FDE4:
/* 309E4 8002FDE4 34824000 */  ori        $v0, $a0, 0x4000
.L8002FDE8:
/* 309E8 8002FDE8 00C22025 */  or         $a0, $a2, $v0
/* 309EC 8002FDEC 90E3001A */  lbu        $v1, 0x1a($a3)
/* 309F0 8002FDF0 2C620003 */  sltiu      $v0, $v1, 3
/* 309F4 8002FDF4 14400014 */  bnez       $v0, .L8002FE48
/* 309F8 8002FDF8 34820010 */   ori       $v0, $a0, 0x10
/* 309FC 8002FDFC 2C620005 */  sltiu      $v0, $v1, 5
/* 30A00 8002FE00 14400011 */  bnez       $v0, .L8002FE48
/* 30A04 8002FE04 34820020 */   ori       $v0, $a0, 0x20
/* 30A08 8002FE08 2C620009 */  sltiu      $v0, $v1, 9
/* 30A0C 8002FE0C 1440000E */  bnez       $v0, .L8002FE48
/* 30A10 8002FE10 34820030 */   ori       $v0, $a0, 0x30
/* 30A14 8002FE14 2C620011 */  sltiu      $v0, $v1, 0x11
/* 30A18 8002FE18 1440000B */  bnez       $v0, .L8002FE48
/* 30A1C 8002FE1C 34820040 */   ori       $v0, $a0, 0x40
/* 30A20 8002FE20 2C620021 */  sltiu      $v0, $v1, 0x21
/* 30A24 8002FE24 14400008 */  bnez       $v0, .L8002FE48
/* 30A28 8002FE28 34820050 */   ori       $v0, $a0, 0x50
/* 30A2C 8002FE2C 2C620041 */  sltiu      $v0, $v1, 0x41
/* 30A30 8002FE30 14400005 */  bnez       $v0, .L8002FE48
/* 30A34 8002FE34 34820060 */   ori       $v0, $a0, 0x60
/* 30A38 8002FE38 2C620081 */  sltiu      $v0, $v1, 0x81
/* 30A3C 8002FE3C 14400002 */  bnez       $v0, .L8002FE48
/* 30A40 8002FE40 34820070 */   ori       $v0, $a0, 0x70
/* 30A44 8002FE44 34820080 */  ori        $v0, $a0, 0x80
.L8002FE48:
/* 30A48 8002FE48 ACA20004 */  sw         $v0, 4($a1)
/* 30A4C 8002FE4C 3C05800F */  lui        $a1, %hi(D_800F37DC)
/* 30A50 8002FE50 8CA537DC */  lw         $a1, %lo(D_800F37DC)($a1)
/* 30A54 8002FE54 24A20008 */  addiu      $v0, $a1, 8
/* 30A58 8002FE58 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30A5C 8002FE5C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30A60 8002FE60 3C02E600 */  lui        $v0, 0xe600
/* 30A64 8002FE64 ACA20000 */  sw         $v0, ($a1)
/* 30A68 8002FE68 ACA00004 */  sw         $zero, 4($a1)
/* 30A6C 8002FE6C 24A20010 */  addiu      $v0, $a1, 0x10
/* 30A70 8002FE70 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30A74 8002FE74 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30A78 8002FE78 3C02F400 */  lui        $v0, 0xf400
/* 30A7C 8002FE7C ACA20008 */  sw         $v0, 8($a1)
/* 30A80 8002FE80 90E4001A */  lbu        $a0, 0x1a($a3)
/* 30A84 8002FE84 00042340 */  sll        $a0, $a0, 0xd
/* 30A88 8002FE88 90E2001B */  lbu        $v0, 0x1b($a3)
/* 30A8C 8002FE8C 00021080 */  sll        $v0, $v0, 2
/* 30A90 8002FE90 3C030700 */  lui        $v1, 0x700
/* 30A94 8002FE94 00431025 */  or         $v0, $v0, $v1
/* 30A98 8002FE98 00822025 */  or         $a0, $a0, $v0
/* 30A9C 8002FE9C ACA4000C */  sw         $a0, 0xc($a1)
/* 30AA0 8002FEA0 24A30018 */  addiu      $v1, $a1, 0x18
/* 30AA4 8002FEA4 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30AA8 8002FEA8 AC2337DC */  sw         $v1, %lo(D_800F37DC)($at)
/* 30AAC 8002FEAC 3C02E700 */  lui        $v0, 0xe700
/* 30AB0 8002FEB0 ACA20010 */  sw         $v0, 0x10($a1)
/* 30AB4 8002FEB4 ACA00014 */  sw         $zero, 0x14($a1)
/* 30AB8 8002FEB8 24A20020 */  addiu      $v0, $a1, 0x20
/* 30ABC 8002FEBC 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30AC0 8002FEC0 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30AC4 8002FEC4 00603021 */  addu       $a2, $v1, $zero
/* 30AC8 8002FEC8 90E30018 */  lbu        $v1, 0x18($a3)
/* 30ACC 8002FECC 30630007 */  andi       $v1, $v1, 7
/* 30AD0 8002FED0 00031D40 */  sll        $v1, $v1, 0x15
/* 30AD4 8002FED4 90E2001A */  lbu        $v0, 0x1a($a3)
/* 30AD8 8002FED8 24420001 */  addiu      $v0, $v0, 1
/* 30ADC 8002FEDC 00021043 */  sra        $v0, $v0, 1
/* 30AE0 8002FEE0 24420007 */  addiu      $v0, $v0, 7
/* 30AE4 8002FEE4 000210C2 */  srl        $v0, $v0, 3
/* 30AE8 8002FEE8 00021240 */  sll        $v0, $v0, 9
/* 30AEC 8002FEEC 3C04F500 */  lui        $a0, 0xf500
/* 30AF0 8002FEF0 00441025 */  or         $v0, $v0, $a0
/* 30AF4 8002FEF4 00621825 */  or         $v1, $v1, $v0
/* 30AF8 8002FEF8 ACA30018 */  sw         $v1, 0x18($a1)
/* 30AFC 8002FEFC 92820002 */  lbu        $v0, 2($s4)
/* 30B00 8002FF00 30450003 */  andi       $a1, $v0, 3
/* 30B04 8002FF04 00052C80 */  sll        $a1, $a1, 0x12
/* 30B08 8002FF08 92820001 */  lbu        $v0, 1($s4)
/* 30B0C 8002FF0C 30440003 */  andi       $a0, $v0, 3
/* 30B10 8002FF10 90E3001B */  lbu        $v1, 0x1b($a3)
/* 30B14 8002FF14 2C620003 */  sltiu      $v0, $v1, 3
/* 30B18 8002FF18 14400021 */  bnez       $v0, .L8002FFA0
/* 30B1C 8002FF1C 00042200 */   sll       $a0, $a0, 8
/* 30B20 8002FF20 2C620005 */  sltiu      $v0, $v1, 5
/* 30B24 8002FF24 1440001F */  bnez       $v0, .L8002FFA4
/* 30B28 8002FF28 34828000 */   ori       $v0, $a0, 0x8000
/* 30B2C 8002FF2C 2C620009 */  sltiu      $v0, $v1, 9
/* 30B30 8002FF30 1440001C */  bnez       $v0, .L8002FFA4
/* 30B34 8002FF34 3482C000 */   ori       $v0, $a0, 0xc000
/* 30B38 8002FF38 2C620011 */  sltiu      $v0, $v1, 0x11
/* 30B3C 8002FF3C 14400016 */  bnez       $v0, .L8002FF98
/* 30B40 8002FF40 3C020001 */   lui       $v0, 1
/* 30B44 8002FF44 2C620021 */  sltiu      $v0, $v1, 0x21
/* 30B48 8002FF48 14400010 */  bnez       $v0, .L8002FF8C
/* 30B4C 8002FF4C 3C020001 */   lui       $v0, 1
/* 30B50 8002FF50 2C620041 */  sltiu      $v0, $v1, 0x41
/* 30B54 8002FF54 1440000A */  bnez       $v0, .L8002FF80
/* 30B58 8002FF58 3C020001 */   lui       $v0, 1
/* 30B5C 8002FF5C 2C620081 */  sltiu      $v0, $v1, 0x81
/* 30B60 8002FF60 50400005 */  beql       $v0, $zero, .L8002FF78
/* 30B64 8002FF64 3C020002 */   lui       $v0, 2
/* 30B68 8002FF68 3C020001 */  lui        $v0, 1
/* 30B6C 8002FF6C 3442C000 */  ori        $v0, $v0, 0xc000
/* 30B70 8002FF70 0800BFE9 */  j          .L8002FFA4
/* 30B74 8002FF74 00821025 */   or        $v0, $a0, $v0
.L8002FF78:
/* 30B78 8002FF78 0800BFE9 */  j          .L8002FFA4
/* 30B7C 8002FF7C 00821025 */   or        $v0, $a0, $v0
.L8002FF80:
/* 30B80 8002FF80 34428000 */  ori        $v0, $v0, 0x8000
/* 30B84 8002FF84 0800BFE9 */  j          .L8002FFA4
/* 30B88 8002FF88 00821025 */   or        $v0, $a0, $v0
.L8002FF8C:
/* 30B8C 8002FF8C 34424000 */  ori        $v0, $v0, 0x4000
/* 30B90 8002FF90 0800BFE9 */  j          .L8002FFA4
/* 30B94 8002FF94 00821025 */   or        $v0, $a0, $v0
.L8002FF98:
/* 30B98 8002FF98 0800BFE9 */  j          .L8002FFA4
/* 30B9C 8002FF9C 00821025 */   or        $v0, $a0, $v0
.L8002FFA0:
/* 30BA0 8002FFA0 34824000 */  ori        $v0, $a0, 0x4000
.L8002FFA4:
/* 30BA4 8002FFA4 00A22025 */  or         $a0, $a1, $v0
/* 30BA8 8002FFA8 90E3001A */  lbu        $v1, 0x1a($a3)
/* 30BAC 8002FFAC 2C620003 */  sltiu      $v0, $v1, 3
/* 30BB0 8002FFB0 14400014 */  bnez       $v0, .L80030004
/* 30BB4 8002FFB4 34820010 */   ori       $v0, $a0, 0x10
/* 30BB8 8002FFB8 2C620005 */  sltiu      $v0, $v1, 5
/* 30BBC 8002FFBC 14400011 */  bnez       $v0, .L80030004
/* 30BC0 8002FFC0 34820020 */   ori       $v0, $a0, 0x20
/* 30BC4 8002FFC4 2C620009 */  sltiu      $v0, $v1, 9
/* 30BC8 8002FFC8 1440000E */  bnez       $v0, .L80030004
/* 30BCC 8002FFCC 34820030 */   ori       $v0, $a0, 0x30
/* 30BD0 8002FFD0 2C620011 */  sltiu      $v0, $v1, 0x11
/* 30BD4 8002FFD4 1440000B */  bnez       $v0, .L80030004
/* 30BD8 8002FFD8 34820040 */   ori       $v0, $a0, 0x40
/* 30BDC 8002FFDC 2C620021 */  sltiu      $v0, $v1, 0x21
/* 30BE0 8002FFE0 14400008 */  bnez       $v0, .L80030004
/* 30BE4 8002FFE4 34820050 */   ori       $v0, $a0, 0x50
/* 30BE8 8002FFE8 2C620041 */  sltiu      $v0, $v1, 0x41
/* 30BEC 8002FFEC 14400005 */  bnez       $v0, .L80030004
/* 30BF0 8002FFF0 34820060 */   ori       $v0, $a0, 0x60
/* 30BF4 8002FFF4 2C620081 */  sltiu      $v0, $v1, 0x81
/* 30BF8 8002FFF8 50400002 */  beql       $v0, $zero, .L80030004
/* 30BFC 8002FFFC 34820080 */   ori       $v0, $a0, 0x80
/* 30C00 80030000 34820070 */  ori        $v0, $a0, 0x70
.L80030004:
/* 30C04 80030004 ACC20004 */  sw         $v0, 4($a2)
/* 30C08 80030008 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 30C0C 8003000C 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 30C10 80030010 24820008 */  addiu      $v0, $a0, 8
/* 30C14 80030014 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30C18 80030018 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30C1C 8003001C 3C02F200 */  lui        $v0, 0xf200
/* 30C20 80030020 AC820000 */  sw         $v0, ($a0)
/* 30C24 80030024 90E3001A */  lbu        $v1, 0x1a($a3)
/* 30C28 80030028 00031B80 */  sll        $v1, $v1, 0xe
/* 30C2C 8003002C 90E2001B */  lbu        $v0, 0x1b($a3)
/* 30C30 80030030 0800C2D6 */  j          .L80030B58
/* 30C34 80030034 00021080 */   sll       $v0, $v0, 2
.L80030038:
/* 30C38 80030038 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 30C3C 8003003C 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 30C40 80030040 24850008 */  addiu      $a1, $a0, 8
/* 30C44 80030044 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30C48 80030048 AC2537DC */  sw         $a1, %lo(D_800F37DC)($at)
/* 30C4C 8003004C 90E20018 */  lbu        $v0, 0x18($a3)
/* 30C50 80030050 30420007 */  andi       $v0, $v0, 7
/* 30C54 80030054 00021540 */  sll        $v0, $v0, 0x15
/* 30C58 80030058 3C03FD10 */  lui        $v1, 0xfd10
/* 30C5C 8003005C 00431025 */  or         $v0, $v0, $v1
/* 30C60 80030060 AC820000 */  sw         $v0, ($a0)
/* 30C64 80030064 AC880004 */  sw         $t0, 4($a0)
/* 30C68 80030068 24820010 */  addiu      $v0, $a0, 0x10
/* 30C6C 8003006C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30C70 80030070 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30C74 80030074 90E20018 */  lbu        $v0, 0x18($a3)
/* 30C78 80030078 30420007 */  andi       $v0, $v0, 7
/* 30C7C 8003007C 00021540 */  sll        $v0, $v0, 0x15
/* 30C80 80030080 3C03F510 */  lui        $v1, 0xf510
/* 30C84 80030084 00431025 */  or         $v0, $v0, $v1
/* 30C88 80030088 AC820008 */  sw         $v0, 8($a0)
/* 30C8C 8003008C 92820002 */  lbu        $v0, 2($s4)
/* 30C90 80030090 30460003 */  andi       $a2, $v0, 3
/* 30C94 80030094 00063480 */  sll        $a2, $a2, 0x12
/* 30C98 80030098 3C020700 */  lui        $v0, 0x700
/* 30C9C 8003009C 00C23025 */  or         $a2, $a2, $v0
/* 30CA0 800300A0 92820001 */  lbu        $v0, 1($s4)
/* 30CA4 800300A4 30440003 */  andi       $a0, $v0, 3
/* 30CA8 800300A8 90E3001B */  lbu        $v1, 0x1b($a3)
/* 30CAC 800300AC 2C620003 */  sltiu      $v0, $v1, 3
/* 30CB0 800300B0 14400021 */  bnez       $v0, .L80030138
/* 30CB4 800300B4 00042200 */   sll       $a0, $a0, 8
/* 30CB8 800300B8 2C620005 */  sltiu      $v0, $v1, 5
/* 30CBC 800300BC 1440001F */  bnez       $v0, .L8003013C
/* 30CC0 800300C0 34828000 */   ori       $v0, $a0, 0x8000
/* 30CC4 800300C4 2C620009 */  sltiu      $v0, $v1, 9
/* 30CC8 800300C8 1440001C */  bnez       $v0, .L8003013C
/* 30CCC 800300CC 3482C000 */   ori       $v0, $a0, 0xc000
/* 30CD0 800300D0 2C620011 */  sltiu      $v0, $v1, 0x11
/* 30CD4 800300D4 14400016 */  bnez       $v0, .L80030130
/* 30CD8 800300D8 3C020001 */   lui       $v0, 1
/* 30CDC 800300DC 2C620021 */  sltiu      $v0, $v1, 0x21
/* 30CE0 800300E0 14400010 */  bnez       $v0, .L80030124
/* 30CE4 800300E4 3C020001 */   lui       $v0, 1
/* 30CE8 800300E8 2C620041 */  sltiu      $v0, $v1, 0x41
/* 30CEC 800300EC 1440000A */  bnez       $v0, .L80030118
/* 30CF0 800300F0 3C020001 */   lui       $v0, 1
/* 30CF4 800300F4 2C620081 */  sltiu      $v0, $v1, 0x81
/* 30CF8 800300F8 50400005 */  beql       $v0, $zero, .L80030110
/* 30CFC 800300FC 3C020002 */   lui       $v0, 2
/* 30D00 80030100 3C020001 */  lui        $v0, 1
/* 30D04 80030104 3442C000 */  ori        $v0, $v0, 0xc000
/* 30D08 80030108 0800C04F */  j          .L8003013C
/* 30D0C 8003010C 00821025 */   or        $v0, $a0, $v0
.L80030110:
/* 30D10 80030110 0800C04F */  j          .L8003013C
/* 30D14 80030114 00821025 */   or        $v0, $a0, $v0
.L80030118:
/* 30D18 80030118 34428000 */  ori        $v0, $v0, 0x8000
/* 30D1C 8003011C 0800C04F */  j          .L8003013C
/* 30D20 80030120 00821025 */   or        $v0, $a0, $v0
.L80030124:
/* 30D24 80030124 34424000 */  ori        $v0, $v0, 0x4000
/* 30D28 80030128 0800C04F */  j          .L8003013C
/* 30D2C 8003012C 00821025 */   or        $v0, $a0, $v0
.L80030130:
/* 30D30 80030130 0800C04F */  j          .L8003013C
/* 30D34 80030134 00821025 */   or        $v0, $a0, $v0
.L80030138:
/* 30D38 80030138 34824000 */  ori        $v0, $a0, 0x4000
.L8003013C:
/* 30D3C 8003013C 00C22025 */  or         $a0, $a2, $v0
/* 30D40 80030140 90E3001A */  lbu        $v1, 0x1a($a3)
/* 30D44 80030144 2C620003 */  sltiu      $v0, $v1, 3
/* 30D48 80030148 14400014 */  bnez       $v0, .L8003019C
/* 30D4C 8003014C 34820010 */   ori       $v0, $a0, 0x10
/* 30D50 80030150 2C620005 */  sltiu      $v0, $v1, 5
/* 30D54 80030154 14400011 */  bnez       $v0, .L8003019C
/* 30D58 80030158 34820020 */   ori       $v0, $a0, 0x20
/* 30D5C 8003015C 2C620009 */  sltiu      $v0, $v1, 9
/* 30D60 80030160 1440000E */  bnez       $v0, .L8003019C
/* 30D64 80030164 34820030 */   ori       $v0, $a0, 0x30
/* 30D68 80030168 2C620011 */  sltiu      $v0, $v1, 0x11
/* 30D6C 8003016C 1440000B */  bnez       $v0, .L8003019C
/* 30D70 80030170 34820040 */   ori       $v0, $a0, 0x40
/* 30D74 80030174 2C620021 */  sltiu      $v0, $v1, 0x21
/* 30D78 80030178 14400008 */  bnez       $v0, .L8003019C
/* 30D7C 8003017C 34820050 */   ori       $v0, $a0, 0x50
/* 30D80 80030180 2C620041 */  sltiu      $v0, $v1, 0x41
/* 30D84 80030184 14400005 */  bnez       $v0, .L8003019C
/* 30D88 80030188 34820060 */   ori       $v0, $a0, 0x60
/* 30D8C 8003018C 2C620081 */  sltiu      $v0, $v1, 0x81
/* 30D90 80030190 14400002 */  bnez       $v0, .L8003019C
/* 30D94 80030194 34820070 */   ori       $v0, $a0, 0x70
/* 30D98 80030198 34820080 */  ori        $v0, $a0, 0x80
.L8003019C:
/* 30D9C 8003019C ACA20004 */  sw         $v0, 4($a1)
/* 30DA0 800301A0 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 30DA4 800301A4 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 30DA8 800301A8 24640008 */  addiu      $a0, $v1, 8
/* 30DAC 800301AC 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30DB0 800301B0 AC2437DC */  sw         $a0, %lo(D_800F37DC)($at)
/* 30DB4 800301B4 3C02E600 */  lui        $v0, 0xe600
/* 30DB8 800301B8 AC620000 */  sw         $v0, ($v1)
/* 30DBC 800301BC AC600004 */  sw         $zero, 4($v1)
/* 30DC0 800301C0 24620010 */  addiu      $v0, $v1, 0x10
/* 30DC4 800301C4 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30DC8 800301C8 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30DCC 800301CC 3C02F300 */  lui        $v0, %hi(D_F30007FF)
/* 30DD0 800301D0 AC620008 */  sw         $v0, 8($v1)
/* 30DD4 800301D4 90E2001A */  lbu        $v0, 0x1a($a3)
/* 30DD8 800301D8 00021102 */  srl        $v0, $v0, 4
/* 30DDC 800301DC 14400002 */  bnez       $v0, .L800301E8
/* 30DE0 800301E0 244307FF */   addiu     $v1, $v0, %lo(D_F30007FF)
/* 30DE4 800301E4 24030800 */  addiu      $v1, $zero, 0x800
.L800301E8:
/* 30DE8 800301E8 90E5001A */  lbu        $a1, 0x1a($a3)
/* 30DEC 800301EC 90E2001B */  lbu        $v0, 0x1b($a3)
/* 30DF0 800301F0 00A20018 */  mult       $a1, $v0
/* 30DF4 800301F4 00002812 */  mflo       $a1
/* 30DF8 800301F8 24A50003 */  addiu      $a1, $a1, 3
/* 30DFC 800301FC 00052883 */  sra        $a1, $a1, 2
/* 30E00 80030200 24A5FFFF */  addiu      $a1, $a1, -1
/* 30E04 80030204 28A20800 */  slti       $v0, $a1, 0x800
/* 30E08 80030208 50400001 */  beql       $v0, $zero, .L80030210
/* 30E0C 8003020C 240507FF */   addiu     $a1, $zero, 0x7ff
.L80030210:
/* 30E10 80030210 30A50FFF */  andi       $a1, $a1, 0xfff
/* 30E14 80030214 00052B00 */  sll        $a1, $a1, 0xc
/* 30E18 80030218 3C020700 */  lui        $v0, 0x700
/* 30E1C 8003021C 00A22825 */  or         $a1, $a1, $v0
/* 30E20 80030220 90E2001A */  lbu        $v0, 0x1a($a3)
/* 30E24 80030224 00021102 */  srl        $v0, $v0, 4
/* 30E28 80030228 5040000D */  beql       $v0, $zero, .L80030260
/* 30E2C 8003022C 30620FFF */   andi      $v0, $v1, 0xfff
/* 30E30 80030230 0062001A */  div        $zero, $v1, $v0
/* 30E34 80030234 14400002 */  bnez       $v0, .L80030240
/* 30E38 80030238 00000000 */   nop
/* 30E3C 8003023C 0007000D */  break      7
.L80030240:
/* 30E40 80030240 2401FFFF */   addiu     $at, $zero, -1
/* 30E44 80030244 14410004 */  bne        $v0, $at, .L80030258
/* 30E48 80030248 3C018000 */   lui       $at, 0x8000
/* 30E4C 8003024C 14610002 */  bne        $v1, $at, .L80030258
/* 30E50 80030250 00000000 */   nop
/* 30E54 80030254 0006000D */  break      6
.L80030258:
/* 30E58 80030258 00001012 */   mflo      $v0
/* 30E5C 8003025C 30420FFF */  andi       $v0, $v0, 0xfff
.L80030260:
/* 30E60 80030260 00A21025 */  or         $v0, $a1, $v0
/* 30E64 80030264 AC820004 */  sw         $v0, 4($a0)
/* 30E68 80030268 3C05800F */  lui        $a1, %hi(D_800F37DC)
/* 30E6C 8003026C 8CA537DC */  lw         $a1, %lo(D_800F37DC)($a1)
/* 30E70 80030270 24A30008 */  addiu      $v1, $a1, 8
/* 30E74 80030274 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30E78 80030278 AC2337DC */  sw         $v1, %lo(D_800F37DC)($at)
/* 30E7C 8003027C 3C02E700 */  lui        $v0, 0xe700
/* 30E80 80030280 ACA20000 */  sw         $v0, ($a1)
/* 30E84 80030284 ACA00004 */  sw         $zero, 4($a1)
/* 30E88 80030288 24A20010 */  addiu      $v0, $a1, 0x10
/* 30E8C 8003028C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30E90 80030290 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30E94 80030294 00603021 */  addu       $a2, $v1, $zero
/* 30E98 80030298 90E30018 */  lbu        $v1, 0x18($a3)
/* 30E9C 8003029C 30630007 */  andi       $v1, $v1, 7
/* 30EA0 800302A0 00031D40 */  sll        $v1, $v1, 0x15
/* 30EA4 800302A4 90E2001A */  lbu        $v0, 0x1a($a3)
/* 30EA8 800302A8 00021042 */  srl        $v0, $v0, 1
/* 30EAC 800302AC 24420007 */  addiu      $v0, $v0, 7
/* 30EB0 800302B0 000210C2 */  srl        $v0, $v0, 3
/* 30EB4 800302B4 00021240 */  sll        $v0, $v0, 9
/* 30EB8 800302B8 3C04F500 */  lui        $a0, 0xf500
/* 30EBC 800302BC 00441025 */  or         $v0, $v0, $a0
/* 30EC0 800302C0 00621825 */  or         $v1, $v1, $v0
/* 30EC4 800302C4 ACA30008 */  sw         $v1, 8($a1)
/* 30EC8 800302C8 92820002 */  lbu        $v0, 2($s4)
/* 30ECC 800302CC 30450003 */  andi       $a1, $v0, 3
/* 30ED0 800302D0 00052C80 */  sll        $a1, $a1, 0x12
/* 30ED4 800302D4 92820001 */  lbu        $v0, 1($s4)
/* 30ED8 800302D8 30440003 */  andi       $a0, $v0, 3
/* 30EDC 800302DC 90E3001B */  lbu        $v1, 0x1b($a3)
/* 30EE0 800302E0 2C620003 */  sltiu      $v0, $v1, 3
/* 30EE4 800302E4 1440FC65 */  bnez       $v0, .L8002F47C
/* 30EE8 800302E8 00042200 */   sll       $a0, $a0, 8
/* 30EEC 800302EC 2C620005 */  sltiu      $v0, $v1, 5
/* 30EF0 800302F0 1440FC63 */  bnez       $v0, .L8002F480
/* 30EF4 800302F4 34828000 */   ori       $v0, $a0, 0x8000
/* 30EF8 800302F8 2C620009 */  sltiu      $v0, $v1, 9
/* 30EFC 800302FC 1440FC60 */  bnez       $v0, .L8002F480
/* 30F00 80030300 3482C000 */   ori       $v0, $a0, 0xc000
/* 30F04 80030304 2C620011 */  sltiu      $v0, $v1, 0x11
/* 30F08 80030308 14400016 */  bnez       $v0, .L80030364
/* 30F0C 8003030C 3C020001 */   lui       $v0, 1
/* 30F10 80030310 2C620021 */  sltiu      $v0, $v1, 0x21
/* 30F14 80030314 14400010 */  bnez       $v0, .L80030358
/* 30F18 80030318 3C020001 */   lui       $v0, 1
/* 30F1C 8003031C 2C620041 */  sltiu      $v0, $v1, 0x41
/* 30F20 80030320 1440000A */  bnez       $v0, .L8003034C
/* 30F24 80030324 3C020001 */   lui       $v0, 1
/* 30F28 80030328 2C620081 */  sltiu      $v0, $v1, 0x81
/* 30F2C 8003032C 50400005 */  beql       $v0, $zero, .L80030344
/* 30F30 80030330 3C020002 */   lui       $v0, 2
/* 30F34 80030334 3C020001 */  lui        $v0, 1
/* 30F38 80030338 3442C000 */  ori        $v0, $v0, 0xc000
/* 30F3C 8003033C 0800BD20 */  j          .L8002F480
/* 30F40 80030340 00821025 */   or        $v0, $a0, $v0
.L80030344:
/* 30F44 80030344 0800BD20 */  j          .L8002F480
/* 30F48 80030348 00821025 */   or        $v0, $a0, $v0
.L8003034C:
/* 30F4C 8003034C 34428000 */  ori        $v0, $v0, 0x8000
/* 30F50 80030350 0800BD20 */  j          .L8002F480
/* 30F54 80030354 00821025 */   or        $v0, $a0, $v0
.L80030358:
/* 30F58 80030358 34424000 */  ori        $v0, $v0, 0x4000
/* 30F5C 8003035C 0800BD20 */  j          .L8002F480
/* 30F60 80030360 00821025 */   or        $v0, $a0, $v0
.L80030364:
/* 30F64 80030364 0800BD20 */  j          .L8002F480
/* 30F68 80030368 00821025 */   or        $v0, $a0, $v0
.L8003036C:
/* 30F6C 8003036C 3C06800F */  lui        $a2, %hi(D_800F37DC)
/* 30F70 80030370 8CC637DC */  lw         $a2, %lo(D_800F37DC)($a2)
/* 30F74 80030374 24C20008 */  addiu      $v0, $a2, 8
/* 30F78 80030378 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30F7C 8003037C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30F80 80030380 3C02FD10 */  lui        $v0, 0xfd10
/* 30F84 80030384 ACC20000 */  sw         $v0, ($a2)
/* 30F88 80030388 ACC40004 */  sw         $a0, 4($a2)
/* 30F8C 8003038C 24C20010 */  addiu      $v0, $a2, 0x10
/* 30F90 80030390 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30F94 80030394 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30F98 80030398 3C02E800 */  lui        $v0, 0xe800
/* 30F9C 8003039C ACC20008 */  sw         $v0, 8($a2)
/* 30FA0 800303A0 ACC0000C */  sw         $zero, 0xc($a2)
/* 30FA4 800303A4 24C20018 */  addiu      $v0, $a2, 0x18
/* 30FA8 800303A8 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30FAC 800303AC AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30FB0 800303B0 3C02F500 */  lui        $v0, 0xf500
/* 30FB4 800303B4 34420100 */  ori        $v0, $v0, 0x100
/* 30FB8 800303B8 ACC20010 */  sw         $v0, 0x10($a2)
/* 30FBC 800303BC ACC90014 */  sw         $t1, 0x14($a2)
/* 30FC0 800303C0 24C20020 */  addiu      $v0, $a2, 0x20
/* 30FC4 800303C4 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30FC8 800303C8 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30FCC 800303CC 3C02E600 */  lui        $v0, 0xe600
/* 30FD0 800303D0 ACC20018 */  sw         $v0, 0x18($a2)
/* 30FD4 800303D4 ACC0001C */  sw         $zero, 0x1c($a2)
/* 30FD8 800303D8 24C20028 */  addiu      $v0, $a2, 0x28
/* 30FDC 800303DC 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 30FE0 800303E0 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 30FE4 800303E4 3C02F000 */  lui        $v0, 0xf000
/* 30FE8 800303E8 ACC20020 */  sw         $v0, 0x20($a2)
/* 30FEC 800303EC 3C02073F */  lui        $v0, 0x73f
/* 30FF0 800303F0 3442C000 */  ori        $v0, $v0, 0xc000
/* 30FF4 800303F4 ACC20024 */  sw         $v0, 0x24($a2)
/* 30FF8 800303F8 24C20030 */  addiu      $v0, $a2, 0x30
/* 30FFC 800303FC 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 31000 80030400 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 31004 80030404 3C02E700 */  lui        $v0, 0xe700
/* 31008 80030408 ACC20028 */  sw         $v0, 0x28($a2)
/* 3100C 8003040C ACC0002C */  sw         $zero, 0x2c($a2)
/* 31010 80030410 90E2001A */  lbu        $v0, 0x1a($a3)
/* 31014 80030414 2C420008 */  sltiu      $v0, $v0, 8
/* 31018 80030418 104000D9 */  beqz       $v0, .L80030780
/* 3101C 8003041C 24C50038 */   addiu     $a1, $a2, 0x38
/* 31020 80030420 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 31024 80030424 AC2537DC */  sw         $a1, %lo(D_800F37DC)($at)
/* 31028 80030428 90E30018 */  lbu        $v1, 0x18($a3)
/* 3102C 8003042C 30630007 */  andi       $v1, $v1, 7
/* 31030 80030430 00031D40 */  sll        $v1, $v1, 0x15
/* 31034 80030434 90E2001A */  lbu        $v0, 0x1a($a3)
/* 31038 80030438 2442FFFF */  addiu      $v0, $v0, -1
/* 3103C 8003043C 30420FFF */  andi       $v0, $v0, 0xfff
/* 31040 80030440 3C04FD08 */  lui        $a0, 0xfd08
/* 31044 80030444 00441025 */  or         $v0, $v0, $a0
/* 31048 80030448 00621825 */  or         $v1, $v1, $v0
/* 3104C 8003044C ACC30030 */  sw         $v1, 0x30($a2)
/* 31050 80030450 ACC80034 */  sw         $t0, 0x34($a2)
/* 31054 80030454 24C20040 */  addiu      $v0, $a2, 0x40
/* 31058 80030458 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 3105C 8003045C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 31060 80030460 90E30018 */  lbu        $v1, 0x18($a3)
/* 31064 80030464 30630007 */  andi       $v1, $v1, 7
/* 31068 80030468 00031D40 */  sll        $v1, $v1, 0x15
/* 3106C 8003046C 90E2001A */  lbu        $v0, 0x1a($a3)
/* 31070 80030470 24420008 */  addiu      $v0, $v0, 8
/* 31074 80030474 000210C2 */  srl        $v0, $v0, 3
/* 31078 80030478 00021240 */  sll        $v0, $v0, 9
/* 3107C 8003047C 3C04F508 */  lui        $a0, 0xf508
/* 31080 80030480 00441025 */  or         $v0, $v0, $a0
/* 31084 80030484 00621825 */  or         $v1, $v1, $v0
/* 31088 80030488 ACC30038 */  sw         $v1, 0x38($a2)
/* 3108C 8003048C 92820002 */  lbu        $v0, 2($s4)
/* 31090 80030490 30460003 */  andi       $a2, $v0, 3
/* 31094 80030494 00063480 */  sll        $a2, $a2, 0x12
/* 31098 80030498 00C93025 */  or         $a2, $a2, $t1
/* 3109C 8003049C 92820001 */  lbu        $v0, 1($s4)
/* 310A0 800304A0 30440003 */  andi       $a0, $v0, 3
/* 310A4 800304A4 90E3001B */  lbu        $v1, 0x1b($a3)
/* 310A8 800304A8 2C620003 */  sltiu      $v0, $v1, 3
/* 310AC 800304AC 14400021 */  bnez       $v0, .L80030534
/* 310B0 800304B0 00042200 */   sll       $a0, $a0, 8
/* 310B4 800304B4 2C620005 */  sltiu      $v0, $v1, 5
/* 310B8 800304B8 1440001F */  bnez       $v0, .L80030538
/* 310BC 800304BC 34828000 */   ori       $v0, $a0, 0x8000
/* 310C0 800304C0 2C620009 */  sltiu      $v0, $v1, 9
/* 310C4 800304C4 1440001C */  bnez       $v0, .L80030538
/* 310C8 800304C8 3482C000 */   ori       $v0, $a0, 0xc000
/* 310CC 800304CC 2C620011 */  sltiu      $v0, $v1, 0x11
/* 310D0 800304D0 14400016 */  bnez       $v0, .L8003052C
/* 310D4 800304D4 3C020001 */   lui       $v0, 1
/* 310D8 800304D8 2C620021 */  sltiu      $v0, $v1, 0x21
/* 310DC 800304DC 14400010 */  bnez       $v0, .L80030520
/* 310E0 800304E0 3C020001 */   lui       $v0, 1
/* 310E4 800304E4 2C620041 */  sltiu      $v0, $v1, 0x41
/* 310E8 800304E8 1440000A */  bnez       $v0, .L80030514
/* 310EC 800304EC 3C020001 */   lui       $v0, 1
/* 310F0 800304F0 2C620081 */  sltiu      $v0, $v1, 0x81
/* 310F4 800304F4 50400005 */  beql       $v0, $zero, .L8003050C
/* 310F8 800304F8 3C020002 */   lui       $v0, 2
/* 310FC 800304FC 3C020001 */  lui        $v0, 1
/* 31100 80030500 3442C000 */  ori        $v0, $v0, 0xc000
/* 31104 80030504 0800C14E */  j          .L80030538
/* 31108 80030508 00821025 */   or        $v0, $a0, $v0
.L8003050C:
/* 3110C 8003050C 0800C14E */  j          .L80030538
/* 31110 80030510 00821025 */   or        $v0, $a0, $v0
.L80030514:
/* 31114 80030514 34428000 */  ori        $v0, $v0, 0x8000
/* 31118 80030518 0800C14E */  j          .L80030538
/* 3111C 8003051C 00821025 */   or        $v0, $a0, $v0
.L80030520:
/* 31120 80030520 34424000 */  ori        $v0, $v0, 0x4000
/* 31124 80030524 0800C14E */  j          .L80030538
/* 31128 80030528 00821025 */   or        $v0, $a0, $v0
.L8003052C:
/* 3112C 8003052C 0800C14E */  j          .L80030538
/* 31130 80030530 00821025 */   or        $v0, $a0, $v0
.L80030534:
/* 31134 80030534 34824000 */  ori        $v0, $a0, 0x4000
.L80030538:
/* 31138 80030538 00C22025 */  or         $a0, $a2, $v0
/* 3113C 8003053C 90E3001A */  lbu        $v1, 0x1a($a3)
/* 31140 80030540 2C620003 */  sltiu      $v0, $v1, 3
/* 31144 80030544 14400014 */  bnez       $v0, .L80030598
/* 31148 80030548 34820010 */   ori       $v0, $a0, 0x10
/* 3114C 8003054C 2C620005 */  sltiu      $v0, $v1, 5
/* 31150 80030550 14400011 */  bnez       $v0, .L80030598
/* 31154 80030554 34820020 */   ori       $v0, $a0, 0x20
/* 31158 80030558 2C620009 */  sltiu      $v0, $v1, 9
/* 3115C 8003055C 1440000E */  bnez       $v0, .L80030598
/* 31160 80030560 34820030 */   ori       $v0, $a0, 0x30
/* 31164 80030564 2C620011 */  sltiu      $v0, $v1, 0x11
/* 31168 80030568 1440000B */  bnez       $v0, .L80030598
/* 3116C 8003056C 34820040 */   ori       $v0, $a0, 0x40
/* 31170 80030570 2C620021 */  sltiu      $v0, $v1, 0x21
/* 31174 80030574 14400008 */  bnez       $v0, .L80030598
/* 31178 80030578 34820050 */   ori       $v0, $a0, 0x50
/* 3117C 8003057C 2C620041 */  sltiu      $v0, $v1, 0x41
/* 31180 80030580 14400005 */  bnez       $v0, .L80030598
/* 31184 80030584 34820060 */   ori       $v0, $a0, 0x60
/* 31188 80030588 2C620081 */  sltiu      $v0, $v1, 0x81
/* 3118C 8003058C 14400002 */  bnez       $v0, .L80030598
/* 31190 80030590 34820070 */   ori       $v0, $a0, 0x70
/* 31194 80030594 34820080 */  ori        $v0, $a0, 0x80
.L80030598:
/* 31198 80030598 ACA20004 */  sw         $v0, 4($a1)
/* 3119C 8003059C 3C05800F */  lui        $a1, %hi(D_800F37DC)
/* 311A0 800305A0 8CA537DC */  lw         $a1, %lo(D_800F37DC)($a1)
/* 311A4 800305A4 24A20008 */  addiu      $v0, $a1, 8
/* 311A8 800305A8 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 311AC 800305AC AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 311B0 800305B0 3C02E600 */  lui        $v0, 0xe600
/* 311B4 800305B4 ACA20000 */  sw         $v0, ($a1)
/* 311B8 800305B8 ACA00004 */  sw         $zero, 4($a1)
/* 311BC 800305BC 24A20010 */  addiu      $v0, $a1, 0x10
/* 311C0 800305C0 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 311C4 800305C4 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 311C8 800305C8 3C02F400 */  lui        $v0, 0xf400
/* 311CC 800305CC ACA20008 */  sw         $v0, 8($a1)
/* 311D0 800305D0 90E4001A */  lbu        $a0, 0x1a($a3)
/* 311D4 800305D4 00042380 */  sll        $a0, $a0, 0xe
/* 311D8 800305D8 90E2001B */  lbu        $v0, 0x1b($a3)
/* 311DC 800305DC 00021080 */  sll        $v0, $v0, 2
/* 311E0 800305E0 3C030700 */  lui        $v1, 0x700
/* 311E4 800305E4 00431025 */  or         $v0, $v0, $v1
/* 311E8 800305E8 00822025 */  or         $a0, $a0, $v0
/* 311EC 800305EC ACA4000C */  sw         $a0, 0xc($a1)
/* 311F0 800305F0 24A30018 */  addiu      $v1, $a1, 0x18
/* 311F4 800305F4 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 311F8 800305F8 AC2337DC */  sw         $v1, %lo(D_800F37DC)($at)
/* 311FC 800305FC 3C02E700 */  lui        $v0, 0xe700
/* 31200 80030600 ACA20010 */  sw         $v0, 0x10($a1)
/* 31204 80030604 ACA00014 */  sw         $zero, 0x14($a1)
/* 31208 80030608 24A20020 */  addiu      $v0, $a1, 0x20
/* 3120C 8003060C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 31210 80030610 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 31214 80030614 00603021 */  addu       $a2, $v1, $zero
/* 31218 80030618 90E30018 */  lbu        $v1, 0x18($a3)
/* 3121C 8003061C 30630007 */  andi       $v1, $v1, 7
/* 31220 80030620 00031D40 */  sll        $v1, $v1, 0x15
/* 31224 80030624 90E2001A */  lbu        $v0, 0x1a($a3)
/* 31228 80030628 24420008 */  addiu      $v0, $v0, 8
/* 3122C 8003062C 000210C2 */  srl        $v0, $v0, 3
/* 31230 80030630 00021240 */  sll        $v0, $v0, 9
/* 31234 80030634 3C04F508 */  lui        $a0, 0xf508
/* 31238 80030638 00441025 */  or         $v0, $v0, $a0
/* 3123C 8003063C 00621825 */  or         $v1, $v1, $v0
/* 31240 80030640 ACA30018 */  sw         $v1, 0x18($a1)
/* 31244 80030644 92820002 */  lbu        $v0, 2($s4)
/* 31248 80030648 30450003 */  andi       $a1, $v0, 3
/* 3124C 8003064C 00052C80 */  sll        $a1, $a1, 0x12
/* 31250 80030650 92820001 */  lbu        $v0, 1($s4)
/* 31254 80030654 30440003 */  andi       $a0, $v0, 3
/* 31258 80030658 90E3001B */  lbu        $v1, 0x1b($a3)
/* 3125C 8003065C 2C620003 */  sltiu      $v0, $v1, 3
/* 31260 80030660 14400021 */  bnez       $v0, .L800306E8
/* 31264 80030664 00042200 */   sll       $a0, $a0, 8
/* 31268 80030668 2C620005 */  sltiu      $v0, $v1, 5
/* 3126C 8003066C 1440001F */  bnez       $v0, .L800306EC
/* 31270 80030670 34828000 */   ori       $v0, $a0, 0x8000
/* 31274 80030674 2C620009 */  sltiu      $v0, $v1, 9
/* 31278 80030678 1440001C */  bnez       $v0, .L800306EC
/* 3127C 8003067C 3482C000 */   ori       $v0, $a0, 0xc000
/* 31280 80030680 2C620011 */  sltiu      $v0, $v1, 0x11
/* 31284 80030684 14400016 */  bnez       $v0, .L800306E0
/* 31288 80030688 3C020001 */   lui       $v0, 1
/* 3128C 8003068C 2C620021 */  sltiu      $v0, $v1, 0x21
/* 31290 80030690 14400010 */  bnez       $v0, .L800306D4
/* 31294 80030694 3C020001 */   lui       $v0, 1
/* 31298 80030698 2C620041 */  sltiu      $v0, $v1, 0x41
/* 3129C 8003069C 1440000A */  bnez       $v0, .L800306C8
/* 312A0 800306A0 3C020001 */   lui       $v0, 1
/* 312A4 800306A4 2C620081 */  sltiu      $v0, $v1, 0x81
/* 312A8 800306A8 50400005 */  beql       $v0, $zero, .L800306C0
/* 312AC 800306AC 3C020002 */   lui       $v0, 2
/* 312B0 800306B0 3C020001 */  lui        $v0, 1
/* 312B4 800306B4 3442C000 */  ori        $v0, $v0, 0xc000
/* 312B8 800306B8 0800C1BB */  j          .L800306EC
/* 312BC 800306BC 00821025 */   or        $v0, $a0, $v0
.L800306C0:
/* 312C0 800306C0 0800C1BB */  j          .L800306EC
/* 312C4 800306C4 00821025 */   or        $v0, $a0, $v0
.L800306C8:
/* 312C8 800306C8 34428000 */  ori        $v0, $v0, 0x8000
/* 312CC 800306CC 0800C1BB */  j          .L800306EC
/* 312D0 800306D0 00821025 */   or        $v0, $a0, $v0
.L800306D4:
/* 312D4 800306D4 34424000 */  ori        $v0, $v0, 0x4000
/* 312D8 800306D8 0800C1BB */  j          .L800306EC
/* 312DC 800306DC 00821025 */   or        $v0, $a0, $v0
.L800306E0:
/* 312E0 800306E0 0800C1BB */  j          .L800306EC
/* 312E4 800306E4 00821025 */   or        $v0, $a0, $v0
.L800306E8:
/* 312E8 800306E8 34824000 */  ori        $v0, $a0, 0x4000
.L800306EC:
/* 312EC 800306EC 00A22025 */  or         $a0, $a1, $v0
/* 312F0 800306F0 90E3001A */  lbu        $v1, 0x1a($a3)
/* 312F4 800306F4 2C620003 */  sltiu      $v0, $v1, 3
/* 312F8 800306F8 14400014 */  bnez       $v0, .L8003074C
/* 312FC 800306FC 34820010 */   ori       $v0, $a0, 0x10
/* 31300 80030700 2C620005 */  sltiu      $v0, $v1, 5
/* 31304 80030704 14400011 */  bnez       $v0, .L8003074C
/* 31308 80030708 34820020 */   ori       $v0, $a0, 0x20
/* 3130C 8003070C 2C620009 */  sltiu      $v0, $v1, 9
/* 31310 80030710 1440000E */  bnez       $v0, .L8003074C
/* 31314 80030714 34820030 */   ori       $v0, $a0, 0x30
/* 31318 80030718 2C620011 */  sltiu      $v0, $v1, 0x11
/* 3131C 8003071C 1440000B */  bnez       $v0, .L8003074C
/* 31320 80030720 34820040 */   ori       $v0, $a0, 0x40
/* 31324 80030724 2C620021 */  sltiu      $v0, $v1, 0x21
/* 31328 80030728 14400008 */  bnez       $v0, .L8003074C
/* 3132C 8003072C 34820050 */   ori       $v0, $a0, 0x50
/* 31330 80030730 2C620041 */  sltiu      $v0, $v1, 0x41
/* 31334 80030734 14400005 */  bnez       $v0, .L8003074C
/* 31338 80030738 34820060 */   ori       $v0, $a0, 0x60
/* 3133C 8003073C 2C620081 */  sltiu      $v0, $v1, 0x81
/* 31340 80030740 50400002 */  beql       $v0, $zero, .L8003074C
/* 31344 80030744 34820080 */   ori       $v0, $a0, 0x80
/* 31348 80030748 34820070 */  ori        $v0, $a0, 0x70
.L8003074C:
/* 3134C 8003074C ACC20004 */  sw         $v0, 4($a2)
/* 31350 80030750 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 31354 80030754 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 31358 80030758 24820008 */  addiu      $v0, $a0, 8
/* 3135C 8003075C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 31360 80030760 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 31364 80030764 3C02F200 */  lui        $v0, 0xf200
/* 31368 80030768 AC820000 */  sw         $v0, ($a0)
/* 3136C 8003076C 90E3001A */  lbu        $v1, 0x1a($a3)
/* 31370 80030770 00031B80 */  sll        $v1, $v1, 0xe
/* 31374 80030774 90E2001B */  lbu        $v0, 0x1b($a3)
/* 31378 80030778 0800C2D6 */  j          .L80030B58
/* 3137C 8003077C 00021080 */   sll       $v0, $v0, 2
.L80030780:
/* 31380 80030780 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 31384 80030784 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 31388 80030788 24850008 */  addiu      $a1, $a0, 8
/* 3138C 8003078C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 31390 80030790 AC2537DC */  sw         $a1, %lo(D_800F37DC)($at)
/* 31394 80030794 90E20018 */  lbu        $v0, 0x18($a3)
/* 31398 80030798 30420007 */  andi       $v0, $v0, 7
/* 3139C 8003079C 00021540 */  sll        $v0, $v0, 0x15
/* 313A0 800307A0 3C03FD10 */  lui        $v1, 0xfd10
/* 313A4 800307A4 00431025 */  or         $v0, $v0, $v1
/* 313A8 800307A8 AC820000 */  sw         $v0, ($a0)
/* 313AC 800307AC AC880004 */  sw         $t0, 4($a0)
/* 313B0 800307B0 24820010 */  addiu      $v0, $a0, 0x10
/* 313B4 800307B4 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 313B8 800307B8 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 313BC 800307BC 90E20018 */  lbu        $v0, 0x18($a3)
/* 313C0 800307C0 30420007 */  andi       $v0, $v0, 7
/* 313C4 800307C4 00021540 */  sll        $v0, $v0, 0x15
/* 313C8 800307C8 3C03F510 */  lui        $v1, 0xf510
/* 313CC 800307CC 00431025 */  or         $v0, $v0, $v1
/* 313D0 800307D0 AC820008 */  sw         $v0, 8($a0)
/* 313D4 800307D4 92820002 */  lbu        $v0, 2($s4)
/* 313D8 800307D8 30460003 */  andi       $a2, $v0, 3
/* 313DC 800307DC 00063480 */  sll        $a2, $a2, 0x12
/* 313E0 800307E0 3C020700 */  lui        $v0, 0x700
/* 313E4 800307E4 00C23025 */  or         $a2, $a2, $v0
/* 313E8 800307E8 92820001 */  lbu        $v0, 1($s4)
/* 313EC 800307EC 30440003 */  andi       $a0, $v0, 3
/* 313F0 800307F0 90E3001B */  lbu        $v1, 0x1b($a3)
/* 313F4 800307F4 2C620003 */  sltiu      $v0, $v1, 3
/* 313F8 800307F8 14400021 */  bnez       $v0, .L80030880
/* 313FC 800307FC 00042200 */   sll       $a0, $a0, 8
/* 31400 80030800 2C620005 */  sltiu      $v0, $v1, 5
/* 31404 80030804 1440001F */  bnez       $v0, .L80030884
/* 31408 80030808 34828000 */   ori       $v0, $a0, 0x8000
/* 3140C 8003080C 2C620009 */  sltiu      $v0, $v1, 9
/* 31410 80030810 1440001C */  bnez       $v0, .L80030884
/* 31414 80030814 3482C000 */   ori       $v0, $a0, 0xc000
/* 31418 80030818 2C620011 */  sltiu      $v0, $v1, 0x11
/* 3141C 8003081C 14400016 */  bnez       $v0, .L80030878
/* 31420 80030820 3C020001 */   lui       $v0, 1
/* 31424 80030824 2C620021 */  sltiu      $v0, $v1, 0x21
/* 31428 80030828 14400010 */  bnez       $v0, .L8003086C
/* 3142C 8003082C 3C020001 */   lui       $v0, 1
/* 31430 80030830 2C620041 */  sltiu      $v0, $v1, 0x41
/* 31434 80030834 1440000A */  bnez       $v0, .L80030860
/* 31438 80030838 3C020001 */   lui       $v0, 1
/* 3143C 8003083C 2C620081 */  sltiu      $v0, $v1, 0x81
/* 31440 80030840 50400005 */  beql       $v0, $zero, .L80030858
/* 31444 80030844 3C020002 */   lui       $v0, 2
/* 31448 80030848 3C020001 */  lui        $v0, 1
/* 3144C 8003084C 3442C000 */  ori        $v0, $v0, 0xc000
/* 31450 80030850 0800C221 */  j          .L80030884
/* 31454 80030854 00821025 */   or        $v0, $a0, $v0
.L80030858:
/* 31458 80030858 0800C221 */  j          .L80030884
/* 3145C 8003085C 00821025 */   or        $v0, $a0, $v0
.L80030860:
/* 31460 80030860 34428000 */  ori        $v0, $v0, 0x8000
/* 31464 80030864 0800C221 */  j          .L80030884
/* 31468 80030868 00821025 */   or        $v0, $a0, $v0
.L8003086C:
/* 3146C 8003086C 34424000 */  ori        $v0, $v0, 0x4000
/* 31470 80030870 0800C221 */  j          .L80030884
/* 31474 80030874 00821025 */   or        $v0, $a0, $v0
.L80030878:
/* 31478 80030878 0800C221 */  j          .L80030884
/* 3147C 8003087C 00821025 */   or        $v0, $a0, $v0
.L80030880:
/* 31480 80030880 34824000 */  ori        $v0, $a0, 0x4000
.L80030884:
/* 31484 80030884 00C22025 */  or         $a0, $a2, $v0
/* 31488 80030888 90E3001A */  lbu        $v1, 0x1a($a3)
/* 3148C 8003088C 2C620003 */  sltiu      $v0, $v1, 3
/* 31490 80030890 14400014 */  bnez       $v0, .L800308E4
/* 31494 80030894 34820010 */   ori       $v0, $a0, 0x10
/* 31498 80030898 2C620005 */  sltiu      $v0, $v1, 5
/* 3149C 8003089C 14400011 */  bnez       $v0, .L800308E4
/* 314A0 800308A0 34820020 */   ori       $v0, $a0, 0x20
/* 314A4 800308A4 2C620009 */  sltiu      $v0, $v1, 9
/* 314A8 800308A8 1440000E */  bnez       $v0, .L800308E4
/* 314AC 800308AC 34820030 */   ori       $v0, $a0, 0x30
/* 314B0 800308B0 2C620011 */  sltiu      $v0, $v1, 0x11
/* 314B4 800308B4 1440000B */  bnez       $v0, .L800308E4
/* 314B8 800308B8 34820040 */   ori       $v0, $a0, 0x40
/* 314BC 800308BC 2C620021 */  sltiu      $v0, $v1, 0x21
/* 314C0 800308C0 14400008 */  bnez       $v0, .L800308E4
/* 314C4 800308C4 34820050 */   ori       $v0, $a0, 0x50
/* 314C8 800308C8 2C620041 */  sltiu      $v0, $v1, 0x41
/* 314CC 800308CC 14400005 */  bnez       $v0, .L800308E4
/* 314D0 800308D0 34820060 */   ori       $v0, $a0, 0x60
/* 314D4 800308D4 2C620081 */  sltiu      $v0, $v1, 0x81
/* 314D8 800308D8 14400002 */  bnez       $v0, .L800308E4
/* 314DC 800308DC 34820070 */   ori       $v0, $a0, 0x70
/* 314E0 800308E0 34820080 */  ori        $v0, $a0, 0x80
.L800308E4:
/* 314E4 800308E4 ACA20004 */  sw         $v0, 4($a1)
/* 314E8 800308E8 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 314EC 800308EC 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 314F0 800308F0 24640008 */  addiu      $a0, $v1, 8
/* 314F4 800308F4 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 314F8 800308F8 AC2437DC */  sw         $a0, %lo(D_800F37DC)($at)
/* 314FC 800308FC 3C02E600 */  lui        $v0, 0xe600
/* 31500 80030900 AC620000 */  sw         $v0, ($v1)
/* 31504 80030904 AC600004 */  sw         $zero, 4($v1)
/* 31508 80030908 24620010 */  addiu      $v0, $v1, 0x10
/* 3150C 8003090C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 31510 80030910 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 31514 80030914 3C02F300 */  lui        $v0, %hi(D_F30007FF)
/* 31518 80030918 AC620008 */  sw         $v0, 8($v1)
/* 3151C 8003091C 90E2001A */  lbu        $v0, 0x1a($a3)
/* 31520 80030920 000210C2 */  srl        $v0, $v0, 3
/* 31524 80030924 14400002 */  bnez       $v0, .L80030930
/* 31528 80030928 244307FF */   addiu     $v1, $v0, %lo(D_F30007FF)
/* 3152C 8003092C 24030800 */  addiu      $v1, $zero, 0x800
.L80030930:
/* 31530 80030930 90E5001A */  lbu        $a1, 0x1a($a3)
/* 31534 80030934 90E2001B */  lbu        $v0, 0x1b($a3)
/* 31538 80030938 00A20018 */  mult       $a1, $v0
/* 3153C 8003093C 00002812 */  mflo       $a1
/* 31540 80030940 24A50001 */  addiu      $a1, $a1, 1
/* 31544 80030944 00052843 */  sra        $a1, $a1, 1
/* 31548 80030948 24A5FFFF */  addiu      $a1, $a1, -1
/* 3154C 8003094C 28A20800 */  slti       $v0, $a1, 0x800
/* 31550 80030950 50400001 */  beql       $v0, $zero, .L80030958
/* 31554 80030954 240507FF */   addiu     $a1, $zero, 0x7ff
.L80030958:
/* 31558 80030958 30A50FFF */  andi       $a1, $a1, 0xfff
/* 3155C 8003095C 00052B00 */  sll        $a1, $a1, 0xc
/* 31560 80030960 3C020700 */  lui        $v0, 0x700
/* 31564 80030964 00A22825 */  or         $a1, $a1, $v0
/* 31568 80030968 90E2001A */  lbu        $v0, 0x1a($a3)
/* 3156C 8003096C 000210C2 */  srl        $v0, $v0, 3
/* 31570 80030970 5040000D */  beql       $v0, $zero, .L800309A8
/* 31574 80030974 30620FFF */   andi      $v0, $v1, 0xfff
/* 31578 80030978 0062001A */  div        $zero, $v1, $v0
/* 3157C 8003097C 14400002 */  bnez       $v0, .L80030988
/* 31580 80030980 00000000 */   nop
/* 31584 80030984 0007000D */  break      7
.L80030988:
/* 31588 80030988 2401FFFF */   addiu     $at, $zero, -1
/* 3158C 8003098C 14410004 */  bne        $v0, $at, .L800309A0
/* 31590 80030990 3C018000 */   lui       $at, 0x8000
/* 31594 80030994 14610002 */  bne        $v1, $at, .L800309A0
/* 31598 80030998 00000000 */   nop
/* 3159C 8003099C 0006000D */  break      6
.L800309A0:
/* 315A0 800309A0 00001012 */   mflo      $v0
/* 315A4 800309A4 30420FFF */  andi       $v0, $v0, 0xfff
.L800309A8:
/* 315A8 800309A8 00A21025 */  or         $v0, $a1, $v0
/* 315AC 800309AC AC820004 */  sw         $v0, 4($a0)
/* 315B0 800309B0 3C05800F */  lui        $a1, %hi(D_800F37DC)
/* 315B4 800309B4 8CA537DC */  lw         $a1, %lo(D_800F37DC)($a1)
/* 315B8 800309B8 24A30008 */  addiu      $v1, $a1, 8
/* 315BC 800309BC 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 315C0 800309C0 AC2337DC */  sw         $v1, %lo(D_800F37DC)($at)
/* 315C4 800309C4 3C02E700 */  lui        $v0, 0xe700
/* 315C8 800309C8 ACA20000 */  sw         $v0, ($a1)
/* 315CC 800309CC ACA00004 */  sw         $zero, 4($a1)
/* 315D0 800309D0 24A20010 */  addiu      $v0, $a1, 0x10
/* 315D4 800309D4 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 315D8 800309D8 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 315DC 800309DC 00603021 */  addu       $a2, $v1, $zero
/* 315E0 800309E0 90E30018 */  lbu        $v1, 0x18($a3)
/* 315E4 800309E4 30630007 */  andi       $v1, $v1, 7
/* 315E8 800309E8 00031D40 */  sll        $v1, $v1, 0x15
/* 315EC 800309EC 90E2001A */  lbu        $v0, 0x1a($a3)
/* 315F0 800309F0 24420007 */  addiu      $v0, $v0, 7
/* 315F4 800309F4 000210C2 */  srl        $v0, $v0, 3
/* 315F8 800309F8 00021240 */  sll        $v0, $v0, 9
/* 315FC 800309FC 3C04F508 */  lui        $a0, 0xf508
/* 31600 80030A00 00441025 */  or         $v0, $v0, $a0
/* 31604 80030A04 00621825 */  or         $v1, $v1, $v0
/* 31608 80030A08 ACA30008 */  sw         $v1, 8($a1)
/* 3160C 80030A0C 92820002 */  lbu        $v0, 2($s4)
/* 31610 80030A10 30450003 */  andi       $a1, $v0, 3
/* 31614 80030A14 00052C80 */  sll        $a1, $a1, 0x12
/* 31618 80030A18 92820001 */  lbu        $v0, 1($s4)
/* 3161C 80030A1C 30440003 */  andi       $a0, $v0, 3
/* 31620 80030A20 90E3001B */  lbu        $v1, 0x1b($a3)
/* 31624 80030A24 2C620003 */  sltiu      $v0, $v1, 3
/* 31628 80030A28 14400021 */  bnez       $v0, .L80030AB0
/* 3162C 80030A2C 00042200 */   sll       $a0, $a0, 8
/* 31630 80030A30 2C620005 */  sltiu      $v0, $v1, 5
/* 31634 80030A34 1440001F */  bnez       $v0, .L80030AB4
/* 31638 80030A38 34828000 */   ori       $v0, $a0, 0x8000
/* 3163C 80030A3C 2C620009 */  sltiu      $v0, $v1, 9
/* 31640 80030A40 1440001C */  bnez       $v0, .L80030AB4
/* 31644 80030A44 3482C000 */   ori       $v0, $a0, 0xc000
/* 31648 80030A48 2C620011 */  sltiu      $v0, $v1, 0x11
/* 3164C 80030A4C 14400016 */  bnez       $v0, .L80030AA8
/* 31650 80030A50 3C020001 */   lui       $v0, 1
/* 31654 80030A54 2C620021 */  sltiu      $v0, $v1, 0x21
/* 31658 80030A58 14400010 */  bnez       $v0, .L80030A9C
/* 3165C 80030A5C 3C020001 */   lui       $v0, 1
/* 31660 80030A60 2C620041 */  sltiu      $v0, $v1, 0x41
/* 31664 80030A64 1440000A */  bnez       $v0, .L80030A90
/* 31668 80030A68 3C020001 */   lui       $v0, 1
/* 3166C 80030A6C 2C620081 */  sltiu      $v0, $v1, 0x81
/* 31670 80030A70 50400005 */  beql       $v0, $zero, .L80030A88
/* 31674 80030A74 3C020002 */   lui       $v0, 2
/* 31678 80030A78 3C020001 */  lui        $v0, 1
/* 3167C 80030A7C 3442C000 */  ori        $v0, $v0, 0xc000
/* 31680 80030A80 0800C2AD */  j          .L80030AB4
/* 31684 80030A84 00821025 */   or        $v0, $a0, $v0
.L80030A88:
/* 31688 80030A88 0800C2AD */  j          .L80030AB4
/* 3168C 80030A8C 00821025 */   or        $v0, $a0, $v0
.L80030A90:
/* 31690 80030A90 34428000 */  ori        $v0, $v0, 0x8000
/* 31694 80030A94 0800C2AD */  j          .L80030AB4
/* 31698 80030A98 00821025 */   or        $v0, $a0, $v0
.L80030A9C:
/* 3169C 80030A9C 34424000 */  ori        $v0, $v0, 0x4000
/* 316A0 80030AA0 0800C2AD */  j          .L80030AB4
/* 316A4 80030AA4 00821025 */   or        $v0, $a0, $v0
.L80030AA8:
/* 316A8 80030AA8 0800C2AD */  j          .L80030AB4
/* 316AC 80030AAC 00821025 */   or        $v0, $a0, $v0
.L80030AB0:
/* 316B0 80030AB0 34824000 */  ori        $v0, $a0, 0x4000
.L80030AB4:
/* 316B4 80030AB4 00A22025 */  or         $a0, $a1, $v0
/* 316B8 80030AB8 90E3001A */  lbu        $v1, 0x1a($a3)
/* 316BC 80030ABC 2C620003 */  sltiu      $v0, $v1, 3
/* 316C0 80030AC0 14400014 */  bnez       $v0, .L80030B14
/* 316C4 80030AC4 34820010 */   ori       $v0, $a0, 0x10
/* 316C8 80030AC8 2C620005 */  sltiu      $v0, $v1, 5
/* 316CC 80030ACC 14400011 */  bnez       $v0, .L80030B14
/* 316D0 80030AD0 34820020 */   ori       $v0, $a0, 0x20
/* 316D4 80030AD4 2C620009 */  sltiu      $v0, $v1, 9
/* 316D8 80030AD8 1440000E */  bnez       $v0, .L80030B14
/* 316DC 80030ADC 34820030 */   ori       $v0, $a0, 0x30
/* 316E0 80030AE0 2C620011 */  sltiu      $v0, $v1, 0x11
/* 316E4 80030AE4 1440000B */  bnez       $v0, .L80030B14
/* 316E8 80030AE8 34820040 */   ori       $v0, $a0, 0x40
/* 316EC 80030AEC 2C620021 */  sltiu      $v0, $v1, 0x21
/* 316F0 80030AF0 14400008 */  bnez       $v0, .L80030B14
/* 316F4 80030AF4 34820050 */   ori       $v0, $a0, 0x50
/* 316F8 80030AF8 2C620041 */  sltiu      $v0, $v1, 0x41
/* 316FC 80030AFC 14400005 */  bnez       $v0, .L80030B14
/* 31700 80030B00 34820060 */   ori       $v0, $a0, 0x60
/* 31704 80030B04 2C620081 */  sltiu      $v0, $v1, 0x81
/* 31708 80030B08 14400002 */  bnez       $v0, .L80030B14
/* 3170C 80030B0C 34820070 */   ori       $v0, $a0, 0x70
/* 31710 80030B10 34820080 */  ori        $v0, $a0, 0x80
.L80030B14:
/* 31714 80030B14 ACC20004 */  sw         $v0, 4($a2)
/* 31718 80030B18 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 3171C 80030B1C 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 31720 80030B20 24820008 */  addiu      $v0, $a0, 8
/* 31724 80030B24 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 31728 80030B28 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 3172C 80030B2C 3C02F200 */  lui        $v0, 0xf200
/* 31730 80030B30 AC820000 */  sw         $v0, ($a0)
/* 31734 80030B34 90E3001A */  lbu        $v1, 0x1a($a3)
/* 31738 80030B38 2463FFFF */  addiu      $v1, $v1, -1
/* 3173C 80030B3C 00031880 */  sll        $v1, $v1, 2
/* 31740 80030B40 30630FFF */  andi       $v1, $v1, 0xfff
/* 31744 80030B44 00031B00 */  sll        $v1, $v1, 0xc
/* 31748 80030B48 90E2001B */  lbu        $v0, 0x1b($a3)
/* 3174C 80030B4C 2442FFFF */  addiu      $v0, $v0, -1
/* 31750 80030B50 00021080 */  sll        $v0, $v0, 2
/* 31754 80030B54 30420FFF */  andi       $v0, $v0, 0xfff
.L80030B58:
/* 31758 80030B58 00621825 */  or         $v1, $v1, $v0
/* 3175C 80030B5C AC830004 */  sw         $v1, 4($a0)
.L80030B60:
/* 31760 80030B60 3C06800F */  lui        $a2, %hi(D_800F37DC)
/* 31764 80030B64 8CC637DC */  lw         $a2, %lo(D_800F37DC)($a2)
/* 31768 80030B68 24C20008 */  addiu      $v0, $a2, 8
/* 3176C 80030B6C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 31770 80030B70 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 31774 80030B74 3C02800F */  lui        $v0, %hi(D_800EE992)
/* 31778 80030B78 8442E992 */  lh         $v0, %lo(D_800EE992)($v0)
/* 3177C 80030B7C 3C04800F */  lui        $a0, %hi(D_800EE32C)
/* 31780 80030B80 8484E32C */  lh         $a0, %lo(D_800EE32C)($a0)
/* 31784 80030B84 00441023 */  subu       $v0, $v0, $a0
/* 31788 80030B88 304300FF */  andi       $v1, $v0, 0xff
/* 3178C 80030B8C 00031B00 */  sll        $v1, $v1, 0xc
/* 31790 80030B90 3042007F */  andi       $v0, $v0, 0x7f
/* 31794 80030B94 00021040 */  sll        $v0, $v0, 1
/* 31798 80030B98 3C050100 */  lui        $a1, 0x100
/* 3179C 80030B9C 00451025 */  or         $v0, $v0, $a1
/* 317A0 80030BA0 00621825 */  or         $v1, $v1, $v0
/* 317A4 80030BA4 ACC30000 */  sw         $v1, ($a2)
/* 317A8 80030BA8 00042100 */  sll        $a0, $a0, 4
/* 317AC 80030BAC 00852021 */  addu       $a0, $a0, $a1
/* 317B0 80030BB0 ACC40004 */  sw         $a0, 4($a2)
/* 317B4 80030BB4 3C02800F */  lui        $v0, %hi(D_800F3292)
/* 317B8 80030BB8 84423292 */  lh         $v0, %lo(D_800F3292)($v0)
/* 317BC 80030BBC 18400057 */  blez       $v0, .L80030D1C
/* 317C0 80030BC0 00003021 */   addu      $a2, $zero, $zero
/* 317C4 80030BC4 3C0B800F */  lui        $t3, %hi(D_800EDA88)
/* 317C8 80030BC8 256BDA88 */  addiu      $t3, $t3, %lo(D_800EDA88)
/* 317CC 80030BCC 240A0003 */  addiu      $t2, $zero, 3
/* 317D0 80030BD0 3C090500 */  lui        $t1, 0x500
/* 317D4 80030BD4 3C080700 */  lui        $t0, 0x700
/* 317D8 80030BD8 3C07800F */  lui        $a3, %hi(D_800F3292)
/* 317DC 80030BDC 84E73292 */  lh         $a3, %lo(D_800F3292)($a3)
/* 317E0 80030BE0 00061400 */  sll        $v0, $a2, 0x10
.L80030BE4:
/* 317E4 80030BE4 00021403 */  sra        $v0, $v0, 0x10
/* 317E8 80030BE8 00021880 */  sll        $v1, $v0, 2
/* 317EC 80030BEC 00621821 */  addu       $v1, $v1, $v0
/* 317F0 80030BF0 00031880 */  sll        $v1, $v1, 2
/* 317F4 80030BF4 006B2821 */  addu       $a1, $v1, $t3
/* 317F8 80030BF8 84A20000 */  lh         $v0, ($a1)
/* 317FC 80030BFC 144A001B */  bne        $v0, $t2, .L80030C6C
/* 31800 80030C00 00000000 */   nop
/* 31804 80030C04 3C02800F */  lui        $v0, %hi(D_800ED194)
/* 31808 80030C08 9442D194 */  lhu        $v0, %lo(D_800ED194)($v0)
/* 3180C 80030C0C 24420001 */  addiu      $v0, $v0, 1
/* 31810 80030C10 3C01800F */  lui        $at, %hi(D_800ED194)
/* 31814 80030C14 A422D194 */  sh         $v0, %lo(D_800ED194)($at)
/* 31818 80030C18 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 3181C 80030C1C 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 31820 80030C20 24820008 */  addiu      $v0, $a0, 8
/* 31824 80030C24 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 31828 80030C28 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 3182C 80030C2C 84A30002 */  lh         $v1, 2($a1)
/* 31830 80030C30 00031840 */  sll        $v1, $v1, 1
/* 31834 80030C34 306300FF */  andi       $v1, $v1, 0xff
/* 31838 80030C38 00031C00 */  sll        $v1, $v1, 0x10
/* 3183C 80030C3C 84A20004 */  lh         $v0, 4($a1)
/* 31840 80030C40 00021240 */  sll        $v0, $v0, 9
/* 31844 80030C44 3042FE00 */  andi       $v0, $v0, 0xfe00
/* 31848 80030C48 00621825 */  or         $v1, $v1, $v0
/* 3184C 80030C4C 84A20006 */  lh         $v0, 6($a1)
/* 31850 80030C50 00021040 */  sll        $v0, $v0, 1
/* 31854 80030C54 304200FF */  andi       $v0, $v0, 0xff
/* 31858 80030C58 00621825 */  or         $v1, $v1, $v0
/* 3185C 80030C5C 00691825 */  or         $v1, $v1, $t1
/* 31860 80030C60 AC830000 */  sw         $v1, ($a0)
/* 31864 80030C64 0800C340 */  j          .L80030D00
/* 31868 80030C68 AC800004 */   sw        $zero, 4($a0)
.L80030C6C:
/* 3186C 80030C6C 3C02800F */  lui        $v0, %hi(D_800ED194)
/* 31870 80030C70 9442D194 */  lhu        $v0, %lo(D_800ED194)($v0)
/* 31874 80030C74 24420002 */  addiu      $v0, $v0, 2
/* 31878 80030C78 3C01800F */  lui        $at, %hi(D_800ED194)
/* 3187C 80030C7C A422D194 */  sh         $v0, %lo(D_800ED194)($at)
/* 31880 80030C80 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 31884 80030C84 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 31888 80030C88 24820008 */  addiu      $v0, $a0, 8
/* 3188C 80030C8C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 31890 80030C90 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 31894 80030C94 84A30002 */  lh         $v1, 2($a1)
/* 31898 80030C98 00031840 */  sll        $v1, $v1, 1
/* 3189C 80030C9C 306300FF */  andi       $v1, $v1, 0xff
/* 318A0 80030CA0 00031C00 */  sll        $v1, $v1, 0x10
/* 318A4 80030CA4 84A20004 */  lh         $v0, 4($a1)
/* 318A8 80030CA8 00021240 */  sll        $v0, $v0, 9
/* 318AC 80030CAC 3042FE00 */  andi       $v0, $v0, 0xfe00
/* 318B0 80030CB0 00621825 */  or         $v1, $v1, $v0
/* 318B4 80030CB4 84A20006 */  lh         $v0, 6($a1)
/* 318B8 80030CB8 00021040 */  sll        $v0, $v0, 1
/* 318BC 80030CBC 304200FF */  andi       $v0, $v0, 0xff
/* 318C0 80030CC0 00621825 */  or         $v1, $v1, $v0
/* 318C4 80030CC4 00681825 */  or         $v1, $v1, $t0
/* 318C8 80030CC8 AC830000 */  sw         $v1, ($a0)
/* 318CC 80030CCC 84A30002 */  lh         $v1, 2($a1)
/* 318D0 80030CD0 00031840 */  sll        $v1, $v1, 1
/* 318D4 80030CD4 306300FF */  andi       $v1, $v1, 0xff
/* 318D8 80030CD8 00031C00 */  sll        $v1, $v1, 0x10
/* 318DC 80030CDC 84A20006 */  lh         $v0, 6($a1)
/* 318E0 80030CE0 00021240 */  sll        $v0, $v0, 9
/* 318E4 80030CE4 3042FE00 */  andi       $v0, $v0, 0xfe00
/* 318E8 80030CE8 00621825 */  or         $v1, $v1, $v0
/* 318EC 80030CEC 84A20008 */  lh         $v0, 8($a1)
/* 318F0 80030CF0 00021040 */  sll        $v0, $v0, 1
/* 318F4 80030CF4 304200FF */  andi       $v0, $v0, 0xff
/* 318F8 80030CF8 00621825 */  or         $v1, $v1, $v0
/* 318FC 80030CFC AC830004 */  sw         $v1, 4($a0)
.L80030D00:
/* 31900 80030D00 24C20001 */  addiu      $v0, $a2, 1
/* 31904 80030D04 00403021 */  addu       $a2, $v0, $zero
/* 31908 80030D08 00021400 */  sll        $v0, $v0, 0x10
/* 3190C 80030D0C 00021403 */  sra        $v0, $v0, 0x10
/* 31910 80030D10 0047102A */  slt        $v0, $v0, $a3
/* 31914 80030D14 1440FFB3 */  bnez       $v0, .L80030BE4
/* 31918 80030D18 00061400 */   sll       $v0, $a2, 0x10
.L80030D1C:
/* 3191C 80030D1C 3C02800F */  lui        $v0, %hi(D_800EE992)
/* 31920 80030D20 9442E992 */  lhu        $v0, %lo(D_800EE992)($v0)
/* 31924 80030D24 3C01800F */  lui        $at, %hi(D_800EE32C)
/* 31928 80030D28 A422E32C */  sh         $v0, %lo(D_800EE32C)($at)
.L80030D2C:
/* 3192C 80030D2C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 31930 80030D30 8FB50024 */  lw         $s5, 0x24($sp)
/* 31934 80030D34 8FB40020 */  lw         $s4, 0x20($sp)
/* 31938 80030D38 8FB3001C */  lw         $s3, 0x1c($sp)
/* 3193C 80030D3C 8FB20018 */  lw         $s2, 0x18($sp)
/* 31940 80030D40 8FB10014 */  lw         $s1, 0x14($sp)
/* 31944 80030D44 8FB00010 */  lw         $s0, 0x10($sp)
/* 31948 80030D48 03E00008 */  jr         $ra
/* 3194C 80030D4C 27BD0030 */   addiu     $sp, $sp, 0x30
