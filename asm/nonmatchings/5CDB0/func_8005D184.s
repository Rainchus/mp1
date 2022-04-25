	.set noat
	.set noreorder

glabel func_8005D184
/* 5DD84 8005D184 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5DD88 8005D188 AFBF002C */  sw         $ra, 0x2c($sp)
/* 5DD8C 8005D18C AFB20028 */  sw         $s2, 0x28($sp)
/* 5DD90 8005D190 AFB10024 */  sw         $s1, 0x24($sp)
/* 5DD94 8005D194 AFB00020 */  sw         $s0, 0x20($sp)
/* 5DD98 8005D198 2402FFFF */  addiu      $v0, $zero, -1
/* 5DD9C 8005D19C 3C01800F */  lui        $at, %hi(D_800ED434)
/* 5DDA0 8005D1A0 A422D434 */  sh         $v0, %lo(D_800ED434)($at)
/* 5DDA4 8005D1A4 3C02800F */  lui        $v0, %hi(D_800ED550)
/* 5DDA8 8005D1A8 8442D550 */  lh         $v0, %lo(D_800ED550)($v0)
/* 5DDAC 8005D1AC 18400021 */  blez       $v0, .L8005D234
/* 5DDB0 8005D1B0 00008821 */   addu      $s1, $zero, $zero
/* 5DDB4 8005D1B4 24120001 */  addiu      $s2, $zero, 1
/* 5DDB8 8005D1B8 00111080 */  sll        $v0, $s1, 2
.L8005D1BC:
/* 5DDBC 8005D1BC 00511021 */  addu       $v0, $v0, $s1
/* 5DDC0 8005D1C0 00021080 */  sll        $v0, $v0, 2
/* 5DDC4 8005D1C4 00511021 */  addu       $v0, $v0, $s1
/* 5DDC8 8005D1C8 00021080 */  sll        $v0, $v0, 2
/* 5DDCC 8005D1CC 3C03800C */  lui        $v1, %hi(D_800C5984)
/* 5DDD0 8005D1D0 8C635984 */  lw         $v1, %lo(D_800C5984)($v1)
/* 5DDD4 8005D1D4 00438021 */  addu       $s0, $v0, $v1
/* 5DDD8 8005D1D8 96020000 */  lhu        $v0, ($s0)
/* 5DDDC 8005D1DC 50520010 */  beql       $v0, $s2, .L8005D220
/* 5DDE0 8005D1E0 26310001 */   addiu     $s1, $s1, 1
/* 5DDE4 8005D1E4 8E040040 */  lw         $a0, 0x40($s0)
/* 5DDE8 8005D1E8 10800003 */  beqz       $a0, .L8005D1F8
/* 5DDEC 8005D1EC 00000000 */   nop
/* 5DDF0 8005D1F0 0C008DCA */  jal        func_80023728
/* 5DDF4 8005D1F4 00000000 */   nop
.L8005D1F8:
/* 5DDF8 8005D1F8 8E040048 */  lw         $a0, 0x48($s0)
/* 5DDFC 8005D1FC 10800003 */  beqz       $a0, .L8005D20C
/* 5DE00 8005D200 00000000 */   nop
/* 5DE04 8005D204 0C008DCA */  jal        func_80023728
/* 5DE08 8005D208 00000000 */   nop
.L8005D20C:
/* 5DE0C 8005D20C 8E040050 */  lw         $a0, 0x50($s0)
/* 5DE10 8005D210 10800003 */  beqz       $a0, .L8005D220
/* 5DE14 8005D214 26310001 */   addiu     $s1, $s1, 1
/* 5DE18 8005D218 0C008DCA */  jal        func_80023728
/* 5DE1C 8005D21C 00000000 */   nop
.L8005D220:
/* 5DE20 8005D220 3C02800F */  lui        $v0, %hi(D_800ED550)
/* 5DE24 8005D224 8442D550 */  lh         $v0, %lo(D_800ED550)($v0)
/* 5DE28 8005D228 0222102A */  slt        $v0, $s1, $v0
/* 5DE2C 8005D22C 1440FFE3 */  bnez       $v0, .L8005D1BC
/* 5DE30 8005D230 00111080 */   sll       $v0, $s1, 2
.L8005D234:
/* 5DE34 8005D234 3C04800C */  lui        $a0, %hi(D_800C5984)
/* 5DE38 8005D238 8C845984 */  lw         $a0, %lo(D_800C5984)($a0)
/* 5DE3C 8005D23C 0C008DCA */  jal        func_80023728
/* 5DE40 8005D240 00008821 */   addu      $s1, $zero, $zero
/* 5DE44 8005D244 3C01800C */  lui        $at, %hi(D_800C5984)
/* 5DE48 8005D248 AC205984 */  sw         $zero, %lo(D_800C5984)($at)
/* 5DE4C 8005D24C 00118100 */  sll        $s0, $s1, 4
.L8005D250:
/* 5DE50 8005D250 3C02800F */  lui        $v0, %hi(D_800ED61A)
/* 5DE54 8005D254 00501021 */  addu       $v0, $v0, $s0
/* 5DE58 8005D258 9442D61A */  lhu        $v0, %lo(D_800ED61A)($v0)
/* 5DE5C 8005D25C 5040001B */  beql       $v0, $zero, .L8005D2CC
/* 5DE60 8005D260 26310001 */   addiu     $s1, $s1, 1
/* 5DE64 8005D264 3C04800F */  lui        $a0, %hi(D_800ED624)
/* 5DE68 8005D268 00902021 */  addu       $a0, $a0, $s0
/* 5DE6C 8005D26C 8C84D624 */  lw         $a0, %lo(D_800ED624)($a0)
/* 5DE70 8005D270 10800007 */  beqz       $a0, .L8005D290
/* 5DE74 8005D274 00000000 */   nop
/* 5DE78 8005D278 0C008DCA */  jal        func_80023728
/* 5DE7C 8005D27C 00000000 */   nop
/* 5DE80 8005D280 3C01800F */  lui        $at, %hi(D_800ED624)
/* 5DE84 8005D284 00300821 */  addu       $at, $at, $s0
/* 5DE88 8005D288 AC20D624 */  sw         $zero, %lo(D_800ED624)($at)
/* 5DE8C 8005D28C 00118100 */  sll        $s0, $s1, 4
.L8005D290:
/* 5DE90 8005D290 3C04800F */  lui        $a0, %hi(D_800ED620)
/* 5DE94 8005D294 00902021 */  addu       $a0, $a0, $s0
/* 5DE98 8005D298 8C84D620 */  lw         $a0, %lo(D_800ED620)($a0)
/* 5DE9C 8005D29C 10800007 */  beqz       $a0, .L8005D2BC
/* 5DEA0 8005D2A0 00111100 */   sll       $v0, $s1, 4
/* 5DEA4 8005D2A4 0C008DCA */  jal        func_80023728
/* 5DEA8 8005D2A8 00000000 */   nop
/* 5DEAC 8005D2AC 3C01800F */  lui        $at, %hi(D_800ED620)
/* 5DEB0 8005D2B0 00300821 */  addu       $at, $at, $s0
/* 5DEB4 8005D2B4 AC20D620 */  sw         $zero, %lo(D_800ED620)($at)
/* 5DEB8 8005D2B8 00111100 */  sll        $v0, $s1, 4
.L8005D2BC:
/* 5DEBC 8005D2BC 3C01800F */  lui        $at, %hi(D_800ED61A)
/* 5DEC0 8005D2C0 00220821 */  addu       $at, $at, $v0
/* 5DEC4 8005D2C4 A420D61A */  sh         $zero, %lo(D_800ED61A)($at)
/* 5DEC8 8005D2C8 26310001 */  addiu      $s1, $s1, 1
.L8005D2CC:
/* 5DECC 8005D2CC 2A22000A */  slti       $v0, $s1, 0xa
/* 5DED0 8005D2D0 1440FFDF */  bnez       $v0, .L8005D250
/* 5DED4 8005D2D4 00118100 */   sll       $s0, $s1, 4
/* 5DED8 8005D2D8 3C02800C */  lui        $v0, %hi(D_800C5988)
/* 5DEDC 8005D2DC 84425988 */  lh         $v0, %lo(D_800C5988)($v0)
/* 5DEE0 8005D2E0 18400015 */  blez       $v0, .L8005D338
/* 5DEE4 8005D2E4 00008821 */   addu      $s1, $zero, $zero
/* 5DEE8 8005D2E8 24120001 */  addiu      $s2, $zero, 1
/* 5DEEC 8005D2EC 00111040 */  sll        $v0, $s1, 1
.L8005D2F0:
/* 5DEF0 8005D2F0 00511021 */  addu       $v0, $v0, $s1
/* 5DEF4 8005D2F4 00021080 */  sll        $v0, $v0, 2
/* 5DEF8 8005D2F8 3C03800C */  lui        $v1, %hi(D_800C5990)
/* 5DEFC 8005D2FC 8C635990 */  lw         $v1, %lo(D_800C5990)($v1)
/* 5DF00 8005D300 00438021 */  addu       $s0, $v0, $v1
/* 5DF04 8005D304 96020000 */  lhu        $v0, ($s0)
/* 5DF08 8005D308 10520006 */  beq        $v0, $s2, .L8005D324
/* 5DF0C 8005D30C 26310001 */   addiu     $s1, $s1, 1
/* 5DF10 8005D310 8E040004 */  lw         $a0, 4($s0)
/* 5DF14 8005D314 0C018D76 */  jal        func_800635D8
/* 5DF18 8005D318 8E050008 */   lw        $a1, 8($s0)
/* 5DF1C 8005D31C 0C018D06 */  jal        func_80063418
/* 5DF20 8005D320 8E040004 */   lw        $a0, 4($s0)
.L8005D324:
/* 5DF24 8005D324 3C02800C */  lui        $v0, %hi(D_800C5988)
/* 5DF28 8005D328 84425988 */  lh         $v0, %lo(D_800C5988)($v0)
/* 5DF2C 8005D32C 0222102A */  slt        $v0, $s1, $v0
/* 5DF30 8005D330 1440FFEF */  bnez       $v0, .L8005D2F0
/* 5DF34 8005D334 00111040 */   sll       $v0, $s1, 1
.L8005D338:
/* 5DF38 8005D338 3C01800C */  lui        $at, %hi(D_800C5988)
/* 5DF3C 8005D33C A4205988 */  sh         $zero, %lo(D_800C5988)($at)
/* 5DF40 8005D340 3C01800C */  lui        $at, %hi(D_800C598A)
/* 5DF44 8005D344 A420598A */  sh         $zero, %lo(D_800C598A)($at)
/* 5DF48 8005D348 3C04800C */  lui        $a0, %hi(D_800C5990)
/* 5DF4C 8005D34C 0C008DCA */  jal        func_80023728
/* 5DF50 8005D350 8C845990 */   lw        $a0, %lo(D_800C5990)($a0)
/* 5DF54 8005D354 3C01800C */  lui        $at, %hi(D_800C5990)
/* 5DF58 8005D358 AC205990 */  sw         $zero, %lo(D_800C5990)($at)
/* 5DF5C 8005D35C 0C008DEF */  jal        func_800237BC
/* 5DF60 8005D360 24047918 */   addiu     $a0, $zero, 0x7918
/* 5DF64 8005D364 3C01800F */  lui        $at, %hi(D_800F64E0)
/* 5DF68 8005D368 AC2064E0 */  sw         $zero, %lo(D_800F64E0)($at)
/* 5DF6C 8005D36C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 5DF70 8005D370 8FB20028 */  lw         $s2, 0x28($sp)
/* 5DF74 8005D374 8FB10024 */  lw         $s1, 0x24($sp)
/* 5DF78 8005D378 8FB00020 */  lw         $s0, 0x20($sp)
/* 5DF7C 8005D37C 03E00008 */  jr         $ra
/* 5DF80 8005D380 27BD0030 */   addiu     $sp, $sp, 0x30
