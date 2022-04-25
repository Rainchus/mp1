	.set noat
	.set noreorder

glabel func_8004E248
/* 4EE48 8004E248 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4EE4C 8004E24C AFBF0010 */  sw         $ra, 0x10($sp)
/* 4EE50 8004E250 8C830050 */  lw         $v1, 0x50($a0)
/* 4EE54 8004E254 9082004D */  lbu        $v0, 0x4d($a0)
/* 4EE58 8004E258 2442FFFF */  addiu      $v0, $v0, -1
/* 4EE5C 8004E25C 14600044 */  bnez       $v1, .L8004E370
/* 4EE60 8004E260 A082004D */   sb        $v0, 0x4d($a0)
/* 4EE64 8004E264 9082004D */  lbu        $v0, 0x4d($a0)
/* 4EE68 8004E268 1440001F */  bnez       $v0, .L8004E2E8
/* 4EE6C 8004E26C 00000000 */   nop
/* 4EE70 8004E270 9083004C */  lbu        $v1, 0x4c($a0)
/* 4EE74 8004E274 00031040 */  sll        $v0, $v1, 1
/* 4EE78 8004E278 00431021 */  addu       $v0, $v0, $v1
/* 4EE7C 8004E27C 00021100 */  sll        $v0, $v0, 4
/* 4EE80 8004E280 3C01800F */  lui        $at, %hi(D_800F32D0)
/* 4EE84 8004E284 00220821 */  addu       $at, $at, $v0
/* 4EE88 8004E288 8C2232D0 */  lw         $v0, %lo(D_800F32D0)($at)
/* 4EE8C 8004E28C C4800018 */  lwc1       $f0, 0x18($a0)
/* 4EE90 8004E290 E440000C */  swc1       $f0, 0xc($v0)
/* 4EE94 8004E294 9083004C */  lbu        $v1, 0x4c($a0)
/* 4EE98 8004E298 00031040 */  sll        $v0, $v1, 1
/* 4EE9C 8004E29C 00431021 */  addu       $v0, $v0, $v1
/* 4EEA0 8004E2A0 00021100 */  sll        $v0, $v0, 4
/* 4EEA4 8004E2A4 3C01800F */  lui        $at, %hi(D_800F32D0)
/* 4EEA8 8004E2A8 00220821 */  addu       $at, $at, $v0
/* 4EEAC 8004E2AC 8C2232D0 */  lw         $v0, %lo(D_800F32D0)($at)
/* 4EEB0 8004E2B0 C480001C */  lwc1       $f0, 0x1c($a0)
/* 4EEB4 8004E2B4 E4400010 */  swc1       $f0, 0x10($v0)
/* 4EEB8 8004E2B8 9083004C */  lbu        $v1, 0x4c($a0)
/* 4EEBC 8004E2BC 00031040 */  sll        $v0, $v1, 1
/* 4EEC0 8004E2C0 00431021 */  addu       $v0, $v0, $v1
/* 4EEC4 8004E2C4 00021100 */  sll        $v0, $v0, 4
/* 4EEC8 8004E2C8 3C01800F */  lui        $at, %hi(D_800F32D0)
/* 4EECC 8004E2CC 00220821 */  addu       $at, $at, $v0
/* 4EED0 8004E2D0 8C2232D0 */  lw         $v0, %lo(D_800F32D0)($at)
/* 4EED4 8004E2D4 C4800020 */  lwc1       $f0, 0x20($a0)
/* 4EED8 8004E2D8 0C0175C6 */  jal        func_8005D718
/* 4EEDC 8004E2DC E4400014 */   swc1      $f0, 0x14($v0)
/* 4EEE0 8004E2E0 080138F5 */  j          .L8004E3D4
/* 4EEE4 8004E2E4 00000000 */   nop
.L8004E2E8:
/* 4EEE8 8004E2E8 9083004C */  lbu        $v1, 0x4c($a0)
/* 4EEEC 8004E2EC 00031040 */  sll        $v0, $v1, 1
/* 4EEF0 8004E2F0 00431021 */  addu       $v0, $v0, $v1
/* 4EEF4 8004E2F4 00021100 */  sll        $v0, $v0, 4
/* 4EEF8 8004E2F8 3C01800F */  lui        $at, %hi(D_800F32D0)
/* 4EEFC 8004E2FC 00220821 */  addu       $at, $at, $v0
/* 4EF00 8004E300 8C2232D0 */  lw         $v0, %lo(D_800F32D0)($at)
/* 4EF04 8004E304 C440000C */  lwc1       $f0, 0xc($v0)
/* 4EF08 8004E308 C4820030 */  lwc1       $f2, 0x30($a0)
/* 4EF0C 8004E30C 46020000 */  add.s      $f0, $f0, $f2
/* 4EF10 8004E310 E440000C */  swc1       $f0, 0xc($v0)
/* 4EF14 8004E314 9083004C */  lbu        $v1, 0x4c($a0)
/* 4EF18 8004E318 00031040 */  sll        $v0, $v1, 1
/* 4EF1C 8004E31C 00431021 */  addu       $v0, $v0, $v1
/* 4EF20 8004E320 00021100 */  sll        $v0, $v0, 4
/* 4EF24 8004E324 3C01800F */  lui        $at, %hi(D_800F32D0)
/* 4EF28 8004E328 00220821 */  addu       $at, $at, $v0
/* 4EF2C 8004E32C 8C2232D0 */  lw         $v0, %lo(D_800F32D0)($at)
/* 4EF30 8004E330 C4400010 */  lwc1       $f0, 0x10($v0)
/* 4EF34 8004E334 C4820034 */  lwc1       $f2, 0x34($a0)
/* 4EF38 8004E338 46020000 */  add.s      $f0, $f0, $f2
/* 4EF3C 8004E33C E4400010 */  swc1       $f0, 0x10($v0)
/* 4EF40 8004E340 9083004C */  lbu        $v1, 0x4c($a0)
/* 4EF44 8004E344 00031040 */  sll        $v0, $v1, 1
/* 4EF48 8004E348 00431021 */  addu       $v0, $v0, $v1
/* 4EF4C 8004E34C 00021100 */  sll        $v0, $v0, 4
/* 4EF50 8004E350 3C01800F */  lui        $at, %hi(D_800F32D0)
/* 4EF54 8004E354 00220821 */  addu       $at, $at, $v0
/* 4EF58 8004E358 8C2232D0 */  lw         $v0, %lo(D_800F32D0)($at)
/* 4EF5C 8004E35C C4400014 */  lwc1       $f0, 0x14($v0)
/* 4EF60 8004E360 C4820038 */  lwc1       $f2, 0x38($a0)
/* 4EF64 8004E364 46020000 */  add.s      $f0, $f0, $f2
/* 4EF68 8004E368 080138F5 */  j          .L8004E3D4
/* 4EF6C 8004E36C E4400014 */   swc1      $f0, 0x14($v0)
.L8004E370:
/* 4EF70 8004E370 9082004D */  lbu        $v0, 0x4d($a0)
/* 4EF74 8004E374 1440000B */  bnez       $v0, .L8004E3A4
/* 4EF78 8004E378 00000000 */   nop
/* 4EF7C 8004E37C C4800018 */  lwc1       $f0, 0x18($a0)
/* 4EF80 8004E380 E460000C */  swc1       $f0, 0xc($v1)
/* 4EF84 8004E384 C480001C */  lwc1       $f0, 0x1c($a0)
/* 4EF88 8004E388 E4600010 */  swc1       $f0, 0x10($v1)
/* 4EF8C 8004E38C C4800020 */  lwc1       $f0, 0x20($a0)
/* 4EF90 8004E390 E4600014 */  swc1       $f0, 0x14($v1)
/* 4EF94 8004E394 0C0175C6 */  jal        func_8005D718
/* 4EF98 8004E398 AC800050 */   sw        $zero, 0x50($a0)
/* 4EF9C 8004E39C 080138F5 */  j          .L8004E3D4
/* 4EFA0 8004E3A0 00000000 */   nop
.L8004E3A4:
/* 4EFA4 8004E3A4 C460000C */  lwc1       $f0, 0xc($v1)
/* 4EFA8 8004E3A8 C4820030 */  lwc1       $f2, 0x30($a0)
/* 4EFAC 8004E3AC 46020000 */  add.s      $f0, $f0, $f2
/* 4EFB0 8004E3B0 E460000C */  swc1       $f0, 0xc($v1)
/* 4EFB4 8004E3B4 C4600010 */  lwc1       $f0, 0x10($v1)
/* 4EFB8 8004E3B8 C4820034 */  lwc1       $f2, 0x34($a0)
/* 4EFBC 8004E3BC 46020000 */  add.s      $f0, $f0, $f2
/* 4EFC0 8004E3C0 E4600010 */  swc1       $f0, 0x10($v1)
/* 4EFC4 8004E3C4 C4600014 */  lwc1       $f0, 0x14($v1)
/* 4EFC8 8004E3C8 C4820038 */  lwc1       $f2, 0x38($a0)
/* 4EFCC 8004E3CC 46020000 */  add.s      $f0, $f0, $f2
/* 4EFD0 8004E3D0 E4600014 */  swc1       $f0, 0x14($v1)
.L8004E3D4:
/* 4EFD4 8004E3D4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4EFD8 8004E3D8 03E00008 */  jr         $ra
/* 4EFDC 8004E3DC 27BD0018 */   addiu     $sp, $sp, 0x18
