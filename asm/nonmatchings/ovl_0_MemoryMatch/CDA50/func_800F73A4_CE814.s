	.set noat
	.set noreorder

glabel func_800F73A4_CE814
/* CE814 800F73A4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* CE818 800F73A8 AFBF0034 */  sw         $ra, 0x34($sp)
/* CE81C 800F73AC AFB00030 */  sw         $s0, 0x30($sp)
/* CE820 800F73B0 00808021 */  addu       $s0, $a0, $zero
/* CE824 800F73B4 3C058010 */  lui        $a1, %hi(D_800FD9D0)
/* CE828 800F73B8 24A5D9D0 */  addiu      $a1, $a1, %lo(D_800FD9D0)
/* CE82C 800F73BC 88A20000 */  lwl        $v0, ($a1)
/* CE830 800F73C0 98A20003 */  lwr        $v0, 3($a1)
/* CE834 800F73C4 88A30004 */  lwl        $v1, 4($a1)
/* CE838 800F73C8 98A30007 */  lwr        $v1, 7($a1)
/* CE83C 800F73CC 88A40008 */  lwl        $a0, 8($a1)
/* CE840 800F73D0 98A4000B */  lwr        $a0, 0xb($a1)
/* CE844 800F73D4 ABA20010 */  swl        $v0, 0x10($sp)
/* CE848 800F73D8 BBA20013 */  swr        $v0, 0x13($sp)
/* CE84C 800F73DC ABA30014 */  swl        $v1, 0x14($sp)
/* CE850 800F73E0 BBA30017 */  swr        $v1, 0x17($sp)
/* CE854 800F73E4 ABA40018 */  swl        $a0, 0x18($sp)
/* CE858 800F73E8 BBA4001B */  swr        $a0, 0x1b($sp)
/* CE85C 800F73EC 3C058010 */  lui        $a1, %hi(D_800FD9DC)
/* CE860 800F73F0 24A5D9DC */  addiu      $a1, $a1, %lo(D_800FD9DC)
/* CE864 800F73F4 88A20000 */  lwl        $v0, ($a1)
/* CE868 800F73F8 98A20003 */  lwr        $v0, 3($a1)
/* CE86C 800F73FC 88A30004 */  lwl        $v1, 4($a1)
/* CE870 800F7400 98A30007 */  lwr        $v1, 7($a1)
/* CE874 800F7404 88A40008 */  lwl        $a0, 8($a1)
/* CE878 800F7408 98A4000B */  lwr        $a0, 0xb($a1)
/* CE87C 800F740C ABA20020 */  swl        $v0, 0x20($sp)
/* CE880 800F7410 BBA20023 */  swr        $v0, 0x23($sp)
/* CE884 800F7414 ABA30024 */  swl        $v1, 0x24($sp)
/* CE888 800F7418 BBA30027 */  swr        $v1, 0x27($sp)
/* CE88C 800F741C ABA40028 */  swl        $a0, 0x28($sp)
/* CE890 800F7420 BBA4002B */  swr        $a0, 0x2b($sp)
/* CE894 800F7424 0C03DE5B */  jal        func_800F796C_CEDDC
/* CE898 800F7428 02002021 */   addu      $a0, $s0, $zero
/* CE89C 800F742C 3C028010 */  lui        $v0, %hi(D_800FD876)
/* CE8A0 800F7430 8442D876 */  lh         $v0, %lo(D_800FD876)($v0)
/* CE8A4 800F7434 1040002E */  beqz       $v0, .L800F74F0
/* CE8A8 800F7438 00000000 */   nop
/* CE8AC 800F743C 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CE8B0 800F7440 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CE8B4 800F7444 28420008 */  slti       $v0, $v0, 8
/* CE8B8 800F7448 1440000A */  bnez       $v0, .L800F7474
/* CE8BC 800F744C 00000000 */   nop
/* CE8C0 800F7450 3C028010 */  lui        $v0, %hi(D_800FD874)
/* CE8C4 800F7454 8442D874 */  lh         $v0, %lo(D_800FD874)($v0)
/* CE8C8 800F7458 44820000 */  mtc1       $v0, $f0
/* CE8CC 800F745C 00000000 */  nop
/* CE8D0 800F7460 46800020 */  cvt.s.w    $f0, $f0
/* CE8D4 800F7464 3C018010 */  lui        $at, %hi(D_800FD9E8)
/* CE8D8 800F7468 D422D9E8 */  ldc1       $f2, %lo(D_800FD9E8)($at)
/* CE8DC 800F746C 0803DD25 */  j          .L800F7494
/* CE8E0 800F7470 46000021 */   cvt.d.s   $f0, $f0
.L800F7474:
/* CE8E4 800F7474 3C028010 */  lui        $v0, %hi(D_800FD874)
/* CE8E8 800F7478 8442D874 */  lh         $v0, %lo(D_800FD874)($v0)
/* CE8EC 800F747C 44820000 */  mtc1       $v0, $f0
/* CE8F0 800F7480 00000000 */  nop
/* CE8F4 800F7484 46800020 */  cvt.s.w    $f0, $f0
/* CE8F8 800F7488 46000021 */  cvt.d.s    $f0, $f0
/* CE8FC 800F748C 3C018010 */  lui        $at, %hi(D_800FD9F0)
/* CE900 800F7490 D422D9F0 */  ldc1       $f2, %lo(D_800FD9F0)($at)
.L800F7494:
/* CE904 800F7494 46220003 */  div.d      $f0, $f0, $f2
/* CE908 800F7498 46200320 */  cvt.s.d    $f12, $f0
/* CE90C 800F749C 460060A1 */  cvt.d.s    $f2, $f12
/* CE910 800F74A0 3C018010 */  lui        $at, %hi(D_800FD9F8)
/* CE914 800F74A4 D420D9F8 */  ldc1       $f0, %lo(D_800FD9F8)($at)
/* CE918 800F74A8 4622003C */  c.lt.d     $f0, $f2
/* CE91C 800F74AC 00000000 */  nop
/* CE920 800F74B0 45000005 */  bc1f       .L800F74C8
/* CE924 800F74B4 00000000 */   nop
/* CE928 800F74B8 3C013F80 */  lui        $at, 0x3f80
/* CE92C 800F74BC 44816000 */  mtc1       $at, $f12
/* CE930 800F74C0 3C018010 */  lui        $at, %hi(D_800FD876)
/* CE934 800F74C4 A420D876 */  sh         $zero, %lo(D_800FD876)($at)
.L800F74C8:
/* CE938 800F74C8 0C03DF1C */  jal        func_800F7C70_CF0E0
/* CE93C 800F74CC 00000000 */   nop
/* CE940 800F74D0 24020001 */  addiu      $v0, $zero, 1
/* CE944 800F74D4 3C018010 */  lui        $at, %hi(D_800FE2C0)
/* CE948 800F74D8 A422E2C0 */  sh         $v0, %lo(D_800FE2C0)($at)
/* CE94C 800F74DC 3C028010 */  lui        $v0, %hi(D_800FD874)
/* CE950 800F74E0 9442D874 */  lhu        $v0, %lo(D_800FD874)($v0)
/* CE954 800F74E4 24420001 */  addiu      $v0, $v0, 1
/* CE958 800F74E8 3C018010 */  lui        $at, %hi(D_800FD874)
/* CE95C 800F74EC A422D874 */  sh         $v0, %lo(D_800FD874)($at)
.L800F74F0:
/* CE960 800F74F0 3C038010 */  lui        $v1, %hi(D_800FD872)
/* CE964 800F74F4 8463D872 */  lh         $v1, %lo(D_800FD872)($v1)
/* CE968 800F74F8 2C620005 */  sltiu      $v0, $v1, 5
/* CE96C 800F74FC 104000D7 */  beqz       $v0, .L800F785C
/* CE970 800F7500 00031080 */   sll       $v0, $v1, 2
/* CE974 800F7504 3C018010 */  lui        $at, %hi(D_800FDA00)
/* CE978 800F7508 00220821 */  addu       $at, $at, $v0
/* CE97C 800F750C 8C22DA00 */  lw         $v0, %lo(D_800FDA00)($at)
/* CE980 800F7510 00400008 */  jr         $v0
/* CE984 800F7514 00000000 */   nop
/* CE988 800F7518 3C028010 */  lui        $v0, %hi(D_800FD870)
/* CE98C 800F751C 9442D870 */  lhu        $v0, %lo(D_800FD870)($v0)
/* CE990 800F7520 24430001 */  addiu      $v1, $v0, 1
/* CE994 800F7524 3C018010 */  lui        $at, %hi(D_800FD870)
/* CE998 800F7528 A423D870 */  sh         $v1, %lo(D_800FD870)($at)
/* CE99C 800F752C 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CE9A0 800F7530 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CE9A4 800F7534 28420002 */  slti       $v0, $v0, 2
/* CE9A8 800F7538 1040000B */  beqz       $v0, .L800F7568
/* CE9AC 800F753C 00031400 */   sll       $v0, $v1, 0x10
/* CE9B0 800F7540 00021403 */  sra        $v0, $v0, 0x10
/* CE9B4 800F7544 2842000F */  slti       $v0, $v0, 0xf
/* CE9B8 800F7548 144000C4 */  bnez       $v0, .L800F785C
/* CE9BC 800F754C 00000000 */   nop
/* CE9C0 800F7550 0C01D733 */  jal        func_80075CCC
/* CE9C4 800F7554 24040002 */   addiu     $a0, $zero, 2
/* CE9C8 800F7558 3C018010 */  lui        $at, %hi(D_800FD870)
/* CE9CC 800F755C A420D870 */  sh         $zero, %lo(D_800FD870)($at)
/* CE9D0 800F7560 0803DE15 */  j          .L800F7854
/* CE9D4 800F7564 24020001 */   addiu     $v0, $zero, 1
.L800F7568:
/* CE9D8 800F7568 0C01D733 */  jal        func_80075CCC
/* CE9DC 800F756C 24040010 */   addiu     $a0, $zero, 0x10
/* CE9E0 800F7570 3C018010 */  lui        $at, %hi(D_800FD870)
/* CE9E4 800F7574 A420D870 */  sh         $zero, %lo(D_800FD870)($at)
/* CE9E8 800F7578 0803DE15 */  j          .L800F7854
/* CE9EC 800F757C 24020001 */   addiu     $v0, $zero, 1
/* CE9F0 800F7580 3C028010 */  lui        $v0, %hi(D_800FD870)
/* CE9F4 800F7584 9442D870 */  lhu        $v0, %lo(D_800FD870)($v0)
/* CE9F8 800F7588 24430001 */  addiu      $v1, $v0, 1
/* CE9FC 800F758C 3C018010 */  lui        $at, %hi(D_800FD870)
/* CEA00 800F7590 A423D870 */  sh         $v1, %lo(D_800FD870)($at)
/* CEA04 800F7594 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CEA08 800F7598 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CEA0C 800F759C 28420002 */  slti       $v0, $v0, 2
/* CEA10 800F75A0 10400004 */  beqz       $v0, .L800F75B4
/* CEA14 800F75A4 00031400 */   sll       $v0, $v1, 0x10
/* CEA18 800F75A8 3C030014 */  lui        $v1, 0x14
/* CEA1C 800F75AC 0803DD71 */  j          .L800F75C4
/* CEA20 800F75B0 0062102A */   slt       $v0, $v1, $v0
.L800F75B4:
/* CEA24 800F75B4 3C028010 */  lui        $v0, %hi(D_800FD870)
/* CEA28 800F75B8 8442D870 */  lh         $v0, %lo(D_800FD870)($v0)
/* CEA2C 800F75BC 28420012 */  slti       $v0, $v0, 0x12
/* CEA30 800F75C0 38420001 */  xori       $v0, $v0, 1
.L800F75C4:
/* CEA34 800F75C4 104000A5 */  beqz       $v0, .L800F785C
/* CEA38 800F75C8 00000000 */   nop
/* CEA3C 800F75CC 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CEA40 800F75D0 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CEA44 800F75D4 28420002 */  slti       $v0, $v0, 2
/* CEA48 800F75D8 14400006 */  bnez       $v0, .L800F75F4
/* CEA4C 800F75DC 00000000 */   nop
/* CEA50 800F75E0 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CEA54 800F75E4 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CEA58 800F75E8 28420008 */  slti       $v0, $v0, 8
/* CEA5C 800F75EC 10400005 */  beqz       $v0, .L800F7604
/* CEA60 800F75F0 00000000 */   nop
.L800F75F4:
/* CEA64 800F75F4 0C01804A */  jal        func_80060128
/* CEA68 800F75F8 24040033 */   addiu     $a0, $zero, 0x33
/* CEA6C 800F75FC 0803DD87 */  j          .L800F761C
/* CEA70 800F7600 24020001 */   addiu     $v0, $zero, 1
.L800F7604:
/* CEA74 800F7604 0C01804A */  jal        func_80060128
/* CEA78 800F7608 24040034 */   addiu     $a0, $zero, 0x34
/* CEA7C 800F760C 24020005 */  addiu      $v0, $zero, 5
/* CEA80 800F7610 3C018010 */  lui        $at, %hi(D_800FE2C2)
/* CEA84 800F7614 A422E2C2 */  sh         $v0, %lo(D_800FE2C2)($at)
/* CEA88 800F7618 24020001 */  addiu      $v0, $zero, 1
.L800F761C:
/* CEA8C 800F761C 3C018010 */  lui        $at, %hi(D_800FD876)
/* CEA90 800F7620 A422D876 */  sh         $v0, %lo(D_800FD876)($at)
/* CEA94 800F7624 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CEA98 800F7628 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CEA9C 800F762C 28420002 */  slti       $v0, $v0, 2
/* CEAA0 800F7630 1040000D */  beqz       $v0, .L800F7668
/* CEAA4 800F7634 00000000 */   nop
/* CEAA8 800F7638 3C028010 */  lui        $v0, %hi(D_800FE30C)
/* CEAAC 800F763C 8442E30C */  lh         $v0, %lo(D_800FE30C)($v0)
/* CEAB0 800F7640 00021840 */  sll        $v1, $v0, 1
/* CEAB4 800F7644 00621821 */  addu       $v1, $v1, $v0
/* CEAB8 800F7648 00031900 */  sll        $v1, $v1, 4
/* CEABC 800F764C 3C02800F */  lui        $v0, %hi(D_800F32BA)
/* CEAC0 800F7650 00431021 */  addu       $v0, $v0, $v1
/* CEAC4 800F7654 944232BA */  lhu        $v0, %lo(D_800F32BA)($v0)
/* CEAC8 800F7658 24420002 */  addiu      $v0, $v0, 2
/* CEACC 800F765C 3C01800F */  lui        $at, %hi(D_800F32BA)
/* CEAD0 800F7660 00230821 */  addu       $at, $at, $v1
/* CEAD4 800F7664 A42232BA */  sh         $v0, %lo(D_800F32BA)($at)
.L800F7668:
/* CEAD8 800F7668 3C018010 */  lui        $at, %hi(D_800FD870)
/* CEADC 800F766C A420D870 */  sh         $zero, %lo(D_800FD870)($at)
/* CEAE0 800F7670 0803DE15 */  j          .L800F7854
/* CEAE4 800F7674 24020002 */   addiu     $v0, $zero, 2
/* CEAE8 800F7678 3C028010 */  lui        $v0, %hi(D_800FD870)
/* CEAEC 800F767C 9442D870 */  lhu        $v0, %lo(D_800FD870)($v0)
/* CEAF0 800F7680 24430001 */  addiu      $v1, $v0, 1
/* CEAF4 800F7684 3C018010 */  lui        $at, %hi(D_800FD870)
/* CEAF8 800F7688 A423D870 */  sh         $v1, %lo(D_800FD870)($at)
/* CEAFC 800F768C 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CEB00 800F7690 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CEB04 800F7694 28420002 */  slti       $v0, $v0, 2
/* CEB08 800F7698 10400004 */  beqz       $v0, .L800F76AC
/* CEB0C 800F769C 00031400 */   sll       $v0, $v1, 0x10
/* CEB10 800F76A0 3C030001 */  lui        $v1, 1
/* CEB14 800F76A4 0803DDB8 */  j          .L800F76E0
/* CEB18 800F76A8 0062102A */   slt       $v0, $v1, $v0
.L800F76AC:
/* CEB1C 800F76AC 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CEB20 800F76B0 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CEB24 800F76B4 28420008 */  slti       $v0, $v0, 8
/* CEB28 800F76B8 10400005 */  beqz       $v0, .L800F76D0
/* CEB2C 800F76BC 00000000 */   nop
/* CEB30 800F76C0 3C028010 */  lui        $v0, %hi(D_800FD870)
/* CEB34 800F76C4 8442D870 */  lh         $v0, %lo(D_800FD870)($v0)
/* CEB38 800F76C8 0803DDB7 */  j          .L800F76DC
/* CEB3C 800F76CC 28420010 */   slti      $v0, $v0, 0x10
.L800F76D0:
/* CEB40 800F76D0 3C028010 */  lui        $v0, %hi(D_800FD870)
/* CEB44 800F76D4 8442D870 */  lh         $v0, %lo(D_800FD870)($v0)
/* CEB48 800F76D8 28420012 */  slti       $v0, $v0, 0x12
.L800F76DC:
/* CEB4C 800F76DC 38420001 */  xori       $v0, $v0, 1
.L800F76E0:
/* CEB50 800F76E0 1040005E */  beqz       $v0, .L800F785C
/* CEB54 800F76E4 00000000 */   nop
/* CEB58 800F76E8 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CEB5C 800F76EC 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CEB60 800F76F0 28420008 */  slti       $v0, $v0, 8
/* CEB64 800F76F4 14400008 */  bnez       $v0, .L800F7718
/* CEB68 800F76F8 24020005 */   addiu     $v0, $zero, 5
/* CEB6C 800F76FC 3C028010 */  lui        $v0, %hi(D_800FE312)
/* CEB70 800F7700 8442E312 */  lh         $v0, %lo(D_800FE312)($v0)
/* CEB74 800F7704 00021040 */  sll        $v0, $v0, 1
/* CEB78 800F7708 03A21021 */  addu       $v0, $sp, $v0
/* CEB7C 800F770C 0C0180AB */  jal        func_800602AC
/* CEB80 800F7710 84440020 */   lh        $a0, 0x20($v0)
/* CEB84 800F7714 24020005 */  addiu      $v0, $zero, 5
.L800F7718:
/* CEB88 800F7718 3C018010 */  lui        $at, %hi(D_800FE2C2)
/* CEB8C 800F771C A422E2C2 */  sh         $v0, %lo(D_800FE2C2)($at)
/* CEB90 800F7720 3C018010 */  lui        $at, %hi(D_800FD870)
/* CEB94 800F7724 A420D870 */  sh         $zero, %lo(D_800FD870)($at)
/* CEB98 800F7728 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CEB9C 800F772C 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CEBA0 800F7730 28420002 */  slti       $v0, $v0, 2
/* CEBA4 800F7734 14400047 */  bnez       $v0, .L800F7854
/* CEBA8 800F7738 24020003 */   addiu     $v0, $zero, 3
/* CEBAC 800F773C 0803DE15 */  j          .L800F7854
/* CEBB0 800F7740 24020004 */   addiu     $v0, $zero, 4
/* CEBB4 800F7744 3C028010 */  lui        $v0, %hi(D_800FD870)
/* CEBB8 800F7748 9442D870 */  lhu        $v0, %lo(D_800FD870)($v0)
/* CEBBC 800F774C 24420001 */  addiu      $v0, $v0, 1
/* CEBC0 800F7750 3C018010 */  lui        $at, %hi(D_800FD870)
/* CEBC4 800F7754 A422D870 */  sh         $v0, %lo(D_800FD870)($at)
/* CEBC8 800F7758 00021400 */  sll        $v0, $v0, 0x10
/* CEBCC 800F775C 00021403 */  sra        $v0, $v0, 0x10
/* CEBD0 800F7760 2842001F */  slti       $v0, $v0, 0x1f
/* CEBD4 800F7764 1440003D */  bnez       $v0, .L800F785C
/* CEBD8 800F7768 00000000 */   nop
/* CEBDC 800F776C 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CEBE0 800F7770 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CEBE4 800F7774 28420002 */  slti       $v0, $v0, 2
/* CEBE8 800F7778 10400007 */  beqz       $v0, .L800F7798
/* CEBEC 800F777C 00000000 */   nop
/* CEBF0 800F7780 3C028010 */  lui        $v0, %hi(D_800FE312)
/* CEBF4 800F7784 8442E312 */  lh         $v0, %lo(D_800FE312)($v0)
/* CEBF8 800F7788 00021040 */  sll        $v0, $v0, 1
/* CEBFC 800F778C 03A21021 */  addu       $v0, $sp, $v0
/* CEC00 800F7790 0C0180AB */  jal        func_800602AC
/* CEC04 800F7794 84440010 */   lh        $a0, 0x10($v0)
.L800F7798:
/* CEC08 800F7798 3C018010 */  lui        $at, %hi(D_800FD870)
/* CEC0C 800F779C A420D870 */  sh         $zero, %lo(D_800FD870)($at)
/* CEC10 800F77A0 0803DE15 */  j          .L800F7854
/* CEC14 800F77A4 24020004 */   addiu     $v0, $zero, 4
/* CEC18 800F77A8 3C028010 */  lui        $v0, %hi(D_800FD870)
/* CEC1C 800F77AC 9442D870 */  lhu        $v0, %lo(D_800FD870)($v0)
/* CEC20 800F77B0 24430001 */  addiu      $v1, $v0, 1
/* CEC24 800F77B4 3C018010 */  lui        $at, %hi(D_800FD870)
/* CEC28 800F77B8 A423D870 */  sh         $v1, %lo(D_800FD870)($at)
/* CEC2C 800F77BC 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CEC30 800F77C0 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CEC34 800F77C4 28420002 */  slti       $v0, $v0, 2
/* CEC38 800F77C8 10400004 */  beqz       $v0, .L800F77DC
/* CEC3C 800F77CC 00031400 */   sll       $v0, $v1, 0x10
/* CEC40 800F77D0 3C030038 */  lui        $v1, 0x38
/* CEC44 800F77D4 0803DE04 */  j          .L800F7810
/* CEC48 800F77D8 0062102A */   slt       $v0, $v1, $v0
.L800F77DC:
/* CEC4C 800F77DC 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CEC50 800F77E0 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CEC54 800F77E4 28420008 */  slti       $v0, $v0, 8
/* CEC58 800F77E8 10400005 */  beqz       $v0, .L800F7800
/* CEC5C 800F77EC 00000000 */   nop
/* CEC60 800F77F0 3C028010 */  lui        $v0, %hi(D_800FD870)
/* CEC64 800F77F4 8442D870 */  lh         $v0, %lo(D_800FD870)($v0)
/* CEC68 800F77F8 0803DE03 */  j          .L800F780C
/* CEC6C 800F77FC 2842004B */   slti      $v0, $v0, 0x4b
.L800F7800:
/* CEC70 800F7800 3C028010 */  lui        $v0, %hi(D_800FD870)
/* CEC74 800F7804 8442D870 */  lh         $v0, %lo(D_800FD870)($v0)
/* CEC78 800F7808 28420048 */  slti       $v0, $v0, 0x48
.L800F780C:
/* CEC7C 800F780C 38420001 */  xori       $v0, $v0, 1
.L800F7810:
/* CEC80 800F7810 10400012 */  beqz       $v0, .L800F785C
/* CEC84 800F7814 00000000 */   nop
/* CEC88 800F7818 0C01D85D */  jal        func_80076174
/* CEC8C 800F781C 00000000 */   nop
/* CEC90 800F7820 24030001 */  addiu      $v1, $zero, 1
/* CEC94 800F7824 1043000D */  beq        $v0, $v1, .L800F785C
/* CEC98 800F7828 00002021 */   addu      $a0, $zero, $zero
/* CEC9C 800F782C 0C01C9AB */  jal        func_800726AC
/* CECA0 800F7830 24050014 */   addiu     $a1, $zero, 0x14
/* CECA4 800F7834 0C018075 */  jal        func_800601D4
/* CECA8 800F7838 24040028 */   addiu     $a0, $zero, 0x28
/* CECAC 800F783C 3C02800F */  lui        $v0, %hi(func_800F7318_CE788)
/* CECB0 800F7840 24427318 */  addiu      $v0, $v0, %lo(func_800F7318_CE788)
/* CECB4 800F7844 AE020014 */  sw         $v0, 0x14($s0)
/* CECB8 800F7848 3C018010 */  lui        $at, %hi(D_800FD870)
/* CECBC 800F784C A420D870 */  sh         $zero, %lo(D_800FD870)($at)
/* CECC0 800F7850 24020005 */  addiu      $v0, $zero, 5
.L800F7854:
/* CECC4 800F7854 3C018010 */  lui        $at, %hi(D_800FD872)
/* CECC8 800F7858 A422D872 */  sh         $v0, %lo(D_800FD872)($at)
.L800F785C:
/* CECCC 800F785C 0C03E45E */  jal        func_800F9178_D05E8
/* CECD0 800F7860 00000000 */   nop
/* CECD4 800F7864 8FBF0034 */  lw         $ra, 0x34($sp)
/* CECD8 800F7868 8FB00030 */  lw         $s0, 0x30($sp)
/* CECDC 800F786C 03E00008 */  jr         $ra
/* CECE0 800F7870 27BD0038 */   addiu     $sp, $sp, 0x38
