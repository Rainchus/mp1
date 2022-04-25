	.set noat
	.set noreorder

glabel func_8007FAC0
/* 806C0 8007FAC0 00002021 */  addu       $a0, $zero, $zero
/* 806C4 8007FAC4 2403FF00 */  addiu      $v1, $zero, -0x100
/* 806C8 8007FAC8 2405FFF8 */  addiu      $a1, $zero, -8
.L8007FACC:
/* 806CC 8007FACC 04600005 */  bltz       $v1, .L8007FAE4
/* 806D0 8007FAD0 28620100 */   slti      $v0, $v1, 0x100
/* 806D4 8007FAD4 14400004 */  bnez       $v0, .L8007FAE8
/* 806D8 8007FAD8 00651024 */   and       $v0, $v1, $a1
/* 806DC 8007FADC 0801FEBA */  j          .L8007FAE8
/* 806E0 8007FAE0 240200F8 */   addiu     $v0, $zero, 0xf8
.L8007FAE4:
/* 806E4 8007FAE4 00001021 */  addu       $v0, $zero, $zero
.L8007FAE8:
/* 806E8 8007FAE8 3C01800E */  lui        $at, %hi(D_800E7730)
/* 806EC 8007FAEC 00240821 */  addu       $at, $at, $a0
/* 806F0 8007FAF0 A0227730 */  sb         $v0, %lo(D_800E7730)($at)
/* 806F4 8007FAF4 24840001 */  addiu      $a0, $a0, 1
/* 806F8 8007FAF8 28820300 */  slti       $v0, $a0, 0x300
/* 806FC 8007FAFC 1440FFF3 */  bnez       $v0, .L8007FACC
/* 80700 8007FB00 24630001 */   addiu     $v1, $v1, 1
/* 80704 8007FB04 3C02800E */  lui        $v0, %hi(D_800E6F30)
/* 80708 8007FB08 24426F30 */  addiu      $v0, $v0, %lo(D_800E6F30)
/* 8070C 8007FB0C AC400000 */  sw         $zero, ($v0)
/* 80710 8007FB10 24040001 */  addiu      $a0, $zero, 1
/* 80714 8007FB14 24061000 */  addiu      $a2, $zero, 0x1000
/* 80718 8007FB18 24450004 */  addiu      $a1, $v0, 4
.L8007FB1C:
/* 8071C 8007FB1C 00C4001A */  div        $zero, $a2, $a0
/* 80720 8007FB20 14800002 */  bnez       $a0, .L8007FB2C
/* 80724 8007FB24 00000000 */   nop
/* 80728 8007FB28 0007000D */  break      7
.L8007FB2C:
/* 8072C 8007FB2C 2401FFFF */   addiu     $at, $zero, -1
/* 80730 8007FB30 14810004 */  bne        $a0, $at, .L8007FB44
/* 80734 8007FB34 3C018000 */   lui       $at, 0x8000
/* 80738 8007FB38 14C10002 */  bne        $a2, $at, .L8007FB44
/* 8073C 8007FB3C 00000000 */   nop
/* 80740 8007FB40 0006000D */  break      6
.L8007FB44:
/* 80744 8007FB44 00001812 */   mflo      $v1
/* 80748 8007FB48 24840001 */  addiu      $a0, $a0, 1
/* 8074C 8007FB4C 28820200 */  slti       $v0, $a0, 0x200
/* 80750 8007FB50 ACA30000 */  sw         $v1, ($a1)
/* 80754 8007FB54 1440FFF1 */  bnez       $v0, .L8007FB1C
/* 80758 8007FB58 24A50004 */   addiu     $a1, $a1, 4
/* 8075C 8007FB5C 03E00008 */  jr         $ra
/* 80760 8007FB60 00000000 */   nop
/* 80764 8007FB64 00000000 */  nop
/* 80768 8007FB68 00000000 */  nop
/* 8076C 8007FB6C 00000000 */  nop
