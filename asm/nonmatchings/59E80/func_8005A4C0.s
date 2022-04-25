	.set noat
	.set noreorder

glabel func_8005A4C0
/* 5B0C0 8005A4C0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5B0C4 8005A4C4 AFBF002C */  sw         $ra, 0x2c($sp)
/* 5B0C8 8005A4C8 AFB40028 */  sw         $s4, 0x28($sp)
/* 5B0CC 8005A4CC AFB30024 */  sw         $s3, 0x24($sp)
/* 5B0D0 8005A4D0 AFB20020 */  sw         $s2, 0x20($sp)
/* 5B0D4 8005A4D4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5B0D8 8005A4D8 AFB00018 */  sw         $s0, 0x18($sp)
/* 5B0DC 8005A4DC 0C01672E */  jal        func_80059CB8
/* 5B0E0 8005A4E0 00808021 */   addu      $s0, $a0, $zero
/* 5B0E4 8005A4E4 30421000 */  andi       $v0, $v0, 0x1000
/* 5B0E8 8005A4E8 10400133 */  beqz       $v0, .L8005A9B8
/* 5B0EC 8005A4EC 00000000 */   nop
/* 5B0F0 8005A4F0 3C02800F */  lui        $v0, %hi(D_800ECC22)
/* 5B0F4 8005A4F4 9042CC22 */  lbu        $v0, %lo(D_800ECC22)($v0)
/* 5B0F8 8005A4F8 1040012F */  beqz       $v0, .L8005A9B8
/* 5B0FC 8005A4FC 00000000 */   nop
/* 5B100 8005A500 0C01C9C6 */  jal        func_80072718
/* 5B104 8005A504 00000000 */   nop
/* 5B108 8005A508 1440012B */  bnez       $v0, .L8005A9B8
/* 5B10C 8005A50C 2404005A */   addiu     $a0, $zero, 0x5a
/* 5B110 8005A510 0C016D92 */  jal        func_8005B648
/* 5B114 8005A514 24050012 */   addiu     $a1, $zero, 0x12
/* 5B118 8005A518 0C017F5F */  jal        func_8005FD7C
/* 5B11C 8005A51C 00000000 */   nop
/* 5B120 8005A520 3C028006 */  lui        $v0, %hi(func_8005AA88)
/* 5B124 8005A524 2442AA88 */  addiu      $v0, $v0, %lo(func_8005AA88)
/* 5B128 8005A528 AE020014 */  sw         $v0, 0x14($s0)
/* 5B12C 8005A52C 3C01800E */  lui        $at, %hi(D_800D8730)
/* 5B130 8005A530 AC208730 */  sw         $zero, %lo(D_800D8730)($at)
/* 5B134 8005A534 3C01800E */  lui        $at, %hi(D_800D872C)
/* 5B138 8005A538 AC20872C */  sw         $zero, %lo(D_800D872C)($at)
/* 5B13C 8005A53C AFA00010 */  sw         $zero, 0x10($sp)
/* 5B140 8005A540 24100001 */  addiu      $s0, $zero, 1
/* 5B144 8005A544 AFB00014 */  sw         $s0, 0x14($sp)
/* 5B148 8005A548 00002021 */  addu       $a0, $zero, $zero
/* 5B14C 8005A54C 00002821 */  addu       $a1, $zero, $zero
/* 5B150 8005A550 240600A0 */  addiu      $a2, $zero, 0xa0
/* 5B154 8005A554 0C01B404 */  jal        func_8006D010
/* 5B158 8005A558 240700F0 */   addiu     $a3, $zero, 0xf0
/* 5B15C 8005A55C 3C11800E */  lui        $s1, %hi(D_800D8722)
/* 5B160 8005A560 26318722 */  addiu      $s1, $s1, %lo(D_800D8722)
/* 5B164 8005A564 A6220000 */  sh         $v0, ($s1)
/* 5B168 8005A568 00021400 */  sll        $v0, $v0, 0x10
/* 5B16C 8005A56C 00022403 */  sra        $a0, $v0, 0x10
/* 5B170 8005A570 0C01B829 */  jal        func_8006E0A4
/* 5B174 8005A574 24050001 */   addiu     $a1, $zero, 1
/* 5B178 8005A578 AFA00010 */  sw         $zero, 0x10($sp)
/* 5B17C 8005A57C AFB00014 */  sw         $s0, 0x14($sp)
/* 5B180 8005A580 240400A0 */  addiu      $a0, $zero, 0xa0
/* 5B184 8005A584 00002821 */  addu       $a1, $zero, $zero
/* 5B188 8005A588 240600A0 */  addiu      $a2, $zero, 0xa0
/* 5B18C 8005A58C 0C01B404 */  jal        func_8006D010
/* 5B190 8005A590 240700F0 */   addiu     $a3, $zero, 0xf0
/* 5B194 8005A594 A6220002 */  sh         $v0, 2($s1)
/* 5B198 8005A598 00021400 */  sll        $v0, $v0, 0x10
/* 5B19C 8005A59C 00022403 */  sra        $a0, $v0, 0x10
/* 5B1A0 8005A5A0 0C01B829 */  jal        func_8006E0A4
/* 5B1A4 8005A5A4 24050001 */   addiu     $a1, $zero, 1
/* 5B1A8 8005A5A8 AFA00010 */  sw         $zero, 0x10($sp)
/* 5B1AC 8005A5AC AFB00014 */  sw         $s0, 0x14($sp)
/* 5B1B0 8005A5B0 24040140 */  addiu      $a0, $zero, 0x140
/* 5B1B4 8005A5B4 00002821 */  addu       $a1, $zero, $zero
/* 5B1B8 8005A5B8 24060140 */  addiu      $a2, $zero, 0x140
/* 5B1BC 8005A5BC 0C01B404 */  jal        func_8006D010
/* 5B1C0 8005A5C0 24070050 */   addiu     $a3, $zero, 0x50
/* 5B1C4 8005A5C4 A6220004 */  sh         $v0, 4($s1)
/* 5B1C8 8005A5C8 00021400 */  sll        $v0, $v0, 0x10
/* 5B1CC 8005A5CC 00022403 */  sra        $a0, $v0, 0x10
/* 5B1D0 8005A5D0 0C01B829 */  jal        func_8006E0A4
/* 5B1D4 8005A5D4 24050001 */   addiu     $a1, $zero, 1
/* 5B1D8 8005A5D8 AFA00010 */  sw         $zero, 0x10($sp)
/* 5B1DC 8005A5DC AFB00014 */  sw         $s0, 0x14($sp)
/* 5B1E0 8005A5E0 24040140 */  addiu      $a0, $zero, 0x140
/* 5B1E4 8005A5E4 24050050 */  addiu      $a1, $zero, 0x50
/* 5B1E8 8005A5E8 24060140 */  addiu      $a2, $zero, 0x140
/* 5B1EC 8005A5EC 0C01B404 */  jal        func_8006D010
/* 5B1F0 8005A5F0 240700A0 */   addiu     $a3, $zero, 0xa0
/* 5B1F4 8005A5F4 A6220006 */  sh         $v0, 6($s1)
/* 5B1F8 8005A5F8 00021400 */  sll        $v0, $v0, 0x10
/* 5B1FC 8005A5FC 00022403 */  sra        $a0, $v0, 0x10
/* 5B200 8005A600 0C01B829 */  jal        func_8006E0A4
/* 5B204 8005A604 24050001 */   addiu     $a1, $zero, 1
/* 5B208 8005A608 86240000 */  lh         $a0, ($s1)
/* 5B20C 8005A60C 0C01B758 */  jal        func_8006DD60
/* 5B210 8005A610 00000000 */   nop
/* 5B214 8005A614 00409821 */  addu       $s3, $v0, $zero
/* 5B218 8005A618 96620018 */  lhu        $v0, 0x18($s3)
/* 5B21C 8005A61C 2442FFFC */  addiu      $v0, $v0, -4
/* 5B220 8005A620 A6620028 */  sh         $v0, 0x28($s3)
/* 5B224 8005A624 86240000 */  lh         $a0, ($s1)
/* 5B228 8005A628 0C0168AE */  jal        func_8005A2B8
/* 5B22C 8005A62C 00002821 */   addu      $a1, $zero, $zero
/* 5B230 8005A630 3C04800E */  lui        $a0, %hi(D_800D88F8)
/* 5B234 8005A634 248488F8 */  addiu      $a0, $a0, %lo(D_800D88F8)
/* 5B238 8005A638 3C05800D */  lui        $a1, %hi(D_800CB3CC)
/* 5B23C 8005A63C 24A5B3CC */  addiu      $a1, $a1, %lo(D_800CB3CC)
/* 5B240 8005A640 3C06800F */  lui        $a2, %hi(D_800ED140)
/* 5B244 8005A644 0C023124 */  jal        func_8008C490
/* 5B248 8005A648 8CC6D140 */   lw        $a2, %lo(D_800ED140)($a2)
/* 5B24C 8005A64C 86240000 */  lh         $a0, ($s1)
/* 5B250 8005A650 3C05800E */  lui        $a1, %hi(D_800D88F8)
/* 5B254 8005A654 24A588F8 */  addiu      $a1, $a1, %lo(D_800D88F8)
/* 5B258 8005A658 0C01B697 */  jal        func_8006DA5C
/* 5B25C 8005A65C 24060008 */   addiu     $a2, $zero, 8
/* 5B260 8005A660 86240000 */  lh         $a0, ($s1)
/* 5B264 8005A664 3C05800D */  lui        $a1, %hi(D_800CB3D0)
/* 5B268 8005A668 24A5B3D0 */  addiu      $a1, $a1, %lo(D_800CB3D0)
/* 5B26C 8005A66C 24060084 */  addiu      $a2, $zero, 0x84
/* 5B270 8005A670 0C01B5F6 */  jal        func_8006D7D8
/* 5B274 8005A674 24070018 */   addiu     $a3, $zero, 0x18
/* 5B278 8005A678 86240000 */  lh         $a0, ($s1)
/* 5B27C 8005A67C AFA00010 */  sw         $zero, 0x10($sp)
/* 5B280 8005A680 3C05000A */  lui        $a1, 0xa
/* 5B284 8005A684 34A50013 */  ori        $a1, $a1, 0x13
/* 5B288 8005A688 24060050 */  addiu      $a2, $zero, 0x50
/* 5B28C 8005A68C 0C01B6CF */  jal        func_8006DB3C
/* 5B290 8005A690 24070198 */   addiu     $a3, $zero, 0x198
/* 5B294 8005A694 00028400 */  sll        $s0, $v0, 0x10
/* 5B298 8005A698 00108403 */  sra        $s0, $s0, 0x10
/* 5B29C 8005A69C 86640044 */  lh         $a0, 0x44($s3)
/* 5B2A0 8005A6A0 02002821 */  addu       $a1, $s0, $zero
/* 5B2A4 8005A6A4 0C019CE1 */  jal        func_80067384
/* 5B2A8 8005A6A8 00003021 */   addu      $a2, $zero, $zero
/* 5B2AC 8005A6AC 86640044 */  lh         $a0, 0x44($s3)
/* 5B2B0 8005A6B0 02002821 */  addu       $a1, $s0, $zero
/* 5B2B4 8005A6B4 3C063F00 */  lui        $a2, 0x3f00
/* 5B2B8 8005A6B8 0C019CD5 */  jal        func_80067354
/* 5B2BC 8005A6BC 00C03821 */   addu      $a3, $a2, $zero
/* 5B2C0 8005A6C0 86240002 */  lh         $a0, 2($s1)
/* 5B2C4 8005A6C4 0C01B758 */  jal        func_8006DD60
/* 5B2C8 8005A6C8 00000000 */   nop
/* 5B2CC 8005A6CC 00409821 */  addu       $s3, $v0, $zero
/* 5B2D0 8005A6D0 86240002 */  lh         $a0, 2($s1)
/* 5B2D4 8005A6D4 0C0168AE */  jal        func_8005A2B8
/* 5B2D8 8005A6D8 24050008 */   addiu     $a1, $zero, 8
/* 5B2DC 8005A6DC 0C0165E6 */  jal        func_80059798
/* 5B2E0 8005A6E0 24040003 */   addiu     $a0, $zero, 3
/* 5B2E4 8005A6E4 10400010 */  beqz       $v0, .L8005A728
/* 5B2E8 8005A6E8 00000000 */   nop
/* 5B2EC 8005A6EC 0C0165E6 */  jal        func_80059798
/* 5B2F0 8005A6F0 24040017 */   addiu     $a0, $zero, 0x17
/* 5B2F4 8005A6F4 1040000C */  beqz       $v0, .L8005A728
/* 5B2F8 8005A6F8 00000000 */   nop
/* 5B2FC 8005A6FC 0C0165E6 */  jal        func_80059798
/* 5B300 8005A700 24040018 */   addiu     $a0, $zero, 0x18
/* 5B304 8005A704 14400008 */  bnez       $v0, .L8005A728
/* 5B308 8005A708 00000000 */   nop
/* 5B30C 8005A70C 3C04800E */  lui        $a0, %hi(D_800D88FE)
/* 5B310 8005A710 248488FE */  addiu      $a0, $a0, %lo(D_800D88FE)
/* 5B314 8005A714 3C05800D */  lui        $a1, %hi(D_800CB444)
/* 5B318 8005A718 0C023124 */  jal        func_8008C490
/* 5B31C 8005A71C 24A5B444 */   addiu     $a1, $a1, %lo(D_800CB444)
/* 5B320 8005A720 080169D1 */  j          .L8005A744
/* 5B324 8005A724 00000000 */   nop
.L8005A728:
/* 5B328 8005A728 3C04800E */  lui        $a0, %hi(D_800D88FE)
/* 5B32C 8005A72C 248488FE */  addiu      $a0, $a0, %lo(D_800D88FE)
/* 5B330 8005A730 3C05800D */  lui        $a1, %hi(D_800CB448)
/* 5B334 8005A734 24A5B448 */  addiu      $a1, $a1, %lo(D_800CB448)
/* 5B338 8005A738 3C06800F */  lui        $a2, %hi(D_800ED144)
/* 5B33C 8005A73C 0C023124 */  jal        func_8008C490
/* 5B340 8005A740 84C6D144 */   lh        $a2, %lo(D_800ED144)($a2)
.L8005A744:
/* 5B344 8005A744 3C11800E */  lui        $s1, %hi(D_800D8724)
/* 5B348 8005A748 26318724 */  addiu      $s1, $s1, %lo(D_800D8724)
/* 5B34C 8005A74C 86240000 */  lh         $a0, ($s1)
/* 5B350 8005A750 3C05800E */  lui        $a1, %hi(D_800D88FE)
/* 5B354 8005A754 24A588FE */  addiu      $a1, $a1, %lo(D_800D88FE)
/* 5B358 8005A758 0C01B697 */  jal        func_8006DA5C
/* 5B35C 8005A75C 24060008 */   addiu     $a2, $zero, 8
/* 5B360 8005A760 86240000 */  lh         $a0, ($s1)
/* 5B364 8005A764 3C05800D */  lui        $a1, %hi(D_800CB44C)
/* 5B368 8005A768 24A5B44C */  addiu      $a1, $a1, %lo(D_800CB44C)
/* 5B36C 8005A76C 24060004 */  addiu      $a2, $zero, 4
/* 5B370 8005A770 0C01B5F6 */  jal        func_8006D7D8
/* 5B374 8005A774 24070018 */   addiu     $a3, $zero, 0x18
/* 5B378 8005A778 86240000 */  lh         $a0, ($s1)
/* 5B37C 8005A77C AFA00010 */  sw         $zero, 0x10($sp)
/* 5B380 8005A780 3C05000A */  lui        $a1, 0xa
/* 5B384 8005A784 34A50014 */  ori        $a1, $a1, 0x14
/* 5B388 8005A788 2406008E */  addiu      $a2, $zero, 0x8e
/* 5B38C 8005A78C 0C01B6CF */  jal        func_8006DB3C
/* 5B390 8005A790 24070198 */   addiu     $a3, $zero, 0x198
/* 5B394 8005A794 00028400 */  sll        $s0, $v0, 0x10
/* 5B398 8005A798 00108403 */  sra        $s0, $s0, 0x10
/* 5B39C 8005A79C 86640044 */  lh         $a0, 0x44($s3)
/* 5B3A0 8005A7A0 02002821 */  addu       $a1, $s0, $zero
/* 5B3A4 8005A7A4 0C019CE1 */  jal        func_80067384
/* 5B3A8 8005A7A8 00003021 */   addu      $a2, $zero, $zero
/* 5B3AC 8005A7AC 86640044 */  lh         $a0, 0x44($s3)
/* 5B3B0 8005A7B0 02002821 */  addu       $a1, $s0, $zero
/* 5B3B4 8005A7B4 3C063F00 */  lui        $a2, 0x3f00
/* 5B3B8 8005A7B8 0C019CD5 */  jal        func_80067354
/* 5B3BC 8005A7BC 00C03821 */   addu      $a3, $a2, $zero
/* 5B3C0 8005A7C0 86240002 */  lh         $a0, 2($s1)
/* 5B3C4 8005A7C4 0C01B758 */  jal        func_8006DD60
/* 5B3C8 8005A7C8 24100001 */   addiu     $s0, $zero, 1
/* 5B3CC 8005A7CC 00409821 */  addu       $s3, $v0, $zero
/* 5B3D0 8005A7D0 A2600004 */  sb         $zero, 4($s3)
/* 5B3D4 8005A7D4 A2600003 */  sb         $zero, 3($s3)
/* 5B3D8 8005A7D8 A2700009 */  sb         $s0, 9($s3)
/* 5B3DC 8005A7DC 24020010 */  addiu      $v0, $zero, 0x10
/* 5B3E0 8005A7E0 A262000A */  sb         $v0, 0xa($s3)
/* 5B3E4 8005A7E4 86640044 */  lh         $a0, 0x44($s3)
/* 5B3E8 8005A7E8 00002821 */  addu       $a1, $zero, $zero
/* 5B3EC 8005A7EC 0C019D4B */  jal        func_8006752C
/* 5B3F0 8005A7F0 240600C8 */   addiu     $a2, $zero, 0xc8
/* 5B3F4 8005A7F4 86240002 */  lh         $a0, 2($s1)
/* 5B3F8 8005A7F8 AFA00010 */  sw         $zero, 0x10($sp)
/* 5B3FC 8005A7FC 3C050009 */  lui        $a1, 9
/* 5B400 8005A800 34A5006B */  ori        $a1, $a1, 0x6b
/* 5B404 8005A804 240600C0 */  addiu      $a2, $zero, 0xc0
/* 5B408 8005A808 0C01B6CF */  jal        func_8006DB3C
/* 5B40C 8005A80C 24070041 */   addiu     $a3, $zero, 0x41
/* 5B410 8005A810 00021400 */  sll        $v0, $v0, 0x10
/* 5B414 8005A814 86640044 */  lh         $a0, 0x44($s3)
/* 5B418 8005A818 00022C03 */  sra        $a1, $v0, 0x10
/* 5B41C 8005A81C 0C019CE1 */  jal        func_80067384
/* 5B420 8005A820 00003021 */   addu      $a2, $zero, $zero
/* 5B424 8005A824 86240002 */  lh         $a0, 2($s1)
/* 5B428 8005A828 AFA00010 */  sw         $zero, 0x10($sp)
/* 5B42C 8005A82C 3C050009 */  lui        $a1, 9
/* 5B430 8005A830 34A5006C */  ori        $a1, $a1, 0x6c
/* 5B434 8005A834 24060108 */  addiu      $a2, $zero, 0x108
/* 5B438 8005A838 0C01B6CF */  jal        func_8006DB3C
/* 5B43C 8005A83C 24070041 */   addiu     $a3, $zero, 0x41
/* 5B440 8005A840 00021400 */  sll        $v0, $v0, 0x10
/* 5B444 8005A844 86640044 */  lh         $a0, 0x44($s3)
/* 5B448 8005A848 00022C03 */  sra        $a1, $v0, 0x10
/* 5B44C 8005A84C 0C019CE1 */  jal        func_80067384
/* 5B450 8005A850 00003021 */   addu      $a2, $zero, $zero
/* 5B454 8005A854 86240002 */  lh         $a0, 2($s1)
/* 5B458 8005A858 3C05800D */  lui        $a1, %hi(D_800CB4A0)
/* 5B45C 8005A85C 24A5B4A0 */  addiu      $a1, $a1, %lo(D_800CB4A0)
/* 5B460 8005A860 2406006E */  addiu      $a2, $zero, 0x6e
/* 5B464 8005A864 0C01B5F6 */  jal        func_8006D7D8
/* 5B468 8005A868 24070020 */   addiu     $a3, $zero, 0x20
/* 5B46C 8005A86C 86240004 */  lh         $a0, 4($s1)
/* 5B470 8005A870 0C01B758 */  jal        func_8006DD60
/* 5B474 8005A874 00009021 */   addu      $s2, $zero, $zero
/* 5B478 8005A878 00409821 */  addu       $s3, $v0, $zero
/* 5B47C 8005A87C A2600004 */  sb         $zero, 4($s3)
/* 5B480 8005A880 A2600003 */  sb         $zero, 3($s3)
/* 5B484 8005A884 A2700009 */  sb         $s0, 9($s3)
/* 5B488 8005A888 24020004 */  addiu      $v0, $zero, 4
/* 5B48C 8005A88C A262000A */  sb         $v0, 0xa($s3)
/* 5B490 8005A890 86640044 */  lh         $a0, 0x44($s3)
/* 5B494 8005A894 00002821 */  addu       $a1, $zero, $zero
/* 5B498 8005A898 0C019D4B */  jal        func_8006752C
/* 5B49C 8005A89C 240600C8 */   addiu     $a2, $zero, 0xc8
/* 5B4A0 8005A8A0 3C14800E */  lui        $s4, %hi(D_800D8738)
/* 5B4A4 8005A8A4 26948738 */  addiu      $s4, $s4, %lo(D_800D8738)
/* 5B4A8 8005A8A8 00122400 */  sll        $a0, $s2, 0x10
.L8005A8AC:
/* 5B4AC 8005A8AC 00042403 */  sra        $a0, $a0, 0x10
/* 5B4B0 8005A8B0 0C016580 */  jal        func_80059600
/* 5B4B4 8005A8B4 34058000 */   ori       $a1, $zero, 0x8000
/* 5B4B8 8005A8B8 14400003 */  bnez       $v0, .L8005A8C8
/* 5B4BC 8005A8BC 2A420006 */   slti      $v0, $s2, 6
/* 5B4C0 8005A8C0 10400024 */  beqz       $v0, .L8005A954
/* 5B4C4 8005A8C4 00121080 */   sll       $v0, $s2, 2
.L8005A8C8:
/* 5B4C8 8005A8C8 3C04800E */  lui        $a0, %hi(D_800D8728)
/* 5B4CC 8005A8CC 84848728 */  lh         $a0, %lo(D_800D8728)($a0)
/* 5B4D0 8005A8D0 26420063 */  addiu      $v0, $s2, 0x63
/* 5B4D4 8005A8D4 3C050009 */  lui        $a1, 9
/* 5B4D8 8005A8D8 00123900 */  sll        $a3, $s2, 4
/* 5B4DC 8005A8DC 24E70008 */  addiu      $a3, $a3, 8
/* 5B4E0 8005A8E0 00073C00 */  sll        $a3, $a3, 0x10
/* 5B4E4 8005A8E4 AFA00010 */  sw         $zero, 0x10($sp)
/* 5B4E8 8005A8E8 00452825 */  or         $a1, $v0, $a1
/* 5B4EC 8005A8EC 2406005E */  addiu      $a2, $zero, 0x5e
/* 5B4F0 8005A8F0 0C01B6CF */  jal        func_8006DB3C
/* 5B4F4 8005A8F4 00073C03 */   sra       $a3, $a3, 0x10
/* 5B4F8 8005A8F8 00021400 */  sll        $v0, $v0, 0x10
/* 5B4FC 8005A8FC 86640044 */  lh         $a0, 0x44($s3)
/* 5B500 8005A900 00022C03 */  sra        $a1, $v0, 0x10
/* 5B504 8005A904 0C019CE1 */  jal        func_80067384
/* 5B508 8005A908 00003021 */   addu      $a2, $zero, $zero
/* 5B50C 8005A90C 00128400 */  sll        $s0, $s2, 0x10
/* 5B510 8005A910 00108403 */  sra        $s0, $s0, 0x10
/* 5B514 8005A914 0C016554 */  jal        func_80059550
/* 5B518 8005A918 02002021 */   addu      $a0, $s0, $zero
/* 5B51C 8005A91C 3051FFFF */  andi       $s1, $v0, 0xffff
/* 5B520 8005A920 0C0165AE */  jal        func_800596B8
/* 5B524 8005A924 02002021 */   addu      $a0, $s0, $zero
/* 5B528 8005A928 00122080 */  sll        $a0, $s2, 2
/* 5B52C 8005A92C 00922021 */  addu       $a0, $a0, $s2
/* 5B530 8005A930 00042080 */  sll        $a0, $a0, 2
/* 5B534 8005A934 00942021 */  addu       $a0, $a0, $s4
/* 5B538 8005A938 3C05800D */  lui        $a1, %hi(D_800CB4B4)
/* 5B53C 8005A93C 24A5B4B4 */  addiu      $a1, $a1, %lo(D_800CB4B4)
/* 5B540 8005A940 02203021 */  addu       $a2, $s1, $zero
/* 5B544 8005A944 0C023124 */  jal        func_8008C490
/* 5B548 8005A948 3047FFFF */   andi      $a3, $v0, 0xffff
/* 5B54C 8005A94C 08016A5B */  j          .L8005A96C
/* 5B550 8005A950 00122880 */   sll       $a1, $s2, 2
.L8005A954:
/* 5B554 8005A954 00521021 */  addu       $v0, $v0, $s2
/* 5B558 8005A958 00021080 */  sll        $v0, $v0, 2
/* 5B55C 8005A95C 3C01800E */  lui        $at, %hi(D_800D8738)
/* 5B560 8005A960 00220821 */  addu       $at, $at, $v0
/* 5B564 8005A964 A0208738 */  sb         $zero, %lo(D_800D8738)($at)
/* 5B568 8005A968 00122880 */  sll        $a1, $s2, 2
.L8005A96C:
/* 5B56C 8005A96C 00B22821 */  addu       $a1, $a1, $s2
/* 5B570 8005A970 00052880 */  sll        $a1, $a1, 2
/* 5B574 8005A974 00123600 */  sll        $a2, $s2, 0x18
/* 5B578 8005A978 3C04800E */  lui        $a0, %hi(D_800D8728)
/* 5B57C 8005A97C 84848728 */  lh         $a0, %lo(D_800D8728)($a0)
/* 5B580 8005A980 00B42821 */  addu       $a1, $a1, $s4
/* 5B584 8005A984 0C01B697 */  jal        func_8006DA5C
/* 5B588 8005A988 00063603 */   sra       $a2, $a2, 0x18
/* 5B58C 8005A98C 26520001 */  addiu      $s2, $s2, 1
/* 5B590 8005A990 2A420008 */  slti       $v0, $s2, 8
/* 5B594 8005A994 1440FFC5 */  bnez       $v0, .L8005A8AC
/* 5B598 8005A998 00122400 */   sll       $a0, $s2, 0x10
/* 5B59C 8005A99C 3C04800E */  lui        $a0, %hi(D_800D8728)
/* 5B5A0 8005A9A0 84848728 */  lh         $a0, %lo(D_800D8728)($a0)
/* 5B5A4 8005A9A4 3C05800D */  lui        $a1, %hi(D_800CB4C4)
/* 5B5A8 8005A9A8 24A5B4C4 */  addiu      $a1, $a1, %lo(D_800CB4C4)
/* 5B5AC 8005A9AC 240600AC */  addiu      $a2, $zero, 0xac
/* 5B5B0 8005A9B0 0C01B5F6 */  jal        func_8006D7D8
/* 5B5B4 8005A9B4 24070003 */   addiu     $a3, $zero, 3
.L8005A9B8:
/* 5B5B8 8005A9B8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 5B5BC 8005A9BC 8FB40028 */  lw         $s4, 0x28($sp)
/* 5B5C0 8005A9C0 8FB30024 */  lw         $s3, 0x24($sp)
/* 5B5C4 8005A9C4 8FB20020 */  lw         $s2, 0x20($sp)
/* 5B5C8 8005A9C8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5B5CC 8005A9CC 8FB00018 */  lw         $s0, 0x18($sp)
/* 5B5D0 8005A9D0 03E00008 */  jr         $ra
/* 5B5D4 8005A9D4 27BD0030 */   addiu     $sp, $sp, 0x30
