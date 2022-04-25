	.set noat
	.set noreorder

glabel func_8003AA98
/* 3B698 8003AA98 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3B69C 8003AA9C AFBE0020 */  sw         $fp, 0x20($sp)
/* 3B6A0 8003AAA0 AFB7001C */  sw         $s7, 0x1c($sp)
/* 3B6A4 8003AAA4 AFB60018 */  sw         $s6, 0x18($sp)
/* 3B6A8 8003AAA8 AFB50014 */  sw         $s5, 0x14($sp)
/* 3B6AC 8003AAAC AFB40010 */  sw         $s4, 0x10($sp)
/* 3B6B0 8003AAB0 AFB3000C */  sw         $s3, 0xc($sp)
/* 3B6B4 8003AAB4 AFB20008 */  sw         $s2, 8($sp)
/* 3B6B8 8003AAB8 AFB10004 */  sw         $s1, 4($sp)
/* 3B6BC 8003AABC AFB00000 */  sw         $s0, ($sp)
/* 3B6C0 8003AAC0 00806821 */  addu       $t5, $a0, $zero
/* 3B6C4 8003AAC4 00C06021 */  addu       $t4, $a2, $zero
/* 3B6C8 8003AAC8 00E05021 */  addu       $t2, $a3, $zero
/* 3B6CC 8003AACC 8FAB0038 */  lw         $t3, 0x38($sp)
/* 3B6D0 8003AAD0 8FB70040 */  lw         $s7, 0x40($sp)
/* 3B6D4 8003AAD4 8FB40044 */  lw         $s4, 0x44($sp)
/* 3B6D8 8003AAD8 8FBE0048 */  lw         $fp, 0x48($sp)
/* 3B6DC 8003AADC 8FB60050 */  lw         $s6, 0x50($sp)
/* 3B6E0 8003AAE0 8FB10054 */  lw         $s1, 0x54($sp)
/* 3B6E4 8003AAE4 8FB80058 */  lw         $t8, 0x58($sp)
/* 3B6E8 8003AAE8 8FB2005C */  lw         $s2, 0x5c($sp)
/* 3B6EC 8003AAEC 8FB90060 */  lw         $t9, 0x60($sp)
/* 3B6F0 8003AAF0 8FB30064 */  lw         $s3, 0x64($sp)
/* 3B6F4 8003AAF4 8FB00068 */  lw         $s0, 0x68($sp)
/* 3B6F8 8003AAF8 8FB5006C */  lw         $s5, 0x6c($sp)
/* 3B6FC 8003AAFC 8FAF0070 */  lw         $t7, 0x70($sp)
/* 3B700 8003AB00 8DA90000 */  lw         $t1, ($t5)
/* 3B704 8003AB04 01740018 */  mult       $t3, $s4
/* 3B708 8003AB08 00001012 */  mflo       $v0
/* 3B70C 8003AB0C 2543FFFF */  addiu      $v1, $t2, -1
/* 3B710 8003AB10 00621004 */  sllv       $v0, $v0, $v1
/* 3B714 8003AB14 00A22821 */  addu       $a1, $a1, $v0
/* 3B718 8003AB18 01203821 */  addu       $a3, $t1, $zero
/* 3B71C 8003AB1C 25290008 */  addiu      $t1, $t1, 8
/* 3B720 8003AB20 31840007 */  andi       $a0, $t4, 7
/* 3B724 8003AB24 00042540 */  sll        $a0, $a0, 0x15
/* 3B728 8003AB28 3C06800C */  lui        $a2, %hi(D_800C4220)
/* 3B72C 8003AB2C 24C64220 */  addiu      $a2, $a2, %lo(D_800C4220)
/* 3B730 8003AB30 000A4080 */  sll        $t0, $t2, 2
/* 3B734 8003AB34 01063021 */  addu       $a2, $t0, $a2
/* 3B738 8003AB38 8CC20000 */  lw         $v0, ($a2)
/* 3B73C 8003AB3C 30420003 */  andi       $v0, $v0, 3
/* 3B740 8003AB40 000214C0 */  sll        $v0, $v0, 0x13
/* 3B744 8003AB44 3C03FD00 */  lui        $v1, 0xfd00
/* 3B748 8003AB48 00431025 */  or         $v0, $v0, $v1
/* 3B74C 8003AB4C 00821025 */  or         $v0, $a0, $v0
/* 3B750 8003AB50 ACE20000 */  sw         $v0, ($a3)
/* 3B754 8003AB54 ACE50004 */  sw         $a1, 4($a3)
/* 3B758 8003AB58 01202821 */  addu       $a1, $t1, $zero
/* 3B75C 8003AB5C 25290008 */  addiu      $t1, $t1, 8
/* 3B760 8003AB60 8CC20000 */  lw         $v0, ($a2)
/* 3B764 8003AB64 30420003 */  andi       $v0, $v0, 3
/* 3B768 8003AB68 000214C0 */  sll        $v0, $v0, 0x13
/* 3B76C 8003AB6C 3C03F500 */  lui        $v1, 0xf500
/* 3B770 8003AB70 00431025 */  or         $v0, $v0, $v1
/* 3B774 8003AB74 00822025 */  or         $a0, $a0, $v0
/* 3B778 8003AB78 31E201FF */  andi       $v0, $t7, 0x1ff
/* 3B77C 8003AB7C 00822025 */  or         $a0, $a0, $v0
/* 3B780 8003AB80 ACA40000 */  sw         $a0, ($a1)
/* 3B784 8003AB84 33030003 */  andi       $v1, $t8, 3
/* 3B788 8003AB88 00031C80 */  sll        $v1, $v1, 0x12
/* 3B78C 8003AB8C 3322000F */  andi       $v0, $t9, 0xf
/* 3B790 8003AB90 00021380 */  sll        $v0, $v0, 0xe
/* 3B794 8003AB94 3C040700 */  lui        $a0, 0x700
/* 3B798 8003AB98 00441025 */  or         $v0, $v0, $a0
/* 3B79C 8003AB9C 00621825 */  or         $v1, $v1, $v0
/* 3B7A0 8003ABA0 3202000F */  andi       $v0, $s0, 0xf
/* 3B7A4 8003ABA4 00021280 */  sll        $v0, $v0, 0xa
/* 3B7A8 8003ABA8 00621825 */  or         $v1, $v1, $v0
/* 3B7AC 8003ABAC 32220003 */  andi       $v0, $s1, 3
/* 3B7B0 8003ABB0 00021200 */  sll        $v0, $v0, 8
/* 3B7B4 8003ABB4 00621825 */  or         $v1, $v1, $v0
/* 3B7B8 8003ABB8 3242000F */  andi       $v0, $s2, 0xf
/* 3B7BC 8003ABBC 00021100 */  sll        $v0, $v0, 4
/* 3B7C0 8003ABC0 00621825 */  or         $v1, $v1, $v0
/* 3B7C4 8003ABC4 3262000F */  andi       $v0, $s3, 0xf
/* 3B7C8 8003ABC8 00621825 */  or         $v1, $v1, $v0
/* 3B7CC 8003ABCC ACA30004 */  sw         $v1, 4($a1)
/* 3B7D0 8003ABD0 01201821 */  addu       $v1, $t1, $zero
/* 3B7D4 8003ABD4 25290008 */  addiu      $t1, $t1, 8
/* 3B7D8 8003ABD8 3C02E600 */  lui        $v0, 0xe600
/* 3B7DC 8003ABDC AC620000 */  sw         $v0, ($v1)
/* 3B7E0 8003ABE0 AC600004 */  sw         $zero, 4($v1)
/* 3B7E4 8003ABE4 01203021 */  addu       $a2, $t1, $zero
/* 3B7E8 8003ABE8 25290008 */  addiu      $t1, $t1, 8
/* 3B7EC 8003ABEC 3C02F300 */  lui        $v0, 0xf300
/* 3B7F0 8003ABF0 ACC20000 */  sw         $v0, ($a2)
/* 3B7F4 8003ABF4 3C02800C */  lui        $v0, %hi(D_800C4200)
/* 3B7F8 8003ABF8 00481021 */  addu       $v0, $v0, $t0
/* 3B7FC 8003ABFC 8C424200 */  lw         $v0, %lo(D_800C4200)($v0)
/* 3B800 8003AC00 01620018 */  mult       $t3, $v0
/* 3B804 8003AC04 00001012 */  mflo       $v0
/* 3B808 8003AC08 000210C2 */  srl        $v0, $v0, 3
/* 3B80C 8003AC0C 00000000 */  nop
/* 3B810 8003AC10 10400002 */  beqz       $v0, .L8003AC1C
/* 3B814 8003AC14 24050800 */   addiu     $a1, $zero, 0x800
/* 3B818 8003AC18 244507FF */  addiu      $a1, $v0, 0x7ff
.L8003AC1C:
/* 3B81C 8003AC1C 8FAE003C */  lw         $t6, 0x3c($sp)
/* 3B820 8003AC20 016E0018 */  mult       $t3, $t6
/* 3B824 8003AC24 00002012 */  mflo       $a0
/* 3B828 8003AC28 000A1880 */  sll        $v1, $t2, 2
/* 3B82C 8003AC2C 3C02800C */  lui        $v0, %hi(D_800C4230)
/* 3B830 8003AC30 00431021 */  addu       $v0, $v0, $v1
/* 3B834 8003AC34 8C424230 */  lw         $v0, %lo(D_800C4230)($v0)
/* 3B838 8003AC38 00822021 */  addu       $a0, $a0, $v0
/* 3B83C 8003AC3C 3C02800C */  lui        $v0, %hi(D_800C4240)
/* 3B840 8003AC40 00431021 */  addu       $v0, $v0, $v1
/* 3B844 8003AC44 8C424240 */  lw         $v0, %lo(D_800C4240)($v0)
/* 3B848 8003AC48 00442006 */  srlv       $a0, $a0, $v0
/* 3B84C 8003AC4C 2484FFFF */  addiu      $a0, $a0, -1
/* 3B850 8003AC50 2C820800 */  sltiu      $v0, $a0, 0x800
/* 3B854 8003AC54 50400001 */  beql       $v0, $zero, .L8003AC5C
/* 3B858 8003AC58 240407FF */   addiu     $a0, $zero, 0x7ff
.L8003AC5C:
/* 3B85C 8003AC5C 30840FFF */  andi       $a0, $a0, 0xfff
/* 3B860 8003AC60 00042300 */  sll        $a0, $a0, 0xc
/* 3B864 8003AC64 3C020700 */  lui        $v0, 0x700
/* 3B868 8003AC68 00822025 */  or         $a0, $a0, $v0
/* 3B86C 8003AC6C 000A1080 */  sll        $v0, $t2, 2
/* 3B870 8003AC70 3C01800C */  lui        $at, %hi(D_800C4200)
/* 3B874 8003AC74 00220821 */  addu       $at, $at, $v0
/* 3B878 8003AC78 8C224200 */  lw         $v0, %lo(D_800C4200)($at)
/* 3B87C 8003AC7C 01620018 */  mult       $t3, $v0
/* 3B880 8003AC80 00001012 */  mflo       $v0
/* 3B884 8003AC84 000210C2 */  srl        $v0, $v0, 3
/* 3B888 8003AC88 00000000 */  nop
/* 3B88C 8003AC8C 50400007 */  beql       $v0, $zero, .L8003ACAC
/* 3B890 8003AC90 30A20FFF */   andi      $v0, $a1, 0xfff
/* 3B894 8003AC94 00A2001B */  divu       $zero, $a1, $v0
/* 3B898 8003AC98 14400002 */  bnez       $v0, .L8003ACA4
/* 3B89C 8003AC9C 00000000 */   nop
/* 3B8A0 8003ACA0 0007000D */  break      7
.L8003ACA4:
/* 3B8A4 8003ACA4 00001012 */   mflo      $v0
/* 3B8A8 8003ACA8 30420FFF */  andi       $v0, $v0, 0xfff
.L8003ACAC:
/* 3B8AC 8003ACAC 00821025 */  or         $v0, $a0, $v0
/* 3B8B0 8003ACB0 ACC20004 */  sw         $v0, 4($a2)
/* 3B8B4 8003ACB4 01201821 */  addu       $v1, $t1, $zero
/* 3B8B8 8003ACB8 25290008 */  addiu      $t1, $t1, 8
/* 3B8BC 8003ACBC 3C02E700 */  lui        $v0, 0xe700
/* 3B8C0 8003ACC0 AC620000 */  sw         $v0, ($v1)
/* 3B8C4 8003ACC4 AC600004 */  sw         $zero, 4($v1)
/* 3B8C8 8003ACC8 01203021 */  addu       $a2, $t1, $zero
/* 3B8CC 8003ACCC 25290008 */  addiu      $t1, $t1, 8
/* 3B8D0 8003ACD0 31840007 */  andi       $a0, $t4, 7
/* 3B8D4 8003ACD4 00042540 */  sll        $a0, $a0, 0x15
/* 3B8D8 8003ACD8 31420003 */  andi       $v0, $t2, 3
/* 3B8DC 8003ACDC 000214C0 */  sll        $v0, $v0, 0x13
/* 3B8E0 8003ACE0 3C03F500 */  lui        $v1, 0xf500
/* 3B8E4 8003ACE4 00431025 */  or         $v0, $v0, $v1
/* 3B8E8 8003ACE8 00822025 */  or         $a0, $a0, $v0
/* 3B8EC 8003ACEC 000A1080 */  sll        $v0, $t2, 2
/* 3B8F0 8003ACF0 3C01800C */  lui        $at, %hi(D_800C4210)
/* 3B8F4 8003ACF4 00220821 */  addu       $at, $at, $v0
/* 3B8F8 8003ACF8 8C224210 */  lw         $v0, %lo(D_800C4210)($at)
/* 3B8FC 8003ACFC 01620018 */  mult       $t3, $v0
/* 3B900 8003AD00 00001012 */  mflo       $v0
/* 3B904 8003AD04 24420007 */  addiu      $v0, $v0, 7
/* 3B908 8003AD08 000210C2 */  srl        $v0, $v0, 3
/* 3B90C 8003AD0C 304201FF */  andi       $v0, $v0, 0x1ff
/* 3B910 8003AD10 00021240 */  sll        $v0, $v0, 9
/* 3B914 8003AD14 00822025 */  or         $a0, $a0, $v0
/* 3B918 8003AD18 31E201FF */  andi       $v0, $t7, 0x1ff
/* 3B91C 8003AD1C 00822025 */  or         $a0, $a0, $v0
/* 3B920 8003AD20 ACC40000 */  sw         $a0, ($a2)
/* 3B924 8003AD24 32A50007 */  andi       $a1, $s5, 7
/* 3B928 8003AD28 00052E00 */  sll        $a1, $a1, 0x18
/* 3B92C 8003AD2C 32C3000F */  andi       $v1, $s6, 0xf
/* 3B930 8003AD30 00031D00 */  sll        $v1, $v1, 0x14
/* 3B934 8003AD34 00A31825 */  or         $v1, $a1, $v1
/* 3B938 8003AD38 33020003 */  andi       $v0, $t8, 3
/* 3B93C 8003AD3C 00021480 */  sll        $v0, $v0, 0x12
/* 3B940 8003AD40 00621825 */  or         $v1, $v1, $v0
/* 3B944 8003AD44 3322000F */  andi       $v0, $t9, 0xf
/* 3B948 8003AD48 00021380 */  sll        $v0, $v0, 0xe
/* 3B94C 8003AD4C 00621825 */  or         $v1, $v1, $v0
/* 3B950 8003AD50 3202000F */  andi       $v0, $s0, 0xf
/* 3B954 8003AD54 00021280 */  sll        $v0, $v0, 0xa
/* 3B958 8003AD58 00621825 */  or         $v1, $v1, $v0
/* 3B95C 8003AD5C 32220003 */  andi       $v0, $s1, 3
/* 3B960 8003AD60 00021200 */  sll        $v0, $v0, 8
/* 3B964 8003AD64 00621825 */  or         $v1, $v1, $v0
/* 3B968 8003AD68 3242000F */  andi       $v0, $s2, 0xf
/* 3B96C 8003AD6C 00021100 */  sll        $v0, $v0, 4
/* 3B970 8003AD70 00621825 */  or         $v1, $v1, $v0
/* 3B974 8003AD74 3262000F */  andi       $v0, $s3, 0xf
/* 3B978 8003AD78 00621825 */  or         $v1, $v1, $v0
/* 3B97C 8003AD7C ACC30004 */  sw         $v1, 4($a2)
/* 3B980 8003AD80 01203021 */  addu       $a2, $t1, $zero
/* 3B984 8003AD84 25290008 */  addiu      $t1, $t1, 8
/* 3B988 8003AD88 00171080 */  sll        $v0, $s7, 2
/* 3B98C 8003AD8C 30420FFF */  andi       $v0, $v0, 0xfff
/* 3B990 8003AD90 00021300 */  sll        $v0, $v0, 0xc
/* 3B994 8003AD94 00141880 */  sll        $v1, $s4, 2
/* 3B998 8003AD98 30630FFF */  andi       $v1, $v1, 0xfff
/* 3B99C 8003AD9C 3C04F200 */  lui        $a0, 0xf200
/* 3B9A0 8003ADA0 00641825 */  or         $v1, $v1, $a0
/* 3B9A4 8003ADA4 00431025 */  or         $v0, $v0, $v1
/* 3B9A8 8003ADA8 ACC20000 */  sw         $v0, ($a2)
/* 3B9AC 8003ADAC 001E1080 */  sll        $v0, $fp, 2
/* 3B9B0 8003ADB0 30420FFF */  andi       $v0, $v0, 0xfff
/* 3B9B4 8003ADB4 00021300 */  sll        $v0, $v0, 0xc
/* 3B9B8 8003ADB8 00A22825 */  or         $a1, $a1, $v0
/* 3B9BC 8003ADBC 8FAE004C */  lw         $t6, 0x4c($sp)
/* 3B9C0 8003ADC0 000E1080 */  sll        $v0, $t6, 2
/* 3B9C4 8003ADC4 30420FFF */  andi       $v0, $v0, 0xfff
/* 3B9C8 8003ADC8 00A22825 */  or         $a1, $a1, $v0
/* 3B9CC 8003ADCC ACC50004 */  sw         $a1, 4($a2)
/* 3B9D0 8003ADD0 ADA90000 */  sw         $t1, ($t5)
/* 3B9D4 8003ADD4 8FBE0020 */  lw         $fp, 0x20($sp)
/* 3B9D8 8003ADD8 8FB7001C */  lw         $s7, 0x1c($sp)
/* 3B9DC 8003ADDC 8FB60018 */  lw         $s6, 0x18($sp)
/* 3B9E0 8003ADE0 8FB50014 */  lw         $s5, 0x14($sp)
/* 3B9E4 8003ADE4 8FB40010 */  lw         $s4, 0x10($sp)
/* 3B9E8 8003ADE8 8FB3000C */  lw         $s3, 0xc($sp)
/* 3B9EC 8003ADEC 8FB20008 */  lw         $s2, 8($sp)
/* 3B9F0 8003ADF0 8FB10004 */  lw         $s1, 4($sp)
/* 3B9F4 8003ADF4 8FB00000 */  lw         $s0, ($sp)
/* 3B9F8 8003ADF8 03E00008 */  jr         $ra
/* 3B9FC 8003ADFC 27BD0028 */   addiu     $sp, $sp, 0x28
