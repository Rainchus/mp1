	.set noat
	.set noreorder

glabel func_8007B310
/* 7BF10 8007B310 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7BF14 8007B314 AFBF0018 */  sw         $ra, 0x18($sp)
/* 7BF18 8007B318 0C008D9A */  jal        func_80023668
/* 7BF1C 8007B31C 24041900 */   addiu     $a0, $zero, 0x1900
/* 7BF20 8007B320 3C01800E */  lui        $at, %hi(D_800E434C)
/* 7BF24 8007B324 AC22434C */  sw         $v0, %lo(D_800E434C)($at)
/* 7BF28 8007B328 AFA20010 */  sw         $v0, 0x10($sp)
/* 7BF2C 8007B32C 00002021 */  addu       $a0, $zero, $zero
/* 7BF30 8007B330 3C058008 */  lui        $a1, %hi(func_8007B458)
/* 7BF34 8007B334 24A5B458 */  addiu      $a1, $a1, %lo(func_8007B458)
/* 7BF38 8007B338 0C009147 */  jal        func_8002451C
/* 7BF3C 8007B33C 00003021 */   addu      $a2, $zero, $zero
/* 7BF40 8007B340 3C01800E */  lui        $at, %hi(D_800E4352)
/* 7BF44 8007B344 A4224352 */  sh         $v0, %lo(D_800E4352)($at)
/* 7BF48 8007B348 8FA30010 */  lw         $v1, 0x10($sp)
/* 7BF4C 8007B34C 24620008 */  addiu      $v0, $v1, 8
/* 7BF50 8007B350 AFA20010 */  sw         $v0, 0x10($sp)
/* 7BF54 8007B354 3C02DE00 */  lui        $v0, 0xde00
/* 7BF58 8007B358 AC620000 */  sw         $v0, ($v1)
/* 7BF5C 8007B35C 3C02800C */  lui        $v0, %hi(D_800C6108)
/* 7BF60 8007B360 24426108 */  addiu      $v0, $v0, %lo(D_800C6108)
/* 7BF64 8007B364 AC620004 */  sw         $v0, 4($v1)
/* 7BF68 8007B368 24620010 */  addiu      $v0, $v1, 0x10
/* 7BF6C 8007B36C AFA20010 */  sw         $v0, 0x10($sp)
/* 7BF70 8007B370 3C02FC11 */  lui        $v0, 0xfc11
/* 7BF74 8007B374 3442FE23 */  ori        $v0, $v0, 0xfe23
/* 7BF78 8007B378 AC620008 */  sw         $v0, 8($v1)
/* 7BF7C 8007B37C 2402F7FB */  addiu      $v0, $zero, -0x805
/* 7BF80 8007B380 AC62000C */  sw         $v0, 0xc($v1)
/* 7BF84 8007B384 24620018 */  addiu      $v0, $v1, 0x18
/* 7BF88 8007B388 AFA20010 */  sw         $v0, 0x10($sp)
/* 7BF8C 8007B38C 3C02E200 */  lui        $v0, 0xe200
/* 7BF90 8007B390 3442001C */  ori        $v0, $v0, 0x1c
/* 7BF94 8007B394 AC620010 */  sw         $v0, 0x10($v1)
/* 7BF98 8007B398 3C020050 */  lui        $v0, 0x50
/* 7BF9C 8007B39C 344241C8 */  ori        $v0, $v0, 0x41c8
/* 7BFA0 8007B3A0 AC620014 */  sw         $v0, 0x14($v1)
/* 7BFA4 8007B3A4 24620020 */  addiu      $v0, $v1, 0x20
/* 7BFA8 8007B3A8 AFA20010 */  sw         $v0, 0x10($sp)
/* 7BFAC 8007B3AC 3C02FA00 */  lui        $v0, 0xfa00
/* 7BFB0 8007B3B0 AC620018 */  sw         $v0, 0x18($v1)
/* 7BFB4 8007B3B4 2402FF80 */  addiu      $v0, $zero, -0x80
/* 7BFB8 8007B3B8 AC62001C */  sw         $v0, 0x1c($v1)
/* 7BFBC 8007B3BC 3C05800E */  lui        $a1, %hi(D_800E4344)
/* 7BFC0 8007B3C0 8CA54344 */  lw         $a1, %lo(D_800E4344)($a1)
/* 7BFC4 8007B3C4 0C01CB97 */  jal        func_80072E5C
/* 7BFC8 8007B3C8 27A40010 */   addiu     $a0, $sp, 0x10
/* 7BFCC 8007B3CC 8FA30010 */  lw         $v1, 0x10($sp)
/* 7BFD0 8007B3D0 3C02DF00 */  lui        $v0, 0xdf00
/* 7BFD4 8007B3D4 AC620000 */  sw         $v0, ($v1)
/* 7BFD8 8007B3D8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 7BFDC 8007B3DC AC600004 */  sw         $zero, 4($v1)
/* 7BFE0 8007B3E0 03E00008 */  jr         $ra
/* 7BFE4 8007B3E4 27BD0020 */   addiu     $sp, $sp, 0x20
