	.set noat
	.set noreorder

glabel func_8003B330
/* 3BF30 8003B330 27BDFAB0 */  addiu      $sp, $sp, -0x550
/* 3BF34 8003B334 AFBF0548 */  sw         $ra, 0x548($sp)
/* 3BF38 8003B338 AFB50544 */  sw         $s5, 0x544($sp)
/* 3BF3C 8003B33C AFB40540 */  sw         $s4, 0x540($sp)
/* 3BF40 8003B340 AFB3053C */  sw         $s3, 0x53c($sp)
/* 3BF44 8003B344 AFB20538 */  sw         $s2, 0x538($sp)
/* 3BF48 8003B348 AFB10534 */  sw         $s1, 0x534($sp)
/* 3BF4C 8003B34C AFB00530 */  sw         $s0, 0x530($sp)
/* 3BF50 8003B350 00009821 */  addu       $s3, $zero, $zero
/* 3BF54 8003B354 00009021 */  addu       $s2, $zero, $zero
/* 3BF58 8003B358 0C00ED7B */  jal        func_8003B5EC
/* 3BF5C 8003B35C 24040003 */   addiu     $a0, $zero, 3
/* 3BF60 8003B360 3C048014 */  lui        $a0, 0x8014
/* 3BF64 8003B364 0C00EDA0 */  jal        func_8003B680
/* 3BF68 8003B368 3C05001A */   lui       $a1, 0x1a
/* 3BF6C 8003B36C 3C048012 */  lui        $a0, 0x8012
/* 3BF70 8003B370 0C00EDD4 */  jal        func_8003B750
/* 3BF74 8003B374 3C050002 */   lui       $a1, 2
/* 3BF78 8003B378 3C038000 */  lui        $v1, %hi(D_80000300)
/* 3BF7C 8003B37C 8C630300 */  lw         $v1, %lo(D_80000300)($v1)
/* 3BF80 8003B380 24020001 */  addiu      $v0, $zero, 1
/* 3BF84 8003B384 14620002 */  bne        $v1, $v0, .L8003B390
/* 3BF88 8003B388 2404001E */   addiu     $a0, $zero, 0x1e
/* 3BF8C 8003B38C 24040002 */  addiu      $a0, $zero, 2
.L8003B390:
/* 3BF90 8003B390 0C018DF0 */  jal        func_800637C0
/* 3BF94 8003B394 24050001 */   addiu     $a1, $zero, 1
/* 3BF98 8003B398 24020003 */  addiu      $v0, $zero, 3
/* 3BF9C 8003B39C 3C01800F */  lui        $at, %hi(D_800ED552)
/* 3BFA0 8003B3A0 A022D552 */  sb         $v0, %lo(D_800ED552)($at)
/* 3BFA4 8003B3A4 3C02800C */  lui        $v0, %hi(D_800C426C)
/* 3BFA8 8003B3A8 2442426C */  addiu      $v0, $v0, %lo(D_800C426C)
/* 3BFAC 8003B3AC AFA20010 */  sw         $v0, 0x10($sp)
/* 3BFB0 8003B3B0 3C04800C */  lui        $a0, %hi(D_800C4250)
/* 3BFB4 8003B3B4 24844250 */  addiu      $a0, $a0, %lo(D_800C4250)
/* 3BFB8 8003B3B8 24050003 */  addiu      $a1, $zero, 3
/* 3BFBC 8003B3BC 3C07800C */  lui        $a3, %hi(D_800C425C)
/* 3BFC0 8003B3C0 24E7425C */  addiu      $a3, $a3, %lo(D_800C425C)
/* 3BFC4 8003B3C4 0C006980 */  jal        func_8001A600
/* 3BFC8 8003B3C8 24060002 */   addiu     $a2, $zero, 2
/* 3BFCC 8003B3CC 240200D4 */  addiu      $v0, $zero, 0xd4
/* 3BFD0 8003B3D0 AFA20010 */  sw         $v0, 0x10($sp)
/* 3BFD4 8003B3D4 00002021 */  addu       $a0, $zero, $zero
/* 3BFD8 8003B3D8 24050020 */  addiu      $a1, $zero, 0x20
/* 3BFDC 8003B3DC 240600D2 */  addiu      $a2, $zero, 0xd2
/* 3BFE0 8003B3E0 0C0183DC */  jal        func_80060F70
/* 3BFE4 8003B3E4 24070020 */   addiu     $a3, $zero, 0x20
/* 3BFE8 8003B3E8 0C018FD0 */  jal        func_80063F40
/* 3BFEC 8003B3EC 00000000 */   nop
/* 3BFF0 8003B3F0 24040004 */  addiu      $a0, $zero, 4
/* 3BFF4 8003B3F4 0C004E37 */  jal        func_800138DC
/* 3BFF8 8003B3F8 24050001 */   addiu     $a1, $zero, 1
/* 3BFFC 8003B3FC 0C01B2EC */  jal        func_8006CBB0
/* 3C000 8003B400 00000000 */   nop
/* 3C004 8003B404 0C005088 */  jal        func_80014220
/* 3C008 8003B408 00000000 */   nop
/* 3C00C 8003B40C 0C0187D8 */  jal        func_80061F60
/* 3C010 8003B410 00000000 */   nop
/* 3C014 8003B414 3C040032 */  lui        $a0, 0x32
/* 3C018 8003B418 0C005118 */  jal        func_80014460
/* 3C01C 8003B41C 2484C7E0 */   addiu     $a0, $a0, -0x3820
/* 3C020 8003B420 0C018C18 */  jal        func_80063060
/* 3C024 8003B424 00000000 */   nop
/* 3C028 8003B428 3C04800F */  lui        $a0, %hi(D_800ED538)
/* 3C02C 8003B42C 2484D538 */  addiu      $a0, $a0, %lo(D_800ED538)
/* 3C030 8003B430 27A50028 */  addiu      $a1, $sp, 0x28
/* 3C034 8003B434 0C022188 */  jal        func_80088620
/* 3C038 8003B438 24060140 */   addiu     $a2, $zero, 0x140
/* 3C03C 8003B43C 27A40018 */  addiu      $a0, $sp, 0x18
/* 3C040 8003B440 3C05800F */  lui        $a1, %hi(D_800ED538)
/* 3C044 8003B444 24A5D538 */  addiu      $a1, $a1, %lo(D_800ED538)
/* 3C048 8003B448 0C018E7E */  jal        func_800639F8
/* 3C04C 8003B44C 24060003 */   addiu     $a2, $zero, 3
/* 3C050 8003B450 0C004FA1 */  jal        func_80013E84
/* 3C054 8003B454 00000000 */   nop
/* 3C058 8003B458 0C0248E4 */  jal        func_80092390
/* 3C05C 8003B45C 24040002 */   addiu     $a0, $zero, 2
/* 3C060 8003B460 0C006AFD */  jal        func_8001ABF4
/* 3C064 8003B464 24040002 */   addiu     $a0, $zero, 2
/* 3C068 8003B468 3C048002 */  lui        $a0, %hi(func_8001A0F0)
/* 3C06C 8003B46C 2484A0F0 */  addiu      $a0, $a0, %lo(func_8001A0F0)
/* 3C070 8003B470 24050001 */  addiu      $a1, $zero, 1
/* 3C074 8003B474 00003021 */  addu       $a2, $zero, $zero
/* 3C078 8003B478 0C018C51 */  jal        func_80063144
/* 3C07C 8003B47C 00003821 */   addu      $a3, $zero, $zero
/* 3C080 8003B480 1640004F */  bnez       $s2, .L8003B5C0
/* 3C084 8003B484 00000000 */   nop
/* 3C088 8003B488 24150002 */  addiu      $s5, $zero, 2
/* 3C08C 8003B48C 24140001 */  addiu      $s4, $zero, 1
.L8003B490:
/* 3C090 8003B490 3C04800F */  lui        $a0, %hi(D_800ED538)
/* 3C094 8003B494 2484D538 */  addiu      $a0, $a0, %lo(D_800ED538)
/* 3C098 8003B498 27A50528 */  addiu      $a1, $sp, 0x528
/* 3C09C 8003B49C 0C022278 */  jal        func_800889E0
/* 3C0A0 8003B4A0 24060001 */   addiu     $a2, $zero, 1
/* 3C0A4 8003B4A4 8FA30528 */  lw         $v1, 0x528($sp)
/* 3C0A8 8003B4A8 10750042 */  beq        $v1, $s5, .L8003B5B4
/* 3C0AC 8003B4AC 28620003 */   slti      $v0, $v1, 3
/* 3C0B0 8003B4B0 50400005 */  beql       $v0, $zero, .L8003B4C8
/* 3C0B4 8003B4B4 24020309 */   addiu     $v0, $zero, 0x309
/* 3C0B8 8003B4B8 10740007 */  beq        $v1, $s4, .L8003B4D8
/* 3C0BC 8003B4BC 00000000 */   nop
/* 3C0C0 8003B4C0 0800ED6E */  j          .L8003B5B8
/* 3C0C4 8003B4C4 00000000 */   nop
.L8003B4C8:
/* 3C0C8 8003B4C8 1062002F */  beq        $v1, $v0, .L8003B588
/* 3C0CC 8003B4CC 00000000 */   nop
/* 3C0D0 8003B4D0 0800ED6E */  j          .L8003B5B8
/* 3C0D4 8003B4D4 00000000 */   nop
.L8003B4D8:
/* 3C0D8 8003B4D8 0C0184D5 */  jal        func_80061354
/* 3C0DC 8003B4DC 00000000 */   nop
/* 3C0E0 8003B4E0 240400C8 */  addiu      $a0, $zero, 0xc8
/* 3C0E4 8003B4E4 00002821 */  addu       $a1, $zero, $zero
/* 3C0E8 8003B4E8 0C01848A */  jal        func_80061228
/* 3C0EC 8003B4EC 00003021 */   addu      $a2, $zero, $zero
/* 3C0F0 8003B4F0 00408821 */  addu       $s1, $v0, $zero
/* 3C0F4 8003B4F4 3C03800F */  lui        $v1, %hi(D_800F383C)
/* 3C0F8 8003B4F8 8C63383C */  lw         $v1, %lo(D_800F383C)($v1)
/* 3C0FC 8003B4FC 00731023 */  subu       $v0, $v1, $s3
/* 3C100 8003B500 2C420002 */  sltiu      $v0, $v0, 2
/* 3C104 8003B504 1440002C */  bnez       $v0, .L8003B5B8
/* 3C108 8003B508 00000000 */   nop
/* 3C10C 8003B50C 00609821 */  addu       $s3, $v1, $zero
/* 3C110 8003B510 3C03800F */  lui        $v1, %hi(D_800ED552)
/* 3C114 8003B514 9063D552 */  lbu        $v1, %lo(D_800ED552)($v1)
/* 3C118 8003B518 3C02800C */  lui        $v0, %hi(D_800C42B0)
/* 3C11C 8003B51C 8C4242B0 */  lw         $v0, %lo(D_800C42B0)($v0)
/* 3C120 8003B520 0043102A */  slt        $v0, $v0, $v1
/* 3C124 8003B524 10400024 */  beqz       $v0, .L8003B5B8
/* 3C128 8003B528 00000000 */   nop
/* 3C12C 8003B52C 0C004FA1 */  jal        func_80013E84
/* 3C130 8003B530 00000000 */   nop
/* 3C134 8003B534 0C0050A7 */  jal        func_8001429C
/* 3C138 8003B538 00000000 */   nop
/* 3C13C 8003B53C 3C10800C */  lui        $s0, %hi(D_800C32B0)
/* 3C140 8003B540 8E1032B0 */  lw         $s0, %lo(D_800C32B0)($s0)
/* 3C144 8003B544 0C018D84 */  jal        func_80063610
/* 3C148 8003B548 24040001 */   addiu     $a0, $zero, 1
/* 3C14C 8003B54C 3C02800C */  lui        $v0, %hi(D_800C32B0)
/* 3C150 8003B550 8C4232B0 */  lw         $v0, %lo(D_800C32B0)($v0)
/* 3C154 8003B554 12020006 */  beq        $s0, $v0, .L8003B570
/* 3C158 8003B558 00112400 */   sll       $a0, $s1, 0x10
/* 3C15C 8003B55C 3C02800C */  lui        $v0, %hi(D_800C42B0)
/* 3C160 8003B560 8C4242B0 */  lw         $v0, %lo(D_800C42B0)($v0)
/* 3C164 8003B564 24420001 */  addiu      $v0, $v0, 1
/* 3C168 8003B568 3C01800C */  lui        $at, %hi(D_800C42B0)
/* 3C16C 8003B56C AC2242B0 */  sw         $v0, %lo(D_800C42B0)($at)
.L8003B570:
/* 3C170 8003B570 0C018499 */  jal        func_80061264
/* 3C174 8003B574 00042403 */   sra       $a0, $a0, 0x10
/* 3C178 8003B578 0C0184E8 */  jal        func_800613A0
/* 3C17C 8003B57C 00000000 */   nop
/* 3C180 8003B580 0800ED6E */  j          .L8003B5B8
/* 3C184 8003B584 00000000 */   nop
.L8003B588:
/* 3C188 8003B588 3C02800C */  lui        $v0, %hi(D_800C42B0)
/* 3C18C 8003B58C 8C4242B0 */  lw         $v0, %lo(D_800C42B0)($v0)
/* 3C190 8003B590 2442FFFF */  addiu      $v0, $v0, -1
/* 3C194 8003B594 3C01800C */  lui        $at, %hi(D_800C42B0)
/* 3C198 8003B598 AC2242B0 */  sw         $v0, %lo(D_800C42B0)($at)
/* 3C19C 8003B59C 3C02800F */  lui        $v0, %hi(D_800F3758)
/* 3C1A0 8003B5A0 8C423758 */  lw         $v0, %lo(D_800F3758)($v0)
/* 3C1A4 8003B5A4 24420001 */  addiu      $v0, $v0, 1
/* 3C1A8 8003B5A8 3C01800F */  lui        $at, %hi(D_800F3758)
/* 3C1AC 8003B5AC 0800ED6E */  j          .L8003B5B8
/* 3C1B0 8003B5B0 AC223758 */   sw        $v0, %lo(D_800F3758)($at)
.L8003B5B4:
/* 3C1B4 8003B5B4 24120001 */  addiu      $s2, $zero, 1
.L8003B5B8:
/* 3C1B8 8003B5B8 1240FFB5 */  beqz       $s2, .L8003B490
/* 3C1BC 8003B5BC 00000000 */   nop
.L8003B5C0:
/* 3C1C0 8003B5C0 0800ED70 */  j          .L8003B5C0
/* 3C1C4 8003B5C4 00000000 */   nop
/* 3C1C8 8003B5C8 8FBF0548 */  lw         $ra, 0x548($sp)
/* 3C1CC 8003B5CC 8FB50544 */  lw         $s5, 0x544($sp)
/* 3C1D0 8003B5D0 8FB40540 */  lw         $s4, 0x540($sp)
/* 3C1D4 8003B5D4 8FB3053C */  lw         $s3, 0x53c($sp)
/* 3C1D8 8003B5D8 8FB20538 */  lw         $s2, 0x538($sp)
/* 3C1DC 8003B5DC 8FB10534 */  lw         $s1, 0x534($sp)
/* 3C1E0 8003B5E0 8FB00530 */  lw         $s0, 0x530($sp)
/* 3C1E4 8003B5E4 03E00008 */  jr         $ra
/* 3C1E8 8003B5E8 27BD0550 */   addiu     $sp, $sp, 0x550
