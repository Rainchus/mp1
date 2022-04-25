	.set noat
	.set noreorder

glabel func_8002BCD4
/* 2C8D4 8002BCD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C8D8 8002BCD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2C8DC 8002BCDC AFB00010 */  sw         $s0, 0x10($sp)
/* 2C8E0 8002BCE0 00808021 */  addu       $s0, $a0, $zero
/* 2C8E4 8002BCE4 00003821 */  addu       $a3, $zero, $zero
/* 2C8E8 8002BCE8 00002821 */  addu       $a1, $zero, $zero
/* 2C8EC 8002BCEC 8602006A */  lh         $v0, 0x6a($s0)
/* 2C8F0 8002BCF0 18400022 */  blez       $v0, .L8002BD7C
/* 2C8F4 8002BCF4 00003021 */   addu      $a2, $zero, $zero
/* 2C8F8 8002BCF8 8E090080 */  lw         $t1, 0x80($s0)
/* 2C8FC 8002BCFC 3C0A0002 */  lui        $t2, 2
/* 2C900 8002BD00 8608006A */  lh         $t0, 0x6a($s0)
/* 2C904 8002BD04 00051400 */  sll        $v0, $a1, 0x10
.L8002BD08:
/* 2C908 8002BD08 00021403 */  sra        $v0, $v0, 0x10
/* 2C90C 8002BD0C 00021840 */  sll        $v1, $v0, 1
/* 2C910 8002BD10 00621821 */  addu       $v1, $v1, $v0
/* 2C914 8002BD14 000318C0 */  sll        $v1, $v1, 3
/* 2C918 8002BD18 00621823 */  subu       $v1, $v1, $v0
/* 2C91C 8002BD1C 00031880 */  sll        $v1, $v1, 2
/* 2C920 8002BD20 00691821 */  addu       $v1, $v1, $t1
/* 2C924 8002BD24 8C620014 */  lw         $v0, 0x14($v1)
/* 2C928 8002BD28 004A1024 */  and        $v0, $v0, $t2
/* 2C92C 8002BD2C 54400001 */  bnel       $v0, $zero, .L8002BD34
/* 2C930 8002BD30 24070001 */   addiu     $a3, $zero, 1
.L8002BD34:
/* 2C934 8002BD34 00051C00 */  sll        $v1, $a1, 0x10
/* 2C938 8002BD38 00031C03 */  sra        $v1, $v1, 0x10
/* 2C93C 8002BD3C 8E040080 */  lw         $a0, 0x80($s0)
/* 2C940 8002BD40 00031040 */  sll        $v0, $v1, 1
/* 2C944 8002BD44 00431021 */  addu       $v0, $v0, $v1
/* 2C948 8002BD48 000210C0 */  sll        $v0, $v0, 3
/* 2C94C 8002BD4C 00431023 */  subu       $v0, $v0, $v1
/* 2C950 8002BD50 00021080 */  sll        $v0, $v0, 2
/* 2C954 8002BD54 00441021 */  addu       $v0, $v0, $a0
/* 2C958 8002BD58 94420004 */  lhu        $v0, 4($v0)
/* 2C95C 8002BD5C 00463021 */  addu       $a2, $v0, $a2
/* 2C960 8002BD60 24A20001 */  addiu      $v0, $a1, 1
/* 2C964 8002BD64 00402821 */  addu       $a1, $v0, $zero
/* 2C968 8002BD68 00021400 */  sll        $v0, $v0, 0x10
/* 2C96C 8002BD6C 00021403 */  sra        $v0, $v0, 0x10
/* 2C970 8002BD70 0048102A */  slt        $v0, $v0, $t0
/* 2C974 8002BD74 1440FFE4 */  bnez       $v0, .L8002BD08
/* 2C978 8002BD78 00051400 */   sll       $v0, $a1, 0x10
.L8002BD7C:
/* 2C97C 8002BD7C 00E01021 */  addu       $v0, $a3, $zero
/* 2C980 8002BD80 1040000B */  beqz       $v0, .L8002BDB0
/* 2C984 8002BD84 00000000 */   nop
/* 2C988 8002BD88 8E0200D0 */  lw         $v0, 0xd0($s0)
/* 2C98C 8002BD8C 14400008 */  bnez       $v0, .L8002BDB0
/* 2C990 8002BD90 30C2FFFF */   andi      $v0, $a2, 0xffff
/* 2C994 8002BD94 00022040 */  sll        $a0, $v0, 1
/* 2C998 8002BD98 00822021 */  addu       $a0, $a0, $v0
/* 2C99C 8002BD9C 3C05800F */  lui        $a1, %hi(D_800EE32E)
/* 2C9A0 8002BDA0 84A5E32E */  lh         $a1, %lo(D_800EE32E)($a1)
/* 2C9A4 8002BDA4 0C008DA1 */  jal        func_80023684
/* 2C9A8 8002BDA8 000420C0 */   sll       $a0, $a0, 3
/* 2C9AC 8002BDAC AE0200D0 */  sw         $v0, 0xd0($s0)
.L8002BDB0:
/* 2C9B0 8002BDB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C9B4 8002BDB4 8FB00010 */  lw         $s0, 0x10($sp)
/* 2C9B8 8002BDB8 03E00008 */  jr         $ra
/* 2C9BC 8002BDBC 27BD0018 */   addiu     $sp, $sp, 0x18
