	.set noat
	.set noreorder

glabel func_8006D010
/* 6DC10 8006D010 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 6DC14 8006D014 AFBF004C */  sw         $ra, 0x4c($sp)
/* 6DC18 8006D018 AFBE0048 */  sw         $fp, 0x48($sp)
/* 6DC1C 8006D01C AFB70044 */  sw         $s7, 0x44($sp)
/* 6DC20 8006D020 AFB60040 */  sw         $s6, 0x40($sp)
/* 6DC24 8006D024 AFB5003C */  sw         $s5, 0x3c($sp)
/* 6DC28 8006D028 AFB40038 */  sw         $s4, 0x38($sp)
/* 6DC2C 8006D02C AFB30034 */  sw         $s3, 0x34($sp)
/* 6DC30 8006D030 AFB20030 */  sw         $s2, 0x30($sp)
/* 6DC34 8006D034 AFB1002C */  sw         $s1, 0x2c($sp)
/* 6DC38 8006D038 AFB00028 */  sw         $s0, 0x28($sp)
/* 6DC3C 8006D03C 0080F021 */  addu       $fp, $a0, $zero
/* 6DC40 8006D040 A7A5001E */  sh         $a1, 0x1e($sp)
/* 6DC44 8006D044 00C0A021 */  addu       $s4, $a2, $zero
/* 6DC48 8006D048 00E0B821 */  addu       $s7, $a3, $zero
/* 6DC4C 8006D04C 97A80066 */  lhu        $t0, 0x66($sp)
/* 6DC50 8006D050 A7A80026 */  sh         $t0, 0x26($sp)
/* 6DC54 8006D054 24150002 */  addiu      $s5, $zero, 2
/* 6DC58 8006D058 3C04800F */  lui        $a0, %hi(D_800ED4B0)
/* 6DC5C 8006D05C 8C84D4B0 */  lw         $a0, %lo(D_800ED4B0)($a0)
/* 6DC60 8006D060 2405FFFF */  addiu      $a1, $zero, -1
/* 6DC64 8006D064 00151400 */  sll        $v0, $s5, 0x10
.L8006D068:
/* 6DC68 8006D068 00021403 */  sra        $v0, $v0, 0x10
/* 6DC6C 8006D06C 00021880 */  sll        $v1, $v0, 2
/* 6DC70 8006D070 00621821 */  addu       $v1, $v1, $v0
/* 6DC74 8006D074 00031940 */  sll        $v1, $v1, 5
/* 6DC78 8006D078 00621823 */  subu       $v1, $v1, $v0
/* 6DC7C 8006D07C 00031880 */  sll        $v1, $v1, 2
/* 6DC80 8006D080 00641821 */  addu       $v1, $v1, $a0
/* 6DC84 8006D084 84620036 */  lh         $v0, 0x36($v1)
/* 6DC88 8006D088 10450007 */  beq        $v0, $a1, .L8006D0A8
/* 6DC8C 8006D08C 26A20001 */   addiu     $v0, $s5, 1
/* 6DC90 8006D090 0040A821 */  addu       $s5, $v0, $zero
/* 6DC94 8006D094 00021400 */  sll        $v0, $v0, 0x10
/* 6DC98 8006D098 00021403 */  sra        $v0, $v0, 0x10
/* 6DC9C 8006D09C 2842000E */  slti       $v0, $v0, 0xe
/* 6DCA0 8006D0A0 1440FFF1 */  bnez       $v0, .L8006D068
/* 6DCA4 8006D0A4 00151400 */   sll       $v0, $s5, 0x10
.L8006D0A8:
/* 6DCA8 8006D0A8 00151400 */  sll        $v0, $s5, 0x10
/* 6DCAC 8006D0AC 00021403 */  sra        $v0, $v0, 0x10
/* 6DCB0 8006D0B0 2403000E */  addiu      $v1, $zero, 0xe
/* 6DCB4 8006D0B4 14430003 */  bne        $v0, $v1, .L8006D0C4
/* 6DCB8 8006D0B8 32820001 */   andi      $v0, $s4, 1
/* 6DCBC 8006D0BC 0801B588 */  j          .L8006D620
/* 6DCC0 8006D0C0 2402FFFF */   addiu     $v0, $zero, -1
.L8006D0C4:
/* 6DCC4 8006D0C4 54400001 */  bnel       $v0, $zero, .L8006D0CC
/* 6DCC8 8006D0C8 26940001 */   addiu     $s4, $s4, 1
.L8006D0CC:
/* 6DCCC 8006D0CC 00151C00 */  sll        $v1, $s5, 0x10
/* 6DCD0 8006D0D0 00031C03 */  sra        $v1, $v1, 0x10
/* 6DCD4 8006D0D4 00031080 */  sll        $v0, $v1, 2
/* 6DCD8 8006D0D8 00431021 */  addu       $v0, $v0, $v1
/* 6DCDC 8006D0DC 00021140 */  sll        $v0, $v0, 5
/* 6DCE0 8006D0E0 00431023 */  subu       $v0, $v0, $v1
/* 6DCE4 8006D0E4 00021080 */  sll        $v0, $v0, 2
/* 6DCE8 8006D0E8 3C04800F */  lui        $a0, %hi(D_800ED4B0)
/* 6DCEC 8006D0EC 8C84D4B0 */  lw         $a0, %lo(D_800ED4B0)($a0)
/* 6DCF0 8006D0F0 00449821 */  addu       $s3, $v0, $a0
/* 6DCF4 8006D0F4 24020001 */  addiu      $v0, $zero, 1
/* 6DCF8 8006D0F8 A662003C */  sh         $v0, 0x3c($s3)
/* 6DCFC 8006D0FC 948202B6 */  lhu        $v0, 0x2b6($a0)
/* 6DD00 8006D100 A662003A */  sh         $v0, 0x3a($s3)
/* 6DD04 8006D104 24027D00 */  addiu      $v0, $zero, 0x7d00
/* 6DD08 8006D108 A6620036 */  sh         $v0, 0x36($s3)
/* 6DD0C 8006D10C 848302B6 */  lh         $v1, 0x2b6($a0)
/* 6DD10 8006D110 00031080 */  sll        $v0, $v1, 2
/* 6DD14 8006D114 00431021 */  addu       $v0, $v0, $v1
/* 6DD18 8006D118 00021140 */  sll        $v0, $v0, 5
/* 6DD1C 8006D11C 00431023 */  subu       $v0, $v0, $v1
/* 6DD20 8006D120 00021080 */  sll        $v0, $v0, 2
/* 6DD24 8006D124 00441021 */  addu       $v0, $v0, $a0
/* 6DD28 8006D128 A455003C */  sh         $s5, 0x3c($v0)
/* 6DD2C 8006D12C A49502B6 */  sh         $s5, 0x2b6($a0)
/* 6DD30 8006D130 A67E0014 */  sh         $fp, 0x14($s3)
/* 6DD34 8006D134 97A8001E */  lhu        $t0, 0x1e($sp)
/* 6DD38 8006D138 A6680016 */  sh         $t0, 0x16($s3)
/* 6DD3C 8006D13C A6740018 */  sh         $s4, 0x18($s3)
/* 6DD40 8006D140 A677001A */  sh         $s7, 0x1a($s3)
/* 6DD44 8006D144 2682000F */  addiu      $v0, $s4, 0xf
/* 6DD48 8006D148 3042FFF0 */  andi       $v0, $v0, 0xfff0
/* 6DD4C 8006D14C A662001C */  sh         $v0, 0x1c($s3)
/* 6DD50 8006D150 26E20010 */  addiu      $v0, $s7, 0x10
/* 6DD54 8006D154 A662001E */  sh         $v0, 0x1e($s3)
/* 6DD58 8006D158 3C013F80 */  lui        $at, 0x3f80
/* 6DD5C 8006D15C 44810000 */  mtc1       $at, $f0
/* 6DD60 8006D160 00000000 */  nop
/* 6DD64 8006D164 E66000F0 */  swc1       $f0, 0xf0($s3)
/* 6DD68 8006D168 E66000EC */  swc1       $f0, 0xec($s3)
/* 6DD6C 8006D16C 24020004 */  addiu      $v0, $zero, 4
/* 6DD70 8006D170 A662002E */  sh         $v0, 0x2e($s3)
/* 6DD74 8006D174 A662002C */  sh         $v0, 0x2c($s3)
/* 6DD78 8006D178 A6620026 */  sh         $v0, 0x26($s3)
/* 6DD7C 8006D17C A6620024 */  sh         $v0, 0x24($s3)
/* 6DD80 8006D180 2682FFF8 */  addiu      $v0, $s4, -8
/* 6DD84 8006D184 A6620028 */  sh         $v0, 0x28($s3)
/* 6DD88 8006D188 26E2FFF8 */  addiu      $v0, $s7, -8
/* 6DD8C 8006D18C A662002A */  sh         $v0, 0x2a($s3)
/* 6DD90 8006D190 A2600000 */  sb         $zero, ($s3)
/* 6DD94 8006D194 24020007 */  addiu      $v0, $zero, 7
/* 6DD98 8006D198 A2620002 */  sb         $v0, 2($s3)
/* 6DD9C 8006D19C A2620012 */  sb         $v0, 0x12($s3)
/* 6DDA0 8006D1A0 24020001 */  addiu      $v0, $zero, 1
/* 6DDA4 8006D1A4 A2620004 */  sb         $v0, 4($s3)
/* 6DDA8 8006D1A8 A2620003 */  sb         $v0, 3($s3)
/* 6DDAC 8006D1AC 2402000A */  addiu      $v0, $zero, 0xa
/* 6DDB0 8006D1B0 A2620007 */  sb         $v0, 7($s3)
/* 6DDB4 8006D1B4 2402000C */  addiu      $v0, $zero, 0xc
/* 6DDB8 8006D1B8 A2620008 */  sb         $v0, 8($s3)
/* 6DDBC 8006D1BC A2600009 */  sb         $zero, 9($s3)
/* 6DDC0 8006D1C0 24040002 */  addiu      $a0, $zero, 2
/* 6DDC4 8006D1C4 A264000A */  sb         $a0, 0xa($s3)
/* 6DDC8 8006D1C8 92630007 */  lbu        $v1, 7($s3)
/* 6DDCC 8006D1CC 96620018 */  lhu        $v0, 0x18($s3)
/* 6DDD0 8006D1D0 00431023 */  subu       $v0, $v0, $v1
/* 6DDD4 8006D1D4 A6620030 */  sh         $v0, 0x30($s3)
/* 6DDD8 8006D1D8 92630008 */  lbu        $v1, 8($s3)
/* 6DDDC 8006D1DC 9662001A */  lhu        $v0, 0x1a($s3)
/* 6DDE0 8006D1E0 00431023 */  subu       $v0, $v0, $v1
/* 6DDE4 8006D1E4 A6620032 */  sh         $v0, 0x32($s3)
/* 6DDE8 8006D1E8 A6600022 */  sh         $zero, 0x22($s3)
/* 6DDEC 8006D1EC A6600020 */  sh         $zero, 0x20($s3)
/* 6DDF0 8006D1F0 A2600005 */  sb         $zero, 5($s3)
/* 6DDF4 8006D1F4 3C03800C */  lui        $v1, %hi(D_800C5DF4)
/* 6DDF8 8006D1F8 24635DF4 */  addiu      $v1, $v1, %lo(D_800C5DF4)
/* 6DDFC 8006D1FC 90620000 */  lbu        $v0, ($v1)
/* 6DE00 8006D200 A262000D */  sb         $v0, 0xd($s3)
/* 6DE04 8006D204 90620001 */  lbu        $v0, 1($v1)
/* 6DE08 8006D208 A262000E */  sb         $v0, 0xe($s3)
/* 6DE0C 8006D20C 90620002 */  lbu        $v0, 2($v1)
/* 6DE10 8006D210 A262000F */  sb         $v0, 0xf($s3)
/* 6DE14 8006D214 2402000F */  addiu      $v0, $zero, 0xf
/* 6DE18 8006D218 A2620001 */  sb         $v0, 1($s3)
/* 6DE1C 8006D21C A2600011 */  sb         $zero, 0x11($s3)
/* 6DE20 8006D220 A2600006 */  sb         $zero, 6($s3)
/* 6DE24 8006D224 AE6000B4 */  sw         $zero, 0xb4($s3)
/* 6DE28 8006D228 2402FFFF */  addiu      $v0, $zero, -1
/* 6DE2C 8006D22C A262007A */  sb         $v0, 0x7a($s3)
/* 6DE30 8006D230 A264000C */  sb         $a0, 0xc($s3)
/* 6DE34 8006D234 00008821 */  addu       $s1, $zero, $zero
/* 6DE38 8006D238 00111400 */  sll        $v0, $s1, 0x10
.L8006D23C:
/* 6DE3C 8006D23C 00021383 */  sra        $v0, $v0, 0xe
/* 6DE40 8006D240 00531021 */  addu       $v0, $v0, $s3
/* 6DE44 8006D244 AC400088 */  sw         $zero, 0x88($v0)
/* 6DE48 8006D248 26220001 */  addiu      $v0, $s1, 1
/* 6DE4C 8006D24C 00408821 */  addu       $s1, $v0, $zero
/* 6DE50 8006D250 00021400 */  sll        $v0, $v0, 0x10
/* 6DE54 8006D254 00021403 */  sra        $v0, $v0, 0x10
/* 6DE58 8006D258 2842000A */  slti       $v0, $v0, 0xa
/* 6DE5C 8006D25C 1440FFF7 */  bnez       $v0, .L8006D23C
/* 6DE60 8006D260 00111400 */   sll       $v0, $s1, 0x10
/* 6DE64 8006D264 00008821 */  addu       $s1, $zero, $zero
/* 6DE68 8006D268 00111400 */  sll        $v0, $s1, 0x10
.L8006D26C:
/* 6DE6C 8006D26C 00021383 */  sra        $v0, $v0, 0xe
/* 6DE70 8006D270 00531021 */  addu       $v0, $v0, $s3
/* 6DE74 8006D274 AC4000C0 */  sw         $zero, 0xc0($v0)
/* 6DE78 8006D278 26220001 */  addiu      $v0, $s1, 1
/* 6DE7C 8006D27C 00408821 */  addu       $s1, $v0, $zero
/* 6DE80 8006D280 00021400 */  sll        $v0, $v0, 0x10
/* 6DE84 8006D284 00021403 */  sra        $v0, $v0, 0x10
/* 6DE88 8006D288 2842000A */  slti       $v0, $v0, 0xa
/* 6DE8C 8006D28C 1440FFF7 */  bnez       $v0, .L8006D26C
/* 6DE90 8006D290 00111400 */   sll       $v0, $s1, 0x10
/* 6DE94 8006D294 AE6000E8 */  sw         $zero, 0xe8($s3)
/* 6DE98 8006D298 2402FFFF */  addiu      $v0, $zero, -1
/* 6DE9C 8006D29C A6620042 */  sh         $v0, 0x42($s3)
/* 6DEA0 8006D2A0 00008821 */  addu       $s1, $zero, $zero
/* 6DEA4 8006D2A4 2405FFFF */  addiu      $a1, $zero, -1
/* 6DEA8 8006D2A8 00111C00 */  sll        $v1, $s1, 0x10
.L8006D2AC:
/* 6DEAC 8006D2AC 00031C03 */  sra        $v1, $v1, 0x10
/* 6DEB0 8006D2B0 00031040 */  sll        $v0, $v1, 1
/* 6DEB4 8006D2B4 00531021 */  addu       $v0, $v0, $s3
/* 6DEB8 8006D2B8 2863000C */  slti       $v1, $v1, 0xc
/* 6DEBC 8006D2BC 14600003 */  bnez       $v1, .L8006D2CC
/* 6DEC0 8006D2C0 24440046 */   addiu     $a0, $v0, 0x46
/* 6DEC4 8006D2C4 0801B4B4 */  j          .L8006D2D0
/* 6DEC8 8006D2C8 A4450046 */   sh        $a1, 0x46($v0)
.L8006D2CC:
/* 6DECC 8006D2CC A4800000 */  sh         $zero, ($a0)
.L8006D2D0:
/* 6DED0 8006D2D0 26220001 */  addiu      $v0, $s1, 1
/* 6DED4 8006D2D4 00408821 */  addu       $s1, $v0, $zero
/* 6DED8 8006D2D8 00021400 */  sll        $v0, $v0, 0x10
/* 6DEDC 8006D2DC 00021403 */  sra        $v0, $v0, 0x10
/* 6DEE0 8006D2E0 28420014 */  slti       $v0, $v0, 0x14
/* 6DEE4 8006D2E4 1440FFF1 */  bnez       $v0, .L8006D2AC
/* 6DEE8 8006D2E8 00111C00 */   sll       $v1, $s1, 0x10
/* 6DEEC 8006D2EC A660006E */  sh         $zero, 0x6e($s3)
/* 6DEF0 8006D2F0 3C04800F */  lui        $a0, %hi(D_800F3F34)
/* 6DEF4 8006D2F4 8C843F34 */  lw         $a0, %lo(D_800F3F34)($a0)
/* 6DEF8 8006D2F8 0C019E29 */  jal        func_800678A4
/* 6DEFC 8006D2FC 00008821 */   addu      $s1, $zero, $zero
/* 6DF00 8006D300 A662003E */  sh         $v0, 0x3e($s3)
/* 6DF04 8006D304 3C04800F */  lui        $a0, %hi(D_800F3F38)
/* 6DF08 8006D308 8C843F38 */  lw         $a0, %lo(D_800F3F38)($a0)
/* 6DF0C 8006D30C 0C019E29 */  jal        func_800678A4
/* 6DF10 8006D310 00118400 */   sll       $s0, $s1, 0x10
/* 6DF14 8006D314 A6620040 */  sh         $v0, 0x40($s3)
/* 6DF18 8006D318 24040014 */  addiu      $a0, $zero, 0x14
/* 6DF1C 8006D31C 0C0193BD */  jal        func_80064EF4
/* 6DF20 8006D320 24050005 */   addiu     $a1, $zero, 5
/* 6DF24 8006D324 0040B021 */  addu       $s6, $v0, $zero
/* 6DF28 8006D328 A6760044 */  sh         $s6, 0x44($s3)
/* 6DF2C 8006D32C 00161400 */  sll        $v0, $s6, 0x10
/* 6DF30 8006D330 00029403 */  sra        $s2, $v0, 0x10
.L8006D334:
/* 6DF34 8006D334 00108403 */  sra        $s0, $s0, 0x10
/* 6DF38 8006D338 02402021 */  addu       $a0, $s2, $zero
/* 6DF3C 8006D33C 02002821 */  addu       $a1, $s0, $zero
/* 6DF40 8006D340 0C019D4B */  jal        func_8006752C
/* 6DF44 8006D344 240600FF */   addiu     $a2, $zero, 0xff
/* 6DF48 8006D348 02402021 */  addu       $a0, $s2, $zero
/* 6DF4C 8006D34C 02002821 */  addu       $a1, $s0, $zero
/* 6DF50 8006D350 0C019D20 */  jal        func_80067480
/* 6DF54 8006D354 3406FFFF */   ori       $a2, $zero, 0xffff
/* 6DF58 8006D358 02402021 */  addu       $a0, $s2, $zero
/* 6DF5C 8006D35C 02002821 */  addu       $a1, $s0, $zero
/* 6DF60 8006D360 3C060100 */  lui        $a2, 0x100
/* 6DF64 8006D364 0C019D2F */  jal        func_800674BC
/* 6DF68 8006D368 34C69000 */   ori       $a2, $a2, 0x9000
/* 6DF6C 8006D36C 02402021 */  addu       $a0, $s2, $zero
/* 6DF70 8006D370 02002821 */  addu       $a1, $s0, $zero
/* 6DF74 8006D374 0C019CAC */  jal        func_800672B0
/* 6DF78 8006D378 00003021 */   addu      $a2, $zero, $zero
/* 6DF7C 8006D37C 02402021 */  addu       $a0, $s2, $zero
/* 6DF80 8006D380 02002821 */  addu       $a1, $s0, $zero
/* 6DF84 8006D384 8666003E */  lh         $a2, 0x3e($s3)
/* 6DF88 8006D388 0C019C82 */  jal        func_80067208
/* 6DF8C 8006D38C 3227FFFF */   andi      $a3, $s1, 0xffff
/* 6DF90 8006D390 02402021 */  addu       $a0, $s2, $zero
/* 6DF94 8006D394 02002821 */  addu       $a1, $s0, $zero
/* 6DF98 8006D398 00003021 */  addu       $a2, $zero, $zero
/* 6DF9C 8006D39C 0C019B71 */  jal        func_80066DC4
/* 6DFA0 8006D3A0 00003821 */   addu      $a3, $zero, $zero
/* 6DFA4 8006D3A4 00101040 */  sll        $v0, $s0, 1
/* 6DFA8 8006D3A8 00501021 */  addu       $v0, $v0, $s0
/* 6DFAC 8006D3AC 3C06800C */  lui        $a2, %hi(D_800C5DF4)
/* 6DFB0 8006D3B0 00C23021 */  addu       $a2, $a2, $v0
/* 6DFB4 8006D3B4 90C65DF4 */  lbu        $a2, %lo(D_800C5DF4)($a2)
/* 6DFB8 8006D3B8 3C07800C */  lui        $a3, %hi(D_800C5DF5)
/* 6DFBC 8006D3BC 00E23821 */  addu       $a3, $a3, $v0
/* 6DFC0 8006D3C0 90E75DF5 */  lbu        $a3, %lo(D_800C5DF5)($a3)
/* 6DFC4 8006D3C4 3C01800C */  lui        $at, %hi(D_800C5DF6)
/* 6DFC8 8006D3C8 00220821 */  addu       $at, $at, $v0
/* 6DFCC 8006D3CC 90225DF6 */  lbu        $v0, %lo(D_800C5DF6)($at)
/* 6DFD0 8006D3D0 AFA20010 */  sw         $v0, 0x10($sp)
/* 6DFD4 8006D3D4 02402021 */  addu       $a0, $s2, $zero
/* 6DFD8 8006D3D8 0C019D3D */  jal        func_800674F4
/* 6DFDC 8006D3DC 02002821 */   addu      $a1, $s0, $zero
/* 6DFE0 8006D3E0 02402021 */  addu       $a0, $s2, $zero
/* 6DFE4 8006D3E4 02002821 */  addu       $a1, $s0, $zero
/* 6DFE8 8006D3E8 0C019D66 */  jal        func_80067598
/* 6DFEC 8006D3EC 00003021 */   addu      $a2, $zero, $zero
/* 6DFF0 8006D3F0 26220001 */  addiu      $v0, $s1, 1
/* 6DFF4 8006D3F4 00408821 */  addu       $s1, $v0, $zero
/* 6DFF8 8006D3F8 00021400 */  sll        $v0, $v0, 0x10
/* 6DFFC 8006D3FC 00021403 */  sra        $v0, $v0, 0x10
/* 6E000 8006D400 2842000A */  slti       $v0, $v0, 0xa
/* 6E004 8006D404 1440FFCB */  bnez       $v0, .L8006D334
/* 6E008 8006D408 00118400 */   sll       $s0, $s1, 0x10
/* 6E00C 8006D40C 00168400 */  sll        $s0, $s6, 0x10
/* 6E010 8006D410 00108403 */  sra        $s0, $s0, 0x10
/* 6E014 8006D414 02002021 */  addu       $a0, $s0, $zero
/* 6E018 8006D418 00002821 */  addu       $a1, $zero, $zero
/* 6E01C 8006D41C 0C019D66 */  jal        func_80067598
/* 6E020 8006D420 2406FFFF */   addiu     $a2, $zero, -1
/* 6E024 8006D424 001E3400 */  sll        $a2, $fp, 0x10
/* 6E028 8006D428 97A8001E */  lhu        $t0, 0x1e($sp)
/* 6E02C 8006D42C 00083C00 */  sll        $a3, $t0, 0x10
/* 6E030 8006D430 02002021 */  addu       $a0, $s0, $zero
/* 6E034 8006D434 00002821 */  addu       $a1, $zero, $zero
/* 6E038 8006D438 00063403 */  sra        $a2, $a2, 0x10
/* 6E03C 8006D43C 0C019B71 */  jal        func_80066DC4
/* 6E040 8006D440 00073C03 */   sra       $a3, $a3, 0x10
/* 6E044 8006D444 02002021 */  addu       $a0, $s0, $zero
/* 6E048 8006D448 0C019D7D */  jal        func_800675F4
/* 6E04C 8006D44C 00002821 */   addu      $a1, $zero, $zero
/* 6E050 8006D450 00408821 */  addu       $s1, $v0, $zero
/* 6E054 8006D454 8E22004C */  lw         $v0, 0x4c($s1)
/* 6E058 8006D458 8C420000 */  lw         $v0, ($v0)
/* 6E05C 8006D45C A4540004 */  sh         $s4, 4($v0)
/* 6E060 8006D460 8E22004C */  lw         $v0, 0x4c($s1)
/* 6E064 8006D464 8C420000 */  lw         $v0, ($v0)
/* 6E068 8006D468 A4570006 */  sh         $s7, 6($v0)
/* 6E06C 8006D46C 8E22004C */  lw         $v0, 0x4c($s1)
/* 6E070 8006D470 8C420000 */  lw         $v0, ($v0)
/* 6E074 8006D474 0C008DCA */  jal        func_80023728
/* 6E078 8006D478 8C440000 */   lw        $a0, ($v0)
/* 6E07C 8006D47C 00141400 */  sll        $v0, $s4, 0x10
/* 6E080 8006D480 0002A403 */  sra        $s4, $v0, 0x10
/* 6E084 8006D484 00171400 */  sll        $v0, $s7, 0x10
/* 6E088 8006D488 00029403 */  sra        $s2, $v0, 0x10
/* 6E08C 8006D48C 02920018 */  mult       $s4, $s2
/* 6E090 8006D490 00008012 */  mflo       $s0
/* 6E094 8006D494 001017C2 */  srl        $v0, $s0, 0x1f
/* 6E098 8006D498 02028021 */  addu       $s0, $s0, $v0
/* 6E09C 8006D49C 00108043 */  sra        $s0, $s0, 1
/* 6E0A0 8006D4A0 0C008D9A */  jal        func_80023668
/* 6E0A4 8006D4A4 02002021 */   addu      $a0, $s0, $zero
/* 6E0A8 8006D4A8 8E23004C */  lw         $v1, 0x4c($s1)
/* 6E0AC 8006D4AC 8C630000 */  lw         $v1, ($v1)
/* 6E0B0 8006D4B0 AE6200C0 */  sw         $v0, 0xc0($s3)
/* 6E0B4 8006D4B4 AC620000 */  sw         $v0, ($v1)
/* 6E0B8 8006D4B8 8E6400C0 */  lw         $a0, 0xc0($s3)
/* 6E0BC 8006D4BC 240500FF */  addiu      $a1, $zero, 0xff
/* 6E0C0 8006D4C0 0C026DDC */  jal        func_8009B770
/* 6E0C4 8006D4C4 02003021 */   addu      $a2, $s0, $zero
/* 6E0C8 8006D4C8 97A80026 */  lhu        $t0, 0x26($sp)
/* 6E0CC 8006D4CC 00081400 */  sll        $v0, $t0, 0x10
/* 6E0D0 8006D4D0 00021403 */  sra        $v0, $v0, 0x10
/* 6E0D4 8006D4D4 24030001 */  addiu      $v1, $zero, 1
/* 6E0D8 8006D4D8 10430006 */  beq        $v0, $v1, .L8006D4F4
/* 6E0DC 8006D4DC 00168400 */   sll       $s0, $s6, 0x10
/* 6E0E0 8006D4E0 8E6400C0 */  lw         $a0, 0xc0($s3)
/* 6E0E4 8006D4E4 02802821 */  addu       $a1, $s4, $zero
/* 6E0E8 8006D4E8 0C01B594 */  jal        func_8006D650
/* 6E0EC 8006D4EC 02403021 */   addu      $a2, $s2, $zero
/* 6E0F0 8006D4F0 00168400 */  sll        $s0, $s6, 0x10
.L8006D4F4:
/* 6E0F4 8006D4F4 00108403 */  sra        $s0, $s0, 0x10
/* 6E0F8 8006D4F8 02002021 */  addu       $a0, $s0, $zero
/* 6E0FC 8006D4FC 00002821 */  addu       $a1, $zero, $zero
/* 6E100 8006D500 0C019D4B */  jal        func_8006752C
/* 6E104 8006D504 24060064 */   addiu     $a2, $zero, 0x64
/* 6E108 8006D508 02002021 */  addu       $a0, $s0, $zero
/* 6E10C 8006D50C 00002821 */  addu       $a1, $zero, $zero
/* 6E110 8006D510 0C019D20 */  jal        func_80067480
/* 6E114 8006D514 34068000 */   ori       $a2, $zero, 0x8000
/* 6E118 8006D518 02002021 */  addu       $a0, $s0, $zero
/* 6E11C 8006D51C 00002821 */  addu       $a1, $zero, $zero
/* 6E120 8006D520 0C019CAC */  jal        func_800672B0
/* 6E124 8006D524 00003021 */   addu      $a2, $zero, $zero
/* 6E128 8006D528 02002021 */  addu       $a0, $s0, $zero
/* 6E12C 8006D52C 2405000A */  addiu      $a1, $zero, 0xa
/* 6E130 8006D530 0C019D4B */  jal        func_8006752C
/* 6E134 8006D534 24060100 */   addiu     $a2, $zero, 0x100
/* 6E138 8006D538 02002021 */  addu       $a0, $s0, $zero
/* 6E13C 8006D53C 2405000A */  addiu      $a1, $zero, 0xa
/* 6E140 8006D540 0C019D20 */  jal        func_80067480
/* 6E144 8006D544 3406FFFF */   ori       $a2, $zero, 0xffff
/* 6E148 8006D548 02002021 */  addu       $a0, $s0, $zero
/* 6E14C 8006D54C 2405000A */  addiu      $a1, $zero, 0xa
/* 6E150 8006D550 3C060100 */  lui        $a2, 0x100
/* 6E154 8006D554 0C019D2F */  jal        func_800674BC
/* 6E158 8006D558 34C69000 */   ori       $a2, $a2, 0x9000
/* 6E15C 8006D55C 02002021 */  addu       $a0, $s0, $zero
/* 6E160 8006D560 2405000A */  addiu      $a1, $zero, 0xa
/* 6E164 8006D564 0C019CAC */  jal        func_800672B0
/* 6E168 8006D568 00003021 */   addu      $a2, $zero, $zero
/* 6E16C 8006D56C 02002021 */  addu       $a0, $s0, $zero
/* 6E170 8006D570 2405000A */  addiu      $a1, $zero, 0xa
/* 6E174 8006D574 86660040 */  lh         $a2, 0x40($s3)
/* 6E178 8006D578 0C019C82 */  jal        func_80067208
/* 6E17C 8006D57C 00003821 */   addu      $a3, $zero, $zero
/* 6E180 8006D580 02002021 */  addu       $a0, $s0, $zero
/* 6E184 8006D584 2405000A */  addiu      $a1, $zero, 0xa
/* 6E188 8006D588 00003021 */  addu       $a2, $zero, $zero
/* 6E18C 8006D58C 0C019B71 */  jal        func_80066DC4
/* 6E190 8006D590 00003821 */   addu      $a3, $zero, $zero
/* 6E194 8006D594 02002021 */  addu       $a0, $s0, $zero
/* 6E198 8006D598 2405000A */  addiu      $a1, $zero, 0xa
/* 6E19C 8006D59C 0C019D66 */  jal        func_80067598
/* 6E1A0 8006D5A0 00003021 */   addu      $a2, $zero, $zero
/* 6E1A4 8006D5A4 00008821 */  addu       $s1, $zero, $zero
/* 6E1A8 8006D5A8 00168400 */  sll        $s0, $s6, 0x10
/* 6E1AC 8006D5AC 00112C00 */  sll        $a1, $s1, 0x10
.L8006D5B0:
/* 6E1B0 8006D5B0 00102403 */  sra        $a0, $s0, 0x10
/* 6E1B4 8006D5B4 3C06800E */  lui        $a2, %hi(D_800E4330)
/* 6E1B8 8006D5B8 94C64330 */  lhu        $a2, %lo(D_800E4330)($a2)
/* 6E1BC 8006D5BC 0C019CE1 */  jal        func_80067384
/* 6E1C0 8006D5C0 00052C03 */   sra       $a1, $a1, 0x10
/* 6E1C4 8006D5C4 26220001 */  addiu      $v0, $s1, 1
/* 6E1C8 8006D5C8 00408821 */  addu       $s1, $v0, $zero
/* 6E1CC 8006D5CC 00021400 */  sll        $v0, $v0, 0x10
/* 6E1D0 8006D5D0 00021403 */  sra        $v0, $v0, 0x10
/* 6E1D4 8006D5D4 28420014 */  slti       $v0, $v0, 0x14
/* 6E1D8 8006D5D8 1440FFF5 */  bnez       $v0, .L8006D5B0
/* 6E1DC 8006D5DC 00112C00 */   sll       $a1, $s1, 0x10
/* 6E1E0 8006D5E0 00162400 */  sll        $a0, $s6, 0x10
/* 6E1E4 8006D5E4 3C06800E */  lui        $a2, %hi(D_800E4330)
/* 6E1E8 8006D5E8 94C64330 */  lhu        $a2, %lo(D_800E4330)($a2)
/* 6E1EC 8006D5EC 24C6FFFF */  addiu      $a2, $a2, -1
/* 6E1F0 8006D5F0 00042403 */  sra        $a0, $a0, 0x10
/* 6E1F4 8006D5F4 2405000B */  addiu      $a1, $zero, 0xb
/* 6E1F8 8006D5F8 0C019CE1 */  jal        func_80067384
/* 6E1FC 8006D5FC 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 6E200 8006D600 3C02800E */  lui        $v0, %hi(D_800E4330)
/* 6E204 8006D604 94424330 */  lhu        $v0, %lo(D_800E4330)($v0)
/* 6E208 8006D608 A6620038 */  sh         $v0, 0x38($s3)
/* 6E20C 8006D60C 2442FFE0 */  addiu      $v0, $v0, -0x20
/* 6E210 8006D610 3C01800E */  lui        $at, %hi(D_800E4330)
/* 6E214 8006D614 A4224330 */  sh         $v0, %lo(D_800E4330)($at)
/* 6E218 8006D618 00151400 */  sll        $v0, $s5, 0x10
/* 6E21C 8006D61C 00021403 */  sra        $v0, $v0, 0x10
.L8006D620:
/* 6E220 8006D620 8FBF004C */  lw         $ra, 0x4c($sp)
/* 6E224 8006D624 8FBE0048 */  lw         $fp, 0x48($sp)
/* 6E228 8006D628 8FB70044 */  lw         $s7, 0x44($sp)
/* 6E22C 8006D62C 8FB60040 */  lw         $s6, 0x40($sp)
/* 6E230 8006D630 8FB5003C */  lw         $s5, 0x3c($sp)
/* 6E234 8006D634 8FB40038 */  lw         $s4, 0x38($sp)
/* 6E238 8006D638 8FB30034 */  lw         $s3, 0x34($sp)
/* 6E23C 8006D63C 8FB20030 */  lw         $s2, 0x30($sp)
/* 6E240 8006D640 8FB1002C */  lw         $s1, 0x2c($sp)
/* 6E244 8006D644 8FB00028 */  lw         $s0, 0x28($sp)
/* 6E248 8006D648 03E00008 */  jr         $ra
/* 6E24C 8006D64C 27BD0050 */   addiu     $sp, $sp, 0x50
