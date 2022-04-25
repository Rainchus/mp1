	.set noat
	.set noreorder

glabel func_8004BA04
/* 4C604 8004BA04 27BDFF68 */  addiu      $sp, $sp, -0x98
/* 4C608 8004BA08 AFBF008C */  sw         $ra, 0x8c($sp)
/* 4C60C 8004BA0C AFBE0088 */  sw         $fp, 0x88($sp)
/* 4C610 8004BA10 AFB70084 */  sw         $s7, 0x84($sp)
/* 4C614 8004BA14 AFB60080 */  sw         $s6, 0x80($sp)
/* 4C618 8004BA18 AFB5007C */  sw         $s5, 0x7c($sp)
/* 4C61C 8004BA1C AFB40078 */  sw         $s4, 0x78($sp)
/* 4C620 8004BA20 AFB30074 */  sw         $s3, 0x74($sp)
/* 4C624 8004BA24 AFB20070 */  sw         $s2, 0x70($sp)
/* 4C628 8004BA28 AFB1006C */  sw         $s1, 0x6c($sp)
/* 4C62C 8004BA2C AFB00068 */  sw         $s0, 0x68($sp)
/* 4C630 8004BA30 F7B40090 */  sdc1       $f20, 0x90($sp)
/* 4C634 8004BA34 00808821 */  addu       $s1, $a0, $zero
/* 4C638 8004BA38 30C600FF */  andi       $a2, $a2, 0xff
/* 4C63C 8004BA3C 14C000DE */  bnez       $a2, .L8004BDB8
/* 4C640 8004BA40 AFA50054 */   sw        $a1, 0x54($sp)
/* 4C644 8004BA44 3C02800F */  lui        $v0, %hi(D_800F3290)
/* 4C648 8004BA48 94423290 */  lhu        $v0, %lo(D_800F3290)($v0)
/* 4C64C 8004BA4C 104000DA */  beqz       $v0, .L8004BDB8
/* 4C650 8004BA50 00002021 */   addu      $a0, $zero, $zero
/* 4C654 8004BA54 8E230000 */  lw         $v1, ($s1)
/* 4C658 8004BA58 24620008 */  addiu      $v0, $v1, 8
/* 4C65C 8004BA5C AE220000 */  sw         $v0, ($s1)
/* 4C660 8004BA60 3C02DE00 */  lui        $v0, 0xde00
/* 4C664 8004BA64 AC620000 */  sw         $v0, ($v1)
/* 4C668 8004BA68 3C02800C */  lui        $v0, %hi(D_800C5120)
/* 4C66C 8004BA6C 24425120 */  addiu      $v0, $v0, %lo(D_800C5120)
/* 4C670 8004BA70 AC620004 */  sw         $v0, 4($v1)
/* 4C674 8004BA74 0C007596 */  jal        func_8001D658
/* 4C678 8004BA78 02202821 */   addu      $a1, $s1, $zero
/* 4C67C 8004BA7C 00002021 */  addu       $a0, $zero, $zero
/* 4C680 8004BA80 0C0075F7 */  jal        func_8001D7DC
/* 4C684 8004BA84 02202821 */   addu      $a1, $s1, $zero
/* 4C688 8004BA88 3C03800E */  lui        $v1, %hi(D_800D8140)
/* 4C68C 8004BA8C 84638140 */  lh         $v1, %lo(D_800D8140)($v1)
/* 4C690 8004BA90 10600005 */  beqz       $v1, .L8004BAA8
/* 4C694 8004BA94 24020001 */   addiu     $v0, $zero, 1
/* 4C698 8004BA98 10620009 */  beq        $v1, $v0, .L8004BAC0
/* 4C69C 8004BA9C 24020020 */   addiu     $v0, $zero, 0x20
/* 4C6A0 8004BAA0 08012EB6 */  j          .L8004BAD8
/* 4C6A4 8004BAA4 00000000 */   nop
.L8004BAA8:
/* 4C6A8 8004BAA8 3C16000C */  lui        $s6, 0xc
/* 4C6AC 8004BAAC 26D650A0 */  addiu      $s6, $s6, 0x50a0
/* 4C6B0 8004BAB0 3C1E800C */  lui        $fp, %hi(D_800C504C)
/* 4C6B4 8004BAB4 27DE504C */  addiu      $fp, $fp, %lo(D_800C504C)
/* 4C6B8 8004BAB8 08012EBA */  j          .L8004BAE8
/* 4C6BC 8004BABC 24020020 */   addiu     $v0, $zero, 0x20
.L8004BAC0:
/* 4C6C0 8004BAC0 3C16000C */  lui        $s6, 0xc
/* 4C6C4 8004BAC4 26D650E0 */  addiu      $s6, $s6, 0x50e0
/* 4C6C8 8004BAC8 3C1E800C */  lui        $fp, %hi(D_800C504C)
/* 4C6CC 8004BACC 27DE504C */  addiu      $fp, $fp, %lo(D_800C504C)
/* 4C6D0 8004BAD0 08012EBA */  j          .L8004BAE8
/* 4C6D4 8004BAD4 24020008 */   addiu     $v0, $zero, 8
.L8004BAD8:
/* 4C6D8 8004BAD8 3C16000C */  lui        $s6, 0xc
/* 4C6DC 8004BADC 26D650A0 */  addiu      $s6, $s6, 0x50a0
/* 4C6E0 8004BAE0 3C1E800C */  lui        $fp, %hi(D_800C5074)
/* 4C6E4 8004BAE4 27DE5074 */  addiu      $fp, $fp, %lo(D_800C5074)
.L8004BAE8:
/* 4C6E8 8004BAE8 00009821 */  addu       $s3, $zero, $zero
/* 4C6EC 8004BAEC 0040A821 */  addu       $s5, $v0, $zero
/* 4C6F0 8004BAF0 0002A042 */  srl        $s4, $v0, 1
/* 4C6F4 8004BAF4 02B50018 */  mult       $s5, $s5
/* 4C6F8 8004BAF8 00004012 */  mflo       $t0
/* 4C6FC 8004BAFC AFA8005C */  sw         $t0, 0x5c($sp)
/* 4C700 8004BB00 26A2FFFF */  addiu      $v0, $s5, -1
/* 4C704 8004BB04 00021080 */  sll        $v0, $v0, 2
/* 4C708 8004BB08 30570FFF */  andi       $s7, $v0, 0xfff
.L8004BB0C:
/* 4C70C 8004BB0C 3C02800E */  lui        $v0, %hi(D_800D8118)
/* 4C710 8004BB10 24428118 */  addiu      $v0, $v0, %lo(D_800D8118)
/* 4C714 8004BB14 00131880 */  sll        $v1, $s3, 2
/* 4C718 8004BB18 00622021 */  addu       $a0, $v1, $v0
/* 4C71C 8004BB1C 8C820000 */  lw         $v0, ($a0)
/* 4C720 8004BB20 104000A1 */  beqz       $v0, .L8004BDA8
/* 4C724 8004BB24 007E1021 */   addu      $v0, $v1, $fp
/* 4C728 8004BB28 C4540000 */  lwc1       $f20, ($v0)
/* 4C72C 8004BB2C 8E230000 */  lw         $v1, ($s1)
/* 4C730 8004BB30 24620008 */  addiu      $v0, $v1, 8
/* 4C734 8004BB34 AE220000 */  sw         $v0, ($s1)
/* 4C738 8004BB38 3C02FD18 */  lui        $v0, %hi(D_FD180010)
/* 4C73C 8004BB3C AC620000 */  sw         $v0, ($v1)
/* 4C740 8004BB40 8C820000 */  lw         $v0, ($a0)
/* 4C744 8004BB44 24420010 */  addiu      $v0, $v0, %lo(D_FD180010)
/* 4C748 8004BB48 AC620004 */  sw         $v0, 4($v1)
/* 4C74C 8004BB4C 8E230000 */  lw         $v1, ($s1)
/* 4C750 8004BB50 24620008 */  addiu      $v0, $v1, 8
/* 4C754 8004BB54 AE220000 */  sw         $v0, ($s1)
/* 4C758 8004BB58 3C08F518 */  lui        $t0, 0xf518
/* 4C75C 8004BB5C AC680000 */  sw         $t0, ($v1)
/* 4C760 8004BB60 3C020708 */  lui        $v0, 0x708
/* 4C764 8004BB64 34420200 */  ori        $v0, $v0, 0x200
/* 4C768 8004BB68 AC620004 */  sw         $v0, 4($v1)
/* 4C76C 8004BB6C 8E230000 */  lw         $v1, ($s1)
/* 4C770 8004BB70 24620008 */  addiu      $v0, $v1, 8
/* 4C774 8004BB74 AE220000 */  sw         $v0, ($s1)
/* 4C778 8004BB78 3C02E600 */  lui        $v0, 0xe600
/* 4C77C 8004BB7C AC620000 */  sw         $v0, ($v1)
/* 4C780 8004BB80 AC600004 */  sw         $zero, 4($v1)
/* 4C784 8004BB84 8E230000 */  lw         $v1, ($s1)
/* 4C788 8004BB88 24620008 */  addiu      $v0, $v1, 8
/* 4C78C 8004BB8C AE220000 */  sw         $v0, ($s1)
/* 4C790 8004BB90 00603021 */  addu       $a2, $v1, $zero
/* 4C794 8004BB94 3C02F300 */  lui        $v0, 0xf300
/* 4C798 8004BB98 ACC20000 */  sw         $v0, ($a2)
/* 4C79C 8004BB9C 1A800002 */  blez       $s4, .L8004BBA8
/* 4C7A0 8004BBA0 24040800 */   addiu     $a0, $zero, 0x800
/* 4C7A4 8004BBA4 268407FF */  addiu      $a0, $s4, 0x7ff
.L8004BBA8:
/* 4C7A8 8004BBA8 8FA8005C */  lw         $t0, 0x5c($sp)
/* 4C7AC 8004BBAC 2503FFFF */  addiu      $v1, $t0, -1
/* 4C7B0 8004BBB0 28620800 */  slti       $v0, $v1, 0x800
/* 4C7B4 8004BBB4 50400001 */  beql       $v0, $zero, .L8004BBBC
/* 4C7B8 8004BBB8 240307FF */   addiu     $v1, $zero, 0x7ff
.L8004BBBC:
/* 4C7BC 8004BBBC 30620FFF */  andi       $v0, $v1, 0xfff
/* 4C7C0 8004BBC0 00021300 */  sll        $v0, $v0, 0xc
/* 4C7C4 8004BBC4 3C030700 */  lui        $v1, 0x700
/* 4C7C8 8004BBC8 1A800010 */  blez       $s4, .L8004BC0C
/* 4C7CC 8004BBCC 00432825 */   or        $a1, $v0, $v1
/* 4C7D0 8004BBD0 0094001A */  div        $zero, $a0, $s4
/* 4C7D4 8004BBD4 16800002 */  bnez       $s4, .L8004BBE0
/* 4C7D8 8004BBD8 00000000 */   nop
/* 4C7DC 8004BBDC 0007000D */  break      7
.L8004BBE0:
/* 4C7E0 8004BBE0 2401FFFF */   addiu     $at, $zero, -1
/* 4C7E4 8004BBE4 16810004 */  bne        $s4, $at, .L8004BBF8
/* 4C7E8 8004BBE8 3C018000 */   lui       $at, 0x8000
/* 4C7EC 8004BBEC 14810002 */  bne        $a0, $at, .L8004BBF8
/* 4C7F0 8004BBF0 00000000 */   nop
/* 4C7F4 8004BBF4 0006000D */  break      6
.L8004BBF8:
/* 4C7F8 8004BBF8 00001012 */   mflo      $v0
/* 4C7FC 8004BBFC 00000000 */  nop
/* 4C800 8004BC00 00000000 */  nop
/* 4C804 8004BC04 08012F04 */  j          .L8004BC10
/* 4C808 8004BC08 30420FFF */   andi      $v0, $v0, 0xfff
.L8004BC0C:
/* 4C80C 8004BC0C 30820FFF */  andi       $v0, $a0, 0xfff
.L8004BC10:
/* 4C810 8004BC10 00A21025 */  or         $v0, $a1, $v0
/* 4C814 8004BC14 ACC20004 */  sw         $v0, 4($a2)
/* 4C818 8004BC18 8E230000 */  lw         $v1, ($s1)
/* 4C81C 8004BC1C 24620008 */  addiu      $v0, $v1, 8
/* 4C820 8004BC20 AE220000 */  sw         $v0, ($s1)
/* 4C824 8004BC24 3C02E700 */  lui        $v0, 0xe700
/* 4C828 8004BC28 AC620000 */  sw         $v0, ($v1)
/* 4C82C 8004BC2C AC600004 */  sw         $zero, 4($v1)
/* 4C830 8004BC30 8E230000 */  lw         $v1, ($s1)
/* 4C834 8004BC34 24620008 */  addiu      $v0, $v1, 8
/* 4C838 8004BC38 AE220000 */  sw         $v0, ($s1)
/* 4C83C 8004BC3C 001511C0 */  sll        $v0, $s5, 7
/* 4C840 8004BC40 3C08F518 */  lui        $t0, 0xf518
/* 4C844 8004BC44 00481025 */  or         $v0, $v0, $t0
/* 4C848 8004BC48 AC620000 */  sw         $v0, ($v1)
/* 4C84C 8004BC4C 3C020008 */  lui        $v0, 8
/* 4C850 8004BC50 34420200 */  ori        $v0, $v0, 0x200
/* 4C854 8004BC54 AC620004 */  sw         $v0, 4($v1)
/* 4C858 8004BC58 8E230000 */  lw         $v1, ($s1)
/* 4C85C 8004BC5C 24620008 */  addiu      $v0, $v1, 8
/* 4C860 8004BC60 AE220000 */  sw         $v0, ($s1)
/* 4C864 8004BC64 3C02F200 */  lui        $v0, 0xf200
/* 4C868 8004BC68 AC620000 */  sw         $v0, ($v1)
/* 4C86C 8004BC6C 00171300 */  sll        $v0, $s7, 0xc
/* 4C870 8004BC70 00571025 */  or         $v0, $v0, $s7
/* 4C874 8004BC74 AC620004 */  sw         $v0, 4($v1)
/* 4C878 8004BC78 3C02800E */  lui        $v0, %hi(D_800D8100)
/* 4C87C 8004BC7C 94428100 */  lhu        $v0, %lo(D_800D8100)($v0)
/* 4C880 8004BC80 18400049 */  blez       $v0, .L8004BDA8
/* 4C884 8004BC84 00009021 */   addu      $s2, $zero, $zero
/* 4C888 8004BC88 00122400 */  sll        $a0, $s2, 0x10
.L8004BC8C:
/* 4C88C 8004BC8C 0C01307B */  jal        func_8004C1EC
/* 4C890 8004BC90 00042403 */   sra       $a0, $a0, 0x10
/* 4C894 8004BC94 00408021 */  addu       $s0, $v0, $zero
/* 4C898 8004BC98 92020001 */  lbu        $v0, 1($s0)
/* 4C89C 8004BC9C 5453003D */  bnel       $v0, $s3, .L8004BD94
/* 4C8A0 8004BCA0 26520001 */   addiu     $s2, $s2, 1
/* 4C8A4 8004BCA4 92020000 */  lbu        $v0, ($s0)
/* 4C8A8 8004BCA8 30420001 */  andi       $v0, $v0, 1
/* 4C8AC 8004BCAC 10400038 */  beqz       $v0, .L8004BD90
/* 4C8B0 8004BCB0 27A40010 */   addiu     $a0, $sp, 0x10
/* 4C8B4 8004BCB4 8FA80054 */  lw         $t0, 0x54($sp)
/* 4C8B8 8004BCB8 0C0282E4 */  jal        func_800A0B90
/* 4C8BC 8004BCBC 25050040 */   addiu     $a1, $t0, 0x40
/* 4C8C0 8004BCC0 8E050004 */  lw         $a1, 4($s0)
/* 4C8C4 8004BCC4 8E060008 */  lw         $a2, 8($s0)
/* 4C8C8 8004BCC8 8E07000C */  lw         $a3, 0xc($s0)
/* 4C8CC 8004BCCC 0C0088E4 */  jal        func_80022390
/* 4C8D0 8004BCD0 27A40010 */   addiu     $a0, $sp, 0x10
/* 4C8D4 8004BCD4 C6000010 */  lwc1       $f0, 0x10($s0)
/* 4C8D8 8004BCD8 C6020018 */  lwc1       $f2, 0x18($s0)
/* 4C8DC 8004BCDC 4600A002 */  mul.s      $f0, $f20, $f0
/* 4C8E0 8004BCE0 44050000 */  mfc1       $a1, $f0
/* 4C8E4 8004BCE4 3C063F80 */  lui        $a2, 0x3f80
/* 4C8E8 8004BCE8 4602A082 */  mul.s      $f2, $f20, $f2
/* 4C8EC 8004BCEC 44071000 */  mfc1       $a3, $f2
/* 4C8F0 8004BCF0 00000000 */  nop
/* 4C8F4 8004BCF4 0C008914 */  jal        func_80022450
/* 4C8F8 8004BCF8 27A40010 */   addiu     $a0, $sp, 0x10
/* 4C8FC 8004BCFC 3C10800F */  lui        $s0, %hi(D_800ED52C)
/* 4C900 8004BD00 9610D52C */  lhu        $s0, %lo(D_800ED52C)($s0)
/* 4C904 8004BD04 26020001 */  addiu      $v0, $s0, 1
/* 4C908 8004BD08 3C01800F */  lui        $at, %hi(D_800ED52C)
/* 4C90C 8004BD0C A422D52C */  sh         $v0, %lo(D_800ED52C)($at)
/* 4C910 8004BD10 00108400 */  sll        $s0, $s0, 0x10
/* 4C914 8004BD14 00108283 */  sra        $s0, $s0, 0xa
/* 4C918 8004BD18 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 4C91C 8004BD1C 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 4C920 8004BD20 02028021 */  addu       $s0, $s0, $v0
/* 4C924 8004BD24 27A40010 */  addiu      $a0, $sp, 0x10
/* 4C928 8004BD28 0C028288 */  jal        func_800A0A20
/* 4C92C 8004BD2C 02002821 */   addu      $a1, $s0, $zero
/* 4C930 8004BD30 8E230000 */  lw         $v1, ($s1)
/* 4C934 8004BD34 24620008 */  addiu      $v0, $v1, 8
/* 4C938 8004BD38 AE220000 */  sw         $v0, ($s1)
/* 4C93C 8004BD3C 3C02DA38 */  lui        $v0, 0xda38
/* 4C940 8004BD40 34420003 */  ori        $v0, $v0, 3
/* 4C944 8004BD44 AC620000 */  sw         $v0, ($v1)
/* 4C948 8004BD48 3C028000 */  lui        $v0, 0x8000
/* 4C94C 8004BD4C 02028023 */  subu       $s0, $s0, $v0
/* 4C950 8004BD50 AC700004 */  sw         $s0, 4($v1)
/* 4C954 8004BD54 8E230000 */  lw         $v1, ($s1)
/* 4C958 8004BD58 24620008 */  addiu      $v0, $v1, 8
/* 4C95C 8004BD5C AE220000 */  sw         $v0, ($s1)
/* 4C960 8004BD60 3C020100 */  lui        $v0, 0x100
/* 4C964 8004BD64 34424008 */  ori        $v0, $v0, 0x4008
/* 4C968 8004BD68 AC620000 */  sw         $v0, ($v1)
/* 4C96C 8004BD6C AC760004 */  sw         $s6, 4($v1)
/* 4C970 8004BD70 8E230000 */  lw         $v1, ($s1)
/* 4C974 8004BD74 24620008 */  addiu      $v0, $v1, 8
/* 4C978 8004BD78 AE220000 */  sw         $v0, ($s1)
/* 4C97C 8004BD7C 3C020600 */  lui        $v0, 0x600
/* 4C980 8004BD80 34420204 */  ori        $v0, $v0, 0x204
/* 4C984 8004BD84 AC620000 */  sw         $v0, ($v1)
/* 4C988 8004BD88 24020406 */  addiu      $v0, $zero, 0x406
/* 4C98C 8004BD8C AC620004 */  sw         $v0, 4($v1)
.L8004BD90:
/* 4C990 8004BD90 26520001 */  addiu      $s2, $s2, 1
.L8004BD94:
/* 4C994 8004BD94 3C02800E */  lui        $v0, %hi(D_800D8100)
/* 4C998 8004BD98 94428100 */  lhu        $v0, %lo(D_800D8100)($v0)
/* 4C99C 8004BD9C 0242102A */  slt        $v0, $s2, $v0
/* 4C9A0 8004BDA0 1440FFBA */  bnez       $v0, .L8004BC8C
/* 4C9A4 8004BDA4 00122400 */   sll       $a0, $s2, 0x10
.L8004BDA8:
/* 4C9A8 8004BDA8 26730001 */  addiu      $s3, $s3, 1
/* 4C9AC 8004BDAC 2A62000A */  slti       $v0, $s3, 0xa
/* 4C9B0 8004BDB0 1440FF56 */  bnez       $v0, .L8004BB0C
/* 4C9B4 8004BDB4 00000000 */   nop
.L8004BDB8:
/* 4C9B8 8004BDB8 8FBF008C */  lw         $ra, 0x8c($sp)
/* 4C9BC 8004BDBC 8FBE0088 */  lw         $fp, 0x88($sp)
/* 4C9C0 8004BDC0 8FB70084 */  lw         $s7, 0x84($sp)
/* 4C9C4 8004BDC4 8FB60080 */  lw         $s6, 0x80($sp)
/* 4C9C8 8004BDC8 8FB5007C */  lw         $s5, 0x7c($sp)
/* 4C9CC 8004BDCC 8FB40078 */  lw         $s4, 0x78($sp)
/* 4C9D0 8004BDD0 8FB30074 */  lw         $s3, 0x74($sp)
/* 4C9D4 8004BDD4 8FB20070 */  lw         $s2, 0x70($sp)
/* 4C9D8 8004BDD8 8FB1006C */  lw         $s1, 0x6c($sp)
/* 4C9DC 8004BDDC 8FB00068 */  lw         $s0, 0x68($sp)
/* 4C9E0 8004BDE0 D7B40090 */  ldc1       $f20, 0x90($sp)
/* 4C9E4 8004BDE4 03E00008 */  jr         $ra
/* 4C9E8 8004BDE8 27BD0098 */   addiu     $sp, $sp, 0x98
