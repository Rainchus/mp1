	.set noat
	.set noreorder

glabel func_8005FD7C
/* 6097C 8005FD7C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 60980 8005FD80 AFBF0028 */  sw         $ra, 0x28($sp)
/* 60984 8005FD84 AFB10024 */  sw         $s1, 0x24($sp)
/* 60988 8005FD88 0C01C9C6 */  jal        func_80072718
/* 6098C 8005FD8C AFB00020 */   sw        $s0, 0x20($sp)
/* 60990 8005FD90 24030001 */  addiu      $v1, $zero, 1
/* 60994 8005FD94 10430048 */  beq        $v0, $v1, .L8005FEB8
/* 60998 8005FD98 00001021 */   addu      $v0, $zero, $zero
/* 6099C 8005FD9C 3C02800C */  lui        $v0, %hi(D_800C5982)
/* 609A0 8005FDA0 90425982 */  lbu        $v0, %lo(D_800C5982)($v0)
/* 609A4 8005FDA4 14430003 */  bne        $v0, $v1, .L8005FDB4
/* 609A8 8005FDA8 24020001 */   addiu     $v0, $zero, 1
/* 609AC 8005FDAC 08017FAE */  j          .L8005FEB8
/* 609B0 8005FDB0 00001021 */   addu      $v0, $zero, $zero
.L8005FDB4:
/* 609B4 8005FDB4 3C01800F */  lui        $at, %hi(D_800F64F8)
/* 609B8 8005FDB8 A02264F8 */  sb         $v0, %lo(D_800F64F8)($at)
/* 609BC 8005FDBC 3C02800F */  lui        $v0, %hi(D_800ED550)
/* 609C0 8005FDC0 8442D550 */  lh         $v0, %lo(D_800ED550)($v0)
/* 609C4 8005FDC4 18400015 */  blez       $v0, .L8005FE1C
/* 609C8 8005FDC8 00008021 */   addu      $s0, $zero, $zero
.L8005FDCC:
/* 609CC 8005FDCC 3C02800C */  lui        $v0, %hi(D_800C5984)
/* 609D0 8005FDD0 8C425984 */  lw         $v0, %lo(D_800C5984)($v0)
/* 609D4 8005FDD4 00101880 */  sll        $v1, $s0, 2
/* 609D8 8005FDD8 00701821 */  addu       $v1, $v1, $s0
/* 609DC 8005FDDC 00031880 */  sll        $v1, $v1, 2
/* 609E0 8005FDE0 00701821 */  addu       $v1, $v1, $s0
/* 609E4 8005FDE4 00031880 */  sll        $v1, $v1, 2
/* 609E8 8005FDE8 00622021 */  addu       $a0, $v1, $v0
/* 609EC 8005FDEC 94820000 */  lhu        $v0, ($a0)
/* 609F0 8005FDF0 30420081 */  andi       $v0, $v0, 0x81
/* 609F4 8005FDF4 54400004 */  bnel       $v0, $zero, .L8005FE08
/* 609F8 8005FDF8 26100001 */   addiu     $s0, $s0, 1
/* 609FC 8005FDFC 0C01762E */  jal        func_8005D8B8
/* 60A00 8005FE00 24050040 */   addiu     $a1, $zero, 0x40
/* 60A04 8005FE04 26100001 */  addiu      $s0, $s0, 1
.L8005FE08:
/* 60A08 8005FE08 3C02800F */  lui        $v0, %hi(D_800ED550)
/* 60A0C 8005FE0C 8442D550 */  lh         $v0, %lo(D_800ED550)($v0)
/* 60A10 8005FE10 0202102A */  slt        $v0, $s0, $v0
/* 60A14 8005FE14 1440FFED */  bnez       $v0, .L8005FDCC
/* 60A18 8005FE18 00000000 */   nop
.L8005FE1C:
/* 60A1C 8005FE1C 3C02800C */  lui        $v0, %hi(D_800C5988)
/* 60A20 8005FE20 84425988 */  lh         $v0, %lo(D_800C5988)($v0)
/* 60A24 8005FE24 1840001B */  blez       $v0, .L8005FE94
/* 60A28 8005FE28 00008021 */   addu      $s0, $zero, $zero
.L8005FE2C:
/* 60A2C 8005FE2C 3C02800C */  lui        $v0, %hi(D_800C5990)
/* 60A30 8005FE30 8C425990 */  lw         $v0, %lo(D_800C5990)($v0)
/* 60A34 8005FE34 00101840 */  sll        $v1, $s0, 1
/* 60A38 8005FE38 00701821 */  addu       $v1, $v1, $s0
/* 60A3C 8005FE3C 00038880 */  sll        $s1, $v1, 2
/* 60A40 8005FE40 02221821 */  addu       $v1, $s1, $v0
/* 60A44 8005FE44 94620000 */  lhu        $v0, ($v1)
/* 60A48 8005FE48 30420081 */  andi       $v0, $v0, 0x81
/* 60A4C 8005FE4C 5440000C */  bnel       $v0, $zero, .L8005FE80
/* 60A50 8005FE50 26100001 */   addiu     $s0, $s0, 1
/* 60A54 8005FE54 8C640004 */  lw         $a0, 4($v1)
/* 60A58 8005FE58 0C017640 */  jal        func_8005D900
/* 60A5C 8005FE5C 24050040 */   addiu     $a1, $zero, 0x40
/* 60A60 8005FE60 3C02800C */  lui        $v0, %hi(D_800C5990)
/* 60A64 8005FE64 8C425990 */  lw         $v0, %lo(D_800C5990)($v0)
/* 60A68 8005FE68 02221021 */  addu       $v0, $s1, $v0
/* 60A6C 8005FE6C 8C430004 */  lw         $v1, 4($v0)
/* 60A70 8005FE70 9462001E */  lhu        $v0, 0x1e($v1)
/* 60A74 8005FE74 34420001 */  ori        $v0, $v0, 1
/* 60A78 8005FE78 A462001E */  sh         $v0, 0x1e($v1)
/* 60A7C 8005FE7C 26100001 */  addiu      $s0, $s0, 1
.L8005FE80:
/* 60A80 8005FE80 3C02800C */  lui        $v0, %hi(D_800C5988)
/* 60A84 8005FE84 84425988 */  lh         $v0, %lo(D_800C5988)($v0)
/* 60A88 8005FE88 0202102A */  slt        $v0, $s0, $v0
/* 60A8C 8005FE8C 1440FFE7 */  bnez       $v0, .L8005FE2C
/* 60A90 8005FE90 00000000 */   nop
.L8005FE94:
/* 60A94 8005FE94 00008021 */  addu       $s0, $zero, $zero
/* 60A98 8005FE98 00102400 */  sll        $a0, $s0, 0x10
.L8005FE9C:
/* 60A9C 8005FE9C 0C01B343 */  jal        func_8006CD0C
/* 60AA0 8005FEA0 00042403 */   sra       $a0, $a0, 0x10
/* 60AA4 8005FEA4 26100001 */  addiu      $s0, $s0, 1
/* 60AA8 8005FEA8 2A020004 */  slti       $v0, $s0, 4
/* 60AAC 8005FEAC 5440FFFB */  bnel       $v0, $zero, .L8005FE9C
/* 60AB0 8005FEB0 00102400 */   sll       $a0, $s0, 0x10
/* 60AB4 8005FEB4 24020001 */  addiu      $v0, $zero, 1
.L8005FEB8:
/* 60AB8 8005FEB8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 60ABC 8005FEBC 8FB10024 */  lw         $s1, 0x24($sp)
/* 60AC0 8005FEC0 8FB00020 */  lw         $s0, 0x20($sp)
/* 60AC4 8005FEC4 03E00008 */  jr         $ra
/* 60AC8 8005FEC8 27BD0030 */   addiu     $sp, $sp, 0x30
