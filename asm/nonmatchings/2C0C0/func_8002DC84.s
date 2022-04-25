	.set noat
	.set noreorder

glabel func_8002DC84
/* 2E884 8002DC84 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 2E888 8002DC88 AFBF005C */  sw         $ra, 0x5c($sp)
/* 2E88C 8002DC8C AFBE0058 */  sw         $fp, 0x58($sp)
/* 2E890 8002DC90 AFB70054 */  sw         $s7, 0x54($sp)
/* 2E894 8002DC94 AFB60050 */  sw         $s6, 0x50($sp)
/* 2E898 8002DC98 AFB5004C */  sw         $s5, 0x4c($sp)
/* 2E89C 8002DC9C AFB40048 */  sw         $s4, 0x48($sp)
/* 2E8A0 8002DCA0 AFB30044 */  sw         $s3, 0x44($sp)
/* 2E8A4 8002DCA4 AFB20040 */  sw         $s2, 0x40($sp)
/* 2E8A8 8002DCA8 AFB1003C */  sw         $s1, 0x3c($sp)
/* 2E8AC 8002DCAC AFB00038 */  sw         $s0, 0x38($sp)
/* 2E8B0 8002DCB0 00809821 */  addu       $s3, $a0, $zero
/* 2E8B4 8002DCB4 00A09021 */  addu       $s2, $a1, $zero
/* 2E8B8 8002DCB8 00052C00 */  sll        $a1, $a1, 0x10
/* 2E8BC 8002DCBC 00052C03 */  sra        $a1, $a1, 0x10
/* 2E8C0 8002DCC0 00051840 */  sll        $v1, $a1, 1
/* 2E8C4 8002DCC4 00651821 */  addu       $v1, $v1, $a1
/* 2E8C8 8002DCC8 000318C0 */  sll        $v1, $v1, 3
/* 2E8CC 8002DCCC 00651823 */  subu       $v1, $v1, $a1
/* 2E8D0 8002DCD0 00031880 */  sll        $v1, $v1, 2
/* 2E8D4 8002DCD4 8E620080 */  lw         $v0, 0x80($s3)
/* 2E8D8 8002DCD8 00621821 */  addu       $v1, $v1, $v0
/* 2E8DC 8002DCDC 3C01800D */  lui        $at, %hi(D_800D6010)
/* 2E8E0 8002DCE0 AC236010 */  sw         $v1, %lo(D_800D6010)($at)
/* 2E8E4 8002DCE4 94780004 */  lhu        $t8, 4($v1)
/* 2E8E8 8002DCE8 A7B80016 */  sh         $t8, 0x16($sp)
/* 2E8EC 8002DCEC 3C01800F */  lui        $at, %hi(D_800F3292)
/* 2E8F0 8002DCF0 A4203292 */  sh         $zero, %lo(D_800F3292)($at)
/* 2E8F4 8002DCF4 3C02800F */  lui        $v0, %hi(D_800EE992)
/* 2E8F8 8002DCF8 9442E992 */  lhu        $v0, %lo(D_800EE992)($v0)
/* 2E8FC 8002DCFC 3C01800F */  lui        $at, %hi(D_800EE32C)
/* 2E900 8002DD00 A422E32C */  sh         $v0, %lo(D_800EE32C)($at)
/* 2E904 8002DD04 8C710034 */  lw         $s1, 0x34($v1)
/* 2E908 8002DD08 86240030 */  lh         $a0, 0x30($s1)
/* 2E90C 8002DD0C 000410C0 */  sll        $v0, $a0, 3
/* 2E910 8002DD10 00441023 */  subu       $v0, $v0, $a0
/* 2E914 8002DD14 00021040 */  sll        $v0, $v0, 1
/* 2E918 8002DD18 8E6400A8 */  lw         $a0, 0xa8($s3)
/* 2E91C 8002DD1C 00441021 */  addu       $v0, $v0, $a0
/* 2E920 8002DD20 AFA2001C */  sw         $v0, 0x1c($sp)
/* 2E924 8002DD24 8C620014 */  lw         $v0, 0x14($v1)
/* 2E928 8002DD28 3C04FFFB */  lui        $a0, 0xfffb
/* 2E92C 8002DD2C 3484FFFF */  ori        $a0, $a0, 0xffff
/* 2E930 8002DD30 00441024 */  and        $v0, $v0, $a0
/* 2E934 8002DD34 AC620014 */  sw         $v0, 0x14($v1)
/* 2E938 8002DD38 00408021 */  addu       $s0, $v0, $zero
/* 2E93C 8002DD3C 3C02800F */  lui        $v0, %hi(D_800ECB14)
/* 2E940 8002DD40 8C42CB14 */  lw         $v0, %lo(D_800ECB14)($v0)
/* 2E944 8002DD44 30422001 */  andi       $v0, $v0, 0x2001
/* 2E948 8002DD48 24032001 */  addiu      $v1, $zero, 0x2001
/* 2E94C 8002DD4C 14430003 */  bne        $v0, $v1, .L8002DD5C
/* 2E950 8002DD50 00000000 */   nop
/* 2E954 8002DD54 0C00C354 */  jal        func_80030D50
/* 2E958 8002DD58 02602021 */   addu      $a0, $s3, $zero
.L8002DD5C:
/* 2E95C 8002DD5C 92220000 */  lbu        $v0, ($s1)
/* 2E960 8002DD60 30540080 */  andi       $s4, $v0, 0x80
/* 2E964 8002DD64 1280000B */  beqz       $s4, .L8002DD94
/* 2E968 8002DD68 0280B021 */   addu      $s6, $s4, $zero
/* 2E96C 8002DD6C 3C02800F */  lui        $v0, %hi(D_800F37DC)
/* 2E970 8002DD70 8C4237DC */  lw         $v0, %lo(D_800F37DC)($v0)
/* 2E974 8002DD74 24430008 */  addiu      $v1, $v0, 8
/* 2E978 8002DD78 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2E97C 8002DD7C AC2337DC */  sw         $v1, %lo(D_800F37DC)($at)
/* 2E980 8002DD80 3C03D9FD */  lui        $v1, 0xd9fd
/* 2E984 8002DD84 3463FFFF */  ori        $v1, $v1, 0xffff
/* 2E988 8002DD88 AC430000 */  sw         $v1, ($v0)
/* 2E98C 8002DD8C 0800B76F */  j          .L8002DDBC
/* 2E990 8002DD90 AC400004 */   sw        $zero, 4($v0)
.L8002DD94:
/* 2E994 8002DD94 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 2E998 8002DD98 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 2E99C 8002DD9C 24620008 */  addiu      $v0, $v1, 8
/* 2E9A0 8002DDA0 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2E9A4 8002DDA4 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2E9A8 8002DDA8 3C02D9FF */  lui        $v0, 0xd9ff
/* 2E9AC 8002DDAC 3442FFFF */  ori        $v0, $v0, 0xffff
/* 2E9B0 8002DDB0 AC620000 */  sw         $v0, ($v1)
/* 2E9B4 8002DDB4 3C020002 */  lui        $v0, 2
/* 2E9B8 8002DDB8 AC620004 */  sw         $v0, 4($v1)
.L8002DDBC:
/* 2E9BC 8002DDBC 86220032 */  lh         $v0, 0x32($s1)
/* 2E9C0 8002DDC0 04400005 */  bltz       $v0, .L8002DDD8
/* 2E9C4 8002DDC4 00021900 */   sll       $v1, $v0, 4
/* 2E9C8 8002DDC8 8E6200A4 */  lw         $v0, 0xa4($s3)
/* 2E9CC 8002DDCC 00621821 */  addu       $v1, $v1, $v0
/* 2E9D0 8002DDD0 0800B778 */  j          .L8002DDE0
/* 2E9D4 8002DDD4 AFA30024 */   sw        $v1, 0x24($sp)
.L8002DDD8:
/* 2E9D8 8002DDD8 2418FFFF */  addiu      $t8, $zero, -1
/* 2E9DC 8002DDDC AFB80024 */  sw         $t8, 0x24($sp)
.L8002DDE0:
/* 2E9E0 8002DDE0 97B80016 */  lhu        $t8, 0x16($sp)
/* 2E9E4 8002DDE4 00181400 */  sll        $v0, $t8, 0x10
/* 2E9E8 8002DDE8 1840016B */  blez       $v0, .L8002E398
/* 2E9EC 8002DDEC 0000F021 */   addu      $fp, $zero, $zero
/* 2E9F0 8002DDF0 00121400 */  sll        $v0, $s2, 0x10
/* 2E9F4 8002DDF4 0002BC03 */  sra        $s7, $v0, 0x10
/* 2E9F8 8002DDF8 3C180002 */  lui        $t8, 2
/* 2E9FC 8002DDFC 0218A824 */  and        $s5, $s0, $t8
.L8002DE00:
/* 2EA00 8002DE00 8E620080 */  lw         $v0, 0x80($s3)
/* 2EA04 8002DE04 00171840 */  sll        $v1, $s7, 1
/* 2EA08 8002DE08 00771821 */  addu       $v1, $v1, $s7
/* 2EA0C 8002DE0C 000318C0 */  sll        $v1, $v1, 3
/* 2EA10 8002DE10 00771823 */  subu       $v1, $v1, $s7
/* 2EA14 8002DE14 00031880 */  sll        $v1, $v1, 2
/* 2EA18 8002DE18 00621821 */  addu       $v1, $v1, $v0
/* 2EA1C 8002DE1C 001E2400 */  sll        $a0, $fp, 0x10
/* 2EA20 8002DE20 00042403 */  sra        $a0, $a0, 0x10
/* 2EA24 8002DE24 00041040 */  sll        $v0, $a0, 1
/* 2EA28 8002DE28 00441021 */  addu       $v0, $v0, $a0
/* 2EA2C 8002DE2C 00021080 */  sll        $v0, $v0, 2
/* 2EA30 8002DE30 00441021 */  addu       $v0, $v0, $a0
/* 2EA34 8002DE34 00021080 */  sll        $v0, $v0, 2
/* 2EA38 8002DE38 8C630034 */  lw         $v1, 0x34($v1)
/* 2EA3C 8002DE3C 00438821 */  addu       $s1, $v0, $v1
/* 2EA40 8002DE40 92220000 */  lbu        $v0, ($s1)
/* 2EA44 8002DE44 2C420003 */  sltiu      $v0, $v0, 3
/* 2EA48 8002DE48 1440014A */  bnez       $v0, .L8002E374
/* 2EA4C 8002DE4C 27C30001 */   addiu     $v1, $fp, 1
/* 2EA50 8002DE50 86220030 */  lh         $v0, 0x30($s1)
/* 2EA54 8002DE54 000218C0 */  sll        $v1, $v0, 3
/* 2EA58 8002DE58 00621823 */  subu       $v1, $v1, $v0
/* 2EA5C 8002DE5C 00031840 */  sll        $v1, $v1, 1
/* 2EA60 8002DE60 8E6200A8 */  lw         $v0, 0xa8($s3)
/* 2EA64 8002DE64 00629021 */  addu       $s2, $v1, $v0
/* 2EA68 8002DE68 86230032 */  lh         $v1, 0x32($s1)
/* 2EA6C 8002DE6C 04600004 */  bltz       $v1, .L8002DE80
/* 2EA70 8002DE70 00031900 */   sll       $v1, $v1, 4
/* 2EA74 8002DE74 8E6200A4 */  lw         $v0, 0xa4($s3)
/* 2EA78 8002DE78 0800B7A1 */  j          .L8002DE84
/* 2EA7C 8002DE7C 00628021 */   addu      $s0, $v1, $v0
.L8002DE80:
/* 2EA80 8002DE80 2410FFFF */  addiu      $s0, $zero, -1
.L8002DE84:
/* 2EA84 8002DE84 92220000 */  lbu        $v0, ($s1)
/* 2EA88 8002DE88 30540080 */  andi       $s4, $v0, 0x80
/* 2EA8C 8002DE8C 3C03800F */  lui        $v1, %hi(D_800EE992)
/* 2EA90 8002DE90 8463E992 */  lh         $v1, %lo(D_800EE992)($v1)
/* 2EA94 8002DE94 3C02800F */  lui        $v0, %hi(D_800EE32C)
/* 2EA98 8002DE98 8442E32C */  lh         $v0, %lo(D_800EE32C)($v0)
/* 2EA9C 8002DE9C 00621823 */  subu       $v1, $v1, $v0
/* 2EAA0 8002DEA0 2863001D */  slti       $v1, $v1, 0x1d
/* 2EAA4 8002DEA4 38630001 */  xori       $v1, $v1, 1
/* 2EAA8 8002DEA8 8FB8001C */  lw         $t8, 0x1c($sp)
/* 2EAAC 8002DEAC 03121026 */  xor        $v0, $t8, $s2
/* 2EAB0 8002DEB0 0002102B */  sltu       $v0, $zero, $v0
/* 2EAB4 8002DEB4 00621825 */  or         $v1, $v1, $v0
/* 2EAB8 8002DEB8 54600012 */  bnel       $v1, $zero, .L8002DF04
/* 2EABC 8002DEBC AFB2001C */   sw        $s2, 0x1c($sp)
/* 2EAC0 8002DEC0 8FB80024 */  lw         $t8, 0x24($sp)
/* 2EAC4 8002DEC4 5710000F */  bnel       $t8, $s0, .L8002DF04
/* 2EAC8 8002DEC8 AFB2001C */   sw        $s2, 0x1c($sp)
/* 2EACC 8002DECC 3C04800F */  lui        $a0, %hi(D_800F3292)
/* 2EAD0 8002DED0 84843292 */  lh         $a0, %lo(D_800F3292)($a0)
/* 2EAD4 8002DED4 28840030 */  slti       $a0, $a0, 0x30
/* 2EAD8 8002DED8 38840001 */  xori       $a0, $a0, 1
/* 2EADC 8002DEDC 00141C00 */  sll        $v1, $s4, 0x10
/* 2EAE0 8002DEE0 00031C03 */  sra        $v1, $v1, 0x10
/* 2EAE4 8002DEE4 00161400 */  sll        $v0, $s6, 0x10
/* 2EAE8 8002DEE8 00021403 */  sra        $v0, $v0, 0x10
/* 2EAEC 8002DEEC 00621826 */  xor        $v1, $v1, $v0
/* 2EAF0 8002DEF0 0003182B */  sltu       $v1, $zero, $v1
/* 2EAF4 8002DEF4 00832025 */  or         $a0, $a0, $v1
/* 2EAF8 8002DEF8 10800026 */  beqz       $a0, .L8002DF94
/* 2EAFC 8002DEFC 00000000 */   nop
/* 2EB00 8002DF00 AFB2001C */  sw         $s2, 0x1c($sp)
.L8002DF04:
/* 2EB04 8002DF04 AFB00024 */  sw         $s0, 0x24($sp)
/* 2EB08 8002DF08 3C05800D */  lui        $a1, %hi(D_800D6010)
/* 2EB0C 8002DF0C 8CA56010 */  lw         $a1, %lo(D_800D6010)($a1)
/* 2EB10 8002DF10 02602021 */  addu       $a0, $s3, $zero
/* 2EB14 8002DF14 0C00B922 */  jal        func_8002E488
/* 2EB18 8002DF18 24A50014 */   addiu     $a1, $a1, 0x14
/* 2EB1C 8002DF1C 00141400 */  sll        $v0, $s4, 0x10
/* 2EB20 8002DF20 00021C03 */  sra        $v1, $v0, 0x10
/* 2EB24 8002DF24 00161400 */  sll        $v0, $s6, 0x10
/* 2EB28 8002DF28 00021403 */  sra        $v0, $v0, 0x10
/* 2EB2C 8002DF2C 10620017 */  beq        $v1, $v0, .L8002DF8C
/* 2EB30 8002DF30 00000000 */   nop
/* 2EB34 8002DF34 1060000B */  beqz       $v1, .L8002DF64
/* 2EB38 8002DF38 3C180002 */   lui       $t8, 2
/* 2EB3C 8002DF3C 3C02800F */  lui        $v0, %hi(D_800F37DC)
/* 2EB40 8002DF40 8C4237DC */  lw         $v0, %lo(D_800F37DC)($v0)
/* 2EB44 8002DF44 24430008 */  addiu      $v1, $v0, 8
/* 2EB48 8002DF48 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2EB4C 8002DF4C AC2337DC */  sw         $v1, %lo(D_800F37DC)($at)
/* 2EB50 8002DF50 3C03D9FD */  lui        $v1, 0xd9fd
/* 2EB54 8002DF54 3463FFFF */  ori        $v1, $v1, 0xffff
/* 2EB58 8002DF58 AC430000 */  sw         $v1, ($v0)
/* 2EB5C 8002DF5C 0800B7E2 */  j          .L8002DF88
/* 2EB60 8002DF60 AC400004 */   sw        $zero, 4($v0)
.L8002DF64:
/* 2EB64 8002DF64 3C02800F */  lui        $v0, %hi(D_800F37DC)
/* 2EB68 8002DF68 8C4237DC */  lw         $v0, %lo(D_800F37DC)($v0)
/* 2EB6C 8002DF6C 24430008 */  addiu      $v1, $v0, 8
/* 2EB70 8002DF70 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2EB74 8002DF74 AC2337DC */  sw         $v1, %lo(D_800F37DC)($at)
/* 2EB78 8002DF78 3C03D9FF */  lui        $v1, 0xd9ff
/* 2EB7C 8002DF7C 3463FFFF */  ori        $v1, $v1, 0xffff
/* 2EB80 8002DF80 AC430000 */  sw         $v1, ($v0)
/* 2EB84 8002DF84 AC580004 */  sw         $t8, 4($v0)
.L8002DF88:
/* 2EB88 8002DF88 0280B021 */  addu       $s6, $s4, $zero
.L8002DF8C:
/* 2EB8C 8002DF8C 3C01800F */  lui        $at, %hi(D_800F3292)
/* 2EB90 8002DF90 A4203292 */  sh         $zero, %lo(D_800F3292)($at)
.L8002DF94:
/* 2EB94 8002DF94 3C03800F */  lui        $v1, %hi(D_800F3292)
/* 2EB98 8002DF98 84633292 */  lh         $v1, %lo(D_800F3292)($v1)
/* 2EB9C 8002DF9C 00031080 */  sll        $v0, $v1, 2
/* 2EBA0 8002DFA0 00431021 */  addu       $v0, $v0, $v1
/* 2EBA4 8002DFA4 00021080 */  sll        $v0, $v0, 2
/* 2EBA8 8002DFA8 3C03800F */  lui        $v1, %hi(D_800EDA88)
/* 2EBAC 8002DFAC 2463DA88 */  addiu      $v1, $v1, %lo(D_800EDA88)
/* 2EBB0 8002DFB0 00435021 */  addu       $t2, $v0, $v1
/* 2EBB4 8002DFB4 92220000 */  lbu        $v0, ($s1)
/* 2EBB8 8002DFB8 3042007F */  andi       $v0, $v0, 0x7f
/* 2EBBC 8002DFBC 304200FF */  andi       $v0, $v0, 0xff
/* 2EBC0 8002DFC0 A5420000 */  sh         $v0, ($t2)
/* 2EBC4 8002DFC4 00403821 */  addu       $a3, $v0, $zero
/* 2EBC8 8002DFC8 00E01821 */  addu       $v1, $a3, $zero
/* 2EBCC 8002DFCC 24020002 */  addiu      $v0, $zero, 2
/* 2EBD0 8002DFD0 106200E7 */  beq        $v1, $v0, .L8002E370
/* 2EBD4 8002DFD4 2402FFFF */   addiu     $v0, $zero, -1
/* 2EBD8 8002DFD8 AD52000C */  sw         $s2, 0xc($t2)
/* 2EBDC 8002DFDC 12020007 */  beq        $s0, $v0, .L8002DFFC
/* 2EBE0 8002DFE0 AD500010 */   sw        $s0, 0x10($t2)
/* 2EBE4 8002DFE4 8E02000C */  lw         $v0, 0xc($s0)
/* 2EBE8 8002DFE8 9045001A */  lbu        $a1, 0x1a($v0)
/* 2EBEC 8002DFEC 00052940 */  sll        $a1, $a1, 5
/* 2EBF0 8002DFF0 9046001B */  lbu        $a2, 0x1b($v0)
/* 2EBF4 8002DFF4 0800B801 */  j          .L8002E004
/* 2EBF8 8002DFF8 00063140 */   sll       $a2, $a2, 5
.L8002DFFC:
/* 2EBFC 8002DFFC 00003021 */  addu       $a2, $zero, $zero
/* 2EC00 8002E000 00002821 */  addu       $a1, $zero, $zero
.L8002E004:
/* 2EC04 8002E004 12A00009 */  beqz       $s5, .L8002E02C
/* 2EC08 8002E008 00000000 */   nop
/* 2EC0C 8002E00C 3C02800F */  lui        $v0, %hi(D_800F546A)
/* 2EC10 8002E010 8442546A */  lh         $v0, %lo(D_800F546A)($v0)
/* 2EC14 8002E014 8E6400D0 */  lw         $a0, 0xd0($s3)
/* 2EC18 8002E018 00021840 */  sll        $v1, $v0, 1
/* 2EC1C 8002E01C 00621821 */  addu       $v1, $v1, $v0
/* 2EC20 8002E020 000318C0 */  sll        $v1, $v1, 3
/* 2EC24 8002E024 00641821 */  addu       $v1, $v1, $a0
/* 2EC28 8002E028 A0670000 */  sb         $a3, ($v1)
.L8002E02C:
/* 2EC2C 8002E02C 10E000C4 */  beqz       $a3, .L8002E340
/* 2EC30 8002E030 00004821 */   addu      $t1, $zero, $zero
/* 2EC34 8002E034 00141400 */  sll        $v0, $s4, 0x10
/* 2EC38 8002E038 0002CC03 */  sra        $t9, $v0, 0x10
/* 2EC3C 8002E03C AFA50034 */  sw         $a1, 0x34($sp)
/* 2EC40 8002E040 00C09021 */  addu       $s2, $a2, $zero
/* 2EC44 8002E044 00E08021 */  addu       $s0, $a3, $zero
/* 2EC48 8002E048 00091400 */  sll        $v0, $t1, 0x10
.L8002E04C:
/* 2EC4C 8002E04C 00022403 */  sra        $a0, $v0, 0x10
/* 2EC50 8002E050 00041040 */  sll        $v0, $a0, 1
/* 2EC54 8002E054 00511021 */  addu       $v0, $v0, $s1
/* 2EC58 8002E058 84430004 */  lh         $v1, 4($v0)
/* 2EC5C 8002E05C 00031040 */  sll        $v0, $v1, 1
/* 2EC60 8002E060 00431021 */  addu       $v0, $v0, $v1
/* 2EC64 8002E064 00021040 */  sll        $v0, $v0, 1
/* 2EC68 8002E068 8E630078 */  lw         $v1, 0x78($s3)
/* 2EC6C 8002E06C 1320000A */  beqz       $t9, .L8002E098
/* 2EC70 8002E070 00434021 */   addu      $t0, $v0, $v1
/* 2EC74 8002E074 02241021 */  addu       $v0, $s1, $a0
/* 2EC78 8002E078 9043002C */  lbu        $v1, 0x2c($v0)
/* 2EC7C 8002E07C 000310C0 */  sll        $v0, $v1, 3
/* 2EC80 8002E080 00431023 */  subu       $v0, $v0, $v1
/* 2EC84 8002E084 00021040 */  sll        $v0, $v0, 1
/* 2EC88 8002E088 8E6300A8 */  lw         $v1, 0xa8($s3)
/* 2EC8C 8002E08C 00431021 */  addu       $v0, $v0, $v1
/* 2EC90 8002E090 0800B82E */  j          .L8002E0B8
/* 2EC94 8002E094 24470005 */   addiu     $a3, $v0, 5
.L8002E098:
/* 2EC98 8002E098 00091400 */  sll        $v0, $t1, 0x10
/* 2EC9C 8002E09C 000213C3 */  sra        $v0, $v0, 0xf
/* 2ECA0 8002E0A0 00511021 */  addu       $v0, $v0, $s1
/* 2ECA4 8002E0A4 84420004 */  lh         $v0, 4($v0)
/* 2ECA8 8002E0A8 00021840 */  sll        $v1, $v0, 1
/* 2ECAC 8002E0AC 00621821 */  addu       $v1, $v1, $v0
/* 2ECB0 8002E0B0 8E62007C */  lw         $v0, 0x7c($s3)
/* 2ECB4 8002E0B4 00623821 */  addu       $a3, $v1, $v0
.L8002E0B8:
/* 2ECB8 8002E0B8 00091400 */  sll        $v0, $t1, 0x10
/* 2ECBC 8002E0BC 00023403 */  sra        $a2, $v0, 0x10
/* 2ECC0 8002E0C0 00061080 */  sll        $v0, $a2, 2
/* 2ECC4 8002E0C4 00511021 */  addu       $v0, $v0, $s1
/* 2ECC8 8002E0C8 C7A00034 */  lwc1       $f0, 0x34($sp)
/* 2ECCC 8002E0CC 46800020 */  cvt.s.w    $f0, $f0
/* 2ECD0 8002E0D0 C442000C */  lwc1       $f2, 0xc($v0)
/* 2ECD4 8002E0D4 46020002 */  mul.s      $f0, $f0, $f2
/* 2ECD8 8002E0D8 4600008D */  trunc.w.s  $f2, $f0
/* 2ECDC 8002E0DC 440F1000 */  mfc1       $t7, $f2
/* 2ECE0 8002E0E0 44920000 */  mtc1       $s2, $f0
/* 2ECE4 8002E0E4 00000000 */  nop
/* 2ECE8 8002E0E8 46800020 */  cvt.s.w    $f0, $f0
/* 2ECEC 8002E0EC C442001C */  lwc1       $f2, 0x1c($v0)
/* 2ECF0 8002E0F0 46020002 */  mul.s      $f0, $f0, $f2
/* 2ECF4 8002E0F4 4600008D */  trunc.w.s  $f2, $f0
/* 2ECF8 8002E0F8 440E1000 */  mfc1       $t6, $f2
/* 2ECFC 8002E0FC 3C02800F */  lui        $v0, %hi(D_800EE992)
/* 2ED00 8002E100 8442E992 */  lh         $v0, %lo(D_800EE992)($v0)
/* 2ED04 8002E104 00402821 */  addu       $a1, $v0, $zero
/* 2ED08 8002E108 00021100 */  sll        $v0, $v0, 4
/* 2ED0C 8002E10C 2442FFF0 */  addiu      $v0, $v0, -0x10
/* 2ED10 8002E110 3C03800F */  lui        $v1, %hi(D_800F50BC)
/* 2ED14 8002E114 8C6350BC */  lw         $v1, %lo(D_800F50BC)($v1)
/* 2ED18 8002E118 12A0000F */  beqz       $s5, .L8002E158
/* 2ED1C 8002E11C 00432021 */   addu      $a0, $v0, $v1
/* 2ED20 8002E120 3C03800F */  lui        $v1, %hi(D_800F546A)
/* 2ED24 8002E124 8463546A */  lh         $v1, %lo(D_800F546A)($v1)
/* 2ED28 8002E128 8E6400D0 */  lw         $a0, 0xd0($s3)
/* 2ED2C 8002E12C 00031040 */  sll        $v0, $v1, 1
/* 2ED30 8002E130 00431021 */  addu       $v0, $v0, $v1
/* 2ED34 8002E134 000210C0 */  sll        $v0, $v0, 3
/* 2ED38 8002E138 00441021 */  addu       $v0, $v0, $a0
/* 2ED3C 8002E13C 00061840 */  sll        $v1, $a2, 1
/* 2ED40 8002E140 00621821 */  addu       $v1, $v1, $v0
/* 2ED44 8002E144 A4650002 */  sh         $a1, 2($v1)
/* 2ED48 8002E148 3C05800F */  lui        $a1, %hi(D_800EE32C)
/* 2ED4C 8002E14C 94A5E32C */  lhu        $a1, %lo(D_800EE32C)($a1)
/* 2ED50 8002E150 0800B88C */  j          .L8002E230
/* 2ED54 8002E154 00051C00 */   sll       $v1, $a1, 0x10
.L8002E158:
/* 2ED58 8002E158 3C02800F */  lui        $v0, %hi(D_800EE992)
/* 2ED5C 8002E15C 9442E992 */  lhu        $v0, %lo(D_800EE992)($v0)
/* 2ED60 8002E160 2442FFFF */  addiu      $v0, $v0, -1
/* 2ED64 8002E164 00402821 */  addu       $a1, $v0, $zero
/* 2ED68 8002E168 00021400 */  sll        $v0, $v0, 0x10
/* 2ED6C 8002E16C 00021403 */  sra        $v0, $v0, 0x10
/* 2ED70 8002E170 3C03800F */  lui        $v1, %hi(D_800EE32C)
/* 2ED74 8002E174 8463E32C */  lh         $v1, %lo(D_800EE32C)($v1)
/* 2ED78 8002E178 0043102A */  slt        $v0, $v0, $v1
/* 2ED7C 8002E17C 1440002C */  bnez       $v0, .L8002E230
/* 2ED80 8002E180 00051C00 */   sll       $v1, $a1, 0x10
/* 2ED84 8002E184 850D0000 */  lh         $t5, ($t0)
/* 2ED88 8002E188 000F1400 */  sll        $v0, $t7, 0x10
/* 2ED8C 8002E18C 00026403 */  sra        $t4, $v0, 0x10
/* 2ED90 8002E190 000E1400 */  sll        $v0, $t6, 0x10
/* 2ED94 8002E194 00025C03 */  sra        $t3, $v0, 0x10
/* 2ED98 8002E198 3C06800F */  lui        $a2, %hi(D_800EE32C)
/* 2ED9C 8002E19C 84C6E32C */  lh         $a2, %lo(D_800EE32C)($a2)
.L8002E1A0:
/* 2EDA0 8002E1A0 84820000 */  lh         $v0, ($a0)
/* 2EDA4 8002E1A4 144D001B */  bne        $v0, $t5, .L8002E214
/* 2EDA8 8002E1A8 24A2FFFF */   addiu     $v0, $a1, -1
/* 2EDAC 8002E1AC 84830002 */  lh         $v1, 2($a0)
/* 2EDB0 8002E1B0 85020002 */  lh         $v0, 2($t0)
/* 2EDB4 8002E1B4 14620017 */  bne        $v1, $v0, .L8002E214
/* 2EDB8 8002E1B8 24A2FFFF */   addiu     $v0, $a1, -1
/* 2EDBC 8002E1BC 84830004 */  lh         $v1, 4($a0)
/* 2EDC0 8002E1C0 85020004 */  lh         $v0, 4($t0)
/* 2EDC4 8002E1C4 14620013 */  bne        $v1, $v0, .L8002E214
/* 2EDC8 8002E1C8 24A2FFFF */   addiu     $v0, $a1, -1
/* 2EDCC 8002E1CC 8083000C */  lb         $v1, 0xc($a0)
/* 2EDD0 8002E1D0 80E20000 */  lb         $v0, ($a3)
/* 2EDD4 8002E1D4 1462000F */  bne        $v1, $v0, .L8002E214
/* 2EDD8 8002E1D8 24A2FFFF */   addiu     $v0, $a1, -1
/* 2EDDC 8002E1DC 8083000D */  lb         $v1, 0xd($a0)
/* 2EDE0 8002E1E0 80E20001 */  lb         $v0, 1($a3)
/* 2EDE4 8002E1E4 1462000B */  bne        $v1, $v0, .L8002E214
/* 2EDE8 8002E1E8 24A2FFFF */   addiu     $v0, $a1, -1
/* 2EDEC 8002E1EC 8083000E */  lb         $v1, 0xe($a0)
/* 2EDF0 8002E1F0 80E20002 */  lb         $v0, 2($a3)
/* 2EDF4 8002E1F4 14620007 */  bne        $v1, $v0, .L8002E214
/* 2EDF8 8002E1F8 24A2FFFF */   addiu     $v0, $a1, -1
/* 2EDFC 8002E1FC 84820008 */  lh         $v0, 8($a0)
/* 2EE00 8002E200 144C0004 */  bne        $v0, $t4, .L8002E214
/* 2EE04 8002E204 24A2FFFF */   addiu     $v0, $a1, -1
/* 2EE08 8002E208 8482000A */  lh         $v0, 0xa($a0)
/* 2EE0C 8002E20C 104B0007 */  beq        $v0, $t3, .L8002E22C
/* 2EE10 8002E210 24A2FFFF */   addiu     $v0, $a1, -1
.L8002E214:
/* 2EE14 8002E214 00402821 */  addu       $a1, $v0, $zero
/* 2EE18 8002E218 00021400 */  sll        $v0, $v0, 0x10
/* 2EE1C 8002E21C 00021403 */  sra        $v0, $v0, 0x10
/* 2EE20 8002E220 0046102A */  slt        $v0, $v0, $a2
/* 2EE24 8002E224 1040FFDE */  beqz       $v0, .L8002E1A0
/* 2EE28 8002E228 2484FFF0 */   addiu     $a0, $a0, -0x10
.L8002E22C:
/* 2EE2C 8002E22C 00051C00 */  sll        $v1, $a1, 0x10
.L8002E230:
/* 2EE30 8002E230 00031C03 */  sra        $v1, $v1, 0x10
/* 2EE34 8002E234 3C02800F */  lui        $v0, %hi(D_800EE32C)
/* 2EE38 8002E238 8442E32C */  lh         $v0, %lo(D_800EE32C)($v0)
/* 2EE3C 8002E23C 0043102A */  slt        $v0, $v0, $v1
/* 2EE40 8002E240 1440002D */  bnez       $v0, .L8002E2F8
/* 2EE44 8002E244 00091C00 */   sll       $v1, $t1, 0x10
/* 2EE48 8002E248 3C02800F */  lui        $v0, %hi(D_800EE992)
/* 2EE4C 8002E24C 8442E992 */  lh         $v0, %lo(D_800EE992)($v0)
/* 2EE50 8002E250 00021100 */  sll        $v0, $v0, 4
/* 2EE54 8002E254 3C03800F */  lui        $v1, %hi(D_800F50BC)
/* 2EE58 8002E258 8C6350BC */  lw         $v1, %lo(D_800F50BC)($v1)
/* 2EE5C 8002E25C 00432021 */  addu       $a0, $v0, $v1
/* 2EE60 8002E260 95020000 */  lhu        $v0, ($t0)
/* 2EE64 8002E264 A4820000 */  sh         $v0, ($a0)
/* 2EE68 8002E268 95020002 */  lhu        $v0, 2($t0)
/* 2EE6C 8002E26C A4820002 */  sh         $v0, 2($a0)
/* 2EE70 8002E270 95020004 */  lhu        $v0, 4($t0)
/* 2EE74 8002E274 A4820004 */  sh         $v0, 4($a0)
/* 2EE78 8002E278 90E20000 */  lbu        $v0, ($a3)
/* 2EE7C 8002E27C A082000C */  sb         $v0, 0xc($a0)
/* 2EE80 8002E280 90E20001 */  lbu        $v0, 1($a3)
/* 2EE84 8002E284 A082000D */  sb         $v0, 0xd($a0)
/* 2EE88 8002E288 90E20002 */  lbu        $v0, 2($a3)
/* 2EE8C 8002E28C A082000E */  sb         $v0, 0xe($a0)
/* 2EE90 8002E290 A48F0008 */  sh         $t7, 8($a0)
/* 2EE94 8002E294 A48E000A */  sh         $t6, 0xa($a0)
/* 2EE98 8002E298 240200FF */  addiu      $v0, $zero, 0xff
/* 2EE9C 8002E29C A082000F */  sb         $v0, 0xf($a0)
/* 2EEA0 8002E2A0 00091400 */  sll        $v0, $t1, 0x10
/* 2EEA4 8002E2A4 000213C3 */  sra        $v0, $v0, 0xf
/* 2EEA8 8002E2A8 004A1021 */  addu       $v0, $v0, $t2
/* 2EEAC 8002E2AC 3C03800F */  lui        $v1, %hi(D_800EE992)
/* 2EEB0 8002E2B0 9463E992 */  lhu        $v1, %lo(D_800EE992)($v1)
/* 2EEB4 8002E2B4 3C04800F */  lui        $a0, %hi(D_800EE32C)
/* 2EEB8 8002E2B8 9484E32C */  lhu        $a0, %lo(D_800EE32C)($a0)
/* 2EEBC 8002E2BC 00641823 */  subu       $v1, $v1, $a0
/* 2EEC0 8002E2C0 A4430002 */  sh         $v1, 2($v0)
/* 2EEC4 8002E2C4 A154000A */  sb         $s4, 0xa($t2)
/* 2EEC8 8002E2C8 3C02800F */  lui        $v0, %hi(D_800EE992)
/* 2EECC 8002E2CC 9442E992 */  lhu        $v0, %lo(D_800EE992)($v0)
/* 2EED0 8002E2D0 24420001 */  addiu      $v0, $v0, 1
/* 2EED4 8002E2D4 3C01800F */  lui        $at, %hi(D_800EE992)
/* 2EED8 8002E2D8 A422E992 */  sh         $v0, %lo(D_800EE992)($at)
/* 2EEDC 8002E2DC 3C02800F */  lui        $v0, %hi(D_800F3F3C)
/* 2EEE0 8002E2E0 94423F3C */  lhu        $v0, %lo(D_800F3F3C)($v0)
/* 2EEE4 8002E2E4 24420001 */  addiu      $v0, $v0, 1
/* 2EEE8 8002E2E8 3C01800F */  lui        $at, %hi(D_800F3F3C)
/* 2EEEC 8002E2EC A4223F3C */  sh         $v0, %lo(D_800F3F3C)($at)
/* 2EEF0 8002E2F0 0800B8CA */  j          .L8002E328
/* 2EEF4 8002E2F4 25220001 */   addiu     $v0, $t1, 1
.L8002E2F8:
/* 2EEF8 8002E2F8 3C02800F */  lui        $v0, %hi(D_800ED4AC)
/* 2EEFC 8002E2FC 9442D4AC */  lhu        $v0, %lo(D_800ED4AC)($v0)
/* 2EF00 8002E300 24420001 */  addiu      $v0, $v0, 1
/* 2EF04 8002E304 3C01800F */  lui        $at, %hi(D_800ED4AC)
/* 2EF08 8002E308 A422D4AC */  sh         $v0, %lo(D_800ED4AC)($at)
/* 2EF0C 8002E30C 00031BC3 */  sra        $v1, $v1, 0xf
/* 2EF10 8002E310 006A1821 */  addu       $v1, $v1, $t2
/* 2EF14 8002E314 3C02800F */  lui        $v0, %hi(D_800EE32C)
/* 2EF18 8002E318 9442E32C */  lhu        $v0, %lo(D_800EE32C)($v0)
/* 2EF1C 8002E31C 00A21023 */  subu       $v0, $a1, $v0
/* 2EF20 8002E320 A4620002 */  sh         $v0, 2($v1)
/* 2EF24 8002E324 25220001 */  addiu      $v0, $t1, 1
.L8002E328:
/* 2EF28 8002E328 00404821 */  addu       $t1, $v0, $zero
/* 2EF2C 8002E32C 00021400 */  sll        $v0, $v0, 0x10
/* 2EF30 8002E330 00021403 */  sra        $v0, $v0, 0x10
/* 2EF34 8002E334 0050102A */  slt        $v0, $v0, $s0
/* 2EF38 8002E338 1440FF44 */  bnez       $v0, .L8002E04C
/* 2EF3C 8002E33C 00091400 */   sll       $v0, $t1, 0x10
.L8002E340:
/* 2EF40 8002E340 12A00006 */  beqz       $s5, .L8002E35C
/* 2EF44 8002E344 00000000 */   nop
/* 2EF48 8002E348 3C02800F */  lui        $v0, %hi(D_800F546A)
/* 2EF4C 8002E34C 9442546A */  lhu        $v0, %lo(D_800F546A)($v0)
/* 2EF50 8002E350 24420001 */  addiu      $v0, $v0, 1
/* 2EF54 8002E354 3C01800F */  lui        $at, %hi(D_800F546A)
/* 2EF58 8002E358 A422546A */  sh         $v0, %lo(D_800F546A)($at)
.L8002E35C:
/* 2EF5C 8002E35C 3C02800F */  lui        $v0, %hi(D_800F3292)
/* 2EF60 8002E360 94423292 */  lhu        $v0, %lo(D_800F3292)($v0)
/* 2EF64 8002E364 24420001 */  addiu      $v0, $v0, 1
/* 2EF68 8002E368 3C01800F */  lui        $at, %hi(D_800F3292)
/* 2EF6C 8002E36C A4223292 */  sh         $v0, %lo(D_800F3292)($at)
.L8002E370:
/* 2EF70 8002E370 27C30001 */  addiu      $v1, $fp, 1
.L8002E374:
/* 2EF74 8002E374 0060F021 */  addu       $fp, $v1, $zero
/* 2EF78 8002E378 00031C00 */  sll        $v1, $v1, 0x10
/* 2EF7C 8002E37C 00031C03 */  sra        $v1, $v1, 0x10
/* 2EF80 8002E380 97B80016 */  lhu        $t8, 0x16($sp)
/* 2EF84 8002E384 00181400 */  sll        $v0, $t8, 0x10
/* 2EF88 8002E388 00021403 */  sra        $v0, $v0, 0x10
/* 2EF8C 8002E38C 0062182A */  slt        $v1, $v1, $v0
/* 2EF90 8002E390 1460FE9B */  bnez       $v1, .L8002DE00
/* 2EF94 8002E394 00000000 */   nop
.L8002E398:
/* 2EF98 8002E398 3C03800F */  lui        $v1, %hi(D_800EE992)
/* 2EF9C 8002E39C 8463E992 */  lh         $v1, %lo(D_800EE992)($v1)
/* 2EFA0 8002E3A0 3C02800F */  lui        $v0, %hi(D_800EE32C)
/* 2EFA4 8002E3A4 8442E32C */  lh         $v0, %lo(D_800EE32C)($v0)
/* 2EFA8 8002E3A8 1062002B */  beq        $v1, $v0, .L8002E458
/* 2EFAC 8002E3AC 00141400 */   sll       $v0, $s4, 0x10
/* 2EFB0 8002E3B0 00021C03 */  sra        $v1, $v0, 0x10
/* 2EFB4 8002E3B4 00161400 */  sll        $v0, $s6, 0x10
/* 2EFB8 8002E3B8 00021403 */  sra        $v0, $v0, 0x10
/* 2EFBC 8002E3BC 10620017 */  beq        $v1, $v0, .L8002E41C
/* 2EFC0 8002E3C0 00000000 */   nop
/* 2EFC4 8002E3C4 1060000B */  beqz       $v1, .L8002E3F4
/* 2EFC8 8002E3C8 00000000 */   nop
/* 2EFCC 8002E3CC 3C02800F */  lui        $v0, %hi(D_800F37DC)
/* 2EFD0 8002E3D0 8C4237DC */  lw         $v0, %lo(D_800F37DC)($v0)
/* 2EFD4 8002E3D4 24430008 */  addiu      $v1, $v0, 8
/* 2EFD8 8002E3D8 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2EFDC 8002E3DC AC2337DC */  sw         $v1, %lo(D_800F37DC)($at)
/* 2EFE0 8002E3E0 3C03D9FD */  lui        $v1, 0xd9fd
/* 2EFE4 8002E3E4 3463FFFF */  ori        $v1, $v1, 0xffff
/* 2EFE8 8002E3E8 AC430000 */  sw         $v1, ($v0)
/* 2EFEC 8002E3EC 0800B907 */  j          .L8002E41C
/* 2EFF0 8002E3F0 AC400004 */   sw        $zero, 4($v0)
.L8002E3F4:
/* 2EFF4 8002E3F4 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 2EFF8 8002E3F8 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 2EFFC 8002E3FC 24620008 */  addiu      $v0, $v1, 8
/* 2F000 8002E400 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2F004 8002E404 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2F008 8002E408 3C02D9FF */  lui        $v0, 0xd9ff
/* 2F00C 8002E40C 3442FFFF */  ori        $v0, $v0, 0xffff
/* 2F010 8002E410 AC620000 */  sw         $v0, ($v1)
/* 2F014 8002E414 3C020002 */  lui        $v0, 2
/* 2F018 8002E418 AC620004 */  sw         $v0, 4($v1)
.L8002E41C:
/* 2F01C 8002E41C 3C05800D */  lui        $a1, %hi(D_800D6010)
/* 2F020 8002E420 8CA56010 */  lw         $a1, %lo(D_800D6010)($a1)
/* 2F024 8002E424 02602021 */  addu       $a0, $s3, $zero
/* 2F028 8002E428 0C00B922 */  jal        func_8002E488
/* 2F02C 8002E42C 24A50014 */   addiu     $a1, $a1, 0x14
/* 2F030 8002E430 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 2F034 8002E434 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 2F038 8002E438 24620008 */  addiu      $v0, $v1, 8
/* 2F03C 8002E43C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2F040 8002E440 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2F044 8002E444 3C02D9FF */  lui        $v0, 0xd9ff
/* 2F048 8002E448 3442FFFF */  ori        $v0, $v0, 0xffff
/* 2F04C 8002E44C AC620000 */  sw         $v0, ($v1)
/* 2F050 8002E450 3C020002 */  lui        $v0, 2
/* 2F054 8002E454 AC620004 */  sw         $v0, 4($v1)
.L8002E458:
/* 2F058 8002E458 8FBF005C */  lw         $ra, 0x5c($sp)
/* 2F05C 8002E45C 8FBE0058 */  lw         $fp, 0x58($sp)
/* 2F060 8002E460 8FB70054 */  lw         $s7, 0x54($sp)
/* 2F064 8002E464 8FB60050 */  lw         $s6, 0x50($sp)
/* 2F068 8002E468 8FB5004C */  lw         $s5, 0x4c($sp)
/* 2F06C 8002E46C 8FB40048 */  lw         $s4, 0x48($sp)
/* 2F070 8002E470 8FB30044 */  lw         $s3, 0x44($sp)
/* 2F074 8002E474 8FB20040 */  lw         $s2, 0x40($sp)
/* 2F078 8002E478 8FB1003C */  lw         $s1, 0x3c($sp)
/* 2F07C 8002E47C 8FB00038 */  lw         $s0, 0x38($sp)
/* 2F080 8002E480 03E00008 */  jr         $ra
/* 2F084 8002E484 27BD0060 */   addiu     $sp, $sp, 0x60
