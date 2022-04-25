	.set noat
	.set noreorder

glabel func_8003CAB4
/* 3D6B4 8003CAB4 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 3D6B8 8003CAB8 AFBF0064 */  sw         $ra, 0x64($sp)
/* 3D6BC 8003CABC AFBE0060 */  sw         $fp, 0x60($sp)
/* 3D6C0 8003CAC0 AFB7005C */  sw         $s7, 0x5c($sp)
/* 3D6C4 8003CAC4 AFB60058 */  sw         $s6, 0x58($sp)
/* 3D6C8 8003CAC8 AFB50054 */  sw         $s5, 0x54($sp)
/* 3D6CC 8003CACC AFB40050 */  sw         $s4, 0x50($sp)
/* 3D6D0 8003CAD0 AFB3004C */  sw         $s3, 0x4c($sp)
/* 3D6D4 8003CAD4 AFB20048 */  sw         $s2, 0x48($sp)
/* 3D6D8 8003CAD8 AFB10044 */  sw         $s1, 0x44($sp)
/* 3D6DC 8003CADC 0C018CEA */  jal        func_800633A8
/* 3D6E0 8003CAE0 AFB00040 */   sw        $s0, 0x40($sp)
/* 3D6E4 8003CAE4 8C42008C */  lw         $v0, 0x8c($v0)
/* 3D6E8 8003CAE8 AFA20024 */  sw         $v0, 0x24($sp)
/* 3D6EC 8003CAEC 3C08800F */  lui        $t0, %hi(D_800F6598)
/* 3D6F0 8003CAF0 8D086598 */  lw         $t0, %lo(D_800F6598)($t0)
/* 3D6F4 8003CAF4 AFA8002C */  sw         $t0, 0x2c($sp)
/* 3D6F8 8003CAF8 A7A00036 */  sh         $zero, 0x36($sp)
/* 3D6FC 8003CAFC 0000A021 */  addu       $s4, $zero, $zero
/* 3D700 8003CB00 00142400 */  sll        $a0, $s4, 0x10
.L8003CB04:
/* 3D704 8003CB04 0C014AC8 */  jal        func_80052B20
/* 3D708 8003CB08 00042403 */   sra       $a0, $a0, 0x10
/* 3D70C 8003CB0C 5440000C */  bnel       $v0, $zero, .L8003CB40
/* 3D710 8003CB10 26940001 */   addiu     $s4, $s4, 1
/* 3D714 8003CB14 00141040 */  sll        $v0, $s4, 1
/* 3D718 8003CB18 00541021 */  addu       $v0, $v0, $s4
/* 3D71C 8003CB1C 00021100 */  sll        $v0, $v0, 4
/* 3D720 8003CB20 3C01800F */  lui        $at, %hi(D_800F32B3)
/* 3D724 8003CB24 00220821 */  addu       $at, $at, $v0
/* 3D728 8003CB28 902232B3 */  lbu        $v0, %lo(D_800F32B3)($at)
/* 3D72C 8003CB2C 8FA80024 */  lw         $t0, 0x24($sp)
/* 3D730 8003CB30 54480003 */  bnel       $v0, $t0, .L8003CB40
/* 3D734 8003CB34 26940001 */   addiu     $s4, $s4, 1
/* 3D738 8003CB38 0800F2D3 */  j          .L8003CB4C
/* 3D73C 8003CB3C A7B40036 */   sh        $s4, 0x36($sp)
.L8003CB40:
/* 3D740 8003CB40 2A820004 */  slti       $v0, $s4, 4
/* 3D744 8003CB44 5440FFEF */  bnel       $v0, $zero, .L8003CB04
/* 3D748 8003CB48 00142400 */   sll       $a0, $s4, 0x10
.L8003CB4C:
/* 3D74C 8003CB4C 97A80036 */  lhu        $t0, 0x36($sp)
/* 3D750 8003CB50 3C01800D */  lui        $at, %hi(D_800D61B8)
/* 3D754 8003CB54 A42861B8 */  sh         $t0, %lo(D_800D61B8)($at)
/* 3D758 8003CB58 0C012DB6 */  jal        func_8004B6D8
/* 3D75C 8003CB5C 27A40010 */   addiu     $a0, $sp, 0x10
/* 3D760 8003CB60 24040006 */  addiu      $a0, $zero, 6
/* 3D764 8003CB64 0C01C9AB */  jal        func_800726AC
/* 3D768 8003CB68 24050008 */   addiu     $a1, $zero, 8
/* 3D76C 8003CB6C 0C018D54 */  jal        func_80063550
/* 3D770 8003CB70 24040008 */   addiu     $a0, $zero, 8
/* 3D774 8003CB74 0C01566F */  jal        func_800559BC
/* 3D778 8003CB78 0000A021 */   addu      $s4, $zero, $zero
/* 3D77C 8003CB7C 8FA40024 */  lw         $a0, 0x24($sp)
/* 3D780 8003CB80 0C0101B9 */  jal        func_800406E4
/* 3D784 8003CB84 00000000 */   nop
/* 3D788 8003CB88 0C018D6D */  jal        func_800635B4
/* 3D78C 8003CB8C 00000000 */   nop
/* 3D790 8003CB90 24020001 */  addiu      $v0, $zero, 1
/* 3D794 8003CB94 3C01800F */  lui        $at, %hi(D_800F384E)
/* 3D798 8003CB98 A022384E */  sb         $v0, %lo(D_800F384E)($at)
/* 3D79C 8003CB9C 3C02800F */  lui        $v0, %hi(D_800F5278)
/* 3D7A0 8003CBA0 94425278 */  lhu        $v0, %lo(D_800F5278)($v0)
/* 3D7A4 8003CBA4 3042FFFE */  andi       $v0, $v0, 0xfffe
/* 3D7A8 8003CBA8 3C01800F */  lui        $at, %hi(D_800F5278)
/* 3D7AC 8003CBAC A4225278 */  sh         $v0, %lo(D_800F5278)($at)
/* 3D7B0 8003CBB0 3C10800F */  lui        $s0, %hi(D_800ED5DC)
/* 3D7B4 8003CBB4 2610D5DC */  addiu      $s0, $s0, %lo(D_800ED5DC)
/* 3D7B8 8003CBB8 0C010177 */  jal        func_800405DC
/* 3D7BC 8003CBBC 86040000 */   lh        $a0, ($s0)
/* 3D7C0 8003CBC0 0C0101B9 */  jal        func_800406E4
/* 3D7C4 8003CBC4 86040000 */   lh        $a0, ($s0)
/* 3D7C8 8003CBC8 0C012E75 */  jal        func_8004B9D4
/* 3D7CC 8003CBCC 24040001 */   addiu     $a0, $zero, 1
/* 3D7D0 8003CBD0 0C012850 */  jal        func_8004A140
/* 3D7D4 8003CBD4 00000000 */   nop
/* 3D7D8 8003CBD8 3C04800D */  lui        $a0, %hi(D_800D6050)
/* 3D7DC 8003CBDC 0C0127D3 */  jal        func_80049F4C
/* 3D7E0 8003CBE0 8C846050 */   lw        $a0, %lo(D_800D6050)($a0)
/* 3D7E4 8003CBE4 0C012DFE */  jal        func_8004B7F8
/* 3D7E8 8003CBE8 24040096 */   addiu     $a0, $zero, 0x96
/* 3D7EC 8003CBEC 24040014 */  addiu      $a0, $zero, 0x14
/* 3D7F0 8003CBF0 0C014CFE */  jal        func_800533F8
/* 3D7F4 8003CBF4 00002821 */   addu      $a1, $zero, $zero
/* 3D7F8 8003CBF8 0040F021 */  addu       $fp, $v0, $zero
/* 3D7FC 8003CBFC 3C11800D */  lui        $s1, %hi(D_800D6198)
/* 3D800 8003CC00 26316198 */  addiu      $s1, $s1, %lo(D_800D6198)
/* 3D804 8003CC04 3C10800D */  lui        $s0, %hi(D_800D61A0)
/* 3D808 8003CC08 261061A0 */  addiu      $s0, $s0, %lo(D_800D61A0)
.L8003CC0C:
/* 3D80C 8003CC0C 0C014AA3 */  jal        func_80052A8C
/* 3D810 8003CC10 02802021 */   addu      $a0, $s4, $zero
/* 3D814 8003CC14 0040A821 */  addu       $s5, $v0, $zero
/* 3D818 8003CC18 96A4000E */  lhu        $a0, 0xe($s5)
/* 3D81C 8003CC1C 0C013081 */  jal        func_8004C204
/* 3D820 8003CC20 96A50010 */   lhu       $a1, 0x10($s5)
/* 3D824 8003CC24 00021400 */  sll        $v0, $v0, 0x10
/* 3D828 8003CC28 0C01307B */  jal        func_8004C1EC
/* 3D82C 8003CC2C 00022403 */   sra       $a0, $v0, 0x10
/* 3D830 8003CC30 24440004 */  addiu      $a0, $v0, 4
/* 3D834 8003CC34 0C012DCC */  jal        func_8004B730
/* 3D838 8003CC38 27A50018 */   addiu     $a1, $sp, 0x18
/* 3D83C 8003CC3C 00141840 */  sll        $v1, $s4, 1
/* 3D840 8003CC40 00712021 */  addu       $a0, $v1, $s1
/* 3D844 8003CC44 C7A00018 */  lwc1       $f0, 0x18($sp)
/* 3D848 8003CC48 4600008D */  trunc.w.s  $f2, $f0
/* 3D84C 8003CC4C 44021000 */  mfc1       $v0, $f2
/* 3D850 8003CC50 00000000 */  nop
/* 3D854 8003CC54 A4820000 */  sh         $v0, ($a0)
/* 3D858 8003CC58 00701821 */  addu       $v1, $v1, $s0
/* 3D85C 8003CC5C C7A0001C */  lwc1       $f0, 0x1c($sp)
/* 3D860 8003CC60 4600008D */  trunc.w.s  $f2, $f0
/* 3D864 8003CC64 44021000 */  mfc1       $v0, $f2
/* 3D868 8003CC68 00000000 */  nop
/* 3D86C 8003CC6C A4620000 */  sh         $v0, ($v1)
/* 3D870 8003CC70 26940001 */  addiu      $s4, $s4, 1
/* 3D874 8003CC74 2A820004 */  slti       $v0, $s4, 4
/* 3D878 8003CC78 1440FFE4 */  bnez       $v0, .L8003CC0C
/* 3D87C 8003CC7C 00009821 */   addu      $s3, $zero, $zero
/* 3D880 8003CC80 0000A021 */  addu       $s4, $zero, $zero
.L8003CC84:
/* 3D884 8003CC84 00131900 */  sll        $v1, $s3, 4
/* 3D888 8003CC88 3C02800D */  lui        $v0, %hi(D_800D6058)
/* 3D88C 8003CC8C 24426058 */  addiu      $v0, $v0, %lo(D_800D6058)
/* 3D890 8003CC90 00629021 */  addu       $s2, $v1, $v0
/* 3D894 8003CC94 82420000 */  lb         $v0, ($s2)
/* 3D898 8003CC98 04400068 */  bltz       $v0, .L8003CE3C
/* 3D89C 8003CC9C 00021080 */   sll       $v0, $v0, 2
/* 3D8A0 8003CCA0 3C04800C */  lui        $a0, %hi(D_800C42C0)
/* 3D8A4 8003CCA4 00822021 */  addu       $a0, $a0, $v0
/* 3D8A8 8003CCA8 8C8442C0 */  lw         $a0, %lo(D_800C42C0)($a0)
/* 3D8AC 8003CCAC 0C00516C */  jal        func_800145B0
/* 3D8B0 8003CCB0 00148400 */   sll       $s0, $s4, 0x10
/* 3D8B4 8003CCB4 0040B821 */  addu       $s7, $v0, $zero
/* 3D8B8 8003CCB8 0C019E29 */  jal        func_800678A4
/* 3D8BC 8003CCBC 02E02021 */   addu      $a0, $s7, $zero
/* 3D8C0 8003CCC0 8FC3000C */  lw         $v1, 0xc($fp)
/* 3D8C4 8003CCC4 00143040 */  sll        $a2, $s4, 1
/* 3D8C8 8003CCC8 00C31821 */  addu       $v1, $a2, $v1
/* 3D8CC 8003CCCC A4620000 */  sh         $v0, ($v1)
/* 3D8D0 8003CCD0 00108403 */  sra        $s0, $s0, 0x10
/* 3D8D4 8003CCD4 8FC2000C */  lw         $v0, 0xc($fp)
/* 3D8D8 8003CCD8 00C23021 */  addu       $a2, $a2, $v0
/* 3D8DC 8003CCDC 87C4000A */  lh         $a0, 0xa($fp)
/* 3D8E0 8003CCE0 02002821 */  addu       $a1, $s0, $zero
/* 3D8E4 8003CCE4 84C60000 */  lh         $a2, ($a2)
/* 3D8E8 8003CCE8 0C019C82 */  jal        func_80067208
/* 3D8EC 8003CCEC 00003821 */   addu      $a3, $zero, $zero
/* 3D8F0 8003CCF0 87C4000A */  lh         $a0, 0xa($fp)
/* 3D8F4 8003CCF4 02002821 */  addu       $a1, $s0, $zero
/* 3D8F8 8003CCF8 3C060100 */  lui        $a2, 0x100
/* 3D8FC 8003CCFC 0C019D2F */  jal        func_800674BC
/* 3D900 8003CD00 34C61000 */   ori       $a2, $a2, 0x1000
/* 3D904 8003CD04 8E440004 */  lw         $a0, 4($s2)
/* 3D908 8003CD08 2484000C */  addiu      $a0, $a0, 0xc
/* 3D90C 8003CD0C 0C012DCC */  jal        func_8004B730
/* 3D910 8003CD10 27A50018 */   addiu     $a1, $sp, 0x18
/* 3D914 8003CD14 C7A00018 */  lwc1       $f0, 0x18($sp)
/* 3D918 8003CD18 4600008D */  trunc.w.s  $f2, $f0
/* 3D91C 8003CD1C 44031000 */  mfc1       $v1, $f2
/* 3D920 8003CD20 9642000C */  lhu        $v0, 0xc($s2)
/* 3D924 8003CD24 00621821 */  addu       $v1, $v1, $v0
/* 3D928 8003CD28 C7A0001C */  lwc1       $f0, 0x1c($sp)
/* 3D92C 8003CD2C 4600008D */  trunc.w.s  $f2, $f0
/* 3D930 8003CD30 44041000 */  mfc1       $a0, $f2
/* 3D934 8003CD34 9642000E */  lhu        $v0, 0xe($s2)
/* 3D938 8003CD38 00828821 */  addu       $s1, $a0, $v0
/* 3D93C 8003CD3C 00031C00 */  sll        $v1, $v1, 0x10
/* 3D940 8003CD40 0003AC03 */  sra        $s5, $v1, 0x10
/* 3D944 8003CD44 00113C00 */  sll        $a3, $s1, 0x10
/* 3D948 8003CD48 87C4000A */  lh         $a0, 0xa($fp)
/* 3D94C 8003CD4C 02002821 */  addu       $a1, $s0, $zero
/* 3D950 8003CD50 02A03021 */  addu       $a2, $s5, $zero
/* 3D954 8003CD54 0C019B71 */  jal        func_80066DC4
/* 3D958 8003CD58 00073C03 */   sra       $a3, $a3, 0x10
/* 3D95C 8003CD5C 00113027 */  nor        $a2, $zero, $s1
/* 3D960 8003CD60 87C4000A */  lh         $a0, 0xa($fp)
/* 3D964 8003CD64 02002821 */  addu       $a1, $s0, $zero
/* 3D968 8003CD68 0C019CE1 */  jal        func_80067384
/* 3D96C 8003CD6C 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 3D970 8003CD70 0C0051CC */  jal        func_80014730
/* 3D974 8003CD74 02E02021 */   addu      $a0, $s7, $zero
/* 3D978 8003CD78 82420000 */  lb         $v0, ($s2)
/* 3D97C 8003CD7C 38430006 */  xori       $v1, $v0, 6
/* 3D980 8003CD80 2C630001 */  sltiu      $v1, $v1, 1
/* 3D984 8003CD84 3842000A */  xori       $v0, $v0, 0xa
/* 3D988 8003CD88 2C420001 */  sltiu      $v0, $v0, 1
/* 3D98C 8003CD8C 00621825 */  or         $v1, $v1, $v0
/* 3D990 8003CD90 1060002A */  beqz       $v1, .L8003CE3C
/* 3D994 8003CD94 3C04000A */   lui       $a0, 0xa
/* 3D998 8003CD98 26940001 */  addiu      $s4, $s4, 1
/* 3D99C 8003CD9C 0C00516C */  jal        func_800145B0
/* 3D9A0 8003CDA0 34840124 */   ori       $a0, $a0, 0x124
/* 3D9A4 8003CDA4 0040B821 */  addu       $s7, $v0, $zero
/* 3D9A8 8003CDA8 0C019E29 */  jal        func_800678A4
/* 3D9AC 8003CDAC 02E02021 */   addu      $a0, $s7, $zero
/* 3D9B0 8003CDB0 8FC3000C */  lw         $v1, 0xc($fp)
/* 3D9B4 8003CDB4 00143040 */  sll        $a2, $s4, 1
/* 3D9B8 8003CDB8 00C31821 */  addu       $v1, $a2, $v1
/* 3D9BC 8003CDBC A4620000 */  sh         $v0, ($v1)
/* 3D9C0 8003CDC0 00148400 */  sll        $s0, $s4, 0x10
/* 3D9C4 8003CDC4 00108403 */  sra        $s0, $s0, 0x10
/* 3D9C8 8003CDC8 8FC2000C */  lw         $v0, 0xc($fp)
/* 3D9CC 8003CDCC 00C23021 */  addu       $a2, $a2, $v0
/* 3D9D0 8003CDD0 87C4000A */  lh         $a0, 0xa($fp)
/* 3D9D4 8003CDD4 02002821 */  addu       $a1, $s0, $zero
/* 3D9D8 8003CDD8 84C60000 */  lh         $a2, ($a2)
/* 3D9DC 8003CDDC 0C019C82 */  jal        func_80067208
/* 3D9E0 8003CDE0 00003821 */   addu      $a3, $zero, $zero
/* 3D9E4 8003CDE4 87C4000A */  lh         $a0, 0xa($fp)
/* 3D9E8 8003CDE8 02002821 */  addu       $a1, $s0, $zero
/* 3D9EC 8003CDEC 3C060100 */  lui        $a2, 0x100
/* 3D9F0 8003CDF0 0C019D2F */  jal        func_800674BC
/* 3D9F4 8003CDF4 34C61808 */   ori       $a2, $a2, 0x1808
/* 3D9F8 8003CDF8 2627FFFF */  addiu      $a3, $s1, -1
/* 3D9FC 8003CDFC 00073C00 */  sll        $a3, $a3, 0x10
/* 3DA00 8003CE00 87C4000A */  lh         $a0, 0xa($fp)
/* 3DA04 8003CE04 02002821 */  addu       $a1, $s0, $zero
/* 3DA08 8003CE08 02A03021 */  addu       $a2, $s5, $zero
/* 3DA0C 8003CE0C 0C019B71 */  jal        func_80066DC4
/* 3DA10 8003CE10 00073C03 */   sra       $a3, $a3, 0x10
/* 3DA14 8003CE14 87C4000A */  lh         $a0, 0xa($fp)
/* 3DA18 8003CE18 02002821 */  addu       $a1, $s0, $zero
/* 3DA1C 8003CE1C 0C019CE1 */  jal        func_80067384
/* 3DA20 8003CE20 3406FFFF */   ori       $a2, $zero, 0xffff
/* 3DA24 8003CE24 0C0051CC */  jal        func_80014730
/* 3DA28 8003CE28 02E02021 */   addu      $a0, $s7, $zero
/* 3DA2C 8003CE2C 87C4000A */  lh         $a0, 0xa($fp)
/* 3DA30 8003CE30 0C00F14A */  jal        func_8003C528
/* 3DA34 8003CE34 02002821 */   addu      $a1, $s0, $zero
/* 3DA38 8003CE38 AE420008 */  sw         $v0, 8($s2)
.L8003CE3C:
/* 3DA3C 8003CE3C 26730001 */  addiu      $s3, $s3, 1
/* 3DA40 8003CE40 2A620014 */  slti       $v0, $s3, 0x14
/* 3DA44 8003CE44 1440FF8F */  bnez       $v0, .L8003CC84
/* 3DA48 8003CE48 26940001 */   addiu     $s4, $s4, 1
/* 3DA4C 8003CE4C 0C00F1B1 */  jal        func_8003C6C4
/* 3DA50 8003CE50 0000A021 */   addu      $s4, $zero, $zero
/* 3DA54 8003CE54 3C048004 */  lui        $a0, %hi(func_8003C8A8)
/* 3DA58 8003CE58 2484C8A8 */  addiu      $a0, $a0, %lo(func_8003C8A8)
/* 3DA5C 8003CE5C 24051005 */  addiu      $a1, $zero, 0x1005
/* 3DA60 8003CE60 00003021 */  addu       $a2, $zero, $zero
/* 3DA64 8003CE64 0C01770A */  jal        func_8005DC28
/* 3DA68 8003CE68 00003821 */   addu      $a3, $zero, $zero
/* 3DA6C 8003CE6C AFA2003C */  sw         $v0, 0x3c($sp)
/* 3DA70 8003CE70 24040008 */  addiu      $a0, $zero, 8
/* 3DA74 8003CE74 0C014CFE */  jal        func_800533F8
/* 3DA78 8003CE78 00002821 */   addu      $a1, $zero, $zero
/* 3DA7C 8003CE7C 0040B021 */  addu       $s6, $v0, $zero
.L8003CE80:
/* 3DA80 8003CE80 0C014AA3 */  jal        func_80052A8C
/* 3DA84 8003CE84 02802021 */   addu      $a0, $s4, $zero
/* 3DA88 8003CE88 0040A821 */  addu       $s5, $v0, $zero
/* 3DA8C 8003CE8C 92A20004 */  lbu        $v0, 4($s5)
/* 3DA90 8003CE90 00021080 */  sll        $v0, $v0, 2
/* 3DA94 8003CE94 3C04800C */  lui        $a0, %hi(D_800C431C)
/* 3DA98 8003CE98 00822021 */  addu       $a0, $a0, $v0
/* 3DA9C 8003CE9C 8C84431C */  lw         $a0, %lo(D_800C431C)($a0)
/* 3DAA0 8003CEA0 0C00516C */  jal        func_800145B0
/* 3DAA4 8003CEA4 00148840 */   sll       $s1, $s4, 1
/* 3DAA8 8003CEA8 0040B821 */  addu       $s7, $v0, $zero
/* 3DAAC 8003CEAC 0C019E29 */  jal        func_800678A4
/* 3DAB0 8003CEB0 02E02021 */   addu      $a0, $s7, $zero
/* 3DAB4 8003CEB4 8EC3000C */  lw         $v1, 0xc($s6)
/* 3DAB8 8003CEB8 02231821 */  addu       $v1, $s1, $v1
/* 3DABC 8003CEBC A4620000 */  sh         $v0, ($v1)
/* 3DAC0 8003CEC0 00148400 */  sll        $s0, $s4, 0x10
/* 3DAC4 8003CEC4 00108403 */  sra        $s0, $s0, 0x10
/* 3DAC8 8003CEC8 8EC2000C */  lw         $v0, 0xc($s6)
/* 3DACC 8003CECC 02221021 */  addu       $v0, $s1, $v0
/* 3DAD0 8003CED0 86C4000A */  lh         $a0, 0xa($s6)
/* 3DAD4 8003CED4 02002821 */  addu       $a1, $s0, $zero
/* 3DAD8 8003CED8 84460000 */  lh         $a2, ($v0)
/* 3DADC 8003CEDC 0C019C82 */  jal        func_80067208
/* 3DAE0 8003CEE0 00003821 */   addu      $a3, $zero, $zero
/* 3DAE4 8003CEE4 86C4000A */  lh         $a0, 0xa($s6)
/* 3DAE8 8003CEE8 02002821 */  addu       $a1, $s0, $zero
/* 3DAEC 8003CEEC 0C019CE1 */  jal        func_80067384
/* 3DAF0 8003CEF0 24060001 */   addiu     $a2, $zero, 1
/* 3DAF4 8003CEF4 86C4000A */  lh         $a0, 0xa($s6)
/* 3DAF8 8003CEF8 02002821 */  addu       $a1, $s0, $zero
/* 3DAFC 8003CEFC 3C060100 */  lui        $a2, 0x100
/* 3DB00 8003CF00 0C019D2F */  jal        func_800674BC
/* 3DB04 8003CF04 34C61000 */   ori       $a2, $a2, 0x1000
/* 3DB08 8003CF08 3C12800C */  lui        $s2, %hi(D_800C430C)
/* 3DB0C 8003CF0C 2652430C */  addiu      $s2, $s2, %lo(D_800C430C)
/* 3DB10 8003CF10 02329021 */  addu       $s2, $s1, $s2
/* 3DB14 8003CF14 96460000 */  lhu        $a2, ($s2)
/* 3DB18 8003CF18 24C6FFE2 */  addiu      $a2, $a2, -0x1e
/* 3DB1C 8003CF1C 00063400 */  sll        $a2, $a2, 0x10
/* 3DB20 8003CF20 3C13800C */  lui        $s3, %hi(D_800C4314)
/* 3DB24 8003CF24 26734314 */  addiu      $s3, $s3, %lo(D_800C4314)
/* 3DB28 8003CF28 02339821 */  addu       $s3, $s1, $s3
/* 3DB2C 8003CF2C 86C4000A */  lh         $a0, 0xa($s6)
/* 3DB30 8003CF30 02002821 */  addu       $a1, $s0, $zero
/* 3DB34 8003CF34 86670000 */  lh         $a3, ($s3)
/* 3DB38 8003CF38 0C019B71 */  jal        func_80066DC4
/* 3DB3C 8003CF3C 00063403 */   sra       $a2, $a2, 0x10
/* 3DB40 8003CF40 0C0051CC */  jal        func_80014730
/* 3DB44 8003CF44 02E02021 */   addu      $a0, $s7, $zero
/* 3DB48 8003CF48 92A20004 */  lbu        $v0, 4($s5)
/* 3DB4C 8003CF4C 00021080 */  sll        $v0, $v0, 2
/* 3DB50 8003CF50 3C04800C */  lui        $a0, %hi(D_800C4334)
/* 3DB54 8003CF54 00822021 */  addu       $a0, $a0, $v0
/* 3DB58 8003CF58 8C844334 */  lw         $a0, %lo(D_800C4334)($a0)
/* 3DB5C 8003CF5C 0C00516C */  jal        func_800145B0
/* 3DB60 8003CF60 26900004 */   addiu     $s0, $s4, 4
/* 3DB64 8003CF64 0040B821 */  addu       $s7, $v0, $zero
/* 3DB68 8003CF68 0C019E29 */  jal        func_800678A4
/* 3DB6C 8003CF6C 02E02021 */   addu      $a0, $s7, $zero
/* 3DB70 8003CF70 8EC3000C */  lw         $v1, 0xc($s6)
/* 3DB74 8003CF74 02231821 */  addu       $v1, $s1, $v1
/* 3DB78 8003CF78 A4620008 */  sh         $v0, 8($v1)
/* 3DB7C 8003CF7C 00108400 */  sll        $s0, $s0, 0x10
/* 3DB80 8003CF80 00108403 */  sra        $s0, $s0, 0x10
/* 3DB84 8003CF84 8EC2000C */  lw         $v0, 0xc($s6)
/* 3DB88 8003CF88 02228821 */  addu       $s1, $s1, $v0
/* 3DB8C 8003CF8C 86C4000A */  lh         $a0, 0xa($s6)
/* 3DB90 8003CF90 02002821 */  addu       $a1, $s0, $zero
/* 3DB94 8003CF94 86260008 */  lh         $a2, 8($s1)
/* 3DB98 8003CF98 0C019C82 */  jal        func_80067208
/* 3DB9C 8003CF9C 00003821 */   addu      $a3, $zero, $zero
/* 3DBA0 8003CFA0 86C4000A */  lh         $a0, 0xa($s6)
/* 3DBA4 8003CFA4 02002821 */  addu       $a1, $s0, $zero
/* 3DBA8 8003CFA8 0C019CE1 */  jal        func_80067384
/* 3DBAC 8003CFAC 24060001 */   addiu     $a2, $zero, 1
/* 3DBB0 8003CFB0 86C4000A */  lh         $a0, 0xa($s6)
/* 3DBB4 8003CFB4 02002821 */  addu       $a1, $s0, $zero
/* 3DBB8 8003CFB8 3C060100 */  lui        $a2, 0x100
/* 3DBBC 8003CFBC 0C019D2F */  jal        func_800674BC
/* 3DBC0 8003CFC0 34C61000 */   ori       $a2, $a2, 0x1000
/* 3DBC4 8003CFC4 96460000 */  lhu        $a2, ($s2)
/* 3DBC8 8003CFC8 24C60008 */  addiu      $a2, $a2, 8
/* 3DBCC 8003CFCC 00063400 */  sll        $a2, $a2, 0x10
/* 3DBD0 8003CFD0 86C4000A */  lh         $a0, 0xa($s6)
/* 3DBD4 8003CFD4 02002821 */  addu       $a1, $s0, $zero
/* 3DBD8 8003CFD8 86670000 */  lh         $a3, ($s3)
/* 3DBDC 8003CFDC 0C019B71 */  jal        func_80066DC4
/* 3DBE0 8003CFE0 00063403 */   sra       $a2, $a2, 0x10
/* 3DBE4 8003CFE4 0C0051CC */  jal        func_80014730
/* 3DBE8 8003CFE8 02E02021 */   addu      $a0, $s7, $zero
/* 3DBEC 8003CFEC 26940001 */  addiu      $s4, $s4, 1
/* 3DBF0 8003CFF0 2A820004 */  slti       $v0, $s4, 4
/* 3DBF4 8003CFF4 1440FFA2 */  bnez       $v0, .L8003CE80
/* 3DBF8 8003CFF8 00000000 */   nop
/* 3DBFC 8003CFFC 0C018085 */  jal        func_80060214
/* 3DC00 8003D000 24040060 */   addiu     $a0, $zero, 0x60
/* 3DC04 8003D004 24040006 */  addiu      $a0, $zero, 6
/* 3DC08 8003D008 0C01C991 */  jal        func_80072644
/* 3DC0C 8003D00C 24050008 */   addiu     $a1, $zero, 8
/* 3DC10 8003D010 0C018D54 */  jal        func_80063550
/* 3DC14 8003D014 24040007 */   addiu     $a0, $zero, 7
/* 3DC18 8003D018 00002021 */  addu       $a0, $zero, $zero
/* 3DC1C 8003D01C 24050014 */  addiu      $a1, $zero, 0x14
/* 3DC20 8003D020 0C011761 */  jal        func_80045D84
/* 3DC24 8003D024 00003021 */   addu      $a2, $zero, $zero
/* 3DC28 8003D028 0040A021 */  addu       $s4, $v0, $zero
/* 3DC2C 8003D02C 24040004 */  addiu      $a0, $zero, 4
/* 3DC30 8003D030 24050022 */  addiu      $a1, $zero, 0x22
/* 3DC34 8003D034 0C011761 */  jal        func_80045D84
/* 3DC38 8003D038 00003021 */   addu      $a2, $zero, $zero
/* 3DC3C 8003D03C 00409821 */  addu       $s3, $v0, $zero
/* 3DC40 8003D040 3C02800F */  lui        $v0, %hi(D_800EC6EA)
/* 3DC44 8003D044 2442C6EA */  addiu      $v0, $v0, %lo(D_800EC6EA)
/* 3DC48 8003D048 8FA80024 */  lw         $t0, 0x24($sp)
/* 3DC4C 8003D04C 00081840 */  sll        $v1, $t0, 1
/* 3DC50 8003D050 00628021 */  addu       $s0, $v1, $v0
/* 3DC54 8003D054 3C12800C */  lui        $s2, %hi(D_800C42EC)
/* 3DC58 8003D058 265242EC */  addiu      $s2, $s2, %lo(D_800C42EC)
/* 3DC5C 8003D05C 3C02800F */  lui        $v0, %hi(D_800F5460)
/* 3DC60 8003D060 24425460 */  addiu      $v0, $v0, %lo(D_800F5460)
/* 3DC64 8003D064 00628821 */  addu       $s1, $v1, $v0
.L8003D068:
/* 3DC68 8003D068 0C018D6D */  jal        func_800635B4
/* 3DC6C 8003D06C 00000000 */   nop
/* 3DC70 8003D070 96030000 */  lhu        $v1, ($s0)
/* 3DC74 8003D074 30620800 */  andi       $v0, $v1, 0x800
/* 3DC78 8003D078 2C420001 */  sltiu      $v0, $v0, 1
/* 3DC7C 8003D07C 30630400 */  andi       $v1, $v1, 0x400
/* 3DC80 8003D080 10600002 */  beqz       $v1, .L8003D08C
/* 3DC84 8003D084 00022023 */   negu      $a0, $v0
/* 3DC88 8003D088 24040001 */  addiu      $a0, $zero, 1
.L8003D08C:
/* 3DC8C 8003D08C 96020000 */  lhu        $v0, ($s0)
/* 3DC90 8003D090 30420200 */  andi       $v0, $v0, 0x200
/* 3DC94 8003D094 54400001 */  bnel       $v0, $zero, .L8003D09C
/* 3DC98 8003D098 24040002 */   addiu     $a0, $zero, 2
.L8003D09C:
/* 3DC9C 8003D09C 96020000 */  lhu        $v0, ($s0)
/* 3DCA0 8003D0A0 30420100 */  andi       $v0, $v0, 0x100
/* 3DCA4 8003D0A4 54400001 */  bnel       $v0, $zero, .L8003D0AC
/* 3DCA8 8003D0A8 24040003 */   addiu     $a0, $zero, 3
.L8003D0AC:
/* 3DCAC 8003D0AC 00041400 */  sll        $v0, $a0, 0x10
/* 3DCB0 8003D0B0 00021C03 */  sra        $v1, $v0, 0x10
/* 3DCB4 8003D0B4 2402FFFF */  addiu      $v0, $zero, -1
/* 3DCB8 8003D0B8 10620009 */  beq        $v1, $v0, .L8003D0E0
/* 3DCBC 8003D0BC 00031840 */   sll       $v1, $v1, 1
/* 3DCC0 8003D0C0 97A80036 */  lhu        $t0, 0x36($sp)
/* 3DCC4 8003D0C4 00081400 */  sll        $v0, $t0, 0x10
/* 3DCC8 8003D0C8 00021343 */  sra        $v0, $v0, 0xd
/* 3DCCC 8003D0CC 00521021 */  addu       $v0, $v0, $s2
/* 3DCD0 8003D0D0 00621821 */  addu       $v1, $v1, $v0
/* 3DCD4 8003D0D4 94620000 */  lhu        $v0, ($v1)
/* 3DCD8 8003D0D8 00484021 */  addu       $t0, $v0, $t0
/* 3DCDC 8003D0DC A7A80036 */  sh         $t0, 0x36($sp)
.L8003D0E0:
/* 3DCE0 8003D0E0 97A80036 */  lhu        $t0, 0x36($sp)
/* 3DCE4 8003D0E4 3C01800D */  lui        $at, %hi(D_800D61B8)
/* 3DCE8 8003D0E8 A42861B8 */  sh         $t0, %lo(D_800D61B8)($at)
/* 3DCEC 8003D0EC 96220000 */  lhu        $v0, ($s1)
/* 3DCF0 8003D0F0 3042E010 */  andi       $v0, $v0, 0xe010
/* 3DCF4 8003D0F4 1040FFDC */  beqz       $v0, .L8003D068
/* 3DCF8 8003D0F8 24040006 */   addiu     $a0, $zero, 6
/* 3DCFC 8003D0FC 0C01C9AB */  jal        func_800726AC
/* 3DD00 8003D100 24050008 */   addiu     $a1, $zero, 8
/* 3DD04 8003D104 0C018D54 */  jal        func_80063550
/* 3DD08 8003D108 24040008 */   addiu     $a0, $zero, 8
/* 3DD0C 8003D10C 3C01800F */  lui        $at, %hi(D_800F384E)
/* 3DD10 8003D110 0C012850 */  jal        func_8004A140
/* 3DD14 8003D114 A020384E */   sb        $zero, %lo(D_800F384E)($at)
/* 3DD18 8003D118 0C0127D3 */  jal        func_80049F4C
/* 3DD1C 8003D11C 8FA4002C */   lw        $a0, 0x2c($sp)
/* 3DD20 8003D120 0C012D87 */  jal        func_8004B61C
/* 3DD24 8003D124 27A40010 */   addiu     $a0, $sp, 0x10
/* 3DD28 8003D128 0C018D6D */  jal        func_800635B4
/* 3DD2C 8003D12C 00000000 */   nop
/* 3DD30 8003D130 0C012948 */  jal        func_8004A520
/* 3DD34 8003D134 00000000 */   nop
/* 3DD38 8003D138 3C02800F */  lui        $v0, %hi(D_800F5278)
/* 3DD3C 8003D13C 94425278 */  lhu        $v0, %lo(D_800F5278)($v0)
/* 3DD40 8003D140 34420001 */  ori        $v0, $v0, 1
/* 3DD44 8003D144 3C01800F */  lui        $at, %hi(D_800F5278)
/* 3DD48 8003D148 A4225278 */  sh         $v0, %lo(D_800F5278)($at)
/* 3DD4C 8003D14C 3C10800F */  lui        $s0, %hi(D_800ED5DC)
/* 3DD50 8003D150 2610D5DC */  addiu      $s0, $s0, %lo(D_800ED5DC)
/* 3DD54 8003D154 0C00FFBF */  jal        func_8003FEFC
/* 3DD58 8003D158 86040000 */   lh        $a0, ($s0)
/* 3DD5C 8003D15C 0C0101C9 */  jal        func_80040724
/* 3DD60 8003D160 86040000 */   lh        $a0, ($s0)
/* 3DD64 8003D164 0C01179B */  jal        func_80045E6C
/* 3DD68 8003D168 02802021 */   addu      $a0, $s4, $zero
/* 3DD6C 8003D16C 0C01179B */  jal        func_80045E6C
/* 3DD70 8003D170 02602021 */   addu      $a0, $s3, $zero
/* 3DD74 8003D174 8FA4003C */  lw         $a0, 0x3c($sp)
/* 3DD78 8003D178 0C017764 */  jal        func_8005DD90
/* 3DD7C 8003D17C 00000000 */   nop
/* 3DD80 8003D180 0C014D15 */  jal        func_80053454
/* 3DD84 8003D184 02C02021 */   addu      $a0, $s6, $zero
/* 3DD88 8003D188 0C014D15 */  jal        func_80053454
/* 3DD8C 8003D18C 03C02021 */   addu      $a0, $fp, $zero
/* 3DD90 8003D190 0C00F216 */  jal        func_8003C858
/* 3DD94 8003D194 00000000 */   nop
/* 3DD98 8003D198 0C00F0D4 */  jal        func_8003C350
/* 3DD9C 8003D19C 00000000 */   nop
/* 3DDA0 8003D1A0 0C0101C9 */  jal        func_80040724
/* 3DDA4 8003D1A4 8FA40024 */   lw        $a0, 0x24($sp)
/* 3DDA8 8003D1A8 0C01567E */  jal        func_800559F8
/* 3DDAC 8003D1AC 00000000 */   nop
/* 3DDB0 8003D1B0 0C012E75 */  jal        func_8004B9D4
/* 3DDB4 8003D1B4 00002021 */   addu      $a0, $zero, $zero
/* 3DDB8 8003D1B8 0C018085 */  jal        func_80060214
/* 3DDBC 8003D1BC 2404007F */   addiu     $a0, $zero, 0x7f
/* 3DDC0 8003D1C0 24040006 */  addiu      $a0, $zero, 6
/* 3DDC4 8003D1C4 0C01C991 */  jal        func_80072644
/* 3DDC8 8003D1C8 24050008 */   addiu     $a1, $zero, 8
/* 3DDCC 8003D1CC 0C018D54 */  jal        func_80063550
/* 3DDD0 8003D1D0 24040008 */   addiu     $a0, $zero, 8
/* 3DDD4 8003D1D4 0C017764 */  jal        func_8005DD90
/* 3DDD8 8003D1D8 00002021 */   addu      $a0, $zero, $zero
/* 3DDDC 8003D1DC 8FBF0064 */  lw         $ra, 0x64($sp)
/* 3DDE0 8003D1E0 8FBE0060 */  lw         $fp, 0x60($sp)
/* 3DDE4 8003D1E4 8FB7005C */  lw         $s7, 0x5c($sp)
/* 3DDE8 8003D1E8 8FB60058 */  lw         $s6, 0x58($sp)
/* 3DDEC 8003D1EC 8FB50054 */  lw         $s5, 0x54($sp)
/* 3DDF0 8003D1F0 8FB40050 */  lw         $s4, 0x50($sp)
/* 3DDF4 8003D1F4 8FB3004C */  lw         $s3, 0x4c($sp)
/* 3DDF8 8003D1F8 8FB20048 */  lw         $s2, 0x48($sp)
/* 3DDFC 8003D1FC 8FB10044 */  lw         $s1, 0x44($sp)
/* 3DE00 8003D200 8FB00040 */  lw         $s0, 0x40($sp)
/* 3DE04 8003D204 03E00008 */  jr         $ra
/* 3DE08 8003D208 27BD0068 */   addiu     $sp, $sp, 0x68
