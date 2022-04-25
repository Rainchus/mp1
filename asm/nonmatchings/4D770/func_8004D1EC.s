	.set noat
	.set noreorder

glabel func_8004D1EC
/* 4DDEC 8004D1EC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4DDF0 8004D1F0 AFBF0028 */  sw         $ra, 0x28($sp)
/* 4DDF4 8004D1F4 AFB50024 */  sw         $s5, 0x24($sp)
/* 4DDF8 8004D1F8 AFB40020 */  sw         $s4, 0x20($sp)
/* 4DDFC 8004D1FC AFB3001C */  sw         $s3, 0x1c($sp)
/* 4DE00 8004D200 AFB20018 */  sw         $s2, 0x18($sp)
/* 4DE04 8004D204 AFB10014 */  sw         $s1, 0x14($sp)
/* 4DE08 8004D208 AFB00010 */  sw         $s0, 0x10($sp)
/* 4DE0C 8004D20C 00809021 */  addu       $s2, $a0, $zero
/* 4DE10 8004D210 00A09821 */  addu       $s3, $a1, $zero
/* 4DE14 8004D214 00C0A021 */  addu       $s4, $a2, $zero
/* 4DE18 8004D218 00E0A821 */  addu       $s5, $a3, $zero
/* 4DE1C 8004D21C 3C048005 */  lui        $a0, %hi(func_8004D0DC)
/* 4DE20 8004D220 2484D0DC */  addiu      $a0, $a0, %lo(func_8004D0DC)
/* 4DE24 8004D224 24054001 */  addiu      $a1, $zero, 0x4001
/* 4DE28 8004D228 00003021 */  addu       $a2, $zero, $zero
/* 4DE2C 8004D22C 0C01770A */  jal        func_8005DC28
/* 4DE30 8004D230 24070050 */   addiu     $a3, $zero, 0x50
/* 4DE34 8004D234 00408821 */  addu       $s1, $v0, $zero
/* 4DE38 8004D238 8E240018 */  lw         $a0, 0x18($s1)
/* 4DE3C 8004D23C 0C016628 */  jal        func_800598A0
/* 4DE40 8004D240 24050020 */   addiu     $a1, $zero, 0x20
/* 4DE44 8004D244 00408021 */  addu       $s0, $v0, $zero
/* 4DE48 8004D248 AE30008C */  sw         $s0, 0x8c($s1)
/* 4DE4C 8004D24C 02002021 */  addu       $a0, $s0, $zero
/* 4DE50 8004D250 8E450000 */  lw         $a1, ($s2)
/* 4DE54 8004D254 8E470008 */  lw         $a3, 8($s2)
/* 4DE58 8004D258 0C028340 */  jal        func_800A0D00
/* 4DE5C 8004D25C 00003021 */   addu      $a2, $zero, $zero
/* 4DE60 8004D260 2604000C */  addiu      $a0, $s0, 0xc
/* 4DE64 8004D264 8E650000 */  lw         $a1, ($s3)
/* 4DE68 8004D268 8E670008 */  lw         $a3, 8($s3)
/* 4DE6C 8004D26C 0C028340 */  jal        func_800A0D00
/* 4DE70 8004D270 00003021 */   addu      $a2, $zero, $zero
/* 4DE74 8004D274 AE140018 */  sw         $s4, 0x18($s0)
/* 4DE78 8004D278 AE15001C */  sw         $s5, 0x1c($s0)
/* 4DE7C 8004D27C 02201021 */  addu       $v0, $s1, $zero
/* 4DE80 8004D280 8FBF0028 */  lw         $ra, 0x28($sp)
/* 4DE84 8004D284 8FB50024 */  lw         $s5, 0x24($sp)
/* 4DE88 8004D288 8FB40020 */  lw         $s4, 0x20($sp)
/* 4DE8C 8004D28C 8FB3001C */  lw         $s3, 0x1c($sp)
/* 4DE90 8004D290 8FB20018 */  lw         $s2, 0x18($sp)
/* 4DE94 8004D294 8FB10014 */  lw         $s1, 0x14($sp)
/* 4DE98 8004D298 8FB00010 */  lw         $s0, 0x10($sp)
/* 4DE9C 8004D29C 03E00008 */  jr         $ra
/* 4DEA0 8004D2A0 27BD0030 */   addiu     $sp, $sp, 0x30
