	.set noat
	.set noreorder

glabel func_8003DE60
/* 3EA60 8003DE60 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3EA64 8003DE64 AFBF0024 */  sw         $ra, 0x24($sp)
/* 3EA68 8003DE68 AFB20020 */  sw         $s2, 0x20($sp)
/* 3EA6C 8003DE6C AFB1001C */  sw         $s1, 0x1c($sp)
/* 3EA70 8003DE70 AFB00018 */  sw         $s0, 0x18($sp)
/* 3EA74 8003DE74 00808821 */  addu       $s1, $a0, $zero
/* 3EA78 8003DE78 8E320050 */  lw         $s2, 0x50($s1)
/* 3EA7C 8003DE7C 8E500000 */  lw         $s0, ($s2)
/* 3EA80 8003DE80 3C02800F */  lui        $v0, %hi(D_800F64F8)
/* 3EA84 8003DE84 904264F8 */  lbu        $v0, %lo(D_800F64F8)($v0)
/* 3EA88 8003DE88 10400005 */  beqz       $v0, .L8003DEA0
/* 3EA8C 8003DE8C 00000000 */   nop
/* 3EA90 8003DE90 9602000A */  lhu        $v0, 0xa($s0)
/* 3EA94 8003DE94 30420010 */  andi       $v0, $v0, 0x10
/* 3EA98 8003DE98 10400015 */  beqz       $v0, .L8003DEF0
/* 3EA9C 8003DE9C 00000000 */   nop
.L8003DEA0:
/* 3EAA0 8003DEA0 C6000038 */  lwc1       $f0, 0x38($s0)
/* 3EAA4 8003DEA4 44802000 */  mtc1       $zero, $f4
/* 3EAA8 8003DEA8 00000000 */  nop
/* 3EAAC 8003DEAC 46040032 */  c.eq.s     $f0, $f4
/* 3EAB0 8003DEB0 00000000 */  nop
/* 3EAB4 8003DEB4 4501000E */  bc1t       .L8003DEF0
/* 3EAB8 8003DEB8 00000000 */   nop
/* 3EABC 8003DEBC C6020034 */  lwc1       $f2, 0x34($s0)
/* 3EAC0 8003DEC0 46001080 */  add.s      $f2, $f2, $f0
/* 3EAC4 8003DEC4 E6020034 */  swc1       $f2, 0x34($s0)
/* 3EAC8 8003DEC8 C6000030 */  lwc1       $f0, 0x30($s0)
/* 3EACC 8003DECC 46020000 */  add.s      $f0, $f0, $f2
/* 3EAD0 8003DED0 4604003C */  c.lt.s     $f0, $f4
/* 3EAD4 8003DED4 00000000 */  nop
/* 3EAD8 8003DED8 00000000 */  nop
/* 3EADC 8003DEDC 45000004 */  bc1f       .L8003DEF0
/* 3EAE0 8003DEE0 E6000030 */   swc1      $f0, 0x30($s0)
/* 3EAE4 8003DEE4 E6040030 */  swc1       $f4, 0x30($s0)
/* 3EAE8 8003DEE8 E6040034 */  swc1       $f4, 0x34($s0)
/* 3EAEC 8003DEEC E6040038 */  swc1       $f4, 0x38($s0)
.L8003DEF0:
/* 3EAF0 8003DEF0 3C02800F */  lui        $v0, %hi(D_800F5278)
/* 3EAF4 8003DEF4 94425278 */  lhu        $v0, %lo(D_800F5278)($v0)
/* 3EAF8 8003DEF8 30420001 */  andi       $v0, $v0, 1
/* 3EAFC 8003DEFC 10400029 */  beqz       $v0, .L8003DFA4
/* 3EB00 8003DF00 00000000 */   nop
/* 3EB04 8003DF04 9602000A */  lhu        $v0, 0xa($s0)
/* 3EB08 8003DF08 30420008 */  andi       $v0, $v0, 8
/* 3EB0C 8003DF0C 10400025 */  beqz       $v0, .L8003DFA4
/* 3EB10 8003DF10 00000000 */   nop
/* 3EB14 8003DF14 9602000A */  lhu        $v0, 0xa($s0)
/* 3EB18 8003DF18 30420002 */  andi       $v0, $v0, 2
/* 3EB1C 8003DF1C 10400025 */  beqz       $v0, .L8003DFB4
/* 3EB20 8003DF20 2604000C */   addiu     $a0, $s0, 0xc
/* 3EB24 8003DF24 0C012DCC */  jal        func_8004B730
/* 3EB28 8003DF28 27A50010 */   addiu     $a1, $sp, 0x10
/* 3EB2C 8003DF2C C7A20010 */  lwc1       $f2, 0x10($sp)
/* 3EB30 8003DF30 3C0143B9 */  lui        $at, 0x43b9
/* 3EB34 8003DF34 44810000 */  mtc1       $at, $f0
/* 3EB38 8003DF38 00000000 */  nop
/* 3EB3C 8003DF3C 4602003C */  c.lt.s     $f0, $f2
/* 3EB40 8003DF40 00000000 */  nop
/* 3EB44 8003DF44 45010017 */  bc1t       .L8003DFA4
/* 3EB48 8003DF48 00000000 */   nop
/* 3EB4C 8003DF4C 3C01C248 */  lui        $at, 0xc248
/* 3EB50 8003DF50 44810000 */  mtc1       $at, $f0
/* 3EB54 8003DF54 00000000 */  nop
/* 3EB58 8003DF58 4600103C */  c.lt.s     $f2, $f0
/* 3EB5C 8003DF5C 00000000 */  nop
/* 3EB60 8003DF60 45010010 */  bc1t       .L8003DFA4
/* 3EB64 8003DF64 00000000 */   nop
/* 3EB68 8003DF68 C7A20014 */  lwc1       $f2, 0x14($sp)
/* 3EB6C 8003DF6C 3C014391 */  lui        $at, 0x4391
/* 3EB70 8003DF70 44810000 */  mtc1       $at, $f0
/* 3EB74 8003DF74 00000000 */  nop
/* 3EB78 8003DF78 4602003C */  c.lt.s     $f0, $f2
/* 3EB7C 8003DF7C 00000000 */  nop
/* 3EB80 8003DF80 45010008 */  bc1t       .L8003DFA4
/* 3EB84 8003DF84 00000000 */   nop
/* 3EB88 8003DF88 3C01C1A0 */  lui        $at, 0xc1a0
/* 3EB8C 8003DF8C 44810000 */  mtc1       $at, $f0
/* 3EB90 8003DF90 00000000 */  nop
/* 3EB94 8003DF94 4600103C */  c.lt.s     $f2, $f0
/* 3EB98 8003DF98 00000000 */  nop
/* 3EB9C 8003DF9C 45000005 */  bc1f       .L8003DFB4
/* 3EBA0 8003DFA0 00000000 */   nop
.L8003DFA4:
/* 3EBA4 8003DFA4 0C00F984 */  jal        func_8003E610
/* 3EBA8 8003DFA8 02002021 */   addu      $a0, $s0, $zero
/* 3EBAC 8003DFAC 0800F80A */  j          .L8003E028
/* 3EBB0 8003DFB0 00000000 */   nop
.L8003DFB4:
/* 3EBB4 8003DFB4 0C00F963 */  jal        func_8003E58C
/* 3EBB8 8003DFB8 02002021 */   addu      $a0, $s0, $zero
/* 3EBBC 8003DFBC 9602000A */  lhu        $v0, 0xa($s0)
/* 3EBC0 8003DFC0 30420004 */  andi       $v0, $v0, 4
/* 3EBC4 8003DFC4 14400004 */  bnez       $v0, .L8003DFD8
/* 3EBC8 8003DFC8 00000000 */   nop
/* 3EBCC 8003DFCC 0C00F4AC */  jal        func_8003D2B0
/* 3EBD0 8003DFD0 26040018 */   addiu     $a0, $s0, 0x18
/* 3EBD4 8003DFD4 E6200028 */  swc1       $f0, 0x28($s1)
.L8003DFD8:
/* 3EBD8 8003DFD8 C600000C */  lwc1       $f0, 0xc($s0)
/* 3EBDC 8003DFDC E6200018 */  swc1       $f0, 0x18($s1)
/* 3EBE0 8003DFE0 C6000010 */  lwc1       $f0, 0x10($s0)
/* 3EBE4 8003DFE4 C6020030 */  lwc1       $f2, 0x30($s0)
/* 3EBE8 8003DFE8 46020000 */  add.s      $f0, $f0, $f2
/* 3EBEC 8003DFEC E620001C */  swc1       $f0, 0x1c($s1)
/* 3EBF0 8003DFF0 C6000014 */  lwc1       $f0, 0x14($s0)
/* 3EBF4 8003DFF4 E6200020 */  swc1       $f0, 0x20($s1)
/* 3EBF8 8003DFF8 C6000024 */  lwc1       $f0, 0x24($s0)
/* 3EBFC 8003DFFC C6420004 */  lwc1       $f2, 4($s2)
/* 3EC00 8003E000 46020002 */  mul.s      $f0, $f0, $f2
/* 3EC04 8003E004 E6200030 */  swc1       $f0, 0x30($s1)
/* 3EC08 8003E008 C6000028 */  lwc1       $f0, 0x28($s0)
/* 3EC0C 8003E00C C6420004 */  lwc1       $f2, 4($s2)
/* 3EC10 8003E010 46020002 */  mul.s      $f0, $f0, $f2
/* 3EC14 8003E014 E6200034 */  swc1       $f0, 0x34($s1)
/* 3EC18 8003E018 C600002C */  lwc1       $f0, 0x2c($s0)
/* 3EC1C 8003E01C C6420004 */  lwc1       $f2, 4($s2)
/* 3EC20 8003E020 46020002 */  mul.s      $f0, $f0, $f2
/* 3EC24 8003E024 E6200038 */  swc1       $f0, 0x38($s1)
.L8003E028:
/* 3EC28 8003E028 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3EC2C 8003E02C 8FB20020 */  lw         $s2, 0x20($sp)
/* 3EC30 8003E030 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3EC34 8003E034 8FB00018 */  lw         $s0, 0x18($sp)
/* 3EC38 8003E038 03E00008 */  jr         $ra
/* 3EC3C 8003E03C 27BD0028 */   addiu     $sp, $sp, 0x28
