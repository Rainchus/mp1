	.set noat
	.set noreorder

glabel func_80055A40
/* 56640 80055A40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 56644 80055A44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 56648 80055A48 AFB00010 */  sw         $s0, 0x10($sp)
/* 5664C 80055A4C 00008021 */  addu       $s0, $zero, $zero
.L80055A50:
/* 56650 80055A50 0C0150F6 */  jal        func_800543D8
/* 56654 80055A54 02002021 */   addu      $a0, $s0, $zero
/* 56658 80055A58 26020004 */  addiu      $v0, $s0, 4
/* 5665C 80055A5C 00021080 */  sll        $v0, $v0, 2
/* 56660 80055A60 3C05800C */  lui        $a1, %hi(D_800C54D8)
/* 56664 80055A64 00A22821 */  addu       $a1, $a1, $v0
/* 56668 80055A68 84A554D8 */  lh         $a1, %lo(D_800C54D8)($a1)
/* 5666C 80055A6C 3C06800C */  lui        $a2, %hi(D_800C54DA)
/* 56670 80055A70 00C23021 */  addu       $a2, $a2, $v0
/* 56674 80055A74 84C654DA */  lh         $a2, %lo(D_800C54DA)($a2)
/* 56678 80055A78 0C0151D6 */  jal        func_80054758
/* 5667C 80055A7C 02002021 */   addu      $a0, $s0, $zero
/* 56680 80055A80 00101040 */  sll        $v0, $s0, 1
/* 56684 80055A84 00501021 */  addu       $v0, $v0, $s0
/* 56688 80055A88 00021100 */  sll        $v0, $v0, 4
/* 5668C 80055A8C 3C05800F */  lui        $a1, %hi(D_800F32C7)
/* 56690 80055A90 00A22821 */  addu       $a1, $a1, $v0
/* 56694 80055A94 90A532C7 */  lbu        $a1, %lo(D_800F32C7)($a1)
/* 56698 80055A98 0C0151AD */  jal        func_800546B4
/* 5669C 80055A9C 02002021 */   addu      $a0, $s0, $zero
/* 566A0 80055AA0 26100001 */  addiu      $s0, $s0, 1
/* 566A4 80055AA4 2A020004 */  slti       $v0, $s0, 4
/* 566A8 80055AA8 1440FFE9 */  bnez       $v0, .L80055A50
/* 566AC 80055AAC 00002821 */   addu      $a1, $zero, $zero
/* 566B0 80055AB0 3C048005 */  lui        $a0, %hi(func_80053A1C)
/* 566B4 80055AB4 24843A1C */  addiu      $a0, $a0, %lo(func_80053A1C)
/* 566B8 80055AB8 24062000 */  addiu      $a2, $zero, 0x2000
/* 566BC 80055ABC 0C01770A */  jal        func_8005DC28
/* 566C0 80055AC0 00003821 */   addu      $a3, $zero, $zero
/* 566C4 80055AC4 3C01800E */  lui        $at, %hi(D_800D83A0)
/* 566C8 80055AC8 AC2283A0 */  sw         $v0, %lo(D_800D83A0)($at)
/* 566CC 80055ACC 00402021 */  addu       $a0, $v0, $zero
/* 566D0 80055AD0 0C017640 */  jal        func_8005D900
/* 566D4 80055AD4 24050080 */   addiu     $a1, $zero, 0x80
/* 566D8 80055AD8 2402FFFF */  addiu      $v0, $zero, -1
/* 566DC 80055ADC 3C01800E */  lui        $at, %hi(D_800D84AA)
/* 566E0 80055AE0 A42284AA */  sh         $v0, %lo(D_800D84AA)($at)
/* 566E4 80055AE4 3C01800E */  lui        $at, %hi(D_800D84A8)
/* 566E8 80055AE8 A42284A8 */  sh         $v0, %lo(D_800D84A8)($at)
/* 566EC 80055AEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 566F0 80055AF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 566F4 80055AF4 03E00008 */  jr         $ra
/* 566F8 80055AF8 27BD0018 */   addiu     $sp, $sp, 0x18
