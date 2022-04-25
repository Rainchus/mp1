	.set noat
	.set noreorder

glabel func_80055EE8
/* 56AE8 80055EE8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 56AEC 80055EEC AFBF0020 */  sw         $ra, 0x20($sp)
/* 56AF0 80055EF0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 56AF4 80055EF4 AFB00018 */  sw         $s0, 0x18($sp)
/* 56AF8 80055EF8 2411FFFF */  addiu      $s1, $zero, -1
/* 56AFC 80055EFC AFB10010 */  sw         $s1, 0x10($sp)
/* 56B00 80055F00 3C04800E */  lui        $a0, %hi(D_800D85D8)
/* 56B04 80055F04 248485D8 */  addiu      $a0, $a0, %lo(D_800D85D8)
/* 56B08 80055F08 3C05800D */  lui        $a1, %hi(D_800CB298)
/* 56B0C 80055F0C 24A5B298 */  addiu      $a1, $a1, %lo(D_800CB298)
/* 56B10 80055F10 00003021 */  addu       $a2, $zero, $zero
/* 56B14 80055F14 0C01D9D0 */  jal        func_80076740
/* 56B18 80055F18 2407FFFF */   addiu     $a3, $zero, -1
/* 56B1C 80055F1C 3C10800E */  lui        $s0, %hi(D_800D85EC)
/* 56B20 80055F20 261085EC */  addiu      $s0, $s0, %lo(D_800D85EC)
/* 56B24 80055F24 86040000 */  lh         $a0, ($s0)
/* 56B28 80055F28 00002821 */  addu       $a1, $zero, $zero
/* 56B2C 80055F2C 240600A0 */  addiu      $a2, $zero, 0xa0
/* 56B30 80055F30 0C019B71 */  jal        func_80066DC4
/* 56B34 80055F34 24070018 */   addiu     $a3, $zero, 0x18
/* 56B38 80055F38 AFB10010 */  sw         $s1, 0x10($sp)
/* 56B3C 80055F3C 26040054 */  addiu      $a0, $s0, 0x54
/* 56B40 80055F40 3C05800D */  lui        $a1, %hi(D_800CB2A0)
/* 56B44 80055F44 24A5B2A0 */  addiu      $a1, $a1, %lo(D_800CB2A0)
/* 56B48 80055F48 00003021 */  addu       $a2, $zero, $zero
/* 56B4C 80055F4C 0C01D9D0 */  jal        func_80076740
/* 56B50 80055F50 2407FFFF */   addiu     $a3, $zero, -1
/* 56B54 80055F54 86040068 */  lh         $a0, 0x68($s0)
/* 56B58 80055F58 00002821 */  addu       $a1, $zero, $zero
/* 56B5C 80055F5C 240600A0 */  addiu      $a2, $zero, 0xa0
/* 56B60 80055F60 0C019B71 */  jal        func_80066DC4
/* 56B64 80055F64 24070028 */   addiu     $a3, $zero, 0x28
/* 56B68 80055F68 0C00516C */  jal        func_800145B0
/* 56B6C 80055F6C 2404007C */   addiu     $a0, $zero, 0x7c
/* 56B70 80055F70 00408021 */  addu       $s0, $v0, $zero
/* 56B74 80055F74 0C019E29 */  jal        func_800678A4
/* 56B78 80055F78 02002021 */   addu      $a0, $s0, $zero
/* 56B7C 80055F7C 3C01800E */  lui        $at, %hi(D_800D85D6)
/* 56B80 80055F80 A42285D6 */  sh         $v0, %lo(D_800D85D6)($at)
/* 56B84 80055F84 0C0051CC */  jal        func_80014730
/* 56B88 80055F88 02002021 */   addu      $a0, $s0, $zero
/* 56B8C 80055F8C 24040002 */  addiu      $a0, $zero, 2
/* 56B90 80055F90 0C0193BD */  jal        func_80064EF4
/* 56B94 80055F94 24050005 */   addiu     $a1, $zero, 5
/* 56B98 80055F98 3C01800E */  lui        $at, %hi(D_800D85D4)
/* 56B9C 80055F9C A42285D4 */  sh         $v0, %lo(D_800D85D4)($at)
/* 56BA0 80055FA0 00008821 */  addu       $s1, $zero, $zero
/* 56BA4 80055FA4 00118400 */  sll        $s0, $s1, 0x10
.L80055FA8:
/* 56BA8 80055FA8 00108403 */  sra        $s0, $s0, 0x10
/* 56BAC 80055FAC 3C04800E */  lui        $a0, %hi(D_800D85D4)
/* 56BB0 80055FB0 848485D4 */  lh         $a0, %lo(D_800D85D4)($a0)
/* 56BB4 80055FB4 02002821 */  addu       $a1, $s0, $zero
/* 56BB8 80055FB8 3C06800E */  lui        $a2, %hi(D_800D85D6)
/* 56BBC 80055FBC 84C685D6 */  lh         $a2, %lo(D_800D85D6)($a2)
/* 56BC0 80055FC0 0C019C82 */  jal        func_80067208
/* 56BC4 80055FC4 00003821 */   addu      $a3, $zero, $zero
/* 56BC8 80055FC8 3C04800E */  lui        $a0, %hi(D_800D85D4)
/* 56BCC 80055FCC 848485D4 */  lh         $a0, %lo(D_800D85D4)($a0)
/* 56BD0 80055FD0 02002821 */  addu       $a1, $s0, $zero
/* 56BD4 80055FD4 0C019CAC */  jal        func_800672B0
/* 56BD8 80055FD8 24060001 */   addiu     $a2, $zero, 1
/* 56BDC 80055FDC 3C04800E */  lui        $a0, %hi(D_800D85D4)
/* 56BE0 80055FE0 848485D4 */  lh         $a0, %lo(D_800D85D4)($a0)
/* 56BE4 80055FE4 02002821 */  addu       $a1, $s0, $zero
/* 56BE8 80055FE8 0C019CE1 */  jal        func_80067384
/* 56BEC 80055FEC 2406000A */   addiu     $a2, $zero, 0xa
/* 56BF0 80055FF0 3C04800E */  lui        $a0, %hi(D_800D85D4)
/* 56BF4 80055FF4 848485D4 */  lh         $a0, %lo(D_800D85D4)($a0)
/* 56BF8 80055FF8 02002821 */  addu       $a1, $s0, $zero
/* 56BFC 80055FFC 0C019D2F */  jal        func_800674BC
/* 56C00 80056000 24061000 */   addiu     $a2, $zero, 0x1000
/* 56C04 80056004 16200007 */  bnez       $s1, .L80056024
/* 56C08 80056008 00112C00 */   sll       $a1, $s1, 0x10
/* 56C0C 8005600C 3C04800E */  lui        $a0, %hi(D_800D85D4)
/* 56C10 80056010 848485D4 */  lh         $a0, %lo(D_800D85D4)($a0)
/* 56C14 80056014 00002821 */  addu       $a1, $zero, $zero
/* 56C18 80056018 24060090 */  addiu      $a2, $zero, 0x90
/* 56C1C 8005601C 0801580E */  j          .L80056038
/* 56C20 80056020 24070028 */   addiu     $a3, $zero, 0x28
.L80056024:
/* 56C24 80056024 3C04800E */  lui        $a0, %hi(D_800D85D4)
/* 56C28 80056028 848485D4 */  lh         $a0, %lo(D_800D85D4)($a0)
/* 56C2C 8005602C 00052C03 */  sra        $a1, $a1, 0x10
/* 56C30 80056030 24060020 */  addiu      $a2, $zero, 0x20
/* 56C34 80056034 00003821 */  addu       $a3, $zero, $zero
.L80056038:
/* 56C38 80056038 0C019B71 */  jal        func_80066DC4
/* 56C3C 8005603C 26310001 */   addiu     $s1, $s1, 1
/* 56C40 80056040 2A220002 */  slti       $v0, $s1, 2
/* 56C44 80056044 1440FFD8 */  bnez       $v0, .L80055FA8
/* 56C48 80056048 00118400 */   sll       $s0, $s1, 0x10
/* 56C4C 8005604C 3C048005 */  lui        $a0, %hi(func_80055B9C)
/* 56C50 80056050 24845B9C */  addiu      $a0, $a0, %lo(func_80055B9C)
/* 56C54 80056054 00002821 */  addu       $a1, $zero, $zero
/* 56C58 80056058 00003021 */  addu       $a2, $zero, $zero
/* 56C5C 8005605C 0C01770A */  jal        func_8005DC28
/* 56C60 80056060 00003821 */   addu      $a3, $zero, $zero
/* 56C64 80056064 3C01800E */  lui        $at, %hi(D_800D86A8)
/* 56C68 80056068 AC2286A8 */  sw         $v0, %lo(D_800D86A8)($at)
/* 56C6C 8005606C 00402021 */  addu       $a0, $v0, $zero
/* 56C70 80056070 0C017640 */  jal        func_8005D900
/* 56C74 80056074 24050080 */   addiu     $a1, $zero, 0x80
/* 56C78 80056078 8FBF0020 */  lw         $ra, 0x20($sp)
/* 56C7C 8005607C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 56C80 80056080 8FB00018 */  lw         $s0, 0x18($sp)
/* 56C84 80056084 03E00008 */  jr         $ra
/* 56C88 80056088 27BD0028 */   addiu     $sp, $sp, 0x28
