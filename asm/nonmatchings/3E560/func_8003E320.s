	.set noat
	.set noreorder

glabel func_8003E320
/* 3EF20 8003E320 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3EF24 8003E324 AFBF002C */  sw         $ra, 0x2c($sp)
/* 3EF28 8003E328 AFB40028 */  sw         $s4, 0x28($sp)
/* 3EF2C 8003E32C AFB30024 */  sw         $s3, 0x24($sp)
/* 3EF30 8003E330 AFB20020 */  sw         $s2, 0x20($sp)
/* 3EF34 8003E334 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3EF38 8003E338 AFB00018 */  sw         $s0, 0x18($sp)
/* 3EF3C 8003E33C F7B40030 */  sdc1       $f20, 0x30($sp)
/* 3EF40 8003E340 0C00F6C7 */  jal        func_8003DB1C
/* 3EF44 8003E344 0080A021 */   addu      $s4, $a0, $zero
/* 3EF48 8003E348 00409821 */  addu       $s3, $v0, $zero
/* 3EF4C 8003E34C 12600085 */  beqz       $s3, .L8003E564
/* 3EF50 8003E350 24044000 */   addiu     $a0, $zero, 0x4000
/* 3EF54 8003E354 92820008 */  lbu        $v0, 8($s4)
/* 3EF58 8003E358 A2620008 */  sb         $v0, 8($s3)
/* 3EF5C 8003E35C 8E82003C */  lw         $v0, 0x3c($s4)
/* 3EF60 8003E360 94460044 */  lhu        $a2, 0x44($v0)
/* 3EF64 8003E364 3C028004 */  lui        $v0, %hi(func_8003DE60)
/* 3EF68 8003E368 2442DE60 */  addiu      $v0, $v0, %lo(func_8003DE60)
/* 3EF6C 8003E36C AFA20010 */  sw         $v0, 0x10($sp)
/* 3EF70 8003E370 24050001 */  addiu      $a1, $zero, 1
/* 3EF74 8003E374 0C0174E1 */  jal        func_8005D384
/* 3EF78 8003E378 2407FFFF */   addiu     $a3, $zero, -1
/* 3EF7C 8003E37C AE62003C */  sw         $v0, 0x3c($s3)
/* 3EF80 8003E380 00409021 */  addu       $s2, $v0, $zero
/* 3EF84 8003E384 8E82003C */  lw         $v0, 0x3c($s4)
/* 3EF88 8003E388 8C420040 */  lw         $v0, 0x40($v0)
/* 3EF8C 8003E38C 0C008FF2 */  jal        func_80023FC8
/* 3EF90 8003E390 84440000 */   lh        $a0, ($v0)
/* 3EF94 8003E394 00408021 */  addu       $s0, $v0, $zero
/* 3EF98 8003E398 02008821 */  addu       $s1, $s0, $zero
/* 3EF9C 8003E39C 02402021 */  addu       $a0, $s2, $zero
/* 3EFA0 8003E3A0 0C01762E */  jal        func_8005D8B8
/* 3EFA4 8003E3A4 24050080 */   addiu     $a1, $zero, 0x80
/* 3EFA8 8003E3A8 8E420040 */  lw         $v0, 0x40($s2)
/* 3EFAC 8003E3AC A4510000 */  sh         $s1, ($v0)
/* 3EFB0 8003E3B0 02402021 */  addu       $a0, $s2, $zero
/* 3EFB4 8003E3B4 00002821 */  addu       $a1, $zero, $zero
/* 3EFB8 8003E3B8 00A03021 */  addu       $a2, $a1, $zero
/* 3EFBC 8003E3BC 0C01765B */  jal        func_8005D96C
/* 3EFC0 8003E3C0 00A03821 */   addu      $a3, $a1, $zero
/* 3EFC4 8003E3C4 00108400 */  sll        $s0, $s0, 0x10
/* 3EFC8 8003E3C8 00108403 */  sra        $s0, $s0, 0x10
/* 3EFCC 8003E3CC 02002021 */  addu       $a0, $s0, $zero
/* 3EFD0 8003E3D0 24050002 */  addiu      $a1, $zero, 2
/* 3EFD4 8003E3D4 0C0097AD */  jal        func_80025EB4
/* 3EFD8 8003E3D8 24060002 */   addiu     $a2, $zero, 2
/* 3EFDC 8003E3DC 02002021 */  addu       $a0, $s0, $zero
/* 3EFE0 8003E3E0 0C0097C4 */  jal        func_80025F10
/* 3EFE4 8003E3E4 24050001 */   addiu     $a1, $zero, 1
/* 3EFE8 8003E3E8 0C009792 */  jal        func_80025E48
/* 3EFEC 8003E3EC 02002021 */   addu      $a0, $s0, $zero
/* 3EFF0 8003E3F0 00021400 */  sll        $v0, $v0, 0x10
/* 3EFF4 8003E3F4 0C00F696 */  jal        func_8003DA58
/* 3EFF8 8003E3F8 00022403 */   sra       $a0, $v0, 0x10
/* 3EFFC 8003E3FC A6620044 */  sh         $v0, 0x44($s3)
/* 3F000 8003E400 0C00EDDD */  jal        func_8003B774
/* 3F004 8003E404 24040008 */   addiu     $a0, $zero, 8
/* 3F008 8003E408 00401821 */  addu       $v1, $v0, $zero
/* 3F00C 8003E40C AE430050 */  sw         $v1, 0x50($s2)
/* 3F010 8003E410 AC730000 */  sw         $s3, ($v1)
/* 3F014 8003E414 92620008 */  lbu        $v0, 8($s3)
/* 3F018 8003E418 00021100 */  sll        $v0, $v0, 4
/* 3F01C 8003E41C 3C01800C */  lui        $at, %hi(D_800C4358)
/* 3F020 8003E420 00220821 */  addu       $at, $at, $v0
/* 3F024 8003E424 C4204358 */  lwc1       $f0, %lo(D_800C4358)($at)
/* 3F028 8003E428 E4600004 */  swc1       $f0, 4($v1)
/* 3F02C 8003E42C 8E82003C */  lw         $v0, 0x3c($s4)
/* 3F030 8003E430 00402021 */  addu       $a0, $v0, $zero
/* 3F034 8003E434 94420044 */  lhu        $v0, 0x44($v0)
/* 3F038 8003E438 10400013 */  beqz       $v0, .L8003E488
/* 3F03C 8003E43C 00008821 */   addu      $s1, $zero, $zero
/* 3F040 8003E440 00118400 */  sll        $s0, $s1, 0x10
.L8003E444:
/* 3F044 8003E444 8C820048 */  lw         $v0, 0x48($a0)
/* 3F048 8003E448 001083C3 */  sra        $s0, $s0, 0xf
/* 3F04C 8003E44C 02021021 */  addu       $v0, $s0, $v0
/* 3F050 8003E450 0C00F696 */  jal        func_8003DA58
/* 3F054 8003E454 84440000 */   lh        $a0, ($v0)
/* 3F058 8003E458 8E430048 */  lw         $v1, 0x48($s2)
/* 3F05C 8003E45C 02038021 */  addu       $s0, $s0, $v1
/* 3F060 8003E460 A6020000 */  sh         $v0, ($s0)
/* 3F064 8003E464 26220001 */  addiu      $v0, $s1, 1
/* 3F068 8003E468 00408821 */  addu       $s1, $v0, $zero
/* 3F06C 8003E46C 00021400 */  sll        $v0, $v0, 0x10
/* 3F070 8003E470 00021403 */  sra        $v0, $v0, 0x10
/* 3F074 8003E474 8E84003C */  lw         $a0, 0x3c($s4)
/* 3F078 8003E478 94830044 */  lhu        $v1, 0x44($a0)
/* 3F07C 8003E47C 0043102A */  slt        $v0, $v0, $v1
/* 3F080 8003E480 1440FFF0 */  bnez       $v0, .L8003E444
/* 3F084 8003E484 00118400 */   sll       $s0, $s1, 0x10
.L8003E488:
/* 3F088 8003E488 92620008 */  lbu        $v0, 8($s3)
/* 3F08C 8003E48C 00021100 */  sll        $v0, $v0, 4
/* 3F090 8003E490 3C01800C */  lui        $at, %hi(D_800C435C)
/* 3F094 8003E494 00220821 */  addu       $at, $at, $v0
/* 3F098 8003E498 C420435C */  lwc1       $f0, %lo(D_800C435C)($at)
/* 3F09C 8003E49C 4480A000 */  mtc1       $zero, $f20
/* 3F0A0 8003E4A0 00000000 */  nop
/* 3F0A4 8003E4A4 4600A03C */  c.lt.s     $f20, $f0
/* 3F0A8 8003E4A8 00000000 */  nop
/* 3F0AC 8003E4AC 00000000 */  nop
/* 3F0B0 8003E4B0 4500002B */  bc1f       .L8003E560
/* 3F0B4 8003E4B4 24044000 */   addiu     $a0, $zero, 0x4000
/* 3F0B8 8003E4B8 3C028004 */  lui        $v0, %hi(func_8003E040)
/* 3F0BC 8003E4BC 2442E040 */  addiu      $v0, $v0, %lo(func_8003E040)
/* 3F0C0 8003E4C0 AFA20010 */  sw         $v0, 0x10($sp)
/* 3F0C4 8003E4C4 24050001 */  addiu      $a1, $zero, 1
/* 3F0C8 8003E4C8 00003021 */  addu       $a2, $zero, $zero
/* 3F0CC 8003E4CC 0C0174E1 */  jal        func_8005D384
/* 3F0D0 8003E4D0 2407FFFF */   addiu     $a3, $zero, -1
/* 3F0D4 8003E4D4 AE620040 */  sw         $v0, 0x40($s3)
/* 3F0D8 8003E4D8 00409021 */  addu       $s2, $v0, $zero
/* 3F0DC 8003E4DC 8E820040 */  lw         $v0, 0x40($s4)
/* 3F0E0 8003E4E0 8C420040 */  lw         $v0, 0x40($v0)
/* 3F0E4 8003E4E4 0C008FF2 */  jal        func_80023FC8
/* 3F0E8 8003E4E8 84440000 */   lh        $a0, ($v0)
/* 3F0EC 8003E4EC 00408021 */  addu       $s0, $v0, $zero
/* 3F0F0 8003E4F0 02008821 */  addu       $s1, $s0, $zero
/* 3F0F4 8003E4F4 02402021 */  addu       $a0, $s2, $zero
/* 3F0F8 8003E4F8 0C01762E */  jal        func_8005D8B8
/* 3F0FC 8003E4FC 24050080 */   addiu     $a1, $zero, 0x80
/* 3F100 8003E500 8E420040 */  lw         $v0, 0x40($s2)
/* 3F104 8003E504 A4510000 */  sh         $s1, ($v0)
/* 3F108 8003E508 4405A000 */  mfc1       $a1, $f20
/* 3F10C 8003E50C 4406A000 */  mfc1       $a2, $f20
/* 3F110 8003E510 4407A000 */  mfc1       $a3, $f20
/* 3F114 8003E514 00000000 */  nop
/* 3F118 8003E518 0C01765B */  jal        func_8005D96C
/* 3F11C 8003E51C 02402021 */   addu      $a0, $s2, $zero
/* 3F120 8003E520 00108400 */  sll        $s0, $s0, 0x10
/* 3F124 8003E524 00102403 */  sra        $a0, $s0, 0x10
/* 3F128 8003E528 0C0097C4 */  jal        func_80025F10
/* 3F12C 8003E52C 24050001 */   addiu     $a1, $zero, 1
/* 3F130 8003E530 0C00EDDD */  jal        func_8003B774
/* 3F134 8003E534 24040008 */   addiu     $a0, $zero, 8
/* 3F138 8003E538 00401821 */  addu       $v1, $v0, $zero
/* 3F13C 8003E53C AE430050 */  sw         $v1, 0x50($s2)
/* 3F140 8003E540 AC730000 */  sw         $s3, ($v1)
/* 3F144 8003E544 92620008 */  lbu        $v0, 8($s3)
/* 3F148 8003E548 00021100 */  sll        $v0, $v0, 4
/* 3F14C 8003E54C 3C01800C */  lui        $at, %hi(D_800C435C)
/* 3F150 8003E550 00220821 */  addu       $at, $at, $v0
/* 3F154 8003E554 C420435C */  lwc1       $f0, %lo(D_800C435C)($at)
/* 3F158 8003E558 0800F959 */  j          .L8003E564
/* 3F15C 8003E55C E4600004 */   swc1      $f0, 4($v1)
.L8003E560:
/* 3F160 8003E560 AE600040 */  sw         $zero, 0x40($s3)
.L8003E564:
/* 3F164 8003E564 02601021 */  addu       $v0, $s3, $zero
/* 3F168 8003E568 8FBF002C */  lw         $ra, 0x2c($sp)
/* 3F16C 8003E56C 8FB40028 */  lw         $s4, 0x28($sp)
/* 3F170 8003E570 8FB30024 */  lw         $s3, 0x24($sp)
/* 3F174 8003E574 8FB20020 */  lw         $s2, 0x20($sp)
/* 3F178 8003E578 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3F17C 8003E57C 8FB00018 */  lw         $s0, 0x18($sp)
/* 3F180 8003E580 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 3F184 8003E584 03E00008 */  jr         $ra
/* 3F188 8003E588 27BD0038 */   addiu     $sp, $sp, 0x38
