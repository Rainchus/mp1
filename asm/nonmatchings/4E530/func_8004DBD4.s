	.set noat
	.set noreorder

glabel func_8004DBD4
/* 4E7D4 8004DBD4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 4E7D8 8004DBD8 AFBF004C */  sw         $ra, 0x4c($sp)
/* 4E7DC 8004DBDC AFBE0048 */  sw         $fp, 0x48($sp)
/* 4E7E0 8004DBE0 AFB70044 */  sw         $s7, 0x44($sp)
/* 4E7E4 8004DBE4 AFB60040 */  sw         $s6, 0x40($sp)
/* 4E7E8 8004DBE8 AFB5003C */  sw         $s5, 0x3c($sp)
/* 4E7EC 8004DBEC AFB40038 */  sw         $s4, 0x38($sp)
/* 4E7F0 8004DBF0 AFB30034 */  sw         $s3, 0x34($sp)
/* 4E7F4 8004DBF4 AFB20030 */  sw         $s2, 0x30($sp)
/* 4E7F8 8004DBF8 AFB1002C */  sw         $s1, 0x2c($sp)
/* 4E7FC 8004DBFC AFB00028 */  sw         $s0, 0x28($sp)
/* 4E800 8004DC00 0080B821 */  addu       $s7, $a0, $zero
/* 4E804 8004DC04 00A0B021 */  addu       $s6, $a1, $zero
/* 4E808 8004DC08 00009821 */  addu       $s3, $zero, $zero
/* 4E80C 8004DC0C 3C05800D */  lui        $a1, %hi(D_800CB0EC)
/* 4E810 8004DC10 24A5B0EC */  addiu      $a1, $a1, %lo(D_800CB0EC)
/* 4E814 8004DC14 88A20000 */  lwl        $v0, ($a1)
/* 4E818 8004DC18 98A20003 */  lwr        $v0, 3($a1)
/* 4E81C 8004DC1C ABA20020 */  swl        $v0, 0x20($sp)
/* 4E820 8004DC20 BBA20023 */  swr        $v0, 0x23($sp)
/* 4E824 8004DC24 00008821 */  addu       $s1, $zero, $zero
/* 4E828 8004DC28 27B20018 */  addiu      $s2, $sp, 0x18
/* 4E82C 8004DC2C 0017AC00 */  sll        $s5, $s7, 0x10
/* 4E830 8004DC30 27B40020 */  addiu      $s4, $sp, 0x20
/* 4E834 8004DC34 241EFFFF */  addiu      $fp, $zero, -1
.L8004DC38:
/* 4E838 8004DC38 16360022 */  bne        $s1, $s6, .L8004DCC4
/* 4E83C 8004DC3C 00111040 */   sll       $v0, $s1, 1
/* 4E840 8004DC40 00511021 */  addu       $v0, $v0, $s1
/* 4E844 8004DC44 00021900 */  sll        $v1, $v0, 4
/* 4E848 8004DC48 3C02800F */  lui        $v0, %hi(D_800F32B6)
/* 4E84C 8004DC4C 00431021 */  addu       $v0, $v0, $v1
/* 4E850 8004DC50 944232B6 */  lhu        $v0, %lo(D_800F32B6)($v0)
/* 4E854 8004DC54 30420001 */  andi       $v0, $v0, 1
/* 4E858 8004DC58 10400009 */  beqz       $v0, .L8004DC80
/* 4E85C 8004DC5C 24088000 */   addiu     $t0, $zero, -0x8000
/* 4E860 8004DC60 24130001 */  addiu      $s3, $zero, 1
/* 4E864 8004DC64 3C02800F */  lui        $v0, %hi(D_800F32B3)
/* 4E868 8004DC68 00431021 */  addu       $v0, $v0, $v1
/* 4E86C 8004DC6C 904232B3 */  lbu        $v0, %lo(D_800F32B3)($v0)
/* 4E870 8004DC70 00021040 */  sll        $v0, $v0, 1
/* 4E874 8004DC74 00521021 */  addu       $v0, $v0, $s2
/* 4E878 8004DC78 08013739 */  j          .L8004DCE4
/* 4E87C 8004DC7C A4480000 */   sh        $t0, ($v0)
.L8004DC80:
/* 4E880 8004DC80 00118040 */  sll        $s0, $s1, 1
/* 4E884 8004DC84 02118021 */  addu       $s0, $s0, $s1
/* 4E888 8004DC88 00108100 */  sll        $s0, $s0, 4
/* 4E88C 8004DC8C 3C02800F */  lui        $v0, %hi(D_800F32B3)
/* 4E890 8004DC90 00501021 */  addu       $v0, $v0, $s0
/* 4E894 8004DC94 904232B3 */  lbu        $v0, %lo(D_800F32B3)($v0)
/* 4E898 8004DC98 02821021 */  addu       $v0, $s4, $v0
/* 4E89C 8004DC9C 90450000 */  lbu        $a1, ($v0)
/* 4E8A0 8004DCA0 0C01C557 */  jal        func_8007155C
/* 4E8A4 8004DCA4 00152403 */   sra       $a0, $s5, 0x10
/* 4E8A8 8004DCA8 3C02800F */  lui        $v0, %hi(D_800F32B3)
/* 4E8AC 8004DCAC 00501021 */  addu       $v0, $v0, $s0
/* 4E8B0 8004DCB0 904232B3 */  lbu        $v0, %lo(D_800F32B3)($v0)
/* 4E8B4 8004DCB4 00021040 */  sll        $v0, $v0, 1
/* 4E8B8 8004DCB8 00521021 */  addu       $v0, $v0, $s2
/* 4E8BC 8004DCBC 08013739 */  j          .L8004DCE4
/* 4E8C0 8004DCC0 A45E0000 */   sh        $fp, ($v0)
.L8004DCC4:
/* 4E8C4 8004DCC4 00511021 */  addu       $v0, $v0, $s1
/* 4E8C8 8004DCC8 00021100 */  sll        $v0, $v0, 4
/* 4E8CC 8004DCCC 3C01800F */  lui        $at, %hi(D_800F32B3)
/* 4E8D0 8004DCD0 00220821 */  addu       $at, $at, $v0
/* 4E8D4 8004DCD4 902232B3 */  lbu        $v0, %lo(D_800F32B3)($at)
/* 4E8D8 8004DCD8 00021040 */  sll        $v0, $v0, 1
/* 4E8DC 8004DCDC 00521021 */  addu       $v0, $v0, $s2
/* 4E8E0 8004DCE0 A4400000 */  sh         $zero, ($v0)
.L8004DCE4:
/* 4E8E4 8004DCE4 26310001 */  addiu      $s1, $s1, 1
/* 4E8E8 8004DCE8 2A220004 */  slti       $v0, $s1, 4
/* 4E8EC 8004DCEC 1440FFD2 */  bnez       $v0, .L8004DC38
/* 4E8F0 8004DCF0 00000000 */   nop
/* 4E8F4 8004DCF4 1260003E */  beqz       $s3, .L8004DDF0
/* 4E8F8 8004DCF8 24050002 */   addiu     $a1, $zero, 2
/* 4E8FC 8004DCFC 00172400 */  sll        $a0, $s7, 0x10
/* 4E900 8004DD00 00042403 */  sra        $a0, $a0, 0x10
/* 4E904 8004DD04 0C01B687 */  jal        func_8006DA1C
/* 4E908 8004DD08 24060002 */   addiu     $a2, $zero, 2
/* 4E90C 8004DD0C 87A40018 */  lh         $a0, 0x18($sp)
/* 4E910 8004DD10 87A5001A */  lh         $a1, 0x1a($sp)
/* 4E914 8004DD14 87A6001C */  lh         $a2, 0x1c($sp)
/* 4E918 8004DD18 87A7001E */  lh         $a3, 0x1e($sp)
/* 4E91C 8004DD1C 3C10800C */  lui        $s0, %hi(D_800C5213)
/* 4E920 8004DD20 26105213 */  addiu      $s0, $s0, %lo(D_800C5213)
/* 4E924 8004DD24 92020000 */  lbu        $v0, ($s0)
/* 4E928 8004DD28 0C01C3FE */  jal        func_80070FF8
/* 4E92C 8004DD2C AFA20010 */   sw        $v0, 0x10($sp)
/* 4E930 8004DD30 87A40018 */  lh         $a0, 0x18($sp)
/* 4E934 8004DD34 87A5001A */  lh         $a1, 0x1a($sp)
/* 4E938 8004DD38 87A6001C */  lh         $a2, 0x1c($sp)
/* 4E93C 8004DD3C 87A7001E */  lh         $a3, 0x1e($sp)
/* 4E940 8004DD40 92020000 */  lbu        $v0, ($s0)
/* 4E944 8004DD44 0C01C3FE */  jal        func_80070FF8
/* 4E948 8004DD48 AFA20010 */   sw        $v0, 0x10($sp)
/* 4E94C 8004DD4C 87A40018 */  lh         $a0, 0x18($sp)
/* 4E950 8004DD50 87A5001A */  lh         $a1, 0x1a($sp)
/* 4E954 8004DD54 87A6001C */  lh         $a2, 0x1c($sp)
/* 4E958 8004DD58 87A7001E */  lh         $a3, 0x1e($sp)
/* 4E95C 8004DD5C 92020000 */  lbu        $v0, ($s0)
/* 4E960 8004DD60 0C01C3FE */  jal        func_80070FF8
/* 4E964 8004DD64 AFA20010 */   sw        $v0, 0x10($sp)
/* 4E968 8004DD68 87A40018 */  lh         $a0, 0x18($sp)
/* 4E96C 8004DD6C 87A5001A */  lh         $a1, 0x1a($sp)
/* 4E970 8004DD70 87A6001C */  lh         $a2, 0x1c($sp)
/* 4E974 8004DD74 87A7001E */  lh         $a3, 0x1e($sp)
/* 4E978 8004DD78 92020000 */  lbu        $v0, ($s0)
/* 4E97C 8004DD7C 0C01C3FE */  jal        func_80070FF8
/* 4E980 8004DD80 AFA20010 */   sw        $v0, 0x10($sp)
/* 4E984 8004DD84 87A40018 */  lh         $a0, 0x18($sp)
/* 4E988 8004DD88 87A5001A */  lh         $a1, 0x1a($sp)
/* 4E98C 8004DD8C 87A6001C */  lh         $a2, 0x1c($sp)
/* 4E990 8004DD90 87A7001E */  lh         $a3, 0x1e($sp)
/* 4E994 8004DD94 92020000 */  lbu        $v0, ($s0)
/* 4E998 8004DD98 0C01C3FE */  jal        func_80070FF8
/* 4E99C 8004DD9C AFA20010 */   sw        $v0, 0x10($sp)
/* 4E9A0 8004DDA0 87A40018 */  lh         $a0, 0x18($sp)
/* 4E9A4 8004DDA4 87A5001A */  lh         $a1, 0x1a($sp)
/* 4E9A8 8004DDA8 87A6001C */  lh         $a2, 0x1c($sp)
/* 4E9AC 8004DDAC 87A7001E */  lh         $a3, 0x1e($sp)
/* 4E9B0 8004DDB0 92020000 */  lbu        $v0, ($s0)
/* 4E9B4 8004DDB4 0C01C3FE */  jal        func_80070FF8
/* 4E9B8 8004DDB8 AFA20010 */   sw        $v0, 0x10($sp)
/* 4E9BC 8004DDBC 87A40018 */  lh         $a0, 0x18($sp)
/* 4E9C0 8004DDC0 87A5001A */  lh         $a1, 0x1a($sp)
/* 4E9C4 8004DDC4 87A6001C */  lh         $a2, 0x1c($sp)
/* 4E9C8 8004DDC8 87A7001E */  lh         $a3, 0x1e($sp)
/* 4E9CC 8004DDCC 92020000 */  lbu        $v0, ($s0)
/* 4E9D0 8004DDD0 0C01C3FE */  jal        func_80070FF8
/* 4E9D4 8004DDD4 AFA20010 */   sw        $v0, 0x10($sp)
/* 4E9D8 8004DDD8 3C02800C */  lui        $v0, %hi(D_800C5214)
/* 4E9DC 8004DDDC 8C425214 */  lw         $v0, %lo(D_800C5214)($v0)
/* 4E9E0 8004DDE0 3C01800C */  lui        $at, %hi(D_800C5210)
/* 4E9E4 8004DDE4 AC225210 */  sw         $v0, %lo(D_800C5210)($at)
/* 4E9E8 8004DDE8 08013782 */  j          .L8004DE08
/* 4E9EC 8004DDEC 00178400 */   sll       $s0, $s7, 0x10
.L8004DDF0:
/* 4E9F0 8004DDF0 87A40018 */  lh         $a0, 0x18($sp)
/* 4E9F4 8004DDF4 87A5001A */  lh         $a1, 0x1a($sp)
/* 4E9F8 8004DDF8 87A6001C */  lh         $a2, 0x1c($sp)
/* 4E9FC 8004DDFC 87A7001E */  lh         $a3, 0x1e($sp)
/* 4EA00 8004DE00 0C01C429 */  jal        func_800710A4
/* 4EA04 8004DE04 00178400 */   sll       $s0, $s7, 0x10
.L8004DE08:
/* 4EA08 8004DE08 0C01BF30 */  jal        func_8006FCC0
/* 4EA0C 8004DE0C 00102403 */   sra       $a0, $s0, 0x10
/* 4EA10 8004DE10 00021400 */  sll        $v0, $v0, 0x10
/* 4EA14 8004DE14 10400005 */  beqz       $v0, .L8004DE2C
/* 4EA18 8004DE18 00000000 */   nop
/* 4EA1C 8004DE1C 0C018D6D */  jal        func_800635B4
/* 4EA20 8004DE20 00000000 */   nop
/* 4EA24 8004DE24 08013782 */  j          .L8004DE08
/* 4EA28 8004DE28 00000000 */   nop
.L8004DE2C:
/* 4EA2C 8004DE2C 0C01C499 */  jal        func_80071264
/* 4EA30 8004DE30 00000000 */   nop
/* 4EA34 8004DE34 8FBF004C */  lw         $ra, 0x4c($sp)
/* 4EA38 8004DE38 8FBE0048 */  lw         $fp, 0x48($sp)
/* 4EA3C 8004DE3C 8FB70044 */  lw         $s7, 0x44($sp)
/* 4EA40 8004DE40 8FB60040 */  lw         $s6, 0x40($sp)
/* 4EA44 8004DE44 8FB5003C */  lw         $s5, 0x3c($sp)
/* 4EA48 8004DE48 8FB40038 */  lw         $s4, 0x38($sp)
/* 4EA4C 8004DE4C 8FB30034 */  lw         $s3, 0x34($sp)
/* 4EA50 8004DE50 8FB20030 */  lw         $s2, 0x30($sp)
/* 4EA54 8004DE54 8FB1002C */  lw         $s1, 0x2c($sp)
/* 4EA58 8004DE58 8FB00028 */  lw         $s0, 0x28($sp)
/* 4EA5C 8004DE5C 03E00008 */  jr         $ra
/* 4EA60 8004DE60 27BD0050 */   addiu     $sp, $sp, 0x50
