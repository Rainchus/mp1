	.set noat
	.set noreorder

glabel func_8007A978
/* 7B578 8007A978 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 7B57C 8007A97C AFBF0054 */  sw         $ra, 0x54($sp)
/* 7B580 8007A980 AFBE0050 */  sw         $fp, 0x50($sp)
/* 7B584 8007A984 AFB7004C */  sw         $s7, 0x4c($sp)
/* 7B588 8007A988 AFB60048 */  sw         $s6, 0x48($sp)
/* 7B58C 8007A98C AFB50044 */  sw         $s5, 0x44($sp)
/* 7B590 8007A990 AFB40040 */  sw         $s4, 0x40($sp)
/* 7B594 8007A994 AFB3003C */  sw         $s3, 0x3c($sp)
/* 7B598 8007A998 AFB20038 */  sw         $s2, 0x38($sp)
/* 7B59C 8007A99C AFB10034 */  sw         $s1, 0x34($sp)
/* 7B5A0 8007A9A0 AFB00030 */  sw         $s0, 0x30($sp)
/* 7B5A4 8007A9A4 F7BA0070 */  sdc1       $f26, 0x70($sp)
/* 7B5A8 8007A9A8 F7B80068 */  sdc1       $f24, 0x68($sp)
/* 7B5AC 8007A9AC F7B60060 */  sdc1       $f22, 0x60($sp)
/* 7B5B0 8007A9B0 F7B40058 */  sdc1       $f20, 0x58($sp)
/* 7B5B4 8007A9B4 00809021 */  addu       $s2, $a0, $zero
/* 7B5B8 8007A9B8 86420008 */  lh         $v0, 8($s2)
/* 7B5BC 8007A9BC 00021080 */  sll        $v0, $v0, 2
/* 7B5C0 8007A9C0 3C04800C */  lui        $a0, %hi(D_800C624C)
/* 7B5C4 8007A9C4 00822021 */  addu       $a0, $a0, $v0
/* 7B5C8 8007A9C8 8C84624C */  lw         $a0, %lo(D_800C624C)($a0)
/* 7B5CC 8007A9CC 0C02310E */  jal        func_8008C438
/* 7B5D0 8007A9D0 241E0005 */   addiu     $fp, $zero, 5
/* 7B5D4 8007A9D4 0040A021 */  addu       $s4, $v0, $zero
/* 7B5D8 8007A9D8 8642000A */  lh         $v0, 0xa($s2)
/* 7B5DC 8007A9DC 00021080 */  sll        $v0, $v0, 2
/* 7B5E0 8007A9E0 3C04800C */  lui        $a0, %hi(D_800C624C)
/* 7B5E4 8007A9E4 00822021 */  addu       $a0, $a0, $v0
/* 7B5E8 8007A9E8 8C84624C */  lw         $a0, %lo(D_800C624C)($a0)
/* 7B5EC 8007A9EC 0C02310E */  jal        func_8008C438
/* 7B5F0 8007A9F0 0280B021 */   addu      $s6, $s4, $zero
/* 7B5F4 8007A9F4 0040A821 */  addu       $s5, $v0, $zero
/* 7B5F8 8007A9F8 8642000C */  lh         $v0, 0xc($s2)
/* 7B5FC 8007A9FC 00021080 */  sll        $v0, $v0, 2
/* 7B600 8007AA00 3C11800C */  lui        $s1, %hi(D_800C624C)
/* 7B604 8007AA04 2631624C */  addiu      $s1, $s1, %lo(D_800C624C)
/* 7B608 8007AA08 3C04800C */  lui        $a0, %hi(D_800C624C)
/* 7B60C 8007AA0C 00822021 */  addu       $a0, $a0, $v0
/* 7B610 8007AA10 0C02310E */  jal        func_8008C438
/* 7B614 8007AA14 8C84624C */   lw        $a0, %lo(D_800C624C)($a0)
/* 7B618 8007AA18 86530004 */  lh         $s3, 4($s2)
/* 7B61C 8007AA1C 1660009D */  bnez       $s3, .L8007AC94
/* 7B620 8007AA20 0040B821 */   addu      $s7, $v0, $zero
/* 7B624 8007AA24 86420008 */  lh         $v0, 8($s2)
/* 7B628 8007AA28 00021080 */  sll        $v0, $v0, 2
/* 7B62C 8007AA2C 00511021 */  addu       $v0, $v0, $s1
/* 7B630 8007AA30 2410FFFF */  addiu      $s0, $zero, -1
/* 7B634 8007AA34 AFB00010 */  sw         $s0, 0x10($sp)
/* 7B638 8007AA38 02402021 */  addu       $a0, $s2, $zero
/* 7B63C 8007AA3C 8C450000 */  lw         $a1, ($v0)
/* 7B640 8007AA40 24060001 */  addiu      $a2, $zero, 1
/* 7B644 8007AA44 0C01D9ED */  jal        func_800767B4
/* 7B648 8007AA48 2407FFFF */   addiu     $a3, $zero, -1
/* 7B64C 8007AA4C 8642000A */  lh         $v0, 0xa($s2)
/* 7B650 8007AA50 00021080 */  sll        $v0, $v0, 2
/* 7B654 8007AA54 00511021 */  addu       $v0, $v0, $s1
/* 7B658 8007AA58 AFB00010 */  sw         $s0, 0x10($sp)
/* 7B65C 8007AA5C 02402021 */  addu       $a0, $s2, $zero
/* 7B660 8007AA60 8C450000 */  lw         $a1, ($v0)
/* 7B664 8007AA64 24060001 */  addiu      $a2, $zero, 1
/* 7B668 8007AA68 0C01D9ED */  jal        func_800767B4
/* 7B66C 8007AA6C 2407FFFF */   addiu     $a3, $zero, -1
/* 7B670 8007AA70 8642000C */  lh         $v0, 0xc($s2)
/* 7B674 8007AA74 00021080 */  sll        $v0, $v0, 2
/* 7B678 8007AA78 00511021 */  addu       $v0, $v0, $s1
/* 7B67C 8007AA7C AFB00010 */  sw         $s0, 0x10($sp)
/* 7B680 8007AA80 02402021 */  addu       $a0, $s2, $zero
/* 7B684 8007AA84 8C450000 */  lw         $a1, ($v0)
/* 7B688 8007AA88 24060001 */  addiu      $a2, $zero, 1
/* 7B68C 8007AA8C 0C01D9ED */  jal        func_800767B4
/* 7B690 8007AA90 2407FFFF */   addiu     $a3, $zero, -1
/* 7B694 8007AA94 AFB00010 */  sw         $s0, 0x10($sp)
/* 7B698 8007AA98 02402021 */  addu       $a0, $s2, $zero
/* 7B69C 8007AA9C 3C05800D */  lui        $a1, %hi(D_800CBA70)
/* 7B6A0 8007AAA0 24A5BA70 */  addiu      $a1, $a1, %lo(D_800CBA70)
/* 7B6A4 8007AAA4 24060001 */  addiu      $a2, $zero, 1
/* 7B6A8 8007AAA8 0C01D9ED */  jal        func_800767B4
/* 7B6AC 8007AAAC 2407FFFF */   addiu     $a3, $zero, -1
/* 7B6B0 8007AAB0 00141400 */  sll        $v0, $s4, 0x10
/* 7B6B4 8007AAB4 00021403 */  sra        $v0, $v0, 0x10
/* 7B6B8 8007AAB8 0262102A */  slt        $v0, $s3, $v0
/* 7B6BC 8007AABC 10400011 */  beqz       $v0, .L8007AB04
/* 7B6C0 8007AAC0 00008821 */   addu      $s1, $zero, $zero
/* 7B6C4 8007AAC4 3C0140A0 */  lui        $at, 0x40a0
/* 7B6C8 8007AAC8 4481A000 */  mtc1       $at, $f20
/* 7B6CC 8007AACC 00161400 */  sll        $v0, $s6, 0x10
/* 7B6D0 8007AAD0 00029C03 */  sra        $s3, $v0, 0x10
/* 7B6D4 8007AAD4 26310001 */  addiu      $s1, $s1, 1
.L8007AAD8:
/* 7B6D8 8007AAD8 00118400 */  sll        $s0, $s1, 0x10
/* 7B6DC 8007AADC 00108403 */  sra        $s0, $s0, 0x10
/* 7B6E0 8007AAE0 86440014 */  lh         $a0, 0x14($s2)
/* 7B6E4 8007AAE4 4406A000 */  mfc1       $a2, $f20
/* 7B6E8 8007AAE8 4407A000 */  mfc1       $a3, $f20
/* 7B6EC 8007AAEC 00000000 */  nop
/* 7B6F0 8007AAF0 0C019CD5 */  jal        func_80067354
/* 7B6F4 8007AAF4 02002821 */   addu      $a1, $s0, $zero
/* 7B6F8 8007AAF8 0213802A */  slt        $s0, $s0, $s3
/* 7B6FC 8007AAFC 5600FFF6 */  bnel       $s0, $zero, .L8007AAD8
/* 7B700 8007AB00 26310001 */   addiu     $s1, $s1, 1
.L8007AB04:
/* 7B704 8007AB04 00151400 */  sll        $v0, $s5, 0x10
/* 7B708 8007AB08 18400011 */  blez       $v0, .L8007AB50
/* 7B70C 8007AB0C 00008821 */   addu      $s1, $zero, $zero
/* 7B710 8007AB10 3C0140A0 */  lui        $at, 0x40a0
/* 7B714 8007AB14 4481A000 */  mtc1       $at, $f20
/* 7B718 8007AB18 00151400 */  sll        $v0, $s5, 0x10
/* 7B71C 8007AB1C 00029C03 */  sra        $s3, $v0, 0x10
/* 7B720 8007AB20 26310001 */  addiu      $s1, $s1, 1
.L8007AB24:
/* 7B724 8007AB24 00118400 */  sll        $s0, $s1, 0x10
/* 7B728 8007AB28 00108403 */  sra        $s0, $s0, 0x10
/* 7B72C 8007AB2C 86440016 */  lh         $a0, 0x16($s2)
/* 7B730 8007AB30 4406A000 */  mfc1       $a2, $f20
/* 7B734 8007AB34 4407A000 */  mfc1       $a3, $f20
/* 7B738 8007AB38 00000000 */  nop
/* 7B73C 8007AB3C 0C019CD5 */  jal        func_80067354
/* 7B740 8007AB40 02002821 */   addu      $a1, $s0, $zero
/* 7B744 8007AB44 0213802A */  slt        $s0, $s0, $s3
/* 7B748 8007AB48 5600FFF6 */  bnel       $s0, $zero, .L8007AB24
/* 7B74C 8007AB4C 26310001 */   addiu     $s1, $s1, 1
.L8007AB50:
/* 7B750 8007AB50 00171400 */  sll        $v0, $s7, 0x10
/* 7B754 8007AB54 18400011 */  blez       $v0, .L8007AB9C
/* 7B758 8007AB58 00008821 */   addu      $s1, $zero, $zero
/* 7B75C 8007AB5C 3C0140A0 */  lui        $at, 0x40a0
/* 7B760 8007AB60 4481A000 */  mtc1       $at, $f20
/* 7B764 8007AB64 00171400 */  sll        $v0, $s7, 0x10
/* 7B768 8007AB68 00029C03 */  sra        $s3, $v0, 0x10
/* 7B76C 8007AB6C 26310001 */  addiu      $s1, $s1, 1
.L8007AB70:
/* 7B770 8007AB70 00118400 */  sll        $s0, $s1, 0x10
/* 7B774 8007AB74 00108403 */  sra        $s0, $s0, 0x10
/* 7B778 8007AB78 86440018 */  lh         $a0, 0x18($s2)
/* 7B77C 8007AB7C 4406A000 */  mfc1       $a2, $f20
/* 7B780 8007AB80 4407A000 */  mfc1       $a3, $f20
/* 7B784 8007AB84 00000000 */  nop
/* 7B788 8007AB88 0C019CD5 */  jal        func_80067354
/* 7B78C 8007AB8C 02002821 */   addu      $a1, $s0, $zero
/* 7B790 8007AB90 0213802A */  slt        $s0, $s0, $s3
/* 7B794 8007AB94 5600FFF6 */  bnel       $s0, $zero, .L8007AB70
/* 7B798 8007AB98 26310001 */   addiu     $s1, $s1, 1
.L8007AB9C:
/* 7B79C 8007AB9C 13C0000C */  beqz       $fp, .L8007ABD0
/* 7B7A0 8007ABA0 00008821 */   addu      $s1, $zero, $zero
/* 7B7A4 8007ABA4 03C09821 */  addu       $s3, $fp, $zero
/* 7B7A8 8007ABA8 26310001 */  addiu      $s1, $s1, 1
.L8007ABAC:
/* 7B7AC 8007ABAC 00118400 */  sll        $s0, $s1, 0x10
/* 7B7B0 8007ABB0 00108403 */  sra        $s0, $s0, 0x10
/* 7B7B4 8007ABB4 8644001A */  lh         $a0, 0x1a($s2)
/* 7B7B8 8007ABB8 02002821 */  addu       $a1, $s0, $zero
/* 7B7BC 8007ABBC 0C019D2F */  jal        func_800674BC
/* 7B7C0 8007ABC0 34068000 */   ori       $a2, $zero, 0x8000
/* 7B7C4 8007ABC4 0213802A */  slt        $s0, $s0, $s3
/* 7B7C8 8007ABC8 5600FFF8 */  bnel       $s0, $zero, .L8007ABAC
/* 7B7CC 8007ABCC 26310001 */   addiu     $s1, $s1, 1
.L8007ABD0:
/* 7B7D0 8007ABD0 C6400058 */  lwc1       $f0, 0x58($s2)
/* 7B7D4 8007ABD4 3C014240 */  lui        $at, 0x4240
/* 7B7D8 8007ABD8 44811000 */  mtc1       $at, $f2
/* 7B7DC 8007ABDC 00000000 */  nop
/* 7B7E0 8007ABE0 46020001 */  sub.s      $f0, $f0, $f2
/* 7B7E4 8007ABE4 4600008D */  trunc.w.s  $f2, $f0
/* 7B7E8 8007ABE8 44071000 */  mfc1       $a3, $f2
/* 7B7EC 8007ABEC 00000000 */  nop
/* 7B7F0 8007ABF0 00073C00 */  sll        $a3, $a3, 0x10
/* 7B7F4 8007ABF4 86440014 */  lh         $a0, 0x14($s2)
/* 7B7F8 8007ABF8 00002821 */  addu       $a1, $zero, $zero
/* 7B7FC 8007ABFC 24060120 */  addiu      $a2, $zero, 0x120
/* 7B800 8007AC00 0C019B71 */  jal        func_80066DC4
/* 7B804 8007AC04 00073C03 */   sra       $a3, $a3, 0x10
/* 7B808 8007AC08 C6400058 */  lwc1       $f0, 0x58($s2)
/* 7B80C 8007AC0C 3C0141C0 */  lui        $at, 0x41c0
/* 7B810 8007AC10 4481A000 */  mtc1       $at, $f20
/* 7B814 8007AC14 00000000 */  nop
/* 7B818 8007AC18 46140001 */  sub.s      $f0, $f0, $f20
/* 7B81C 8007AC1C 4600008D */  trunc.w.s  $f2, $f0
/* 7B820 8007AC20 44071000 */  mfc1       $a3, $f2
/* 7B824 8007AC24 00000000 */  nop
/* 7B828 8007AC28 00073C00 */  sll        $a3, $a3, 0x10
/* 7B82C 8007AC2C 86440016 */  lh         $a0, 0x16($s2)
/* 7B830 8007AC30 00002821 */  addu       $a1, $zero, $zero
/* 7B834 8007AC34 240600A0 */  addiu      $a2, $zero, 0xa0
/* 7B838 8007AC38 0C019B71 */  jal        func_80066DC4
/* 7B83C 8007AC3C 00073C03 */   sra       $a3, $a3, 0x10
/* 7B840 8007AC40 C6400058 */  lwc1       $f0, 0x58($s2)
/* 7B844 8007AC44 4600008D */  trunc.w.s  $f2, $f0
/* 7B848 8007AC48 44071000 */  mfc1       $a3, $f2
/* 7B84C 8007AC4C 00000000 */  nop
/* 7B850 8007AC50 00073C00 */  sll        $a3, $a3, 0x10
/* 7B854 8007AC54 86440018 */  lh         $a0, 0x18($s2)
/* 7B858 8007AC58 00002821 */  addu       $a1, $zero, $zero
/* 7B85C 8007AC5C 24060020 */  addiu      $a2, $zero, 0x20
/* 7B860 8007AC60 0C019B71 */  jal        func_80066DC4
/* 7B864 8007AC64 00073C03 */   sra       $a3, $a3, 0x10
/* 7B868 8007AC68 C6400058 */  lwc1       $f0, 0x58($s2)
/* 7B86C 8007AC6C 46140000 */  add.s      $f0, $f0, $f20
/* 7B870 8007AC70 4600008D */  trunc.w.s  $f2, $f0
/* 7B874 8007AC74 44071000 */  mfc1       $a3, $f2
/* 7B878 8007AC78 00000000 */  nop
/* 7B87C 8007AC7C 00073C00 */  sll        $a3, $a3, 0x10
/* 7B880 8007AC80 8644001A */  lh         $a0, 0x1a($s2)
/* 7B884 8007AC84 00002821 */  addu       $a1, $zero, $zero
/* 7B888 8007AC88 240600A0 */  addiu      $a2, $zero, 0xa0
/* 7B88C 8007AC8C 0C019B71 */  jal        func_80066DC4
/* 7B890 8007AC90 00073C03 */   sra       $a3, $a3, 0x10
.L8007AC94:
/* 7B894 8007AC94 3C02800F */  lui        $v0, %hi(D_800F3394)
/* 7B898 8007AC98 90423394 */  lbu        $v0, %lo(D_800F3394)($v0)
/* 7B89C 8007AC9C 14400004 */  bnez       $v0, .L8007ACB0
/* 7B8A0 8007ACA0 24020004 */   addiu     $v0, $zero, 4
/* 7B8A4 8007ACA4 92430001 */  lbu        $v1, 1($s2)
/* 7B8A8 8007ACA8 14620005 */  bne        $v1, $v0, .L8007ACC0
/* 7B8AC 8007ACAC 00000000 */   nop
.L8007ACB0:
/* 7B8B0 8007ACB0 0C01D8CE */  jal        func_80076338
/* 7B8B4 8007ACB4 02402021 */   addu      $a0, $s2, $zero
/* 7B8B8 8007ACB8 0801EC4A */  j          .L8007B128
/* 7B8BC 8007ACBC 00001021 */   addu      $v0, $zero, $zero
.L8007ACC0:
/* 7B8C0 8007ACC0 86430004 */  lh         $v1, 4($s2)
/* 7B8C4 8007ACC4 28620015 */  slti       $v0, $v1, 0x15
/* 7B8C8 8007ACC8 104000B0 */  beqz       $v0, .L8007AF8C
/* 7B8CC 8007ACCC 24020014 */   addiu     $v0, $zero, 0x14
/* 7B8D0 8007ACD0 00431023 */  subu       $v0, $v0, $v1
/* 7B8D4 8007ACD4 4482B000 */  mtc1       $v0, $f22
/* 7B8D8 8007ACD8 00000000 */  nop
/* 7B8DC 8007ACDC 4680B5A0 */  cvt.s.w    $f22, $f22
/* 7B8E0 8007ACE0 3C013ECC */  lui        $at, 0x3ecc
/* 7B8E4 8007ACE4 3421CCCD */  ori        $at, $at, 0xcccd
/* 7B8E8 8007ACE8 44810000 */  mtc1       $at, $f0
/* 7B8EC 8007ACEC 00000000 */  nop
/* 7B8F0 8007ACF0 4600B582 */  mul.s      $f22, $f22, $f0
/* 7B8F4 8007ACF4 3C013F80 */  lui        $at, 0x3f80
/* 7B8F8 8007ACF8 44810000 */  mtc1       $at, $f0
/* 7B8FC 8007ACFC 00000000 */  nop
/* 7B900 8007AD00 4600B580 */  add.s      $f22, $f22, $f0
/* 7B904 8007AD04 00031040 */  sll        $v0, $v1, 1
/* 7B908 8007AD08 00431021 */  addu       $v0, $v0, $v1
/* 7B90C 8007AD0C 00021080 */  sll        $v0, $v0, 2
/* 7B910 8007AD10 4482A000 */  mtc1       $v0, $f20
/* 7B914 8007AD14 00000000 */  nop
/* 7B918 8007AD18 4680A520 */  cvt.s.w    $f20, $f20
/* 7B91C 8007AD1C 4600A686 */  mov.s      $f26, $f20
/* 7B920 8007AD20 3C0143A0 */  lui        $at, 0x43a0
/* 7B924 8007AD24 44810000 */  mtc1       $at, $f0
/* 7B928 8007AD28 00000000 */  nop
/* 7B92C 8007AD2C 46140001 */  sub.s      $f0, $f0, $f20
/* 7B930 8007AD30 4600008D */  trunc.w.s  $f2, $f0
/* 7B934 8007AD34 44061000 */  mfc1       $a2, $f2
/* 7B938 8007AD38 00000000 */  nop
/* 7B93C 8007AD3C 00063400 */  sll        $a2, $a2, 0x10
/* 7B940 8007AD40 C6400058 */  lwc1       $f0, 0x58($s2)
/* 7B944 8007AD44 3C014240 */  lui        $at, 0x4240
/* 7B948 8007AD48 44811000 */  mtc1       $at, $f2
/* 7B94C 8007AD4C 00000000 */  nop
/* 7B950 8007AD50 46020001 */  sub.s      $f0, $f0, $f2
/* 7B954 8007AD54 4600008D */  trunc.w.s  $f2, $f0
/* 7B958 8007AD58 44071000 */  mfc1       $a3, $f2
/* 7B95C 8007AD5C 00000000 */  nop
/* 7B960 8007AD60 00073C00 */  sll        $a3, $a3, 0x10
/* 7B964 8007AD64 86440014 */  lh         $a0, 0x14($s2)
/* 7B968 8007AD68 00002821 */  addu       $a1, $zero, $zero
/* 7B96C 8007AD6C 00063403 */  sra        $a2, $a2, 0x10
/* 7B970 8007AD70 0C019B71 */  jal        func_80066DC4
/* 7B974 8007AD74 00073C03 */   sra       $a3, $a3, 0x10
/* 7B978 8007AD78 00161400 */  sll        $v0, $s6, 0x10
/* 7B97C 8007AD7C 18400025 */  blez       $v0, .L8007AE14
/* 7B980 8007AD80 00008821 */   addu      $s1, $zero, $zero
/* 7B984 8007AD84 3C014F00 */  lui        $at, 0x4f00
/* 7B988 8007AD88 4481C000 */  mtc1       $at, $f24
/* 7B98C 8007AD8C 3C148000 */  lui        $s4, 0x8000
/* 7B990 8007AD90 00161400 */  sll        $v0, $s6, 0x10
/* 7B994 8007AD94 00029C03 */  sra        $s3, $v0, 0x10
.L8007AD98:
/* 7B998 8007AD98 86440014 */  lh         $a0, 0x14($s2)
/* 7B99C 8007AD9C 26220001 */  addiu      $v0, $s1, 1
/* 7B9A0 8007ADA0 00021400 */  sll        $v0, $v0, 0x10
/* 7B9A4 8007ADA4 4614C03E */  c.le.s     $f24, $f20
/* 7B9A8 8007ADA8 00000000 */  nop
/* 7B9AC 8007ADAC 00000000 */  nop
/* 7B9B0 8007ADB0 45010005 */  bc1t       .L8007ADC8
/* 7B9B4 8007ADB4 00022C03 */   sra       $a1, $v0, 0x10
/* 7B9B8 8007ADB8 4600A00D */  trunc.w.s  $f0, $f20
/* 7B9BC 8007ADBC 44060000 */  mfc1       $a2, $f0
/* 7B9C0 8007ADC0 0801EB77 */  j          .L8007ADDC
/* 7B9C4 8007ADC4 00000000 */   nop
.L8007ADC8:
/* 7B9C8 8007ADC8 4618A001 */  sub.s      $f0, $f20, $f24
/* 7B9CC 8007ADCC 4600008D */  trunc.w.s  $f2, $f0
/* 7B9D0 8007ADD0 44061000 */  mfc1       $a2, $f2
/* 7B9D4 8007ADD4 00000000 */  nop
/* 7B9D8 8007ADD8 00D43025 */  or         $a2, $a2, $s4
.L8007ADDC:
/* 7B9DC 8007ADDC 0C019D4B */  jal        func_8006752C
/* 7B9E0 8007ADE0 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 7B9E4 8007ADE4 26310001 */  addiu      $s1, $s1, 1
/* 7B9E8 8007ADE8 00118400 */  sll        $s0, $s1, 0x10
/* 7B9EC 8007ADEC 00108403 */  sra        $s0, $s0, 0x10
/* 7B9F0 8007ADF0 86440014 */  lh         $a0, 0x14($s2)
/* 7B9F4 8007ADF4 4406B000 */  mfc1       $a2, $f22
/* 7B9F8 8007ADF8 4407B000 */  mfc1       $a3, $f22
/* 7B9FC 8007ADFC 00000000 */  nop
/* 7BA00 8007AE00 0C019CD5 */  jal        func_80067354
/* 7BA04 8007AE04 02002821 */   addu      $a1, $s0, $zero
/* 7BA08 8007AE08 0213802A */  slt        $s0, $s0, $s3
/* 7BA0C 8007AE0C 1600FFE2 */  bnez       $s0, .L8007AD98
/* 7BA10 8007AE10 00000000 */   nop
.L8007AE14:
/* 7BA14 8007AE14 00151400 */  sll        $v0, $s5, 0x10
/* 7BA18 8007AE18 18400025 */  blez       $v0, .L8007AEB0
/* 7BA1C 8007AE1C 00008821 */   addu      $s1, $zero, $zero
/* 7BA20 8007AE20 3C014F00 */  lui        $at, 0x4f00
/* 7BA24 8007AE24 4481C000 */  mtc1       $at, $f24
/* 7BA28 8007AE28 3C148000 */  lui        $s4, 0x8000
/* 7BA2C 8007AE2C 00151400 */  sll        $v0, $s5, 0x10
/* 7BA30 8007AE30 00029C03 */  sra        $s3, $v0, 0x10
.L8007AE34:
/* 7BA34 8007AE34 86440016 */  lh         $a0, 0x16($s2)
/* 7BA38 8007AE38 26220001 */  addiu      $v0, $s1, 1
/* 7BA3C 8007AE3C 00021400 */  sll        $v0, $v0, 0x10
/* 7BA40 8007AE40 4614C03E */  c.le.s     $f24, $f20
/* 7BA44 8007AE44 00000000 */  nop
/* 7BA48 8007AE48 00000000 */  nop
/* 7BA4C 8007AE4C 45010005 */  bc1t       .L8007AE64
/* 7BA50 8007AE50 00022C03 */   sra       $a1, $v0, 0x10
/* 7BA54 8007AE54 4600A00D */  trunc.w.s  $f0, $f20
/* 7BA58 8007AE58 44060000 */  mfc1       $a2, $f0
/* 7BA5C 8007AE5C 0801EB9E */  j          .L8007AE78
/* 7BA60 8007AE60 00000000 */   nop
.L8007AE64:
/* 7BA64 8007AE64 4618A001 */  sub.s      $f0, $f20, $f24
/* 7BA68 8007AE68 4600008D */  trunc.w.s  $f2, $f0
/* 7BA6C 8007AE6C 44061000 */  mfc1       $a2, $f2
/* 7BA70 8007AE70 00000000 */  nop
/* 7BA74 8007AE74 00D43025 */  or         $a2, $a2, $s4
.L8007AE78:
/* 7BA78 8007AE78 0C019D4B */  jal        func_8006752C
/* 7BA7C 8007AE7C 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 7BA80 8007AE80 26310001 */  addiu      $s1, $s1, 1
/* 7BA84 8007AE84 00118400 */  sll        $s0, $s1, 0x10
/* 7BA88 8007AE88 00108403 */  sra        $s0, $s0, 0x10
/* 7BA8C 8007AE8C 86440016 */  lh         $a0, 0x16($s2)
/* 7BA90 8007AE90 4406B000 */  mfc1       $a2, $f22
/* 7BA94 8007AE94 4407B000 */  mfc1       $a3, $f22
/* 7BA98 8007AE98 00000000 */  nop
/* 7BA9C 8007AE9C 0C019CD5 */  jal        func_80067354
/* 7BAA0 8007AEA0 02002821 */   addu      $a1, $s0, $zero
/* 7BAA4 8007AEA4 0213802A */  slt        $s0, $s0, $s3
/* 7BAA8 8007AEA8 1600FFE2 */  bnez       $s0, .L8007AE34
/* 7BAAC 8007AEAC 00000000 */   nop
.L8007AEB0:
/* 7BAB0 8007AEB0 4600D00D */  trunc.w.s  $f0, $f26
/* 7BAB4 8007AEB4 44060000 */  mfc1       $a2, $f0
/* 7BAB8 8007AEB8 00000000 */  nop
/* 7BABC 8007AEBC 00063400 */  sll        $a2, $a2, 0x10
/* 7BAC0 8007AEC0 C6400058 */  lwc1       $f0, 0x58($s2)
/* 7BAC4 8007AEC4 4600008D */  trunc.w.s  $f2, $f0
/* 7BAC8 8007AEC8 44071000 */  mfc1       $a3, $f2
/* 7BACC 8007AECC 00000000 */  nop
/* 7BAD0 8007AED0 00073C00 */  sll        $a3, $a3, 0x10
/* 7BAD4 8007AED4 86440018 */  lh         $a0, 0x18($s2)
/* 7BAD8 8007AED8 00002821 */  addu       $a1, $zero, $zero
/* 7BADC 8007AEDC 00063403 */  sra        $a2, $a2, 0x10
/* 7BAE0 8007AEE0 0C019B71 */  jal        func_80066DC4
/* 7BAE4 8007AEE4 00073C03 */   sra       $a3, $a3, 0x10
/* 7BAE8 8007AEE8 00171400 */  sll        $v0, $s7, 0x10
/* 7BAEC 8007AEEC 1840008D */  blez       $v0, .L8007B124
/* 7BAF0 8007AEF0 00008821 */   addu      $s1, $zero, $zero
/* 7BAF4 8007AEF4 3C014F00 */  lui        $at, 0x4f00
/* 7BAF8 8007AEF8 4481C000 */  mtc1       $at, $f24
/* 7BAFC 8007AEFC 3C148000 */  lui        $s4, 0x8000
/* 7BB00 8007AF00 00171400 */  sll        $v0, $s7, 0x10
/* 7BB04 8007AF04 00029C03 */  sra        $s3, $v0, 0x10
.L8007AF08:
/* 7BB08 8007AF08 86440018 */  lh         $a0, 0x18($s2)
/* 7BB0C 8007AF0C 26220001 */  addiu      $v0, $s1, 1
/* 7BB10 8007AF10 00021400 */  sll        $v0, $v0, 0x10
/* 7BB14 8007AF14 4614C03E */  c.le.s     $f24, $f20
/* 7BB18 8007AF18 00000000 */  nop
/* 7BB1C 8007AF1C 00000000 */  nop
/* 7BB20 8007AF20 45010005 */  bc1t       .L8007AF38
/* 7BB24 8007AF24 00022C03 */   sra       $a1, $v0, 0x10
/* 7BB28 8007AF28 4600A00D */  trunc.w.s  $f0, $f20
/* 7BB2C 8007AF2C 44060000 */  mfc1       $a2, $f0
/* 7BB30 8007AF30 0801EBD3 */  j          .L8007AF4C
/* 7BB34 8007AF34 00000000 */   nop
.L8007AF38:
/* 7BB38 8007AF38 4618A001 */  sub.s      $f0, $f20, $f24
/* 7BB3C 8007AF3C 4600008D */  trunc.w.s  $f2, $f0
/* 7BB40 8007AF40 44061000 */  mfc1       $a2, $f2
/* 7BB44 8007AF44 00000000 */  nop
/* 7BB48 8007AF48 00D43025 */  or         $a2, $a2, $s4
.L8007AF4C:
/* 7BB4C 8007AF4C 0C019D4B */  jal        func_8006752C
/* 7BB50 8007AF50 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 7BB54 8007AF54 26310001 */  addiu      $s1, $s1, 1
/* 7BB58 8007AF58 00118400 */  sll        $s0, $s1, 0x10
/* 7BB5C 8007AF5C 00108403 */  sra        $s0, $s0, 0x10
/* 7BB60 8007AF60 86440018 */  lh         $a0, 0x18($s2)
/* 7BB64 8007AF64 4406B000 */  mfc1       $a2, $f22
/* 7BB68 8007AF68 4407B000 */  mfc1       $a3, $f22
/* 7BB6C 8007AF6C 00000000 */  nop
/* 7BB70 8007AF70 0C019CD5 */  jal        func_80067354
/* 7BB74 8007AF74 02002821 */   addu      $a1, $s0, $zero
/* 7BB78 8007AF78 0213802A */  slt        $s0, $s0, $s3
/* 7BB7C 8007AF7C 1600FFE2 */  bnez       $s0, .L8007AF08
/* 7BB80 8007AF80 24020001 */   addiu     $v0, $zero, 1
/* 7BB84 8007AF84 0801EC4A */  j          .L8007B128
/* 7BB88 8007AF88 00000000 */   nop
.L8007AF8C:
/* 7BB8C 8007AF8C 96430004 */  lhu        $v1, 4($s2)
/* 7BB90 8007AF90 2462FFD7 */  addiu      $v0, $v1, -0x29
/* 7BB94 8007AF94 2C420014 */  sltiu      $v0, $v0, 0x14
/* 7BB98 8007AF98 1040005C */  beqz       $v0, .L8007B10C
/* 7BB9C 8007AF9C 00031400 */   sll       $v0, $v1, 0x10
/* 7BBA0 8007AFA0 00021C03 */  sra        $v1, $v0, 0x10
/* 7BBA4 8007AFA4 28620033 */  slti       $v0, $v1, 0x33
/* 7BBA8 8007AFA8 1040003A */  beqz       $v0, .L8007B094
/* 7BBAC 8007AFAC 2462FFD8 */   addiu     $v0, $v1, -0x28
/* 7BBB0 8007AFB0 00021840 */  sll        $v1, $v0, 1
/* 7BBB4 8007AFB4 00621821 */  addu       $v1, $v1, $v0
/* 7BBB8 8007AFB8 000318C0 */  sll        $v1, $v1, 3
/* 7BBBC 8007AFBC 00621821 */  addu       $v1, $v1, $v0
/* 7BBC0 8007AFC0 4483A000 */  mtc1       $v1, $f20
/* 7BBC4 8007AFC4 00000000 */  nop
/* 7BBC8 8007AFC8 4680A520 */  cvt.s.w    $f20, $f20
/* 7BBCC 8007AFCC 000218C0 */  sll        $v1, $v0, 3
/* 7BBD0 8007AFD0 00621821 */  addu       $v1, $v1, $v0
/* 7BBD4 8007AFD4 00031880 */  sll        $v1, $v1, 2
/* 7BBD8 8007AFD8 8644001A */  lh         $a0, 0x1a($s2)
/* 7BBDC 8007AFDC 44832000 */  mtc1       $v1, $f4
/* 7BBE0 8007AFE0 00000000 */  nop
/* 7BBE4 8007AFE4 46802120 */  cvt.s.w    $f4, $f4
/* 7BBE8 8007AFE8 44062000 */  mfc1       $a2, $f4
/* 7BBEC 8007AFEC 00000000 */  nop
/* 7BBF0 8007AFF0 0C019CEC */  jal        func_800673B0
/* 7BBF4 8007AFF4 00002821 */   addu      $a1, $zero, $zero
/* 7BBF8 8007AFF8 13C0004A */  beqz       $fp, .L8007B124
/* 7BBFC 8007AFFC 00008821 */   addu      $s1, $zero, $zero
/* 7BC00 8007B000 3C014F00 */  lui        $at, 0x4f00
/* 7BC04 8007B004 4481B000 */  mtc1       $at, $f22
/* 7BC08 8007B008 3C148000 */  lui        $s4, 0x8000
/* 7BC0C 8007B00C 03C09821 */  addu       $s3, $fp, $zero
/* 7BC10 8007B010 26300001 */  addiu      $s0, $s1, 1
.L8007B014:
/* 7BC14 8007B014 00108400 */  sll        $s0, $s0, 0x10
/* 7BC18 8007B018 00108403 */  sra        $s0, $s0, 0x10
/* 7BC1C 8007B01C 8644001A */  lh         $a0, 0x1a($s2)
/* 7BC20 8007B020 02002821 */  addu       $a1, $s0, $zero
/* 7BC24 8007B024 0C019D20 */  jal        func_80067480
/* 7BC28 8007B028 34068000 */   ori       $a2, $zero, 0x8000
/* 7BC2C 8007B02C 8644001A */  lh         $a0, 0x1a($s2)
/* 7BC30 8007B030 4614B03E */  c.le.s     $f22, $f20
/* 7BC34 8007B034 00000000 */  nop
/* 7BC38 8007B038 00000000 */  nop
/* 7BC3C 8007B03C 45010005 */  bc1t       .L8007B054
/* 7BC40 8007B040 02002821 */   addu      $a1, $s0, $zero
/* 7BC44 8007B044 4600A00D */  trunc.w.s  $f0, $f20
/* 7BC48 8007B048 44060000 */  mfc1       $a2, $f0
/* 7BC4C 8007B04C 0801EC1A */  j          .L8007B068
/* 7BC50 8007B050 00000000 */   nop
.L8007B054:
/* 7BC54 8007B054 4616A001 */  sub.s      $f0, $f20, $f22
/* 7BC58 8007B058 4600008D */  trunc.w.s  $f2, $f0
/* 7BC5C 8007B05C 44061000 */  mfc1       $a2, $f2
/* 7BC60 8007B060 00000000 */  nop
/* 7BC64 8007B064 00D43025 */  or         $a2, $a2, $s4
.L8007B068:
/* 7BC68 8007B068 0C019D4B */  jal        func_8006752C
/* 7BC6C 8007B06C 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 7BC70 8007B070 26220001 */  addiu      $v0, $s1, 1
/* 7BC74 8007B074 00408821 */  addu       $s1, $v0, $zero
/* 7BC78 8007B078 00021400 */  sll        $v0, $v0, 0x10
/* 7BC7C 8007B07C 00021403 */  sra        $v0, $v0, 0x10
/* 7BC80 8007B080 0053102A */  slt        $v0, $v0, $s3
/* 7BC84 8007B084 1440FFE3 */  bnez       $v0, .L8007B014
/* 7BC88 8007B088 26300001 */   addiu     $s0, $s1, 1
/* 7BC8C 8007B08C 0801EC4A */  j          .L8007B128
/* 7BC90 8007B090 24020001 */   addiu     $v0, $zero, 1
.L8007B094:
/* 7BC94 8007B094 86420004 */  lh         $v0, 4($s2)
/* 7BC98 8007B098 2442FFCE */  addiu      $v0, $v0, -0x32
/* 7BC9C 8007B09C 000218C0 */  sll        $v1, $v0, 3
/* 7BCA0 8007B0A0 00621821 */  addu       $v1, $v1, $v0
/* 7BCA4 8007B0A4 00031840 */  sll        $v1, $v1, 1
/* 7BCA8 8007B0A8 44836000 */  mtc1       $v1, $f12
/* 7BCAC 8007B0AC 00000000 */  nop
/* 7BCB0 8007B0B0 46806320 */  cvt.s.w    $f12, $f12
/* 7BCB4 8007B0B4 0C02BAB0 */  jal        func_800AEAC0
/* 7BCB8 8007B0B8 00008821 */   addu      $s1, $zero, $zero
/* 7BCBC 8007B0BC 3C013F80 */  lui        $at, 0x3f80
/* 7BCC0 8007B0C0 44811000 */  mtc1       $at, $f2
/* 7BCC4 8007B0C4 00000000 */  nop
/* 7BCC8 8007B0C8 13C00016 */  beqz       $fp, .L8007B124
/* 7BCCC 8007B0CC 46020580 */   add.s     $f22, $f0, $f2
/* 7BCD0 8007B0D0 03C09821 */  addu       $s3, $fp, $zero
/* 7BCD4 8007B0D4 26310001 */  addiu      $s1, $s1, 1
.L8007B0D8:
/* 7BCD8 8007B0D8 00118400 */  sll        $s0, $s1, 0x10
/* 7BCDC 8007B0DC 00108403 */  sra        $s0, $s0, 0x10
/* 7BCE0 8007B0E0 8644001A */  lh         $a0, 0x1a($s2)
/* 7BCE4 8007B0E4 4406B000 */  mfc1       $a2, $f22
/* 7BCE8 8007B0E8 4407B000 */  mfc1       $a3, $f22
/* 7BCEC 8007B0EC 00000000 */  nop
/* 7BCF0 8007B0F0 0C019CD5 */  jal        func_80067354
/* 7BCF4 8007B0F4 02002821 */   addu      $a1, $s0, $zero
/* 7BCF8 8007B0F8 0213802A */  slt        $s0, $s0, $s3
/* 7BCFC 8007B0FC 1600FFF6 */  bnez       $s0, .L8007B0D8
/* 7BD00 8007B100 26310001 */   addiu     $s1, $s1, 1
/* 7BD04 8007B104 0801EC4A */  j          .L8007B128
/* 7BD08 8007B108 24020001 */   addiu     $v0, $zero, 1
.L8007B10C:
/* 7BD0C 8007B10C 86420004 */  lh         $v0, 4($s2)
/* 7BD10 8007B110 28420051 */  slti       $v0, $v0, 0x51
/* 7BD14 8007B114 14400004 */  bnez       $v0, .L8007B128
/* 7BD18 8007B118 24020001 */   addiu     $v0, $zero, 1
/* 7BD1C 8007B11C 24020002 */  addiu      $v0, $zero, 2
/* 7BD20 8007B120 A2420001 */  sb         $v0, 1($s2)
.L8007B124:
/* 7BD24 8007B124 24020001 */  addiu      $v0, $zero, 1
.L8007B128:
/* 7BD28 8007B128 8FBF0054 */  lw         $ra, 0x54($sp)
/* 7BD2C 8007B12C 8FBE0050 */  lw         $fp, 0x50($sp)
/* 7BD30 8007B130 8FB7004C */  lw         $s7, 0x4c($sp)
/* 7BD34 8007B134 8FB60048 */  lw         $s6, 0x48($sp)
/* 7BD38 8007B138 8FB50044 */  lw         $s5, 0x44($sp)
/* 7BD3C 8007B13C 8FB40040 */  lw         $s4, 0x40($sp)
/* 7BD40 8007B140 8FB3003C */  lw         $s3, 0x3c($sp)
/* 7BD44 8007B144 8FB20038 */  lw         $s2, 0x38($sp)
/* 7BD48 8007B148 8FB10034 */  lw         $s1, 0x34($sp)
/* 7BD4C 8007B14C 8FB00030 */  lw         $s0, 0x30($sp)
/* 7BD50 8007B150 D7BA0070 */  ldc1       $f26, 0x70($sp)
/* 7BD54 8007B154 D7B80068 */  ldc1       $f24, 0x68($sp)
/* 7BD58 8007B158 D7B60060 */  ldc1       $f22, 0x60($sp)
/* 7BD5C 8007B15C D7B40058 */  ldc1       $f20, 0x58($sp)
/* 7BD60 8007B160 03E00008 */  jr         $ra
/* 7BD64 8007B164 27BD0078 */   addiu     $sp, $sp, 0x78
