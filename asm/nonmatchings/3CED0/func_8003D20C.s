	.set noat
	.set noreorder

glabel func_8003D20C
/* 3DE0C 8003D20C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3DE10 8003D210 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3DE14 8003D214 AFB20018 */  sw         $s2, 0x18($sp)
/* 3DE18 8003D218 AFB10014 */  sw         $s1, 0x14($sp)
/* 3DE1C 8003D21C AFB00010 */  sw         $s0, 0x10($sp)
/* 3DE20 8003D220 24020001 */  addiu      $v0, $zero, 1
/* 3DE24 8003D224 3C01800F */  lui        $at, %hi(D_800ECC22)
/* 3DE28 8003D228 A022CC22 */  sb         $v0, %lo(D_800ECC22)($at)
/* 3DE2C 8003D22C 0C017F5F */  jal        func_8005FD7C
/* 3DE30 8003D230 00809021 */   addu      $s2, $a0, $zero
/* 3DE34 8003D234 0C018CEA */  jal        func_800633A8
/* 3DE38 8003D238 00000000 */   nop
/* 3DE3C 8003D23C 00408821 */  addu       $s1, $v0, $zero
/* 3DE40 8003D240 3C048004 */  lui        $a0, %hi(func_8003CAB4)
/* 3DE44 8003D244 2484CAB4 */  addiu      $a0, $a0, %lo(func_8003CAB4)
/* 3DE48 8003D248 24051005 */  addiu      $a1, $zero, 0x1005
/* 3DE4C 8003D24C 00003021 */  addu       $a2, $zero, $zero
/* 3DE50 8003D250 0C01770A */  jal        func_8005DC28
/* 3DE54 8003D254 00003821 */   addu      $a3, $zero, $zero
/* 3DE58 8003D258 00408021 */  addu       $s0, $v0, $zero
/* 3DE5C 8003D25C AE12008C */  sw         $s2, 0x8c($s0)
/* 3DE60 8003D260 02002021 */  addu       $a0, $s0, $zero
/* 3DE64 8003D264 0C017640 */  jal        func_8005D900
/* 3DE68 8003D268 24050080 */   addiu     $a1, $zero, 0x80
/* 3DE6C 8003D26C 02202021 */  addu       $a0, $s1, $zero
/* 3DE70 8003D270 0C018C9C */  jal        func_80063270
/* 3DE74 8003D274 02002821 */   addu      $a1, $s0, $zero
/* 3DE78 8003D278 0C018CD6 */  jal        func_80063358
/* 3DE7C 8003D27C 00000000 */   nop
/* 3DE80 8003D280 0C017FB3 */  jal        func_8005FECC
/* 3DE84 8003D284 00000000 */   nop
/* 3DE88 8003D288 3C01800F */  lui        $at, %hi(D_800ECC22)
/* 3DE8C 8003D28C A020CC22 */  sb         $zero, %lo(D_800ECC22)($at)
/* 3DE90 8003D290 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3DE94 8003D294 8FB20018 */  lw         $s2, 0x18($sp)
/* 3DE98 8003D298 8FB10014 */  lw         $s1, 0x14($sp)
/* 3DE9C 8003D29C 8FB00010 */  lw         $s0, 0x10($sp)
/* 3DEA0 8003D2A0 03E00008 */  jr         $ra
/* 3DEA4 8003D2A4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 3DEA8 8003D2A8 00000000 */  nop
/* 3DEAC 8003D2AC 00000000 */  nop
