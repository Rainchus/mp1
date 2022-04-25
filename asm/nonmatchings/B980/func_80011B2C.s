	.set noat
	.set noreorder

glabel func_80011B2C
/* 1272C 80011B2C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12730 80011B30 AFBF0020 */  sw         $ra, 0x20($sp)
/* 12734 80011B34 AFB1001C */  sw         $s1, 0x1c($sp)
/* 12738 80011B38 AFB00018 */  sw         $s0, 0x18($sp)
/* 1273C 80011B3C 3C03800D */  lui        $v1, %hi(D_800CEAA4)
/* 12740 80011B40 8C63EAA4 */  lw         $v1, %lo(D_800CEAA4)($v1)
/* 12744 80011B44 30620001 */  andi       $v0, $v1, 1
/* 12748 80011B48 14400029 */  bnez       $v0, .L80011BF0
/* 1274C 80011B4C 34620011 */   ori       $v0, $v1, 0x11
/* 12750 80011B50 3C01800D */  lui        $at, %hi(D_800CEAA4)
/* 12754 80011B54 AC22EAA4 */  sw         $v0, %lo(D_800CEAA4)($at)
/* 12758 80011B58 3C02800D */  lui        $v0, %hi(D_800CEA9C)
/* 1275C 80011B5C 8C42EA9C */  lw         $v0, %lo(D_800CEA9C)($v0)
/* 12760 80011B60 1840001A */  blez       $v0, .L80011BCC
/* 12764 80011B64 00008021 */   addu      $s0, $zero, $zero
/* 12768 80011B68 24110001 */  addiu      $s1, $zero, 1
/* 1276C 80011B6C 00101040 */  sll        $v0, $s0, 1
.L80011B70:
/* 12770 80011B70 00501021 */  addu       $v0, $v0, $s0
/* 12774 80011B74 00021080 */  sll        $v0, $v0, 2
/* 12778 80011B78 00501023 */  subu       $v0, $v0, $s0
/* 1277C 80011B7C 00021080 */  sll        $v0, $v0, 2
/* 12780 80011B80 3C03800D */  lui        $v1, %hi(D_800CEA94)
/* 12784 80011B84 8C63EA94 */  lw         $v1, %lo(D_800CEA94)($v1)
/* 12788 80011B88 00431821 */  addu       $v1, $v0, $v1
/* 1278C 80011B8C 8C62000C */  lw         $v0, 0xc($v1)
/* 12790 80011B90 54510009 */  bnel       $v0, $s1, .L80011BB8
/* 12794 80011B94 26100001 */   addiu     $s0, $s0, 1
/* 12798 80011B98 8C620008 */  lw         $v0, 8($v1)
/* 1279C 80011B9C 30420040 */  andi       $v0, $v0, 0x40
/* 127A0 80011BA0 50400005 */  beql       $v0, $zero, .L80011BB8
/* 127A4 80011BA4 26100001 */   addiu     $s0, $s0, 1
/* 127A8 80011BA8 00102400 */  sll        $a0, $s0, 0x10
/* 127AC 80011BAC 0C0045EB */  jal        func_800117AC
/* 127B0 80011BB0 00042403 */   sra       $a0, $a0, 0x10
/* 127B4 80011BB4 26100001 */  addiu      $s0, $s0, 1
.L80011BB8:
/* 127B8 80011BB8 3C02800D */  lui        $v0, %hi(D_800CEA9C)
/* 127BC 80011BBC 8C42EA9C */  lw         $v0, %lo(D_800CEA9C)($v0)
/* 127C0 80011BC0 0202102A */  slt        $v0, $s0, $v0
/* 127C4 80011BC4 1440FFEA */  bnez       $v0, .L80011B70
/* 127C8 80011BC8 00101040 */   sll       $v0, $s0, 1
.L80011BCC:
/* 127CC 80011BCC 24020040 */  addiu      $v0, $zero, 0x40
/* 127D0 80011BD0 3C01800D */  lui        $at, %hi(D_800CEAB6)
/* 127D4 80011BD4 A422EAB6 */  sh         $v0, %lo(D_800CEAB6)($at)
/* 127D8 80011BD8 3C02800D */  lui        $v0, %hi(D_800CEAA4)
/* 127DC 80011BDC 8C42EAA4 */  lw         $v0, %lo(D_800CEAA4)($v0)
/* 127E0 80011BE0 2403FFEF */  addiu      $v1, $zero, -0x11
/* 127E4 80011BE4 00431024 */  and        $v0, $v0, $v1
/* 127E8 80011BE8 3C01800D */  lui        $at, %hi(D_800CEAA4)
/* 127EC 80011BEC AC22EAA4 */  sw         $v0, %lo(D_800CEAA4)($at)
.L80011BF0:
/* 127F0 80011BF0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 127F4 80011BF4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 127F8 80011BF8 8FB00018 */  lw         $s0, 0x18($sp)
/* 127FC 80011BFC 03E00008 */  jr         $ra
/* 12800 80011C00 27BD0028 */   addiu     $sp, $sp, 0x28
