	.set noat
	.set noreorder

glabel func_8007CA90
/* 7D690 8007CA90 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 7D694 8007CA94 AFB10044 */  sw         $s1, 0x44($sp)
/* 7D698 8007CA98 3C11800E */  lui        $s1, %hi(D_800E6EB8)
/* 7D69C 8007CA9C 8E316EB8 */  lw         $s1, %lo(D_800E6EB8)($s1)
/* 7D6A0 8007CAA0 3C07800E */  lui        $a3, %hi(D_800E6EBC)
/* 7D6A4 8007CAA4 8CE76EBC */  lw         $a3, %lo(D_800E6EBC)($a3)
/* 7D6A8 8007CAA8 AFB40050 */  sw         $s4, 0x50($sp)
/* 7D6AC 8007CAAC 3C14800E */  lui        $s4, %hi(D_800E7A48)
/* 7D6B0 8007CAB0 8E947A48 */  lw         $s4, %lo(D_800E7A48)($s4)
/* 7D6B4 8007CAB4 AFA70024 */  sw         $a3, 0x24($sp)
/* 7D6B8 8007CAB8 3C07800E */  lui        $a3, %hi(D_800E6EC0)
/* 7D6BC 8007CABC 8CE76EC0 */  lw         $a3, %lo(D_800E6EC0)($a3)
/* 7D6C0 8007CAC0 AFA70034 */  sw         $a3, 0x34($sp)
/* 7D6C4 8007CAC4 8FA70024 */  lw         $a3, 0x24($sp)
/* 7D6C8 8007CAC8 AFA7002C */  sw         $a3, 0x2c($sp)
/* 7D6CC 8007CACC 8FA70034 */  lw         $a3, 0x34($sp)
/* 7D6D0 8007CAD0 AFB60058 */  sw         $s6, 0x58($sp)
/* 7D6D4 8007CAD4 0000B021 */  addu       $s6, $zero, $zero
/* 7D6D8 8007CAD8 AFB50054 */  sw         $s5, 0x54($sp)
/* 7D6DC 8007CADC 0000A821 */  addu       $s5, $zero, $zero
/* 7D6E0 8007CAE0 AFB20048 */  sw         $s2, 0x48($sp)
/* 7D6E4 8007CAE4 00009021 */  addu       $s2, $zero, $zero
/* 7D6E8 8007CAE8 AFBF0064 */  sw         $ra, 0x64($sp)
/* 7D6EC 8007CAEC AFBE0060 */  sw         $fp, 0x60($sp)
/* 7D6F0 8007CAF0 AFB7005C */  sw         $s7, 0x5c($sp)
/* 7D6F4 8007CAF4 AFB3004C */  sw         $s3, 0x4c($sp)
/* 7D6F8 8007CAF8 AFB00040 */  sw         $s0, 0x40($sp)
/* 7D6FC 8007CAFC A3A00012 */  sb         $zero, 0x12($sp)
/* 7D700 8007CB00 A3A00011 */  sb         $zero, 0x11($sp)
/* 7D704 8007CB04 A3A00010 */  sb         $zero, 0x10($sp)
/* 7D708 8007CB08 02209821 */  addu       $s3, $s1, $zero
/* 7D70C 8007CB0C 1A800027 */  blez       $s4, .L8007CBAC
/* 7D710 8007CB10 AFA7003C */   sw        $a3, 0x3c($sp)
/* 7D714 8007CB14 3C1E800E */  lui        $fp, %hi(D_800E4DF8)
/* 7D718 8007CB18 27DE4DF8 */  addiu      $fp, $fp, %lo(D_800E4DF8)
/* 7D71C 8007CB1C 3C17800E */  lui        $s7, %hi(D_800E4E48)
/* 7D720 8007CB20 26F74E48 */  addiu      $s7, $s7, %lo(D_800E4E48)
.L8007CB24:
/* 7D724 8007CB24 27A40010 */  addiu      $a0, $sp, 0x10
/* 7D728 8007CB28 03C02821 */  addu       $a1, $fp, $zero
/* 7D72C 8007CB2C 0C01F206 */  jal        func_8007C818
/* 7D730 8007CB30 02E03021 */   addu      $a2, $s7, $zero
/* 7D734 8007CB34 02428021 */  addu       $s0, $s2, $v0
/* 7D738 8007CB38 A2300000 */  sb         $s0, ($s1)
/* 7D73C 8007CB3C 26310002 */  addiu      $s1, $s1, 2
/* 7D740 8007CB40 27A40010 */  addiu      $a0, $sp, 0x10
/* 7D744 8007CB44 03C02821 */  addu       $a1, $fp, $zero
/* 7D748 8007CB48 0C01F206 */  jal        func_8007C818
/* 7D74C 8007CB4C 02E03021 */   addu      $a2, $s7, $zero
/* 7D750 8007CB50 02029021 */  addu       $s2, $s0, $v0
/* 7D754 8007CB54 A2320000 */  sb         $s2, ($s1)
/* 7D758 8007CB58 26310002 */  addiu      $s1, $s1, 2
/* 7D75C 8007CB5C 27A40011 */  addiu      $a0, $sp, 0x11
/* 7D760 8007CB60 27C5000C */  addiu      $a1, $fp, 0xc
/* 7D764 8007CB64 0C01F206 */  jal        func_8007C818
/* 7D768 8007CB68 26E6000C */   addiu     $a2, $s7, 0xc
/* 7D76C 8007CB6C 02A2A821 */  addu       $s5, $s5, $v0
/* 7D770 8007CB70 8FA70024 */  lw         $a3, 0x24($sp)
/* 7D774 8007CB74 27A40012 */  addiu      $a0, $sp, 0x12
/* 7D778 8007CB78 27C50018 */  addiu      $a1, $fp, 0x18
/* 7D77C 8007CB7C 26E60018 */  addiu      $a2, $s7, 0x18
/* 7D780 8007CB80 A0F50000 */  sb         $s5, ($a3)
/* 7D784 8007CB84 24E70002 */  addiu      $a3, $a3, 2
/* 7D788 8007CB88 0C01F206 */  jal        func_8007C818
/* 7D78C 8007CB8C AFA70024 */   sw        $a3, 0x24($sp)
/* 7D790 8007CB90 8FA70034 */  lw         $a3, 0x34($sp)
/* 7D794 8007CB94 02C2B021 */  addu       $s6, $s6, $v0
/* 7D798 8007CB98 2694FFFF */  addiu      $s4, $s4, -1
/* 7D79C 8007CB9C A0F60000 */  sb         $s6, ($a3)
/* 7D7A0 8007CBA0 24E70002 */  addiu      $a3, $a3, 2
/* 7D7A4 8007CBA4 1E80FFDF */  bgtz       $s4, .L8007CB24
/* 7D7A8 8007CBA8 AFA70034 */   sw        $a3, 0x34($sp)
.L8007CBAC:
/* 7D7AC 8007CBAC 3C14800E */  lui        $s4, %hi(D_800E7A48)
/* 7D7B0 8007CBB0 8E947A48 */  lw         $s4, %lo(D_800E7A48)($s4)
/* 7D7B4 8007CBB4 1A80001F */  blez       $s4, .L8007CC34
/* 7D7B8 8007CBB8 92720000 */   lbu       $s2, ($s3)
/* 7D7BC 8007CBBC 3C16800E */  lui        $s6, %hi(D_800E4DF8)
/* 7D7C0 8007CBC0 26D64DF8 */  addiu      $s6, $s6, %lo(D_800E4DF8)
/* 7D7C4 8007CBC4 3C15800E */  lui        $s5, %hi(D_800E4E48)
/* 7D7C8 8007CBC8 26B54E48 */  addiu      $s5, $s5, %lo(D_800E4E48)
.L8007CBCC:
/* 7D7CC 8007CBCC 27A40010 */  addiu      $a0, $sp, 0x10
/* 7D7D0 8007CBD0 02C02821 */  addu       $a1, $s6, $zero
/* 7D7D4 8007CBD4 0C01F206 */  jal        func_8007C818
/* 7D7D8 8007CBD8 02A03021 */   addu      $a2, $s5, $zero
/* 7D7DC 8007CBDC 26730002 */  addiu      $s3, $s3, 2
/* 7D7E0 8007CBE0 92700000 */  lbu        $s0, ($s3)
/* 7D7E4 8007CBE4 02421021 */  addu       $v0, $s2, $v0
/* 7D7E8 8007CBE8 A2220000 */  sb         $v0, ($s1)
/* 7D7EC 8007CBEC 26310002 */  addiu      $s1, $s1, 2
/* 7D7F0 8007CBF0 27A40010 */  addiu      $a0, $sp, 0x10
/* 7D7F4 8007CBF4 02C02821 */  addu       $a1, $s6, $zero
/* 7D7F8 8007CBF8 02A03021 */  addu       $a2, $s5, $zero
/* 7D7FC 8007CBFC 26730002 */  addiu      $s3, $s3, 2
/* 7D800 8007CC00 304200FF */  andi       $v0, $v0, 0xff
/* 7D804 8007CC04 02028021 */  addu       $s0, $s0, $v0
/* 7D808 8007CC08 0C01F206 */  jal        func_8007C818
/* 7D80C 8007CC0C 00108043 */   sra       $s0, $s0, 1
/* 7D810 8007CC10 92630000 */  lbu        $v1, ($s3)
/* 7D814 8007CC14 2694FFFF */  addiu      $s4, $s4, -1
/* 7D818 8007CC18 02028021 */  addu       $s0, $s0, $v0
/* 7D81C 8007CC1C A2300000 */  sb         $s0, ($s1)
/* 7D820 8007CC20 26310002 */  addiu      $s1, $s1, 2
/* 7D824 8007CC24 321000FF */  andi       $s0, $s0, 0xff
/* 7D828 8007CC28 00701821 */  addu       $v1, $v1, $s0
/* 7D82C 8007CC2C 1E80FFE7 */  bgtz       $s4, .L8007CBCC
/* 7D830 8007CC30 00039042 */   srl       $s2, $v1, 1
.L8007CC34:
/* 7D834 8007CC34 3C02800E */  lui        $v0, %hi(D_800E7A4C)
/* 7D838 8007CC38 8C427A4C */  lw         $v0, %lo(D_800E7A4C)($v0)
/* 7D83C 8007CC3C 2442FFFF */  addiu      $v0, $v0, -1
/* 7D840 8007CC40 1840006D */  blez       $v0, .L8007CDF8
/* 7D844 8007CC44 AFA2001C */   sw        $v0, 0x1c($sp)
/* 7D848 8007CC48 3C1E800E */  lui        $fp, %hi(D_800E4DF8)
/* 7D84C 8007CC4C 27DE4DF8 */  addiu      $fp, $fp, %lo(D_800E4DF8)
/* 7D850 8007CC50 3C17800E */  lui        $s7, %hi(D_800E4E48)
/* 7D854 8007CC54 26F74E48 */  addiu      $s7, $s7, %lo(D_800E4E48)
.L8007CC58:
/* 7D858 8007CC58 8FA7002C */  lw         $a3, 0x2c($sp)
/* 7D85C 8007CC5C 90F50000 */  lbu        $s5, ($a3)
/* 7D860 8007CC60 8FA7003C */  lw         $a3, 0x3c($sp)
/* 7D864 8007CC64 3C14800E */  lui        $s4, %hi(D_800E7A48)
/* 7D868 8007CC68 8E947A48 */  lw         $s4, %lo(D_800E7A48)($s4)
/* 7D86C 8007CC6C 92720000 */  lbu        $s2, ($s3)
/* 7D870 8007CC70 1A800041 */  blez       $s4, .L8007CD78
/* 7D874 8007CC74 90F60000 */   lbu       $s6, ($a3)
.L8007CC78:
/* 7D878 8007CC78 27A40010 */  addiu      $a0, $sp, 0x10
/* 7D87C 8007CC7C 03C02821 */  addu       $a1, $fp, $zero
/* 7D880 8007CC80 0C01F206 */  jal        func_8007C818
/* 7D884 8007CC84 02E03021 */   addu      $a2, $s7, $zero
/* 7D888 8007CC88 26730002 */  addiu      $s3, $s3, 2
/* 7D88C 8007CC8C 92700000 */  lbu        $s0, ($s3)
/* 7D890 8007CC90 02421021 */  addu       $v0, $s2, $v0
/* 7D894 8007CC94 A2220000 */  sb         $v0, ($s1)
/* 7D898 8007CC98 26310002 */  addiu      $s1, $s1, 2
/* 7D89C 8007CC9C 27A40010 */  addiu      $a0, $sp, 0x10
/* 7D8A0 8007CCA0 03C02821 */  addu       $a1, $fp, $zero
/* 7D8A4 8007CCA4 02E03021 */  addu       $a2, $s7, $zero
/* 7D8A8 8007CCA8 8FA7002C */  lw         $a3, 0x2c($sp)
/* 7D8AC 8007CCAC 26730002 */  addiu      $s3, $s3, 2
/* 7D8B0 8007CCB0 304200FF */  andi       $v0, $v0, 0xff
/* 7D8B4 8007CCB4 24E70002 */  addiu      $a3, $a3, 2
/* 7D8B8 8007CCB8 AFA7002C */  sw         $a3, 0x2c($sp)
/* 7D8BC 8007CCBC 8FA7003C */  lw         $a3, 0x3c($sp)
/* 7D8C0 8007CCC0 02028021 */  addu       $s0, $s0, $v0
/* 7D8C4 8007CCC4 00108043 */  sra        $s0, $s0, 1
/* 7D8C8 8007CCC8 24E70002 */  addiu      $a3, $a3, 2
/* 7D8CC 8007CCCC 0C01F206 */  jal        func_8007C818
/* 7D8D0 8007CCD0 AFA7003C */   sw        $a3, 0x3c($sp)
/* 7D8D4 8007CCD4 92630000 */  lbu        $v1, ($s3)
/* 7D8D8 8007CCD8 02028021 */  addu       $s0, $s0, $v0
/* 7D8DC 8007CCDC 27A40011 */  addiu      $a0, $sp, 0x11
/* 7D8E0 8007CCE0 27C5000C */  addiu      $a1, $fp, 0xc
/* 7D8E4 8007CCE4 26E6000C */  addiu      $a2, $s7, 0xc
/* 7D8E8 8007CCE8 A2300000 */  sb         $s0, ($s1)
/* 7D8EC 8007CCEC 321000FF */  andi       $s0, $s0, 0xff
/* 7D8F0 8007CCF0 00701821 */  addu       $v1, $v1, $s0
/* 7D8F4 8007CCF4 0C01F206 */  jal        func_8007C818
/* 7D8F8 8007CCF8 00039042 */   srl       $s2, $v1, 1
/* 7D8FC 8007CCFC 8FA7002C */  lw         $a3, 0x2c($sp)
/* 7D900 8007CD00 02A21021 */  addu       $v0, $s5, $v0
/* 7D904 8007CD04 27A40012 */  addiu      $a0, $sp, 0x12
/* 7D908 8007CD08 90E30000 */  lbu        $v1, ($a3)
/* 7D90C 8007CD0C 8FA70024 */  lw         $a3, 0x24($sp)
/* 7D910 8007CD10 27C50018 */  addiu      $a1, $fp, 0x18
/* 7D914 8007CD14 26E60018 */  addiu      $a2, $s7, 0x18
/* 7D918 8007CD18 A0E20000 */  sb         $v0, ($a3)
/* 7D91C 8007CD1C 304200FF */  andi       $v0, $v0, 0xff
/* 7D920 8007CD20 00621821 */  addu       $v1, $v1, $v0
/* 7D924 8007CD24 0C01F206 */  jal        func_8007C818
/* 7D928 8007CD28 0003A842 */   srl       $s5, $v1, 1
/* 7D92C 8007CD2C 8FA7003C */  lw         $a3, 0x3c($sp)
/* 7D930 8007CD30 90E30000 */  lbu        $v1, ($a3)
/* 7D934 8007CD34 8FA70024 */  lw         $a3, 0x24($sp)
/* 7D938 8007CD38 2694FFFF */  addiu      $s4, $s4, -1
/* 7D93C 8007CD3C 24E70002 */  addiu      $a3, $a3, 2
/* 7D940 8007CD40 AFA70024 */  sw         $a3, 0x24($sp)
/* 7D944 8007CD44 8FA70034 */  lw         $a3, 0x34($sp)
/* 7D948 8007CD48 26310002 */  addiu      $s1, $s1, 2
/* 7D94C 8007CD4C 02C21021 */  addu       $v0, $s6, $v0
/* 7D950 8007CD50 A0E20000 */  sb         $v0, ($a3)
/* 7D954 8007CD54 24E70002 */  addiu      $a3, $a3, 2
/* 7D958 8007CD58 304200FF */  andi       $v0, $v0, 0xff
/* 7D95C 8007CD5C 00621821 */  addu       $v1, $v1, $v0
/* 7D960 8007CD60 0003B042 */  srl        $s6, $v1, 1
/* 7D964 8007CD64 1E80FFC4 */  bgtz       $s4, .L8007CC78
/* 7D968 8007CD68 AFA70034 */   sw        $a3, 0x34($sp)
/* 7D96C 8007CD6C 3C14800E */  lui        $s4, %hi(D_800E7A48)
/* 7D970 8007CD70 8E947A48 */  lw         $s4, %lo(D_800E7A48)($s4)
/* 7D974 8007CD74 92720000 */  lbu        $s2, ($s3)
.L8007CD78:
/* 7D978 8007CD78 1A80001B */  blez       $s4, .L8007CDE8
/* 7D97C 8007CD7C 00000000 */   nop
.L8007CD80:
/* 7D980 8007CD80 27A40010 */  addiu      $a0, $sp, 0x10
/* 7D984 8007CD84 03C02821 */  addu       $a1, $fp, $zero
/* 7D988 8007CD88 0C01F206 */  jal        func_8007C818
/* 7D98C 8007CD8C 02E03021 */   addu      $a2, $s7, $zero
/* 7D990 8007CD90 26730002 */  addiu      $s3, $s3, 2
/* 7D994 8007CD94 92700000 */  lbu        $s0, ($s3)
/* 7D998 8007CD98 02421021 */  addu       $v0, $s2, $v0
/* 7D99C 8007CD9C A2220000 */  sb         $v0, ($s1)
/* 7D9A0 8007CDA0 26310002 */  addiu      $s1, $s1, 2
/* 7D9A4 8007CDA4 27A40010 */  addiu      $a0, $sp, 0x10
/* 7D9A8 8007CDA8 03C02821 */  addu       $a1, $fp, $zero
/* 7D9AC 8007CDAC 02E03021 */  addu       $a2, $s7, $zero
/* 7D9B0 8007CDB0 26730002 */  addiu      $s3, $s3, 2
/* 7D9B4 8007CDB4 304200FF */  andi       $v0, $v0, 0xff
/* 7D9B8 8007CDB8 02028021 */  addu       $s0, $s0, $v0
/* 7D9BC 8007CDBC 0C01F206 */  jal        func_8007C818
/* 7D9C0 8007CDC0 00108043 */   sra       $s0, $s0, 1
/* 7D9C4 8007CDC4 92630000 */  lbu        $v1, ($s3)
/* 7D9C8 8007CDC8 2694FFFF */  addiu      $s4, $s4, -1
/* 7D9CC 8007CDCC 02028021 */  addu       $s0, $s0, $v0
/* 7D9D0 8007CDD0 A2300000 */  sb         $s0, ($s1)
/* 7D9D4 8007CDD4 26310002 */  addiu      $s1, $s1, 2
/* 7D9D8 8007CDD8 321000FF */  andi       $s0, $s0, 0xff
/* 7D9DC 8007CDDC 00701821 */  addu       $v1, $v1, $s0
/* 7D9E0 8007CDE0 1E80FFE7 */  bgtz       $s4, .L8007CD80
/* 7D9E4 8007CDE4 00039042 */   srl       $s2, $v1, 1
.L8007CDE8:
/* 7D9E8 8007CDE8 8FA7001C */  lw         $a3, 0x1c($sp)
/* 7D9EC 8007CDEC 24E7FFFF */  addiu      $a3, $a3, -1
/* 7D9F0 8007CDF0 1CE0FF99 */  bgtz       $a3, .L8007CC58
/* 7D9F4 8007CDF4 AFA7001C */   sw        $a3, 0x1c($sp)
.L8007CDF8:
/* 7D9F8 8007CDF8 8FBF0064 */  lw         $ra, 0x64($sp)
/* 7D9FC 8007CDFC 8FBE0060 */  lw         $fp, 0x60($sp)
/* 7DA00 8007CE00 8FB7005C */  lw         $s7, 0x5c($sp)
/* 7DA04 8007CE04 8FB60058 */  lw         $s6, 0x58($sp)
/* 7DA08 8007CE08 8FB50054 */  lw         $s5, 0x54($sp)
/* 7DA0C 8007CE0C 8FB40050 */  lw         $s4, 0x50($sp)
/* 7DA10 8007CE10 8FB3004C */  lw         $s3, 0x4c($sp)
/* 7DA14 8007CE14 8FB20048 */  lw         $s2, 0x48($sp)
/* 7DA18 8007CE18 8FB10044 */  lw         $s1, 0x44($sp)
/* 7DA1C 8007CE1C 8FB00040 */  lw         $s0, 0x40($sp)
/* 7DA20 8007CE20 03E00008 */  jr         $ra
/* 7DA24 8007CE24 27BD0068 */   addiu     $sp, $sp, 0x68
