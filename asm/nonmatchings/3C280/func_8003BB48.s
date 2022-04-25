	.set noat
	.set noreorder

glabel func_8003BB48
/* 3C748 8003BB48 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 3C74C 8003BB4C AFBF003C */  sw         $ra, 0x3c($sp)
/* 3C750 8003BB50 AFB60038 */  sw         $s6, 0x38($sp)
/* 3C754 8003BB54 AFB50034 */  sw         $s5, 0x34($sp)
/* 3C758 8003BB58 AFB40030 */  sw         $s4, 0x30($sp)
/* 3C75C 8003BB5C AFB3002C */  sw         $s3, 0x2c($sp)
/* 3C760 8003BB60 AFB20028 */  sw         $s2, 0x28($sp)
/* 3C764 8003BB64 AFB10024 */  sw         $s1, 0x24($sp)
/* 3C768 8003BB68 AFB00020 */  sw         $s0, 0x20($sp)
/* 3C76C 8003BB6C F7B60048 */  sdc1       $f22, 0x48($sp)
/* 3C770 8003BB70 F7B40040 */  sdc1       $f20, 0x40($sp)
/* 3C774 8003BB74 0C018CEA */  jal        func_800633A8
/* 3C778 8003BB78 2413FFFF */   addiu     $s3, $zero, -1
/* 3C77C 8003BB7C 8C51008C */  lw         $s1, 0x8c($v0)
/* 3C780 8003BB80 9634000C */  lhu        $s4, 0xc($s1)
/* 3C784 8003BB84 4480B000 */  mtc1       $zero, $f22
/* 3C788 8003BB88 0000A821 */  addu       $s5, $zero, $zero
/* 3C78C 8003BB8C 2416FFFF */  addiu      $s6, $zero, -1
.L8003BB90:
/* 3C790 8003BB90 0C018D6D */  jal        func_800635B4
/* 3C794 8003BB94 00000000 */   nop
/* 3C798 8003BB98 00131400 */  sll        $v0, $s3, 0x10
/* 3C79C 8003BB9C 0441005A */  bgez       $v0, .L8003BD08
/* 3C7A0 8003BBA0 00141400 */   sll       $v0, $s4, 0x10
/* 3C7A4 8003BBA4 00151400 */  sll        $v0, $s5, 0x10
/* 3C7A8 8003BBA8 5440000D */  bnel       $v0, $zero, .L8003BBE0
/* 3C7AC 8003BBAC AFB60010 */   sw        $s6, 0x10($sp)
/* 3C7B0 8003BBB0 26240010 */  addiu      $a0, $s1, 0x10
/* 3C7B4 8003BBB4 27A50010 */  addiu      $a1, $sp, 0x10
/* 3C7B8 8003BBB8 0C022278 */  jal        func_800889E0
/* 3C7BC 8003BBBC 00003021 */   addu      $a2, $zero, $zero
/* 3C7C0 8003BBC0 50560001 */  beql       $v0, $s6, .L8003BBC8
/* 3C7C4 8003BBC4 AFA20010 */   sw        $v0, 0x10($sp)
.L8003BBC8:
/* 3C7C8 8003BBC8 96220000 */  lhu        $v0, ($s1)
/* 3C7CC 8003BBCC 30420001 */  andi       $v0, $v0, 1
/* 3C7D0 8003BBD0 54400004 */  bnel       $v0, $zero, .L8003BBE4
/* 3C7D4 8003BBD4 24150008 */   addiu     $s5, $zero, 8
/* 3C7D8 8003BBD8 0800EEF9 */  j          .L8003BBE4
/* 3C7DC 8003BBDC 00000000 */   nop
.L8003BBE0:
/* 3C7E0 8003BBE0 26B5FFFF */  addiu      $s5, $s5, -1
.L8003BBE4:
/* 3C7E4 8003BBE4 8FA20010 */  lw         $v0, 0x10($sp)
/* 3C7E8 8003BBE8 24430006 */  addiu      $v1, $v0, 6
/* 3C7EC 8003BBEC 2C620006 */  sltiu      $v0, $v1, 6
/* 3C7F0 8003BBF0 1040002A */  beqz       $v0, .L8003BC9C
/* 3C7F4 8003BBF4 00031080 */   sll       $v0, $v1, 2
/* 3C7F8 8003BBF8 3C01800D */  lui        $at, %hi(D_800CAA90)
/* 3C7FC 8003BBFC 00220821 */  addu       $at, $at, $v0
/* 3C800 8003BC00 8C22AA90 */  lw         $v0, %lo(D_800CAA90)($at)
/* 3C804 8003BC04 00400008 */  jr         $v0
/* 3C808 8003BC08 00000000 */   nop
/* 3C80C 8003BC0C 9622000C */  lhu        $v0, 0xc($s1)
/* 3C810 8003BC10 24420001 */  addiu      $v0, $v0, 1
/* 3C814 8003BC14 A622000C */  sh         $v0, 0xc($s1)
/* 3C818 8003BC18 00021400 */  sll        $v0, $v0, 0x10
/* 3C81C 8003BC1C 00021403 */  sra        $v0, $v0, 0x10
/* 3C820 8003BC20 86230002 */  lh         $v1, 2($s1)
/* 3C824 8003BC24 0043102A */  slt        $v0, $v0, $v1
/* 3C828 8003BC28 50400023 */  beql       $v0, $zero, .L8003BCB8
/* 3C82C 8003BC2C A620000C */   sh        $zero, 0xc($s1)
/* 3C830 8003BC30 0800EF2F */  j          .L8003BCBC
/* 3C834 8003BC34 00141400 */   sll       $v0, $s4, 0x10
/* 3C838 8003BC38 9622000C */  lhu        $v0, 0xc($s1)
/* 3C83C 8003BC3C 2442FFFF */  addiu      $v0, $v0, -1
/* 3C840 8003BC40 A622000C */  sh         $v0, 0xc($s1)
/* 3C844 8003BC44 00021400 */  sll        $v0, $v0, 0x10
/* 3C848 8003BC48 0443001C */  bgezl      $v0, .L8003BCBC
/* 3C84C 8003BC4C 00141400 */   sll       $v0, $s4, 0x10
/* 3C850 8003BC50 96220002 */  lhu        $v0, 2($s1)
/* 3C854 8003BC54 0800EF2D */  j          .L8003BCB4
/* 3C858 8003BC58 2442FFFF */   addiu     $v0, $v0, -1
/* 3C85C 8003BC5C 8622000C */  lh         $v0, 0xc($s1)
/* 3C860 8003BC60 04400016 */  bltz       $v0, .L8003BCBC
/* 3C864 8003BC64 00141400 */   sll       $v0, $s4, 0x10
/* 3C868 8003BC68 0C0180AB */  jal        func_800602AC
/* 3C86C 8003BC6C 240400F7 */   addiu     $a0, $zero, 0xf7
/* 3C870 8003BC70 3C01800F */  lui        $at, %hi(D_800EE320)
/* 3C874 8003BC74 A420E320 */  sh         $zero, %lo(D_800EE320)($at)
/* 3C878 8003BC78 0800EF2E */  j          .L8003BCB8
/* 3C87C 8003BC7C 2413001E */   addiu     $s3, $zero, 0x1e
/* 3C880 8003BC80 0C0180AB */  jal        func_800602AC
/* 3C884 8003BC84 240400F8 */   addiu     $a0, $zero, 0xf8
/* 3C888 8003BC88 A636000C */  sh         $s6, 0xc($s1)
/* 3C88C 8003BC8C 0800EF2E */  j          .L8003BCB8
/* 3C890 8003BC90 00009821 */   addu      $s3, $zero, $zero
/* 3C894 8003BC94 0800EF2E */  j          .L8003BCB8
/* 3C898 8003BC98 A636000C */   sh        $s6, 0xc($s1)
.L8003BC9C:
/* 3C89C 8003BC9C 86230002 */  lh         $v1, 2($s1)
/* 3C8A0 8003BCA0 8FA20010 */  lw         $v0, 0x10($sp)
/* 3C8A4 8003BCA4 0043102A */  slt        $v0, $v0, $v1
/* 3C8A8 8003BCA8 10400004 */  beqz       $v0, .L8003BCBC
/* 3C8AC 8003BCAC 00141400 */   sll       $v0, $s4, 0x10
/* 3C8B0 8003BCB0 97A20012 */  lhu        $v0, 0x12($sp)
.L8003BCB4:
/* 3C8B4 8003BCB4 A622000C */  sh         $v0, 0xc($s1)
.L8003BCB8:
/* 3C8B8 8003BCB8 00141400 */  sll        $v0, $s4, 0x10
.L8003BCBC:
/* 3C8BC 8003BCBC 00028403 */  sra        $s0, $v0, 0x10
/* 3C8C0 8003BCC0 8622000C */  lh         $v0, 0xc($s1)
/* 3C8C4 8003BCC4 12020010 */  beq        $s0, $v0, .L8003BD08
/* 3C8C8 8003BCC8 00141400 */   sll       $v0, $s4, 0x10
/* 3C8CC 8003BCCC 0C0180AB */  jal        func_800602AC
/* 3C8D0 8003BCD0 240400F5 */   addiu     $a0, $zero, 0xf5
/* 3C8D4 8003BCD4 0600000A */  bltz       $s0, .L8003BD00
/* 3C8D8 8003BCD8 02202021 */   addu      $a0, $s1, $zero
/* 3C8DC 8003BCDC 0C00EECC */  jal        func_8003BB30
/* 3C8E0 8003BCE0 02002821 */   addu      $a1, $s0, $zero
/* 3C8E4 8003BCE4 8C440004 */  lw         $a0, 4($v0)
/* 3C8E8 8003BCE8 24840024 */  addiu      $a0, $a0, 0x24
/* 3C8EC 8003BCEC 3C053F80 */  lui        $a1, 0x3f80
/* 3C8F0 8003BCF0 00A03021 */  addu       $a2, $a1, $zero
/* 3C8F4 8003BCF4 0C028340 */  jal        func_800A0D00
/* 3C8F8 8003BCF8 00A03821 */   addu      $a3, $a1, $zero
/* 3C8FC 8003BCFC 4480B000 */  mtc1       $zero, $f22
.L8003BD00:
/* 3C900 8003BD00 9634000C */  lhu        $s4, 0xc($s1)
/* 3C904 8003BD04 00141400 */  sll        $v0, $s4, 0x10
.L8003BD08:
/* 3C908 8003BD08 04400029 */  bltz       $v0, .L8003BDB0
/* 3C90C 8003BD0C 00131400 */   sll       $v0, $s3, 0x10
/* 3C910 8003BD10 3C014170 */  lui        $at, 0x4170
/* 3C914 8003BD14 44810000 */  mtc1       $at, $f0
/* 3C918 8003BD18 00000000 */  nop
/* 3C91C 8003BD1C 04420005 */  bltzl      $v0, .L8003BD34
/* 3C920 8003BD20 4600B580 */   add.s     $f22, $f22, $f0
/* 3C924 8003BD24 3C014248 */  lui        $at, 0x4248
/* 3C928 8003BD28 44810000 */  mtc1       $at, $f0
/* 3C92C 8003BD2C 00000000 */  nop
/* 3C930 8003BD30 4600B580 */  add.s      $f22, $f22, $f0
.L8003BD34:
/* 3C934 8003BD34 3C0143B4 */  lui        $at, 0x43b4
/* 3C938 8003BD38 44810000 */  mtc1       $at, $f0
/* 3C93C 8003BD3C 00000000 */  nop
/* 3C940 8003BD40 4616003C */  c.lt.s     $f0, $f22
/* 3C944 8003BD44 00000000 */  nop
/* 3C948 8003BD48 00000000 */  nop
/* 3C94C 8003BD4C 45030001 */  bc1tl      .L8003BD54
/* 3C950 8003BD50 4600B581 */   sub.s     $f22, $f22, $f0
.L8003BD54:
/* 3C954 8003BD54 0C02BBF4 */  jal        func_800AEFD0
/* 3C958 8003BD58 4600B306 */   mov.s     $f12, $f22
/* 3C95C 8003BD5C 3C013E99 */  lui        $at, 0x3e99
/* 3C960 8003BD60 3421999A */  ori        $at, $at, 0x999a
/* 3C964 8003BD64 44811000 */  mtc1       $at, $f2
/* 3C968 8003BD68 00000000 */  nop
/* 3C96C 8003BD6C 46020502 */  mul.s      $f20, $f0, $f2
/* 3C970 8003BD70 3C013F99 */  lui        $at, 0x3f99
/* 3C974 8003BD74 3421999A */  ori        $at, $at, 0x999a
/* 3C978 8003BD78 44810000 */  mtc1       $at, $f0
/* 3C97C 8003BD7C 00000000 */  nop
/* 3C980 8003BD80 4600A500 */  add.s      $f20, $f20, $f0
/* 3C984 8003BD84 00142C00 */  sll        $a1, $s4, 0x10
/* 3C988 8003BD88 02202021 */  addu       $a0, $s1, $zero
/* 3C98C 8003BD8C 0C00EECC */  jal        func_8003BB30
/* 3C990 8003BD90 00052C03 */   sra       $a1, $a1, 0x10
/* 3C994 8003BD94 8C440004 */  lw         $a0, 4($v0)
/* 3C998 8003BD98 4405A000 */  mfc1       $a1, $f20
/* 3C99C 8003BD9C 3C063F80 */  lui        $a2, 0x3f80
/* 3C9A0 8003BDA0 4407A000 */  mfc1       $a3, $f20
/* 3C9A4 8003BDA4 00000000 */  nop
/* 3C9A8 8003BDA8 0C028340 */  jal        func_800A0D00
/* 3C9AC 8003BDAC 24840024 */   addiu     $a0, $a0, 0x24
.L8003BDB0:
/* 3C9B0 8003BDB0 00131400 */  sll        $v0, $s3, 0x10
/* 3C9B4 8003BDB4 18400023 */  blez       $v0, .L8003BE44
/* 3C9B8 8003BDB8 00000000 */   nop
/* 3C9BC 8003BDBC 2662FFFF */  addiu      $v0, $s3, -1
/* 3C9C0 8003BDC0 00409821 */  addu       $s3, $v0, $zero
/* 3C9C4 8003BDC4 00021400 */  sll        $v0, $v0, 0x10
/* 3C9C8 8003BDC8 00021403 */  sra        $v0, $v0, 0x10
/* 3C9CC 8003BDCC 4482A000 */  mtc1       $v0, $f20
/* 3C9D0 8003BDD0 00000000 */  nop
/* 3C9D4 8003BDD4 4680A520 */  cvt.s.w    $f20, $f20
/* 3C9D8 8003BDD8 3C013D08 */  lui        $at, 0x3d08
/* 3C9DC 8003BDDC 34218889 */  ori        $at, $at, 0x8889
/* 3C9E0 8003BDE0 44810000 */  mtc1       $at, $f0
/* 3C9E4 8003BDE4 00000000 */  nop
/* 3C9E8 8003BDE8 4600A502 */  mul.s      $f20, $f20, $f0
/* 3C9EC 8003BDEC 86220002 */  lh         $v0, 2($s1)
/* 3C9F0 8003BDF0 18400013 */  blez       $v0, .L8003BE40
/* 3C9F4 8003BDF4 00008021 */   addu      $s0, $zero, $zero
/* 3C9F8 8003BDF8 00141400 */  sll        $v0, $s4, 0x10
/* 3C9FC 8003BDFC 00029403 */  sra        $s2, $v0, 0x10
.L8003BE00:
/* 3CA00 8003BE00 1212000A */  beq        $s0, $s2, .L8003BE2C
/* 3CA04 8003BE04 00102C00 */   sll       $a1, $s0, 0x10
/* 3CA08 8003BE08 02202021 */  addu       $a0, $s1, $zero
/* 3CA0C 8003BE0C 0C00EECC */  jal        func_8003BB30
/* 3CA10 8003BE10 00052C03 */   sra       $a1, $a1, 0x10
/* 3CA14 8003BE14 8C460004 */  lw         $a2, 4($v0)
/* 3CA18 8003BE18 24C60024 */  addiu      $a2, $a2, 0x24
/* 3CA1C 8003BE1C 4405A000 */  mfc1       $a1, $f20
/* 3CA20 8003BE20 00000000 */  nop
/* 3CA24 8003BE24 0C0283C0 */  jal        func_800A0F00
/* 3CA28 8003BE28 00C02021 */   addu      $a0, $a2, $zero
.L8003BE2C:
/* 3CA2C 8003BE2C 26100001 */  addiu      $s0, $s0, 1
/* 3CA30 8003BE30 86220002 */  lh         $v0, 2($s1)
/* 3CA34 8003BE34 0202102A */  slt        $v0, $s0, $v0
/* 3CA38 8003BE38 1440FFF1 */  bnez       $v0, .L8003BE00
/* 3CA3C 8003BE3C 00000000 */   nop
.L8003BE40:
/* 3CA40 8003BE40 00131400 */  sll        $v0, $s3, 0x10
.L8003BE44:
/* 3CA44 8003BE44 1440FF52 */  bnez       $v0, .L8003BB90
/* 3CA48 8003BE48 00000000 */   nop
/* 3CA4C 8003BE4C 0C017764 */  jal        func_8005DD90
/* 3CA50 8003BE50 00002021 */   addu      $a0, $zero, $zero
/* 3CA54 8003BE54 8FBF003C */  lw         $ra, 0x3c($sp)
/* 3CA58 8003BE58 8FB60038 */  lw         $s6, 0x38($sp)
/* 3CA5C 8003BE5C 8FB50034 */  lw         $s5, 0x34($sp)
/* 3CA60 8003BE60 8FB40030 */  lw         $s4, 0x30($sp)
/* 3CA64 8003BE64 8FB3002C */  lw         $s3, 0x2c($sp)
/* 3CA68 8003BE68 8FB20028 */  lw         $s2, 0x28($sp)
/* 3CA6C 8003BE6C 8FB10024 */  lw         $s1, 0x24($sp)
/* 3CA70 8003BE70 8FB00020 */  lw         $s0, 0x20($sp)
/* 3CA74 8003BE74 D7B60048 */  ldc1       $f22, 0x48($sp)
/* 3CA78 8003BE78 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 3CA7C 8003BE7C 03E00008 */  jr         $ra
/* 3CA80 8003BE80 27BD0050 */   addiu     $sp, $sp, 0x50
