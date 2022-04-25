	.set noat
	.set noreorder

glabel func_800F9BCC_151F2C
/* 151F2C 800F9BCC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 151F30 800F9BD0 AFBF0030 */  sw         $ra, 0x30($sp)
/* 151F34 800F9BD4 AFB5002C */  sw         $s5, 0x2c($sp)
/* 151F38 800F9BD8 AFB40028 */  sw         $s4, 0x28($sp)
/* 151F3C 800F9BDC AFB30024 */  sw         $s3, 0x24($sp)
/* 151F40 800F9BE0 AFB20020 */  sw         $s2, 0x20($sp)
/* 151F44 800F9BE4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 151F48 800F9BE8 AFB00018 */  sw         $s0, 0x18($sp)
/* 151F4C 800F9BEC 00808821 */  addu       $s1, $a0, $zero
/* 151F50 800F9BF0 00A09021 */  addu       $s2, $a1, $zero
/* 151F54 800F9BF4 8FB40048 */  lw         $s4, 0x48($sp)
/* 151F58 800F9BF8 00E09821 */  addu       $s3, $a3, $zero
/* 151F5C 800F9BFC 24020A99 */  addiu      $v0, $zero, 0xa99
/* 151F60 800F9C00 AFA20010 */  sw         $v0, 0x10($sp)
/* 151F64 800F9C04 AFA20014 */  sw         $v0, 0x14($sp)
/* 151F68 800F9C08 0C0025E7 */  jal        func_8000979C
/* 151F6C 800F9C0C 3267FFFF */   andi      $a3, $s3, 0xffff
/* 151F70 800F9C10 24040019 */  addiu      $a0, $zero, 0x19
/* 151F74 800F9C14 0C005D4A */  jal        func_80017528
/* 151F78 800F9C18 24050A8D */   addiu     $a1, $zero, 0xa8d
/* 151F7C 800F9C1C 8E230040 */  lw         $v1, 0x40($s1)
/* 151F80 800F9C20 A4620006 */  sh         $v0, 6($v1)
/* 151F84 800F9C24 2404001A */  addiu      $a0, $zero, 0x1a
/* 151F88 800F9C28 0C005D4A */  jal        func_80017528
/* 151F8C 800F9C2C 24050A8D */   addiu     $a1, $zero, 0xa8d
/* 151F90 800F9C30 8E230040 */  lw         $v1, 0x40($s1)
/* 151F94 800F9C34 A4620008 */  sh         $v0, 8($v1)
/* 151F98 800F9C38 2404001B */  addiu      $a0, $zero, 0x1b
/* 151F9C 800F9C3C 0C005D4A */  jal        func_80017528
/* 151FA0 800F9C40 24050A8D */   addiu     $a1, $zero, 0xa8d
/* 151FA4 800F9C44 8E230040 */  lw         $v1, 0x40($s1)
/* 151FA8 800F9C48 A462000C */  sh         $v0, 0xc($v1)
/* 151FAC 800F9C4C 24020008 */  addiu      $v0, $zero, 8
/* 151FB0 800F9C50 AFA20010 */  sw         $v0, 0x10($sp)
/* 151FB4 800F9C54 3C028010 */  lui        $v0, %hi(D_800FA820)
/* 151FB8 800F9C58 9442A820 */  lhu        $v0, %lo(D_800FA820)($v0)
/* 151FBC 800F9C5C 24430001 */  addiu      $v1, $v0, 1
/* 151FC0 800F9C60 3C018010 */  lui        $at, %hi(D_800FA820)
/* 151FC4 800F9C64 A423A820 */  sh         $v1, %lo(D_800FA820)($at)
/* 151FC8 800F9C68 3042FFFF */  andi       $v0, $v0, 0xffff
/* 151FCC 800F9C6C AFA20014 */  sw         $v0, 0x14($sp)
/* 151FD0 800F9C70 02202021 */  addu       $a0, $s1, $zero
/* 151FD4 800F9C74 2405000A */  addiu      $a1, $zero, 0xa
/* 151FD8 800F9C78 24060026 */  addiu      $a2, $zero, 0x26
/* 151FDC 800F9C7C 0C03E60E */  jal        func_800F9838_151B98
/* 151FE0 800F9C80 2407168D */   addiu     $a3, $zero, 0x168d
/* 151FE4 800F9C84 8E350050 */  lw         $s5, 0x50($s1)
/* 151FE8 800F9C88 AFA00010 */  sw         $zero, 0x10($sp)
/* 151FEC 800F9C8C 02202021 */  addu       $a0, $s1, $zero
/* 151FF0 800F9C90 00002821 */  addu       $a1, $zero, $zero
/* 151FF4 800F9C94 02403021 */  addu       $a2, $s2, $zero
/* 151FF8 800F9C98 0C0061F4 */  jal        func_800187D0
/* 151FFC 800F9C9C 24070001 */   addiu     $a3, $zero, 1
/* 152000 800F9CA0 AFA00010 */  sw         $zero, 0x10($sp)
/* 152004 800F9CA4 02202021 */  addu       $a0, $s1, $zero
/* 152008 800F9CA8 24050001 */  addiu      $a1, $zero, 1
/* 15200C 800F9CAC 36460001 */  ori        $a2, $s2, 1
/* 152010 800F9CB0 0C0061F4 */  jal        func_800187D0
/* 152014 800F9CB4 24070001 */   addiu     $a3, $zero, 1
/* 152018 800F9CB8 AFA00010 */  sw         $zero, 0x10($sp)
/* 15201C 800F9CBC 02202021 */  addu       $a0, $s1, $zero
/* 152020 800F9CC0 24050002 */  addiu      $a1, $zero, 2
/* 152024 800F9CC4 36460003 */  ori        $a2, $s2, 3
/* 152028 800F9CC8 0C0061F4 */  jal        func_800187D0
/* 15202C 800F9CCC 24070001 */   addiu     $a3, $zero, 1
/* 152030 800F9CD0 24020013 */  addiu      $v0, $zero, 0x13
/* 152034 800F9CD4 AFA20010 */  sw         $v0, 0x10($sp)
/* 152038 800F9CD8 02202021 */  addu       $a0, $s1, $zero
/* 15203C 800F9CDC 24050006 */  addiu      $a1, $zero, 6
/* 152040 800F9CE0 36460005 */  ori        $a2, $s2, 5
/* 152044 800F9CE4 0C0061F4 */  jal        func_800187D0
/* 152048 800F9CE8 24070001 */   addiu     $a3, $zero, 1
/* 15204C 800F9CEC 24020027 */  addiu      $v0, $zero, 0x27
/* 152050 800F9CF0 AFA20010 */  sw         $v0, 0x10($sp)
/* 152054 800F9CF4 02202021 */  addu       $a0, $s1, $zero
/* 152058 800F9CF8 24050009 */  addiu      $a1, $zero, 9
/* 15205C 800F9CFC 3646000A */  ori        $a2, $s2, 0xa
/* 152060 800F9D00 0C0061F4 */  jal        func_800187D0
/* 152064 800F9D04 24070001 */   addiu     $a3, $zero, 1
/* 152068 800F9D08 0C005D63 */  jal        func_8001758C
/* 15206C 800F9D0C 00000000 */   nop
/* 152070 800F9D10 30420001 */  andi       $v0, $v0, 1
/* 152074 800F9D14 1040000C */  beqz       $v0, .L800F9D48
/* 152078 800F9D18 24100078 */   addiu     $s0, $zero, 0x78
/* 15207C 800F9D1C AFB00010 */  sw         $s0, 0x10($sp)
/* 152080 800F9D20 02202021 */  addu       $a0, $s1, $zero
/* 152084 800F9D24 2405000D */  addiu      $a1, $zero, 0xd
/* 152088 800F9D28 3646000F */  ori        $a2, $s2, 0xf
/* 15208C 800F9D2C 0C0061F4 */  jal        func_800187D0
/* 152090 800F9D30 24070001 */   addiu     $a3, $zero, 1
/* 152094 800F9D34 AFB00010 */  sw         $s0, 0x10($sp)
/* 152098 800F9D38 02202021 */  addu       $a0, $s1, $zero
/* 15209C 800F9D3C 2405000E */  addiu      $a1, $zero, 0xe
/* 1520A0 800F9D40 0803E75C */  j          .L800F9D70
/* 1520A4 800F9D44 36460010 */   ori       $a2, $s2, 0x10
.L800F9D48:
/* 1520A8 800F9D48 AFB00010 */  sw         $s0, 0x10($sp)
/* 1520AC 800F9D4C 02202021 */  addu       $a0, $s1, $zero
/* 1520B0 800F9D50 2405000D */  addiu      $a1, $zero, 0xd
/* 1520B4 800F9D54 36460038 */  ori        $a2, $s2, 0x38
/* 1520B8 800F9D58 0C0061F4 */  jal        func_800187D0
/* 1520BC 800F9D5C 24070001 */   addiu     $a3, $zero, 1
/* 1520C0 800F9D60 AFB00010 */  sw         $s0, 0x10($sp)
/* 1520C4 800F9D64 02202021 */  addu       $a0, $s1, $zero
/* 1520C8 800F9D68 2405000E */  addiu      $a1, $zero, 0xe
/* 1520CC 800F9D6C 3646003C */  ori        $a2, $s2, 0x3c
.L800F9D70:
/* 1520D0 800F9D70 0C0061F4 */  jal        func_800187D0
/* 1520D4 800F9D74 24070001 */   addiu     $a3, $zero, 1
/* 1520D8 800F9D78 AFA00010 */  sw         $zero, 0x10($sp)
/* 1520DC 800F9D7C 02202021 */  addu       $a0, $s1, $zero
/* 1520E0 800F9D80 24050011 */  addiu      $a1, $zero, 0x11
/* 1520E4 800F9D84 36460018 */  ori        $a2, $s2, 0x18
/* 1520E8 800F9D88 0C0061F4 */  jal        func_800187D0
/* 1520EC 800F9D8C 00003821 */   addu      $a3, $zero, $zero
/* 1520F0 800F9D90 AFA00010 */  sw         $zero, 0x10($sp)
/* 1520F4 800F9D94 02202021 */  addu       $a0, $s1, $zero
/* 1520F8 800F9D98 24050012 */  addiu      $a1, $zero, 0x12
/* 1520FC 800F9D9C 3646001C */  ori        $a2, $s2, 0x1c
/* 152100 800F9DA0 0C0061F4 */  jal        func_800187D0
/* 152104 800F9DA4 24070002 */   addiu     $a3, $zero, 2
/* 152108 800F9DA8 AFA00010 */  sw         $zero, 0x10($sp)
/* 15210C 800F9DAC 02202021 */  addu       $a0, $s1, $zero
/* 152110 800F9DB0 24050013 */  addiu      $a1, $zero, 0x13
/* 152114 800F9DB4 3646001D */  ori        $a2, $s2, 0x1d
/* 152118 800F9DB8 0C0061F4 */  jal        func_800187D0
/* 15211C 800F9DBC 24070002 */   addiu     $a3, $zero, 2
/* 152120 800F9DC0 24020027 */  addiu      $v0, $zero, 0x27
/* 152124 800F9DC4 AFA20010 */  sw         $v0, 0x10($sp)
/* 152128 800F9DC8 02202021 */  addu       $a0, $s1, $zero
/* 15212C 800F9DCC 2405000A */  addiu      $a1, $zero, 0xa
/* 152130 800F9DD0 3646001E */  ori        $a2, $s2, 0x1e
/* 152134 800F9DD4 0C0061F4 */  jal        func_800187D0
/* 152138 800F9DD8 24070001 */   addiu     $a3, $zero, 1
/* 15213C 800F9DDC AFA00010 */  sw         $zero, 0x10($sp)
/* 152140 800F9DE0 02202021 */  addu       $a0, $s1, $zero
/* 152144 800F9DE4 24050015 */  addiu      $a1, $zero, 0x15
/* 152148 800F9DE8 36460062 */  ori        $a2, $s2, 0x62
/* 15214C 800F9DEC 0C0061F4 */  jal        func_800187D0
/* 152150 800F9DF0 00003821 */   addu      $a3, $zero, $zero
/* 152154 800F9DF4 AFA00010 */  sw         $zero, 0x10($sp)
/* 152158 800F9DF8 02202021 */  addu       $a0, $s1, $zero
/* 15215C 800F9DFC 24050003 */  addiu      $a1, $zero, 3
/* 152160 800F9E00 36460060 */  ori        $a2, $s2, 0x60
/* 152164 800F9E04 0C0061F4 */  jal        func_800187D0
/* 152168 800F9E08 24070001 */   addiu     $a3, $zero, 1
/* 15216C 800F9E0C AFA00010 */  sw         $zero, 0x10($sp)
/* 152170 800F9E10 02202021 */  addu       $a0, $s1, $zero
/* 152174 800F9E14 24050004 */  addiu      $a1, $zero, 4
/* 152178 800F9E18 36460061 */  ori        $a2, $s2, 0x61
/* 15217C 800F9E1C 0C0061F4 */  jal        func_800187D0
/* 152180 800F9E20 24070001 */   addiu     $a3, $zero, 1
/* 152184 800F9E24 AFA00010 */  sw         $zero, 0x10($sp)
/* 152188 800F9E28 02202021 */  addu       $a0, $s1, $zero
/* 15218C 800F9E2C 2405001E */  addiu      $a1, $zero, 0x1e
/* 152190 800F9E30 36460063 */  ori        $a2, $s2, 0x63
/* 152194 800F9E34 0C0061F4 */  jal        func_800187D0
/* 152198 800F9E38 24070002 */   addiu     $a3, $zero, 2
/* 15219C 800F9E3C AFA00010 */  sw         $zero, 0x10($sp)
/* 1521A0 800F9E40 02202021 */  addu       $a0, $s1, $zero
/* 1521A4 800F9E44 2405001F */  addiu      $a1, $zero, 0x1f
/* 1521A8 800F9E48 36460064 */  ori        $a2, $s2, 0x64
/* 1521AC 800F9E4C 0C0061F4 */  jal        func_800187D0
/* 1521B0 800F9E50 00003821 */   addu      $a3, $zero, $zero
/* 1521B4 800F9E54 AFA00010 */  sw         $zero, 0x10($sp)
/* 1521B8 800F9E58 02202021 */  addu       $a0, $s1, $zero
/* 1521BC 800F9E5C 24050020 */  addiu      $a1, $zero, 0x20
/* 1521C0 800F9E60 36460067 */  ori        $a2, $s2, 0x67
/* 1521C4 800F9E64 0C0061F4 */  jal        func_800187D0
/* 1521C8 800F9E68 00003821 */   addu      $a3, $zero, $zero
/* 1521CC 800F9E6C 02202021 */  addu       $a0, $s1, $zero
/* 1521D0 800F9E70 00002821 */  addu       $a1, $zero, $zero
/* 1521D4 800F9E74 0C002431 */  jal        func_800090C4
/* 1521D8 800F9E78 24060002 */   addiu     $a2, $zero, 2
/* 1521DC 800F9E7C 02202021 */  addu       $a0, $s1, $zero
/* 1521E0 800F9E80 24050001 */  addiu      $a1, $zero, 1
/* 1521E4 800F9E84 0C002431 */  jal        func_800090C4
/* 1521E8 800F9E88 24060002 */   addiu     $a2, $zero, 2
/* 1521EC 800F9E8C 02202021 */  addu       $a0, $s1, $zero
/* 1521F0 800F9E90 24050002 */  addiu      $a1, $zero, 2
/* 1521F4 800F9E94 0C002431 */  jal        func_800090C4
/* 1521F8 800F9E98 24060002 */   addiu     $a2, $zero, 2
/* 1521FC 800F9E9C 02202021 */  addu       $a0, $s1, $zero
/* 152200 800F9EA0 24050003 */  addiu      $a1, $zero, 3
/* 152204 800F9EA4 0C002431 */  jal        func_800090C4
/* 152208 800F9EA8 24060002 */   addiu     $a2, $zero, 2
/* 15220C 800F9EAC 02202021 */  addu       $a0, $s1, $zero
/* 152210 800F9EB0 24050004 */  addiu      $a1, $zero, 4
/* 152214 800F9EB4 0C002431 */  jal        func_800090C4
/* 152218 800F9EB8 24060002 */   addiu     $a2, $zero, 2
/* 15221C 800F9EBC 02202021 */  addu       $a0, $s1, $zero
/* 152220 800F9EC0 24050005 */  addiu      $a1, $zero, 5
/* 152224 800F9EC4 0C002431 */  jal        func_800090C4
/* 152228 800F9EC8 24060002 */   addiu     $a2, $zero, 2
/* 15222C 800F9ECC 02202021 */  addu       $a0, $s1, $zero
/* 152230 800F9ED0 24050006 */  addiu      $a1, $zero, 6
/* 152234 800F9ED4 0C002431 */  jal        func_800090C4
/* 152238 800F9ED8 24060002 */   addiu     $a2, $zero, 2
/* 15223C 800F9EDC 02202021 */  addu       $a0, $s1, $zero
/* 152240 800F9EE0 24050007 */  addiu      $a1, $zero, 7
/* 152244 800F9EE4 0C002431 */  jal        func_800090C4
/* 152248 800F9EE8 24060002 */   addiu     $a2, $zero, 2
/* 15224C 800F9EEC 02202021 */  addu       $a0, $s1, $zero
/* 152250 800F9EF0 24050008 */  addiu      $a1, $zero, 8
/* 152254 800F9EF4 0C002431 */  jal        func_800090C4
/* 152258 800F9EF8 24060002 */   addiu     $a2, $zero, 2
/* 15225C 800F9EFC 02202021 */  addu       $a0, $s1, $zero
/* 152260 800F9F00 24050009 */  addiu      $a1, $zero, 9
/* 152264 800F9F04 0C002431 */  jal        func_800090C4
/* 152268 800F9F08 24060002 */   addiu     $a2, $zero, 2
/* 15226C 800F9F0C A233004C */  sb         $s3, 0x4c($s1)
/* 152270 800F9F10 A220004D */  sb         $zero, 0x4d($s1)
/* 152274 800F9F14 0C03DBEA */  jal        func_800F6FA8_14F308
/* 152278 800F9F18 02202021 */   addu      $a0, $s1, $zero
/* 15227C 800F9F1C C6800000 */  lwc1       $f0, ($s4)
/* 152280 800F9F20 E6200018 */  swc1       $f0, 0x18($s1)
/* 152284 800F9F24 C6800004 */  lwc1       $f0, 4($s4)
/* 152288 800F9F28 E620001C */  swc1       $f0, 0x1c($s1)
/* 15228C 800F9F2C C6800008 */  lwc1       $f0, 8($s4)
/* 152290 800F9F30 E6200020 */  swc1       $f0, 0x20($s1)
/* 152294 800F9F34 3263FFFF */  andi       $v1, $s3, 0xffff
/* 152298 800F9F38 00031040 */  sll        $v0, $v1, 1
/* 15229C 800F9F3C 00431021 */  addu       $v0, $v0, $v1
/* 1522A0 800F9F40 00021100 */  sll        $v0, $v0, 4
/* 1522A4 800F9F44 3C01800F */  lui        $at, %hi(D_800F32B3)
/* 1522A8 800F9F48 00220821 */  addu       $at, $at, $v0
/* 1522AC 800F9F4C 902232B3 */  lbu        $v0, %lo(D_800F32B3)($at)
/* 1522B0 800F9F50 A2A20056 */  sb         $v0, 0x56($s5)
/* 1522B4 800F9F54 3C013FA6 */  lui        $at, 0x3fa6
/* 1522B8 800F9F58 34216666 */  ori        $at, $at, 0x6666
/* 1522BC 800F9F5C 44810000 */  mtc1       $at, $f0
/* 1522C0 800F9F60 3C01800C */  lui        $at, %hi(D_800B8964)
/* 1522C4 800F9F64 E4208964 */  swc1       $f0, %lo(D_800B8964)($at)
/* 1522C8 800F9F68 3C01800F */  lui        $at, %hi(D_800F33F0)
/* 1522CC 800F9F6C C42033F0 */  lwc1       $f0, %lo(D_800F33F0)($at)
/* 1522D0 800F9F70 E6A0003C */  swc1       $f0, 0x3c($s5)
/* 1522D4 800F9F74 02202021 */  addu       $a0, $s1, $zero
/* 1522D8 800F9F78 3C053F80 */  lui        $a1, 0x3f80
/* 1522DC 800F9F7C 00003021 */  addu       $a2, $zero, $zero
/* 1522E0 800F9F80 0C03DBC9 */  jal        func_800F6F24_14F284
/* 1522E4 800F9F84 24070001 */   addiu     $a3, $zero, 1
/* 1522E8 800F9F88 3C028010 */  lui        $v0, %hi(func_800F81F0_150550)
/* 1522EC 800F9F8C 244281F0 */  addiu      $v0, $v0, %lo(func_800F81F0_150550)
/* 1522F0 800F9F90 AE220014 */  sw         $v0, 0x14($s1)
/* 1522F4 800F9F94 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1522F8 800F9F98 8FB5002C */  lw         $s5, 0x2c($sp)
/* 1522FC 800F9F9C 8FB40028 */  lw         $s4, 0x28($sp)
/* 152300 800F9FA0 8FB30024 */  lw         $s3, 0x24($sp)
/* 152304 800F9FA4 8FB20020 */  lw         $s2, 0x20($sp)
/* 152308 800F9FA8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 15230C 800F9FAC 8FB00018 */  lw         $s0, 0x18($sp)
/* 152310 800F9FB0 03E00008 */  jr         $ra
/* 152314 800F9FB4 27BD0038 */   addiu     $sp, $sp, 0x38
