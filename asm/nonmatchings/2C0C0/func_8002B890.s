	.set noat
	.set noreorder

glabel func_8002B890
/* 2C490 8002B890 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 2C494 8002B894 AFBF0034 */  sw         $ra, 0x34($sp)
/* 2C498 8002B898 AFBE0030 */  sw         $fp, 0x30($sp)
/* 2C49C 8002B89C AFB7002C */  sw         $s7, 0x2c($sp)
/* 2C4A0 8002B8A0 AFB60028 */  sw         $s6, 0x28($sp)
/* 2C4A4 8002B8A4 AFB50024 */  sw         $s5, 0x24($sp)
/* 2C4A8 8002B8A8 AFB40020 */  sw         $s4, 0x20($sp)
/* 2C4AC 8002B8AC AFB3001C */  sw         $s3, 0x1c($sp)
/* 2C4B0 8002B8B0 AFB20018 */  sw         $s2, 0x18($sp)
/* 2C4B4 8002B8B4 AFB10014 */  sw         $s1, 0x14($sp)
/* 2C4B8 8002B8B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 2C4BC 8002B8BC 00809021 */  addu       $s2, $a0, $zero
/* 2C4C0 8002B8C0 8644006A */  lh         $a0, 0x6a($s2)
/* 2C4C4 8002B8C4 108000F7 */  beqz       $a0, .L8002BCA4
/* 2C4C8 8002B8C8 00000000 */   nop
/* 2C4CC 8002B8CC 8642006E */  lh         $v0, 0x6e($s2)
/* 2C4D0 8002B8D0 104000F4 */  beqz       $v0, .L8002BCA4
/* 2C4D4 8002B8D4 00000000 */   nop
/* 2C4D8 8002B8D8 3C1E800F */  lui        $fp, %hi(D_800F37DC)
/* 2C4DC 8002B8DC 8FDE37DC */  lw         $fp, %lo(D_800F37DC)($fp)
/* 2C4E0 8002B8E0 3C17800F */  lui        $s7, %hi(D_800F50BC)
/* 2C4E4 8002B8E4 8EF750BC */  lw         $s7, %lo(D_800F50BC)($s7)
/* 2C4E8 8002B8E8 3C16800F */  lui        $s6, %hi(D_800EE992)
/* 2C4EC 8002B8EC 96D6E992 */  lhu        $s6, %lo(D_800EE992)($s6)
/* 2C4F0 8002B8F0 3C05800F */  lui        $a1, %hi(D_800EE32E)
/* 2C4F4 8002B8F4 84A5E32E */  lh         $a1, %lo(D_800EE32E)($a1)
/* 2C4F8 8002B8F8 0C008DA1 */  jal        func_80023684
/* 2C4FC 8002B8FC 00042080 */   sll       $a0, $a0, 2
/* 2C500 8002B900 AE420000 */  sw         $v0, ($s2)
/* 2C504 8002B904 0C008D9A */  jal        func_80023668
/* 2C508 8002B908 3C040001 */   lui       $a0, 1
/* 2C50C 8002B90C 3C01800F */  lui        $at, %hi(D_800F50BC)
/* 2C510 8002B910 14400007 */  bnez       $v0, .L8002B930
/* 2C514 8002B914 AC2250BC */   sw        $v0, %lo(D_800F50BC)($at)
/* 2C518 8002B918 3C02800F */  lui        $v0, %hi(D_800EE992)
/* 2C51C 8002B91C 8442E992 */  lh         $v0, %lo(D_800EE992)($v0)
/* 2C520 8002B920 00021100 */  sll        $v0, $v0, 4
/* 2C524 8002B924 AE420004 */  sw         $v0, 4($s2)
/* 2C528 8002B928 3C01800F */  lui        $at, %hi(D_800F50BC)
/* 2C52C 8002B92C AC2250BC */  sw         $v0, %lo(D_800F50BC)($at)
.L8002B930:
/* 2C530 8002B930 0C008D9A */  jal        func_80023668
/* 2C534 8002B934 3C040001 */   lui       $a0, 1
/* 2C538 8002B938 0040A021 */  addu       $s4, $v0, $zero
/* 2C53C 8002B93C 16800003 */  bnez       $s4, .L8002B94C
/* 2C540 8002B940 00000000 */   nop
/* 2C544 8002B944 3C14800F */  lui        $s4, %hi(D_800F37DC)
/* 2C548 8002B948 8E9437DC */  lw         $s4, %lo(D_800F37DC)($s4)
.L8002B94C:
/* 2C54C 8002B94C 0C00AF35 */  jal        func_8002BCD4
/* 2C550 8002B950 02402021 */   addu      $a0, $s2, $zero
/* 2C554 8002B954 3C01800F */  lui        $at, %hi(D_800EE992)
/* 2C558 8002B958 A420E992 */  sh         $zero, %lo(D_800EE992)($at)
/* 2C55C 8002B95C 3C01800F */  lui        $at, %hi(D_800F546A)
/* 2C560 8002B960 A420546A */  sh         $zero, %lo(D_800F546A)($at)
/* 2C564 8002B964 0C008CDC */  jal        func_80023370
/* 2C568 8002B968 00009821 */   addu      $s3, $zero, $zero
/* 2C56C 8002B96C 0C00AFB1 */  jal        func_8002BEC4
/* 2C570 8002B970 02402021 */   addu      $a0, $s2, $zero
/* 2C574 8002B974 8642006A */  lh         $v0, 0x6a($s2)
/* 2C578 8002B978 18400095 */  blez       $v0, .L8002BBD0
/* 2C57C 8002B97C 00000000 */   nop
/* 2C580 8002B980 3C150600 */  lui        $s5, 0x600
.L8002B984:
/* 2C584 8002B984 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2C588 8002B988 AC3437DC */  sw         $s4, %lo(D_800F37DC)($at)
/* 2C58C 8002B98C 3C01800F */  lui        $at, %hi(D_800EDEC8)
/* 2C590 8002B990 A420DEC8 */  sh         $zero, %lo(D_800EDEC8)($at)
/* 2C594 8002B994 3C01800F */  lui        $at, %hi(D_800EE732)
/* 2C598 8002B998 A420E732 */  sh         $zero, %lo(D_800EE732)($at)
/* 2C59C 8002B99C 3C01800F */  lui        $at, %hi(D_800EE322)
/* 2C5A0 8002B9A0 A420E322 */  sh         $zero, %lo(D_800EE322)($at)
/* 2C5A4 8002B9A4 24020000 */  addiu      $v0, $zero, 0
/* 2C5A8 8002B9A8 2403FFFF */  addiu      $v1, $zero, -1
/* 2C5AC 8002B9AC 3C01800F */  lui        $at, %hi(D_800F0A60)
/* 2C5B0 8002B9B0 AC220A60 */  sw         $v0, %lo(D_800F0A60)($at)
/* 2C5B4 8002B9B4 3C01800F */  lui        $at, %hi(D_800F0A64)
/* 2C5B8 8002B9B8 AC230A64 */  sw         $v1, %lo(D_800F0A64)($at)
/* 2C5BC 8002B9BC 3C01800F */  lui        $at, %hi(D_800F37B0)
/* 2C5C0 8002B9C0 AC2237B0 */  sw         $v0, %lo(D_800F37B0)($at)
/* 2C5C4 8002B9C4 3C01800F */  lui        $at, %hi(D_800F37B4)
/* 2C5C8 8002B9C8 AC2337B4 */  sw         $v1, %lo(D_800F37B4)($at)
/* 2C5CC 8002B9CC 3C01800F */  lui        $at, %hi(D_800F328C)
/* 2C5D0 8002B9D0 AC20328C */  sw         $zero, %lo(D_800F328C)($at)
/* 2C5D4 8002B9D4 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2C5D8 8002B9D8 248437DC */  addiu      $a0, $a0, %lo(D_800F37DC)
/* 2C5DC 8002B9DC 24050001 */  addiu      $a1, $zero, 1
/* 2C5E0 8002B9E0 0C00CFEC */  jal        func_80033FB0
/* 2C5E4 8002B9E4 00003021 */   addu      $a2, $zero, $zero
/* 2C5E8 8002B9E8 3C02800F */  lui        $v0, %hi(D_800ECB14)
/* 2C5EC 8002B9EC 8C42CB14 */  lw         $v0, %lo(D_800ECB14)($v0)
/* 2C5F0 8002B9F0 30420200 */  andi       $v0, $v0, 0x200
/* 2C5F4 8002B9F4 1040001E */  beqz       $v0, .L8002BA70
/* 2C5F8 8002B9F8 00132C00 */   sll       $a1, $s3, 0x10
/* 2C5FC 8002B9FC 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2C600 8002BA00 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 2C604 8002BA04 24820008 */  addiu      $v0, $a0, 8
/* 2C608 8002BA08 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2C60C 8002BA0C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2C610 8002BA10 3C03800F */  lui        $v1, %hi(D_800EE9A0)
/* 2C614 8002BA14 8463E9A0 */  lh         $v1, %lo(D_800EE9A0)($v1)
/* 2C618 8002BA18 24630001 */  addiu      $v1, $v1, 1
/* 2C61C 8002BA1C 00031040 */  sll        $v0, $v1, 1
/* 2C620 8002BA20 00431021 */  addu       $v0, $v0, $v1
/* 2C624 8002BA24 24420003 */  addiu      $v0, $v0, 3
/* 2C628 8002BA28 304200FF */  andi       $v0, $v0, 0xff
/* 2C62C 8002BA2C 00021200 */  sll        $v0, $v0, 8
/* 2C630 8002BA30 3C03DC08 */  lui        $v1, 0xdc08
/* 2C634 8002BA34 3463000A */  ori        $v1, $v1, 0xa
/* 2C638 8002BA38 00431025 */  or         $v0, $v0, $v1
/* 2C63C 8002BA3C AC820000 */  sw         $v0, ($a0)
/* 2C640 8002BA40 3C03800F */  lui        $v1, %hi(D_800ECB28)
/* 2C644 8002BA44 8C63CB28 */  lw         $v1, %lo(D_800ECB28)($v1)
/* 2C648 8002BA48 AC830004 */  sw         $v1, 4($a0)
/* 2C64C 8002BA4C 90620000 */  lbu        $v0, ($v1)
/* 2C650 8002BA50 3C01800F */  lui        $at, %hi(D_800F3760)
/* 2C654 8002BA54 A4223760 */  sh         $v0, %lo(D_800F3760)($at)
/* 2C658 8002BA58 90620001 */  lbu        $v0, 1($v1)
/* 2C65C 8002BA5C 3C01800F */  lui        $at, %hi(D_800F37D0)
/* 2C660 8002BA60 A42237D0 */  sh         $v0, %lo(D_800F37D0)($at)
/* 2C664 8002BA64 90620002 */  lbu        $v0, 2($v1)
/* 2C668 8002BA68 3C01800F */  lui        $at, %hi(D_800EDEB2)
/* 2C66C 8002BA6C A422DEB2 */  sh         $v0, %lo(D_800EDEB2)($at)
.L8002BA70:
/* 2C670 8002BA70 00052C03 */  sra        $a1, $a1, 0x10
/* 2C674 8002BA74 8E430080 */  lw         $v1, 0x80($s2)
/* 2C678 8002BA78 00051040 */  sll        $v0, $a1, 1
/* 2C67C 8002BA7C 00451021 */  addu       $v0, $v0, $a1
/* 2C680 8002BA80 000210C0 */  sll        $v0, $v0, 3
/* 2C684 8002BA84 00451023 */  subu       $v0, $v0, $a1
/* 2C688 8002BA88 00028880 */  sll        $s1, $v0, 2
/* 2C68C 8002BA8C 02231821 */  addu       $v1, $s1, $v1
/* 2C690 8002BA90 8C700014 */  lw         $s0, 0x14($v1)
/* 2C694 8002BA94 3C02800F */  lui        $v0, %hi(D_800EE992)
/* 2C698 8002BA98 9442E992 */  lhu        $v0, %lo(D_800EE992)($v0)
/* 2C69C 8002BA9C A462000A */  sh         $v0, 0xa($v1)
/* 2C6A0 8002BAA0 8E420080 */  lw         $v0, 0x80($s2)
/* 2C6A4 8002BAA4 02221021 */  addu       $v0, $s1, $v0
/* 2C6A8 8002BAA8 3C03800F */  lui        $v1, %hi(D_800F546A)
/* 2C6AC 8002BAAC 9463546A */  lhu        $v1, %lo(D_800F546A)($v1)
/* 2C6B0 8002BAB0 A443000E */  sh         $v1, 0xe($v0)
/* 2C6B4 8002BAB4 8E440080 */  lw         $a0, 0x80($s2)
/* 2C6B8 8002BAB8 02242021 */  addu       $a0, $s1, $a0
/* 2C6BC 8002BABC 8C820014 */  lw         $v0, 0x14($a0)
/* 2C6C0 8002BAC0 3C03F9FF */  lui        $v1, 0xf9ff
/* 2C6C4 8002BAC4 3463FFFF */  ori        $v1, $v1, 0xffff
/* 2C6C8 8002BAC8 00431024 */  and        $v0, $v0, $v1
/* 2C6CC 8002BACC AC820014 */  sw         $v0, 0x14($a0)
/* 2C6D0 8002BAD0 0C00B721 */  jal        func_8002DC84
/* 2C6D4 8002BAD4 02402021 */   addu      $a0, $s2, $zero
/* 2C6D8 8002BAD8 02158024 */  and        $s0, $s0, $s5
/* 2C6DC 8002BADC 52000007 */  beql       $s0, $zero, .L8002BAFC
/* 2C6E0 8002BAE0 00138C00 */   sll       $s1, $s3, 0x10
/* 2C6E4 8002BAE4 8E430080 */  lw         $v1, 0x80($s2)
/* 2C6E8 8002BAE8 02231821 */  addu       $v1, $s1, $v1
/* 2C6EC 8002BAEC 8C620014 */  lw         $v0, 0x14($v1)
/* 2C6F0 8002BAF0 00551025 */  or         $v0, $v0, $s5
/* 2C6F4 8002BAF4 AC620014 */  sw         $v0, 0x14($v1)
/* 2C6F8 8002BAF8 00138C00 */  sll        $s1, $s3, 0x10
.L8002BAFC:
/* 2C6FC 8002BAFC 00118C03 */  sra        $s1, $s1, 0x10
/* 2C700 8002BB00 8E450080 */  lw         $a1, 0x80($s2)
/* 2C704 8002BB04 00112040 */  sll        $a0, $s1, 1
/* 2C708 8002BB08 00912021 */  addu       $a0, $a0, $s1
/* 2C70C 8002BB0C 000420C0 */  sll        $a0, $a0, 3
/* 2C710 8002BB10 00912023 */  subu       $a0, $a0, $s1
/* 2C714 8002BB14 00042080 */  sll        $a0, $a0, 2
/* 2C718 8002BB18 00852821 */  addu       $a1, $a0, $a1
/* 2C71C 8002BB1C 3C02800F */  lui        $v0, %hi(D_800EE992)
/* 2C720 8002BB20 9442E992 */  lhu        $v0, %lo(D_800EE992)($v0)
/* 2C724 8002BB24 94A3000A */  lhu        $v1, 0xa($a1)
/* 2C728 8002BB28 00431023 */  subu       $v0, $v0, $v1
/* 2C72C 8002BB2C A4A2000C */  sh         $v0, 0xc($a1)
/* 2C730 8002BB30 8E420080 */  lw         $v0, 0x80($s2)
/* 2C734 8002BB34 00822021 */  addu       $a0, $a0, $v0
/* 2C738 8002BB38 3C02800F */  lui        $v0, %hi(D_800F546A)
/* 2C73C 8002BB3C 9442546A */  lhu        $v0, %lo(D_800F546A)($v0)
/* 2C740 8002BB40 9483000E */  lhu        $v1, 0xe($a0)
/* 2C744 8002BB44 00431023 */  subu       $v0, $v0, $v1
/* 2C748 8002BB48 A4820010 */  sh         $v0, 0x10($a0)
/* 2C74C 8002BB4C 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 2C750 8002BB50 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 2C754 8002BB54 24700008 */  addiu      $s0, $v1, 8
/* 2C758 8002BB58 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2C75C 8002BB5C AC3037DC */  sw         $s0, %lo(D_800F37DC)($at)
/* 2C760 8002BB60 3C02DF00 */  lui        $v0, 0xdf00
/* 2C764 8002BB64 AC620000 */  sw         $v0, ($v1)
/* 2C768 8002BB68 AC600004 */  sw         $zero, 4($v1)
/* 2C76C 8002BB6C 02148023 */  subu       $s0, $s0, $s4
/* 2C770 8002BB70 001080C3 */  sra        $s0, $s0, 3
/* 2C774 8002BB74 001080C0 */  sll        $s0, $s0, 3
/* 2C778 8002BB78 3C05800F */  lui        $a1, %hi(D_800EE32E)
/* 2C77C 8002BB7C 84A5E32E */  lh         $a1, %lo(D_800EE32E)($a1)
/* 2C780 8002BB80 0C008DA1 */  jal        func_80023684
/* 2C784 8002BB84 02002021 */   addu      $a0, $s0, $zero
/* 2C788 8002BB88 8E430000 */  lw         $v1, ($s2)
/* 2C78C 8002BB8C 00118880 */  sll        $s1, $s1, 2
/* 2C790 8002BB90 02231821 */  addu       $v1, $s1, $v1
/* 2C794 8002BB94 AC620000 */  sw         $v0, ($v1)
/* 2C798 8002BB98 8E420000 */  lw         $v0, ($s2)
/* 2C79C 8002BB9C 02228821 */  addu       $s1, $s1, $v0
/* 2C7A0 8002BBA0 02802021 */  addu       $a0, $s4, $zero
/* 2C7A4 8002BBA4 8E250000 */  lw         $a1, ($s1)
/* 2C7A8 8002BBA8 0C008E8E */  jal        func_80023A38
/* 2C7AC 8002BBAC 02003021 */   addu      $a2, $s0, $zero
/* 2C7B0 8002BBB0 26620001 */  addiu      $v0, $s3, 1
/* 2C7B4 8002BBB4 00409821 */  addu       $s3, $v0, $zero
/* 2C7B8 8002BBB8 00021400 */  sll        $v0, $v0, 0x10
/* 2C7BC 8002BBBC 00021403 */  sra        $v0, $v0, 0x10
/* 2C7C0 8002BBC0 8643006A */  lh         $v1, 0x6a($s2)
/* 2C7C4 8002BBC4 0043102A */  slt        $v0, $v0, $v1
/* 2C7C8 8002BBC8 1440FF6E */  bnez       $v0, .L8002B984
/* 2C7CC 8002BBCC 00000000 */   nop
.L8002BBD0:
/* 2C7D0 8002BBD0 3C04800F */  lui        $a0, %hi(D_800EE992)
/* 2C7D4 8002BBD4 9484E992 */  lhu        $a0, %lo(D_800EE992)($a0)
/* 2C7D8 8002BBD8 A6440072 */  sh         $a0, 0x72($s2)
/* 2C7DC 8002BBDC 3C02800F */  lui        $v0, %hi(D_800F546A)
/* 2C7E0 8002BBE0 9442546A */  lhu        $v0, %lo(D_800F546A)($v0)
/* 2C7E4 8002BBE4 A6420074 */  sh         $v0, 0x74($s2)
/* 2C7E8 8002BBE8 00042400 */  sll        $a0, $a0, 0x10
/* 2C7EC 8002BBEC 3C05800F */  lui        $a1, %hi(D_800EE32E)
/* 2C7F0 8002BBF0 84A5E32E */  lh         $a1, %lo(D_800EE32E)($a1)
/* 2C7F4 8002BBF4 0C008DA1 */  jal        func_80023684
/* 2C7F8 8002BBF8 00042303 */   sra       $a0, $a0, 0xc
/* 2C7FC 8002BBFC 00408021 */  addu       $s0, $v0, $zero
/* 2C800 8002BC00 3C06800F */  lui        $a2, %hi(D_800EE992)
/* 2C804 8002BC04 84C6E992 */  lh         $a2, %lo(D_800EE992)($a2)
/* 2C808 8002BC08 3C04800F */  lui        $a0, %hi(D_800F50BC)
/* 2C80C 8002BC0C 8C8450BC */  lw         $a0, %lo(D_800F50BC)($a0)
/* 2C810 8002BC10 02002821 */  addu       $a1, $s0, $zero
/* 2C814 8002BC14 0C008E8E */  jal        func_80023A38
/* 2C818 8002BC18 00063100 */   sll       $a2, $a2, 4
/* 2C81C 8002BC1C AE500004 */  sw         $s0, 4($s2)
/* 2C820 8002BC20 0C00AF70 */  jal        func_8002BDC0
/* 2C824 8002BC24 02402021 */   addu      $a0, $s2, $zero
/* 2C828 8002BC28 00009821 */  addu       $s3, $zero, $zero
/* 2C82C 8002BC2C 00131400 */  sll        $v0, $s3, 0x10
.L8002BC30:
/* 2C830 8002BC30 00021383 */  sra        $v0, $v0, 0xe
/* 2C834 8002BC34 00521021 */  addu       $v0, $v0, $s2
/* 2C838 8002BC38 AC500008 */  sw         $s0, 8($v0)
/* 2C83C 8002BC3C 26620001 */  addiu      $v0, $s3, 1
/* 2C840 8002BC40 00409821 */  addu       $s3, $v0, $zero
/* 2C844 8002BC44 00021400 */  sll        $v0, $v0, 0x10
/* 2C848 8002BC48 00021403 */  sra        $v0, $v0, 0x10
/* 2C84C 8002BC4C 28420008 */  slti       $v0, $v0, 8
/* 2C850 8002BC50 1440FFF7 */  bnez       $v0, .L8002BC30
/* 2C854 8002BC54 00131400 */   sll       $v0, $s3, 0x10
/* 2C858 8002BC58 3C02800F */  lui        $v0, %hi(D_800EE992)
/* 2C85C 8002BC5C 8442E992 */  lh         $v0, %lo(D_800EE992)($v0)
/* 2C860 8002BC60 28421000 */  slti       $v0, $v0, 0x1000
/* 2C864 8002BC64 14400004 */  bnez       $v0, .L8002BC78
/* 2C868 8002BC68 00000000 */   nop
/* 2C86C 8002BC6C 3C04800D */  lui        $a0, %hi(D_800CA8F8)
/* 2C870 8002BC70 0C023148 */  jal        func_8008C520
/* 2C874 8002BC74 2484A8F8 */   addiu     $a0, $a0, %lo(D_800CA8F8)
.L8002BC78:
/* 2C878 8002BC78 3C04800F */  lui        $a0, %hi(D_800F50BC)
/* 2C87C 8002BC7C 0C008DCA */  jal        func_80023728
/* 2C880 8002BC80 8C8450BC */   lw        $a0, %lo(D_800F50BC)($a0)
/* 2C884 8002BC84 0C008DCA */  jal        func_80023728
/* 2C888 8002BC88 02802021 */   addu      $a0, $s4, $zero
/* 2C88C 8002BC8C 3C01800F */  lui        $at, %hi(D_800EE992)
/* 2C890 8002BC90 A436E992 */  sh         $s6, %lo(D_800EE992)($at)
/* 2C894 8002BC94 3C01800F */  lui        $at, %hi(D_800F50BC)
/* 2C898 8002BC98 AC3750BC */  sw         $s7, %lo(D_800F50BC)($at)
/* 2C89C 8002BC9C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2C8A0 8002BCA0 AC3E37DC */  sw         $fp, %lo(D_800F37DC)($at)
.L8002BCA4:
/* 2C8A4 8002BCA4 8FBF0034 */  lw         $ra, 0x34($sp)
/* 2C8A8 8002BCA8 8FBE0030 */  lw         $fp, 0x30($sp)
/* 2C8AC 8002BCAC 8FB7002C */  lw         $s7, 0x2c($sp)
/* 2C8B0 8002BCB0 8FB60028 */  lw         $s6, 0x28($sp)
/* 2C8B4 8002BCB4 8FB50024 */  lw         $s5, 0x24($sp)
/* 2C8B8 8002BCB8 8FB40020 */  lw         $s4, 0x20($sp)
/* 2C8BC 8002BCBC 8FB3001C */  lw         $s3, 0x1c($sp)
/* 2C8C0 8002BCC0 8FB20018 */  lw         $s2, 0x18($sp)
/* 2C8C4 8002BCC4 8FB10014 */  lw         $s1, 0x14($sp)
/* 2C8C8 8002BCC8 8FB00010 */  lw         $s0, 0x10($sp)
/* 2C8CC 8002BCCC 03E00008 */  jr         $ra
/* 2C8D0 8002BCD0 27BD0038 */   addiu     $sp, $sp, 0x38
