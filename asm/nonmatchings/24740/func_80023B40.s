	.set noat
	.set noreorder

glabel func_80023B40
/* 24740 80023B40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 24744 80023B44 AFBF0018 */  sw         $ra, 0x18($sp)
/* 24748 80023B48 93A20037 */  lbu        $v0, 0x37($sp)
/* 2474C 80023B4C 97A30032 */  lhu        $v1, 0x32($sp)
/* 24750 80023B50 AFA30010 */  sw         $v1, 0x10($sp)
/* 24754 80023B54 304200FF */  andi       $v0, $v0, 0xff
/* 24758 80023B58 AFA20014 */  sw         $v0, 0x14($sp)
/* 2475C 80023B5C 30C6FFFF */  andi       $a2, $a2, 0xffff
/* 24760 80023B60 0C00AD30 */  jal        func_8002B4C0
/* 24764 80023B64 30E7FFFF */   andi      $a3, $a3, 0xffff
/* 24768 80023B68 0C00D060 */  jal        func_80034180
/* 2476C 80023B6C 00000000 */   nop
/* 24770 80023B70 0C008D9A */  jal        func_80023668
/* 24774 80023B74 24046000 */   addiu     $a0, $zero, 0x6000
/* 24778 80023B78 3C01800F */  lui        $at, %hi(D_800F2B7C)
/* 2477C 80023B7C AC222B7C */  sw         $v0, %lo(D_800F2B7C)($at)
/* 24780 80023B80 00002021 */  addu       $a0, $zero, $zero
/* 24784 80023B84 3C05800F */  lui        $a1, %hi(D_800F2B7C)
/* 24788 80023B88 8CA52B7C */  lw         $a1, %lo(D_800F2B7C)($a1)
.L80023B8C:
/* 2478C 80023B8C 00041400 */  sll        $v0, $a0, 0x10
/* 24790 80023B90 00021403 */  sra        $v0, $v0, 0x10
/* 24794 80023B94 00021840 */  sll        $v1, $v0, 1
/* 24798 80023B98 00621821 */  addu       $v1, $v1, $v0
/* 2479C 80023B9C 00031980 */  sll        $v1, $v1, 6
/* 247A0 80023BA0 00651821 */  addu       $v1, $v1, $a1
/* 247A4 80023BA4 24820001 */  addiu      $v0, $a0, 1
/* 247A8 80023BA8 00402021 */  addu       $a0, $v0, $zero
/* 247AC 80023BAC 00021400 */  sll        $v0, $v0, 0x10
/* 247B0 80023BB0 00021403 */  sra        $v0, $v0, 0x10
/* 247B4 80023BB4 28420080 */  slti       $v0, $v0, 0x80
/* 247B8 80023BB8 1440FFF4 */  bnez       $v0, .L80023B8C
/* 247BC 80023BBC AC60006C */   sw        $zero, 0x6c($v1)
/* 247C0 80023BC0 0C00ADB2 */  jal        func_8002B6C8
/* 247C4 80023BC4 00000000 */   nop
/* 247C8 80023BC8 3C01800F */  lui        $at, %hi(D_800F3848)
/* 247CC 80023BCC AC203848 */  sw         $zero, %lo(D_800F3848)($at)
/* 247D0 80023BD0 3C01800F */  lui        $at, %hi(D_800F3758)
/* 247D4 80023BD4 AC203758 */  sw         $zero, %lo(D_800F3758)($at)
/* 247D8 80023BD8 24020001 */  addiu      $v0, $zero, 1
/* 247DC 80023BDC 3C01800F */  lui        $at, %hi(D_800F3854)
/* 247E0 80023BE0 A4223854 */  sh         $v0, %lo(D_800F3854)($at)
/* 247E4 80023BE4 3C01800F */  lui        $at, %hi(D_800F384E)
/* 247E8 80023BE8 A020384E */  sb         $zero, %lo(D_800F384E)($at)
/* 247EC 80023BEC 24020001 */  addiu      $v0, $zero, 1
/* 247F0 80023BF0 3C01800F */  lui        $at, %hi(D_800ED6BC)
/* 247F4 80023BF4 A022D6BC */  sb         $v0, %lo(D_800ED6BC)($at)
/* 247F8 80023BF8 3C02800F */  lui        $v0, %hi(D_800ED3E4)
/* 247FC 80023BFC 2442D3E4 */  addiu      $v0, $v0, %lo(D_800ED3E4)
/* 24800 80023C00 AC400004 */  sw         $zero, 4($v0)
/* 24804 80023C04 8FBF0018 */  lw         $ra, 0x18($sp)
/* 24808 80023C08 AC400000 */  sw         $zero, ($v0)
/* 2480C 80023C0C 03E00008 */  jr         $ra
/* 24810 80023C10 27BD0020 */   addiu     $sp, $sp, 0x20
