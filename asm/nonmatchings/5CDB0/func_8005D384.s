	.set noat
	.set noreorder

glabel func_8005D384
/* 5DF84 8005D384 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5DF88 8005D388 AFBF002C */  sw         $ra, 0x2c($sp)
/* 5DF8C 8005D38C AFB40028 */  sw         $s4, 0x28($sp)
/* 5DF90 8005D390 AFB30024 */  sw         $s3, 0x24($sp)
/* 5DF94 8005D394 AFB20020 */  sw         $s2, 0x20($sp)
/* 5DF98 8005D398 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5DF9C 8005D39C AFB00018 */  sw         $s0, 0x18($sp)
/* 5DFA0 8005D3A0 8FB40040 */  lw         $s4, 0x40($sp)
/* 5DFA4 8005D3A4 00804021 */  addu       $t0, $a0, $zero
/* 5DFA8 8005D3A8 00A09021 */  addu       $s2, $a1, $zero
/* 5DFAC 8005D3AC 00C09821 */  addu       $s3, $a2, $zero
/* 5DFB0 8005D3B0 3C03800F */  lui        $v1, %hi(D_800ED56C)
/* 5DFB4 8005D3B4 8463D56C */  lh         $v1, %lo(D_800ED56C)($v1)
/* 5DFB8 8005D3B8 3C02800F */  lui        $v0, %hi(D_800ED550)
/* 5DFBC 8005D3BC 8442D550 */  lh         $v0, %lo(D_800ED550)($v0)
/* 5DFC0 8005D3C0 14620003 */  bne        $v1, $v0, .L8005D3D0
/* 5DFC4 8005D3C4 00E08821 */   addu      $s1, $a3, $zero
/* 5DFC8 8005D3C8 08017530 */  j          .L8005D4C0
/* 5DFCC 8005D3CC 00001021 */   addu      $v0, $zero, $zero
.L8005D3D0:
/* 5DFD0 8005D3D0 3C02800F */  lui        $v0, %hi(D_800F65BA)
/* 5DFD4 8005D3D4 844265BA */  lh         $v0, %lo(D_800F65BA)($v0)
/* 5DFD8 8005D3D8 00021880 */  sll        $v1, $v0, 2
/* 5DFDC 8005D3DC 00621821 */  addu       $v1, $v1, $v0
/* 5DFE0 8005D3E0 00031880 */  sll        $v1, $v1, 2
/* 5DFE4 8005D3E4 00621821 */  addu       $v1, $v1, $v0
/* 5DFE8 8005D3E8 00031880 */  sll        $v1, $v1, 2
/* 5DFEC 8005D3EC 3C04800C */  lui        $a0, %hi(D_800C5984)
/* 5DFF0 8005D3F0 8C845984 */  lw         $a0, %lo(D_800C5984)($a0)
/* 5DFF4 8005D3F4 00648021 */  addu       $s0, $v1, $a0
/* 5DFF8 8005D3F8 A6020002 */  sh         $v0, 2($s0)
/* 5DFFC 8005D3FC A6080004 */  sh         $t0, 4($s0)
/* 5E000 8005D400 0C01757D */  jal        func_8005D5F4
/* 5E004 8005D404 02002021 */   addu      $a0, $s0, $zero
/* 5E008 8005D408 3244FFFF */  andi       $a0, $s2, 0xffff
/* 5E00C 8005D40C 10800006 */  beqz       $a0, .L8005D428
/* 5E010 8005D410 00042040 */   sll       $a0, $a0, 1
/* 5E014 8005D414 0C008DA1 */  jal        func_80023684
/* 5E018 8005D418 24057918 */   addiu     $a1, $zero, 0x7918
/* 5E01C 8005D41C AE020040 */  sw         $v0, 0x40($s0)
/* 5E020 8005D420 0801750C */  j          .L8005D430
/* 5E024 8005D424 A612003C */   sh        $s2, 0x3c($s0)
.L8005D428:
/* 5E028 8005D428 AE000040 */  sw         $zero, 0x40($s0)
/* 5E02C 8005D42C A600003C */  sh         $zero, 0x3c($s0)
.L8005D430:
/* 5E030 8005D430 3264FFFF */  andi       $a0, $s3, 0xffff
/* 5E034 8005D434 10800006 */  beqz       $a0, .L8005D450
/* 5E038 8005D438 00042040 */   sll       $a0, $a0, 1
/* 5E03C 8005D43C 0C008DA1 */  jal        func_80023684
/* 5E040 8005D440 24057918 */   addiu     $a1, $zero, 0x7918
/* 5E044 8005D444 AE020048 */  sw         $v0, 0x48($s0)
/* 5E048 8005D448 08017516 */  j          .L8005D458
/* 5E04C 8005D44C A6130044 */   sh        $s3, 0x44($s0)
.L8005D450:
/* 5E050 8005D450 AE000048 */  sw         $zero, 0x48($s0)
/* 5E054 8005D454 A6000044 */  sh         $zero, 0x44($s0)
.L8005D458:
/* 5E058 8005D458 00111400 */  sll        $v0, $s1, 0x10
/* 5E05C 8005D45C 04400005 */  bltz       $v0, .L8005D474
/* 5E060 8005D460 3224FFFF */   andi      $a0, $s1, 0xffff
/* 5E064 8005D464 0C017699 */  jal        func_8005DA64
/* 5E068 8005D468 02002821 */   addu      $a1, $s0, $zero
/* 5E06C 8005D46C 08017520 */  j          .L8005D480
/* 5E070 8005D470 24020004 */   addiu     $v0, $zero, 4
.L8005D474:
/* 5E074 8005D474 A611000C */  sh         $s1, 0xc($s0)
/* 5E078 8005D478 A600000E */  sh         $zero, 0xe($s0)
/* 5E07C 8005D47C 24020004 */  addiu      $v0, $zero, 4
.L8005D480:
/* 5E080 8005D480 A6020000 */  sh         $v0, ($s0)
/* 5E084 8005D484 AE000010 */  sw         $zero, 0x10($s0)
/* 5E088 8005D488 AE140014 */  sw         $s4, 0x14($s0)
/* 5E08C 8005D48C A200004F */  sb         $zero, 0x4f($s0)
/* 5E090 8005D490 A200004E */  sb         $zero, 0x4e($s0)
/* 5E094 8005D494 A200004D */  sb         $zero, 0x4d($s0)
/* 5E098 8005D498 A200004C */  sb         $zero, 0x4c($s0)
/* 5E09C 8005D49C 9602000A */  lhu        $v0, 0xa($s0)
/* 5E0A0 8005D4A0 3C01800F */  lui        $at, %hi(D_800F65BA)
/* 5E0A4 8005D4A4 A42265BA */  sh         $v0, %lo(D_800F65BA)($at)
/* 5E0A8 8005D4A8 3C02800F */  lui        $v0, %hi(D_800ED56C)
/* 5E0AC 8005D4AC 9442D56C */  lhu        $v0, %lo(D_800ED56C)($v0)
/* 5E0B0 8005D4B0 24420001 */  addiu      $v0, $v0, 1
/* 5E0B4 8005D4B4 3C01800F */  lui        $at, %hi(D_800ED56C)
/* 5E0B8 8005D4B8 A422D56C */  sh         $v0, %lo(D_800ED56C)($at)
/* 5E0BC 8005D4BC 02001021 */  addu       $v0, $s0, $zero
.L8005D4C0:
/* 5E0C0 8005D4C0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 5E0C4 8005D4C4 8FB40028 */  lw         $s4, 0x28($sp)
/* 5E0C8 8005D4C8 8FB30024 */  lw         $s3, 0x24($sp)
/* 5E0CC 8005D4CC 8FB20020 */  lw         $s2, 0x20($sp)
/* 5E0D0 8005D4D0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5E0D4 8005D4D4 8FB00018 */  lw         $s0, 0x18($sp)
/* 5E0D8 8005D4D8 03E00008 */  jr         $ra
/* 5E0DC 8005D4DC 27BD0030 */   addiu     $sp, $sp, 0x30
