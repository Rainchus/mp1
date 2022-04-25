	.set noat
	.set noreorder

glabel func_800FA1E4_D1654
/* D1654 800FA1E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D1658 800FA1E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* D165C 800FA1EC AFB10014 */  sw         $s1, 0x14($sp)
/* D1660 800FA1F0 AFB00010 */  sw         $s0, 0x10($sp)
/* D1664 800FA1F4 00808021 */  addu       $s0, $a0, $zero
/* D1668 800FA1F8 9203004C */  lbu        $v1, 0x4c($s0)
/* D166C 800FA1FC 000310C0 */  sll        $v0, $v1, 3
/* D1670 800FA200 00431023 */  subu       $v0, $v0, $v1
/* D1674 800FA204 00021080 */  sll        $v0, $v0, 2
/* D1678 800FA208 3C038010 */  lui        $v1, %hi(D_800FE2C8)
/* D167C 800FA20C 2463E2C8 */  addiu      $v1, $v1, %lo(D_800FE2C8)
/* D1680 800FA210 00438821 */  addu       $s1, $v0, $v1
/* D1684 800FA214 3C028010 */  lui        $v0, %hi(D_800FE2C4)
/* D1688 800FA218 9442E2C4 */  lhu        $v0, %lo(D_800FE2C4)($v0)
/* D168C 800FA21C 1040000A */  beqz       $v0, .L800FA248
/* D1690 800FA220 00000000 */   nop
/* D1694 800FA224 3C028010 */  lui        $v0, %hi(D_800FE310)
/* D1698 800FA228 8442E310 */  lh         $v0, %lo(D_800FE310)($v0)
/* D169C 800FA22C 3C03800F */  lui        $v1, %hi(D_800F5460)
/* D16A0 800FA230 24635460 */  addiu      $v1, $v1, %lo(D_800F5460)
/* D16A4 800FA234 00021040 */  sll        $v0, $v0, 1
/* D16A8 800FA238 00431021 */  addu       $v0, $v0, $v1
/* D16AC 800FA23C 94430000 */  lhu        $v1, ($v0)
/* D16B0 800FA240 30632000 */  andi       $v1, $v1, 0x2000
/* D16B4 800FA244 A4430000 */  sh         $v1, ($v0)
.L800FA248:
/* D16B8 800FA248 3C038010 */  lui        $v1, %hi(D_800FE2C2)
/* D16BC 800FA24C 9463E2C2 */  lhu        $v1, %lo(D_800FE2C2)($v1)
/* D16C0 800FA250 24020001 */  addiu      $v0, $zero, 1
/* D16C4 800FA254 1462001B */  bne        $v1, $v0, .L800FA2C4
/* D16C8 800FA258 00000000 */   nop
/* D16CC 800FA25C 3C028010 */  lui        $v0, %hi(D_800FE192)
/* D16D0 800FA260 8442E192 */  lh         $v0, %lo(D_800FE192)($v0)
/* D16D4 800FA264 10400003 */  beqz       $v0, .L800FA274
/* D16D8 800FA268 00000000 */   nop
/* D16DC 800FA26C 0C03E900 */  jal        func_800FA400_D1870
/* D16E0 800FA270 02002021 */   addu      $a0, $s0, $zero
.L800FA274:
/* D16E4 800FA274 3C028010 */  lui        $v0, %hi(D_800FD880)
/* D16E8 800FA278 8442D880 */  lh         $v0, %lo(D_800FD880)($v0)
/* D16EC 800FA27C 14400009 */  bnez       $v0, .L800FA2A4
/* D16F0 800FA280 00000000 */   nop
/* D16F4 800FA284 3C028010 */  lui        $v0, %hi(D_800FD882)
/* D16F8 800FA288 8442D882 */  lh         $v0, %lo(D_800FD882)($v0)
/* D16FC 800FA28C 14400005 */  bnez       $v0, .L800FA2A4
/* D1700 800FA290 00000000 */   nop
/* D1704 800FA294 0C00168A */  jal        func_80005A28
/* D1708 800FA298 02002021 */   addu      $a0, $s0, $zero
/* D170C 800FA29C 0803E8AB */  j          .L800FA2AC
/* D1710 800FA2A0 00000000 */   nop
.L800FA2A4:
/* D1714 800FA2A4 0C03EAE0 */  jal        func_800FAB80_D1FF0
/* D1718 800FA2A8 02002021 */   addu      $a0, $s0, $zero
.L800FA2AC:
/* D171C 800FA2AC 0C03EBE7 */  jal        func_800FAF9C_D240C
/* D1720 800FA2B0 02002021 */   addu      $a0, $s0, $zero
/* D1724 800FA2B4 0C03EBAD */  jal        func_800FAEB4_D2324
/* D1728 800FA2B8 02002021 */   addu      $a0, $s0, $zero
/* D172C 800FA2BC 0803E8B3 */  j          .L800FA2CC
/* D1730 800FA2C0 00000000 */   nop
.L800FA2C4:
/* D1734 800FA2C4 0C03EAB1 */  jal        func_800FAAC4_D1F34
/* D1738 800FA2C8 02002021 */   addu      $a0, $s0, $zero
.L800FA2CC:
/* D173C 800FA2CC 0C03E320 */  jal        func_800F8C80_D00F0
/* D1740 800FA2D0 02002021 */   addu      $a0, $s0, $zero
/* D1744 800FA2D4 0C03E195 */  jal        func_800F8654_CFAC4
/* D1748 800FA2D8 02002021 */   addu      $a0, $s0, $zero
/* D174C 800FA2DC 0C03EC6E */  jal        func_800FB1B8_D2628
/* D1750 800FA2E0 02002021 */   addu      $a0, $s0, $zero
/* D1754 800FA2E4 8E020040 */  lw         $v0, 0x40($s0)
/* D1758 800FA2E8 84440002 */  lh         $a0, 2($v0)
/* D175C 800FA2EC 8E25000C */  lw         $a1, 0xc($s1)
/* D1760 800FA2F0 8E270010 */  lw         $a3, 0x10($s1)
/* D1764 800FA2F4 0C0095F9 */  jal        func_800257E4
/* D1768 800FA2F8 00003021 */   addu      $a2, $zero, $zero
/* D176C 800FA2FC C620000C */  lwc1       $f0, 0xc($s1)
/* D1770 800FA300 46000021 */  cvt.d.s    $f0, $f0
/* D1774 800FA304 44801000 */  mtc1       $zero, $f2
/* D1778 800FA308 44801800 */  mtc1       $zero, $f3
/* D177C 800FA30C 00000000 */  nop
/* D1780 800FA310 46220032 */  c.eq.d     $f0, $f2
/* D1784 800FA314 00000000 */  nop
/* D1788 800FA318 45000007 */  bc1f       .L800FA338
/* D178C 800FA31C 00000000 */   nop
/* D1790 800FA320 C6200010 */  lwc1       $f0, 0x10($s1)
/* D1794 800FA324 46000021 */  cvt.d.s    $f0, $f0
/* D1798 800FA328 46220032 */  c.eq.d     $f0, $f2
/* D179C 800FA32C 00000000 */  nop
/* D17A0 800FA330 4501000D */  bc1t       .L800FA368
/* D17A4 800FA334 00000000 */   nop
.L800FA338:
/* D17A8 800FA338 8E020040 */  lw         $v0, 0x40($s0)
/* D17AC 800FA33C C6200008 */  lwc1       $f0, 8($s1)
/* D17B0 800FA340 46000021 */  cvt.d.s    $f0, $f0
/* D17B4 800FA344 3C018010 */  lui        $at, %hi(D_800FDBC0)
/* D17B8 800FA348 D422DBC0 */  ldc1       $f2, %lo(D_800FDBC0)($at)
/* D17BC 800FA34C 46220002 */  mul.d      $f0, $f0, $f2
/* D17C0 800FA350 84440002 */  lh         $a0, 2($v0)
/* D17C4 800FA354 8E050018 */  lw         $a1, 0x18($s0)
/* D17C8 800FA358 46200020 */  cvt.s.d    $f0, $f0
/* D17CC 800FA35C 44060000 */  mfc1       $a2, $f0
/* D17D0 800FA360 0C0095E6 */  jal        func_80025798
/* D17D4 800FA364 8E070020 */   lw        $a3, 0x20($s0)
.L800FA368:
/* D17D8 800FA368 C620000C */  lwc1       $f0, 0xc($s1)
/* D17DC 800FA36C 46000021 */  cvt.d.s    $f0, $f0
/* D17E0 800FA370 44801000 */  mtc1       $zero, $f2
/* D17E4 800FA374 44801800 */  mtc1       $zero, $f3
/* D17E8 800FA378 00000000 */  nop
/* D17EC 800FA37C 4620103E */  c.le.d     $f2, $f0
/* D17F0 800FA380 00000000 */  nop
/* D17F4 800FA384 00000000 */  nop
/* D17F8 800FA388 4500000C */  bc1f       .L800FA3BC
/* D17FC 800FA38C 00002821 */   addu      $a1, $zero, $zero
/* D1800 800FA390 8E020040 */  lw         $v0, 0x40($s0)
/* D1804 800FA394 84420002 */  lh         $v0, 2($v0)
/* D1808 800FA398 00022040 */  sll        $a0, $v0, 1
/* D180C 800FA39C 00822021 */  addu       $a0, $a0, $v0
/* D1810 800FA3A0 00042180 */  sll        $a0, $a0, 6
/* D1814 800FA3A4 3C02800F */  lui        $v0, %hi(D_800F2B7C)
/* D1818 800FA3A8 8C422B7C */  lw         $v0, %lo(D_800F2B7C)($v0)
/* D181C 800FA3AC 00822021 */  addu       $a0, $a0, $v0
/* D1820 800FA3B0 3C064170 */  lui        $a2, 0x4170
/* D1824 800FA3B4 0803E8F9 */  j          .L800FA3E4
/* D1828 800FA3B8 2484007C */   addiu     $a0, $a0, 0x7c
.L800FA3BC:
/* D182C 800FA3BC 8E020040 */  lw         $v0, 0x40($s0)
/* D1830 800FA3C0 84420002 */  lh         $v0, 2($v0)
/* D1834 800FA3C4 00022040 */  sll        $a0, $v0, 1
/* D1838 800FA3C8 00822021 */  addu       $a0, $a0, $v0
/* D183C 800FA3CC 00042180 */  sll        $a0, $a0, 6
/* D1840 800FA3D0 3C02800F */  lui        $v0, %hi(D_800F2B7C)
/* D1844 800FA3D4 8C422B7C */  lw         $v0, %lo(D_800F2B7C)($v0)
/* D1848 800FA3D8 00822021 */  addu       $a0, $a0, $v0
/* D184C 800FA3DC 2484007C */  addiu      $a0, $a0, 0x7c
/* D1850 800FA3E0 00A03021 */  addu       $a2, $a1, $zero
.L800FA3E4:
/* D1854 800FA3E4 0C027A90 */  jal        func_8009EA40
/* D1858 800FA3E8 00A03821 */   addu      $a3, $a1, $zero
/* D185C 800FA3EC 8FBF0018 */  lw         $ra, 0x18($sp)
/* D1860 800FA3F0 8FB10014 */  lw         $s1, 0x14($sp)
/* D1864 800FA3F4 8FB00010 */  lw         $s0, 0x10($sp)
/* D1868 800FA3F8 03E00008 */  jr         $ra
/* D186C 800FA3FC 27BD0020 */   addiu     $sp, $sp, 0x20
