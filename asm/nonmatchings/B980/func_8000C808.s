	.set noat
	.set noreorder

glabel func_8000C808
/* D408 8000C808 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D40C 8000C80C AFBF0028 */  sw         $ra, 0x28($sp)
/* D410 8000C810 AFB50024 */  sw         $s5, 0x24($sp)
/* D414 8000C814 AFB40020 */  sw         $s4, 0x20($sp)
/* D418 8000C818 AFB3001C */  sw         $s3, 0x1c($sp)
/* D41C 8000C81C AFB20018 */  sw         $s2, 0x18($sp)
/* D420 8000C820 AFB10014 */  sw         $s1, 0x14($sp)
/* D424 8000C824 AFB00010 */  sw         $s0, 0x10($sp)
/* D428 8000C828 00801821 */  addu       $v1, $a0, $zero
/* D42C 8000C82C 00A09821 */  addu       $s3, $a1, $zero
/* D430 8000C830 00E09021 */  addu       $s2, $a3, $zero
/* D434 8000C834 93A40043 */  lbu        $a0, 0x43($sp)
/* D438 8000C838 93B40047 */  lbu        $s4, 0x47($sp)
/* D43C 8000C83C 3C02800D */  lui        $v0, %hi(D_800CDB04)
/* D440 8000C840 8C42DB04 */  lw         $v0, %lo(D_800CDB04)($v0)
/* D444 8000C844 10400114 */  beqz       $v0, .L8000CC98
/* D448 8000C848 0000A821 */   addu      $s5, $zero, $zero
/* D44C 8000C84C 00408821 */  addu       $s1, $v0, $zero
/* D450 8000C850 8E220000 */  lw         $v0, ($s1)
/* D454 8000C854 3C01800D */  lui        $at, %hi(D_800CDB04)
/* D458 8000C858 AC22DB04 */  sw         $v0, %lo(D_800CDB04)($at)
/* D45C 8000C85C A2260004 */  sb         $a2, 4($s1)
/* D460 8000C860 AC710000 */  sw         $s1, ($v1)
/* D464 8000C864 30C200FF */  andi       $v0, $a2, 0xff
/* D468 8000C868 2443FFFF */  addiu      $v1, $v0, -1
/* D46C 8000C86C 2C6200C9 */  sltiu      $v0, $v1, 0xc9
/* D470 8000C870 10400107 */  beqz       $v0, .L8000CC90
/* D474 8000C874 0014AB80 */   sll       $s5, $s4, 0xe
/* D478 8000C878 00031080 */  sll        $v0, $v1, 2
/* D47C 8000C87C 3C01800D */  lui        $at, %hi(D_800C9F90)
/* D480 8000C880 00220821 */  addu       $at, $at, $v0
/* D484 8000C884 8C229F90 */  lw         $v0, %lo(D_800C9F90)($at)
/* D488 8000C888 00400008 */  jr         $v0
/* D48C 8000C88C 00000000 */   nop
/* D490 8000C890 A6200008 */  sh         $zero, 8($s1)
/* D494 8000C894 324300FF */  andi       $v1, $s2, 0xff
/* D498 8000C898 24020103 */  addiu      $v0, $zero, 0x103
/* D49C 8000C89C 00431023 */  subu       $v0, $v0, $v1
/* D4A0 8000C8A0 A6220006 */  sh         $v0, 6($s1)
/* D4A4 8000C8A4 00041842 */  srl        $v1, $a0, 1
/* D4A8 8000C8A8 A223000C */  sb         $v1, 0xc($s1)
/* D4AC 8000C8AC 2402007F */  addiu      $v0, $zero, 0x7f
/* D4B0 8000C8B0 00431023 */  subu       $v0, $v0, $v1
/* D4B4 8000C8B4 08003277 */  j          .L8000C9DC
/* D4B8 8000C8B8 A222000D */   sb        $v0, 0xd($s1)
/* D4BC 8000C8BC A6200008 */  sh         $zero, 8($s1)
/* D4C0 8000C8C0 324300FF */  andi       $v1, $s2, 0xff
/* D4C4 8000C8C4 24020103 */  addiu      $v0, $zero, 0x103
/* D4C8 8000C8C8 00431023 */  subu       $v0, $v0, $v1
/* D4CC 8000C8CC A6220006 */  sh         $v0, 6($s1)
/* D4D0 8000C8D0 00041042 */  srl        $v0, $a0, 1
/* D4D4 8000C8D4 A222000C */  sb         $v0, 0xc($s1)
/* D4D8 8000C8D8 2402007F */  addiu      $v0, $zero, 0x7f
/* D4DC 8000C8DC 0800324D */  j          .L8000C934
/* D4E0 8000C8E0 A222000D */   sb        $v0, 0xd($s1)
/* D4E4 8000C8E4 324300FF */  andi       $v1, $s2, 0xff
/* D4E8 8000C8E8 24020100 */  addiu      $v0, $zero, 0x100
/* D4EC 8000C8EC 00431023 */  subu       $v0, $v0, $v1
/* D4F0 8000C8F0 A6220006 */  sh         $v0, 6($s1)
/* D4F4 8000C8F4 A6220008 */  sh         $v0, 8($s1)
/* D4F8 8000C8F8 A2200005 */  sb         $zero, 5($s1)
/* D4FC 8000C8FC 2402007F */  addiu      $v0, $zero, 0x7f
/* D500 8000C900 00441023 */  subu       $v0, $v0, $a0
/* D504 8000C904 A222000E */  sb         $v0, 0xe($s1)
/* D508 8000C908 2402007F */  addiu      $v0, $zero, 0x7f
/* D50C 8000C90C 0800324C */  j          .L8000C930
/* D510 8000C910 A222000D */   sb        $v0, 0xd($s1)
/* D514 8000C914 324300FF */  andi       $v1, $s2, 0xff
/* D518 8000C918 24020100 */  addiu      $v0, $zero, 0x100
/* D51C 8000C91C 00431023 */  subu       $v0, $v0, $v1
/* D520 8000C920 A6220006 */  sh         $v0, 6($s1)
/* D524 8000C924 A6200008 */  sh         $zero, 8($s1)
/* D528 8000C928 A224000D */  sb         $a0, 0xd($s1)
/* D52C 8000C92C 2402007F */  addiu      $v0, $zero, 0x7f
.L8000C930:
/* D530 8000C930 A222000C */  sb         $v0, 0xc($s1)
.L8000C934:
/* D534 8000C934 3C0142FE */  lui        $at, 0x42fe
/* D538 8000C938 44810000 */  mtc1       $at, $f0
/* D53C 8000C93C 00000000 */  nop
/* D540 8000C940 08003326 */  j          .L8000CC98
/* D544 8000C944 E6600000 */   swc1      $f0, ($s3)
/* D548 8000C948 324300FF */  andi       $v1, $s2, 0xff
/* D54C 8000C94C 24020100 */  addiu      $v0, $zero, 0x100
/* D550 8000C950 00431023 */  subu       $v0, $v0, $v1
/* D554 8000C954 A6220006 */  sh         $v0, 6($s1)
/* D558 8000C958 A6200008 */  sh         $zero, 8($s1)
/* D55C 8000C95C A224000D */  sb         $a0, 0xd($s1)
/* D560 8000C960 2402007F */  addiu      $v0, $zero, 0x7f
/* D564 8000C964 00441023 */  subu       $v0, $v0, $a0
/* D568 8000C968 A222000C */  sb         $v0, 0xc($s1)
/* D56C 8000C96C 08003278 */  j          .L8000C9E0
/* D570 8000C970 9222000C */   lbu       $v0, 0xc($s1)
/* D574 8000C974 324300FF */  andi       $v1, $s2, 0xff
/* D578 8000C978 24020103 */  addiu      $v0, $zero, 0x103
/* D57C 8000C97C 00431023 */  subu       $v0, $v0, $v1
/* D580 8000C980 04410002 */  bgez       $v0, .L8000C98C
/* D584 8000C984 A6200008 */   sh        $zero, 8($s1)
/* D588 8000C988 24420003 */  addiu      $v0, $v0, 3
.L8000C98C:
/* D58C 8000C98C 00021083 */  sra        $v0, $v0, 2
/* D590 8000C990 A6220006 */  sh         $v0, 6($s1)
/* D594 8000C994 00041842 */  srl        $v1, $a0, 1
/* D598 8000C998 A223000C */  sb         $v1, 0xc($s1)
/* D59C 8000C99C 2402007F */  addiu      $v0, $zero, 0x7f
/* D5A0 8000C9A0 08003275 */  j          .L8000C9D4
/* D5A4 8000C9A4 00431023 */   subu      $v0, $v0, $v1
/* D5A8 8000C9A8 324300FF */  andi       $v1, $s2, 0xff
/* D5AC 8000C9AC 24020103 */  addiu      $v0, $zero, 0x103
/* D5B0 8000C9B0 00431023 */  subu       $v0, $v0, $v1
/* D5B4 8000C9B4 04410002 */  bgez       $v0, .L8000C9C0
/* D5B8 8000C9B8 A6200008 */   sh        $zero, 8($s1)
/* D5BC 8000C9BC 24420003 */  addiu      $v0, $v0, 3
.L8000C9C0:
/* D5C0 8000C9C0 00021083 */  sra        $v0, $v0, 2
/* D5C4 8000C9C4 A6220006 */  sh         $v0, 6($s1)
/* D5C8 8000C9C8 00041042 */  srl        $v0, $a0, 1
/* D5CC 8000C9CC A222000C */  sb         $v0, 0xc($s1)
/* D5D0 8000C9D0 2402007F */  addiu      $v0, $zero, 0x7f
.L8000C9D4:
/* D5D4 8000C9D4 A222000D */  sb         $v0, 0xd($s1)
/* D5D8 8000C9D8 A2200005 */  sb         $zero, 5($s1)
.L8000C9DC:
/* D5DC 8000C9DC 9222000D */  lbu        $v0, 0xd($s1)
.L8000C9E0:
/* D5E0 8000C9E0 44820000 */  mtc1       $v0, $f0
/* D5E4 8000C9E4 00000000 */  nop
/* D5E8 8000C9E8 46800020 */  cvt.s.w    $f0, $f0
/* D5EC 8000C9EC 08003326 */  j          .L8000CC98
/* D5F0 8000C9F0 E6600000 */   swc1      $f0, ($s3)
/* D5F4 8000C9F4 0C003586 */  jal        func_8000D618
/* D5F8 8000C9F8 308400FF */   andi      $a0, $a0, 0xff
/* D5FC 8000C9FC E620000C */  swc1       $f0, 0xc($s1)
/* D600 8000CA00 A6200008 */  sh         $zero, 8($s1)
/* D604 8000CA04 324200FF */  andi       $v0, $s2, 0xff
/* D608 8000CA08 24030103 */  addiu      $v1, $zero, 0x103
/* D60C 8000CA0C 00621823 */  subu       $v1, $v1, $v0
/* D610 8000CA10 0800330B */  j          .L8000CC2C
/* D614 8000CA14 A6230006 */   sh        $v1, 6($s1)
/* D618 8000CA18 324300FF */  andi       $v1, $s2, 0xff
/* D61C 8000CA1C 24020100 */  addiu      $v0, $zero, 0x100
/* D620 8000CA20 00431023 */  subu       $v0, $v0, $v1
/* D624 8000CA24 A6220006 */  sh         $v0, 6($s1)
/* D628 8000CA28 A6220008 */  sh         $v0, 8($s1)
/* D62C 8000CA2C A2200005 */  sb         $zero, 5($s1)
/* D630 8000CA30 0C003586 */  jal        func_8000D618
/* D634 8000CA34 308400FF */   andi      $a0, $a0, 0xff
/* D638 8000CA38 4600008D */  trunc.w.s  $f2, $f0
/* D63C 8000CA3C 44101000 */  mfc1       $s0, $f2
/* D640 8000CA40 00000000 */  nop
/* D644 8000CA44 0C022C58 */  jal        func_8008B160
/* D648 8000CA48 00102023 */   negu      $a0, $s0
/* D64C 8000CA4C E620000C */  swc1       $f0, 0xc($s1)
/* D650 8000CA50 0C022C58 */  jal        func_8008B160
/* D654 8000CA54 02002021 */   addu      $a0, $s0, $zero
/* D658 8000CA58 E6200010 */  swc1       $f0, 0x10($s1)
/* D65C 8000CA5C 08003326 */  j          .L8000CC98
/* D660 8000CA60 E6600000 */   swc1      $f0, ($s3)
/* D664 8000CA64 324300FF */  andi       $v1, $s2, 0xff
/* D668 8000CA68 24020100 */  addiu      $v0, $zero, 0x100
/* D66C 8000CA6C 00431023 */  subu       $v0, $v0, $v1
/* D670 8000CA70 A6220006 */  sh         $v0, 6($s1)
/* D674 8000CA74 A6220008 */  sh         $v0, 8($s1)
/* D678 8000CA78 0C003586 */  jal        func_8000D618
/* D67C 8000CA7C 308400FF */   andi      $a0, $a0, 0xff
/* D680 8000CA80 4600008D */  trunc.w.s  $f2, $f0
/* D684 8000CA84 44101000 */  mfc1       $s0, $f2
/* D688 8000CA88 00000000 */  nop
/* D68C 8000CA8C 080032B1 */  j          .L8000CAC4
/* D690 8000CA90 AE30000C */   sw        $s0, 0xc($s1)
/* D694 8000CA94 324300FF */  andi       $v1, $s2, 0xff
/* D698 8000CA98 24020100 */  addiu      $v0, $zero, 0x100
/* D69C 8000CA9C 00431023 */  subu       $v0, $v0, $v1
/* D6A0 8000CAA0 A6220006 */  sh         $v0, 6($s1)
/* D6A4 8000CAA4 A6220008 */  sh         $v0, 8($s1)
/* D6A8 8000CAA8 0C003586 */  jal        func_8000D618
/* D6AC 8000CAAC 308400FF */   andi      $a0, $a0, 0xff
/* D6B0 8000CAB0 4600008D */  trunc.w.s  $f2, $f0
/* D6B4 8000CAB4 44101000 */  mfc1       $s0, $f2
/* D6B8 8000CAB8 00000000 */  nop
/* D6BC 8000CABC 00101023 */  negu       $v0, $s0
/* D6C0 8000CAC0 AE22000C */  sw         $v0, 0xc($s1)
.L8000CAC4:
/* D6C4 8000CAC4 00101040 */  sll        $v0, $s0, 1
/* D6C8 8000CAC8 AE220010 */  sw         $v0, 0x10($s1)
/* D6CC 8000CACC 0C022C58 */  jal        func_8008B160
/* D6D0 8000CAD0 8E24000C */   lw        $a0, 0xc($s1)
/* D6D4 8000CAD4 08003326 */  j          .L8000CC98
/* D6D8 8000CAD8 E6600000 */   swc1      $f0, ($s3)
/* D6DC 8000CADC 324300FF */  andi       $v1, $s2, 0xff
/* D6E0 8000CAE0 24020100 */  addiu      $v0, $zero, 0x100
/* D6E4 8000CAE4 00431023 */  subu       $v0, $v0, $v1
/* D6E8 8000CAE8 A6220006 */  sh         $v0, 6($s1)
/* D6EC 8000CAEC A6220008 */  sh         $v0, 8($s1)
/* D6F0 8000CAF0 A2200005 */  sb         $zero, 5($s1)
/* D6F4 8000CAF4 0C003586 */  jal        func_8000D618
/* D6F8 8000CAF8 308400FF */   andi      $a0, $a0, 0xff
/* D6FC 8000CAFC 4600008D */  trunc.w.s  $f2, $f0
/* D700 8000CB00 44101000 */  mfc1       $s0, $f2
/* D704 8000CB04 00000000 */  nop
/* D708 8000CB08 0C022C58 */  jal        func_8008B160
/* D70C 8000CB0C 00102023 */   negu      $a0, $s0
/* D710 8000CB10 E620000C */  swc1       $f0, 0xc($s1)
/* D714 8000CB14 0C022C58 */  jal        func_8008B160
/* D718 8000CB18 02002021 */   addu      $a0, $s0, $zero
/* D71C 8000CB1C 0800330B */  j          .L8000CC2C
/* D720 8000CB20 E6200010 */   swc1      $f0, 0x10($s1)
/* D724 8000CB24 324300FF */  andi       $v1, $s2, 0xff
/* D728 8000CB28 24020100 */  addiu      $v0, $zero, 0x100
/* D72C 8000CB2C 00431023 */  subu       $v0, $v0, $v1
/* D730 8000CB30 A6220006 */  sh         $v0, 6($s1)
/* D734 8000CB34 A6220008 */  sh         $v0, 8($s1)
/* D738 8000CB38 24020001 */  addiu      $v0, $zero, 1
/* D73C 8000CB3C A2220005 */  sb         $v0, 5($s1)
/* D740 8000CB40 0C003586 */  jal        func_8000D618
/* D744 8000CB44 308400FF */   andi      $a0, $a0, 0xff
/* D748 8000CB48 4600008D */  trunc.w.s  $f2, $f0
/* D74C 8000CB4C 44101000 */  mfc1       $s0, $f2
/* D750 8000CB50 00000000 */  nop
/* D754 8000CB54 0C022C58 */  jal        func_8008B160
/* D758 8000CB58 00102023 */   negu      $a0, $s0
/* D75C 8000CB5C E620000C */  swc1       $f0, 0xc($s1)
/* D760 8000CB60 0C022C58 */  jal        func_8008B160
/* D764 8000CB64 02002021 */   addu      $a0, $s0, $zero
/* D768 8000CB68 0800330B */  j          .L8000CC2C
/* D76C 8000CB6C E6200010 */   swc1      $f0, 0x10($s1)
/* D770 8000CB70 324300FF */  andi       $v1, $s2, 0xff
/* D774 8000CB74 24020100 */  addiu      $v0, $zero, 0x100
/* D778 8000CB78 00431023 */  subu       $v0, $v0, $v1
/* D77C 8000CB7C A6220006 */  sh         $v0, 6($s1)
/* D780 8000CB80 A6200008 */  sh         $zero, 8($s1)
/* D784 8000CB84 0C003586 */  jal        func_8000D618
/* D788 8000CB88 308400FF */   andi      $a0, $a0, 0xff
/* D78C 8000CB8C 4600008D */  trunc.w.s  $f2, $f0
/* D790 8000CB90 44101000 */  mfc1       $s0, $f2
/* D794 8000CB94 00000000 */  nop
/* D798 8000CB98 AE30000C */  sw         $s0, 0xc($s1)
/* D79C 8000CB9C 00101040 */  sll        $v0, $s0, 1
/* D7A0 8000CBA0 0800330B */  j          .L8000CC2C
/* D7A4 8000CBA4 AE220010 */   sw        $v0, 0x10($s1)
/* D7A8 8000CBA8 324300FF */  andi       $v1, $s2, 0xff
/* D7AC 8000CBAC 24020100 */  addiu      $v0, $zero, 0x100
/* D7B0 8000CBB0 00431023 */  subu       $v0, $v0, $v1
/* D7B4 8000CBB4 A6220006 */  sh         $v0, 6($s1)
/* D7B8 8000CBB8 A6200008 */  sh         $zero, 8($s1)
/* D7BC 8000CBBC 0C003586 */  jal        func_8000D618
/* D7C0 8000CBC0 308400FF */   andi      $a0, $a0, 0xff
/* D7C4 8000CBC4 4600008D */  trunc.w.s  $f2, $f0
/* D7C8 8000CBC8 44101000 */  mfc1       $s0, $f2
/* D7CC 8000CBCC 00000000 */  nop
/* D7D0 8000CBD0 00101023 */  negu       $v0, $s0
/* D7D4 8000CBD4 AE22000C */  sw         $v0, 0xc($s1)
/* D7D8 8000CBD8 00101040 */  sll        $v0, $s0, 1
/* D7DC 8000CBDC 0800330B */  j          .L8000CC2C
/* D7E0 8000CBE0 AE220010 */   sw        $v0, 0x10($s1)
/* D7E4 8000CBE4 0C003586 */  jal        func_8000D618
/* D7E8 8000CBE8 308400FF */   andi      $a0, $a0, 0xff
/* D7EC 8000CBEC E620000C */  swc1       $f0, 0xc($s1)
/* D7F0 8000CBF0 08003303 */  j          .L8000CC0C
/* D7F4 8000CBF4 A2200005 */   sb        $zero, 5($s1)
/* D7F8 8000CBF8 0C003586 */  jal        func_8000D618
/* D7FC 8000CBFC 308400FF */   andi      $a0, $a0, 0xff
/* D800 8000CC00 E620000C */  swc1       $f0, 0xc($s1)
/* D804 8000CC04 24020002 */  addiu      $v0, $zero, 2
/* D808 8000CC08 A2220005 */  sb         $v0, 5($s1)
.L8000CC0C:
/* D80C 8000CC0C 324300FF */  andi       $v1, $s2, 0xff
/* D810 8000CC10 24020103 */  addiu      $v0, $zero, 0x103
/* D814 8000CC14 00431023 */  subu       $v0, $v0, $v1
/* D818 8000CC18 04410002 */  bgez       $v0, .L8000CC24
/* D81C 8000CC1C A6200008 */   sh        $zero, 8($s1)
/* D820 8000CC20 24420003 */  addiu      $v0, $v0, 3
.L8000CC24:
/* D824 8000CC24 00021083 */  sra        $v0, $v0, 2
/* D828 8000CC28 A6220006 */  sh         $v0, 6($s1)
.L8000CC2C:
/* D82C 8000CC2C 3C013F80 */  lui        $at, 0x3f80
/* D830 8000CC30 44810000 */  mtc1       $at, $f0
/* D834 8000CC34 00000000 */  nop
/* D838 8000CC38 08003326 */  j          .L8000CC98
/* D83C 8000CC3C E6600000 */   swc1      $f0, ($s3)
/* D840 8000CC40 0C003586 */  jal        func_8000D618
/* D844 8000CC44 308400FF */   andi      $a0, $a0, 0xff
/* D848 8000CC48 4600008D */  trunc.w.s  $f2, $f0
/* D84C 8000CC4C 44101000 */  mfc1       $s0, $f2
/* D850 8000CC50 00000000 */  nop
/* D854 8000CC54 44900000 */  mtc1       $s0, $f0
/* D858 8000CC58 00000000 */  nop
/* D85C 8000CC5C 46800020 */  cvt.s.w    $f0, $f0
/* D860 8000CC60 E620000C */  swc1       $f0, 0xc($s1)
/* D864 8000CC64 A6200008 */  sh         $zero, 8($s1)
/* D868 8000CC68 324300FF */  andi       $v1, $s2, 0xff
/* D86C 8000CC6C 24020103 */  addiu      $v0, $zero, 0x103
/* D870 8000CC70 00431023 */  subu       $v0, $v0, $v1
/* D874 8000CC74 A6220006 */  sh         $v0, 6($s1)
/* D878 8000CC78 A2340005 */  sb         $s4, 5($s1)
/* D87C 8000CC7C 0C022C58 */  jal        func_8008B160
/* D880 8000CC80 00102023 */   negu      $a0, $s0
/* D884 8000CC84 E6600000 */  swc1       $f0, ($s3)
/* D888 8000CC88 08003326 */  j          .L8000CC98
/* D88C 8000CC8C 24154000 */   addiu     $s5, $zero, 0x4000
.L8000CC90:
/* D890 8000CC90 3C15003F */  lui        $s5, 0x3f
/* D894 8000CC94 36B5C000 */  ori        $s5, $s5, 0xc000
.L8000CC98:
/* D898 8000CC98 02A01021 */  addu       $v0, $s5, $zero
/* D89C 8000CC9C 8FBF0028 */  lw         $ra, 0x28($sp)
/* D8A0 8000CCA0 8FB50024 */  lw         $s5, 0x24($sp)
/* D8A4 8000CCA4 8FB40020 */  lw         $s4, 0x20($sp)
/* D8A8 8000CCA8 8FB3001C */  lw         $s3, 0x1c($sp)
/* D8AC 8000CCAC 8FB20018 */  lw         $s2, 0x18($sp)
/* D8B0 8000CCB0 8FB10014 */  lw         $s1, 0x14($sp)
/* D8B4 8000CCB4 8FB00010 */  lw         $s0, 0x10($sp)
/* D8B8 8000CCB8 03E00008 */  jr         $ra
/* D8BC 8000CCBC 27BD0030 */   addiu     $sp, $sp, 0x30
