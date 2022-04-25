	.set noat
	.set noreorder

glabel func_8003FD68
/* 40968 8003FD68 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 4096C 8003FD6C AFBF0048 */  sw         $ra, 0x48($sp)
/* 40970 8003FD70 AFB10044 */  sw         $s1, 0x44($sp)
/* 40974 8003FD74 AFB00040 */  sw         $s0, 0x40($sp)
/* 40978 8003FD78 00804021 */  addu       $t0, $a0, $zero
/* 4097C 8003FD7C 27A70010 */  addiu      $a3, $sp, 0x10
/* 40980 8003FD80 3C06800D */  lui        $a2, %hi(D_800CAC08)
/* 40984 8003FD84 24C6AC08 */  addiu      $a2, $a2, %lo(D_800CAC08)
/* 40988 8003FD88 24C90020 */  addiu      $t1, $a2, 0x20
.L8003FD8C:
/* 4098C 8003FD8C 8CC20000 */  lw         $v0, ($a2)
/* 40990 8003FD90 8CC30004 */  lw         $v1, 4($a2)
/* 40994 8003FD94 8CC40008 */  lw         $a0, 8($a2)
/* 40998 8003FD98 8CC5000C */  lw         $a1, 0xc($a2)
/* 4099C 8003FD9C ACE20000 */  sw         $v0, ($a3)
/* 409A0 8003FDA0 ACE30004 */  sw         $v1, 4($a3)
/* 409A4 8003FDA4 ACE40008 */  sw         $a0, 8($a3)
/* 409A8 8003FDA8 ACE5000C */  sw         $a1, 0xc($a3)
/* 409AC 8003FDAC 24C60010 */  addiu      $a2, $a2, 0x10
/* 409B0 8003FDB0 14C9FFF6 */  bne        $a2, $t1, .L8003FD8C
/* 409B4 8003FDB4 24E70010 */   addiu     $a3, $a3, 0x10
/* 409B8 8003FDB8 8CC20000 */  lw         $v0, ($a2)
/* 409BC 8003FDBC ACE20000 */  sw         $v0, ($a3)
/* 409C0 8003FDC0 00081100 */  sll        $v0, $t0, 4
/* 409C4 8003FDC4 00481021 */  addu       $v0, $v0, $t0
/* 409C8 8003FDC8 00021080 */  sll        $v0, $v0, 2
/* 409CC 8003FDCC 3C03800D */  lui        $v1, %hi(D_800D62D0)
/* 409D0 8003FDD0 246362D0 */  addiu      $v1, $v1, %lo(D_800D62D0)
/* 409D4 8003FDD4 00438821 */  addu       $s1, $v0, $v1
/* 409D8 8003FDD8 82220000 */  lb         $v0, ($s1)
/* 409DC 8003FDDC 10400004 */  beqz       $v0, .L8003FDF0
/* 409E0 8003FDE0 00021080 */   sll       $v0, $v0, 2
/* 409E4 8003FDE4 03A21021 */  addu       $v0, $sp, $v0
/* 409E8 8003FDE8 0800FF8A */  j          .L8003FE28
/* 409EC 8003FDEC 8C44000C */   lw        $a0, 0xc($v0)
.L8003FDF0:
/* 409F0 8003FDF0 1100000B */  beqz       $t0, .L8003FE20
/* 409F4 8003FDF4 2402FFFF */   addiu     $v0, $zero, -1
/* 409F8 8003FDF8 3C05800D */  lui        $a1, %hi(D_800D62DA)
/* 409FC 8003FDFC 24A562DA */  addiu      $a1, $a1, %lo(D_800D62DA)
/* 40A00 8003FE00 84A30000 */  lh         $v1, ($a1)
/* 40A04 8003FE04 10620006 */  beq        $v1, $v0, .L8003FE20
/* 40A08 8003FE08 00602021 */   addu      $a0, $v1, $zero
/* 40A0C 8003FE0C A624000A */  sh         $a0, 0xa($s1)
/* 40A10 8003FE10 90A2FFFD */  lbu        $v0, -3($a1)
/* 40A14 8003FE14 24420001 */  addiu      $v0, $v0, 1
/* 40A18 8003FE18 0800FF94 */  j          .L8003FE50
/* 40A1C 8003FE1C A0A2FFFD */   sb        $v0, -3($a1)
.L8003FE20:
/* 40A20 8003FE20 3C04000A */  lui        $a0, 0xa
/* 40A24 8003FE24 3484000B */  ori        $a0, $a0, 0xb
.L8003FE28:
/* 40A28 8003FE28 0C00516C */  jal        func_800145B0
/* 40A2C 8003FE2C 00000000 */   nop
/* 40A30 8003FE30 00408021 */  addu       $s0, $v0, $zero
/* 40A34 8003FE34 0C019E29 */  jal        func_800678A4
/* 40A38 8003FE38 02002021 */   addu      $a0, $s0, $zero
/* 40A3C 8003FE3C A622000A */  sh         $v0, 0xa($s1)
/* 40A40 8003FE40 24020001 */  addiu      $v0, $zero, 1
/* 40A44 8003FE44 A2220007 */  sb         $v0, 7($s1)
/* 40A48 8003FE48 0C0051CC */  jal        func_80014730
/* 40A4C 8003FE4C 02002021 */   addu      $a0, $s0, $zero
.L8003FE50:
/* 40A50 8003FE50 24040001 */  addiu      $a0, $zero, 1
/* 40A54 8003FE54 0C0193BD */  jal        func_80064EF4
/* 40A58 8003FE58 24050005 */   addiu     $a1, $zero, 5
/* 40A5C 8003FE5C A6220008 */  sh         $v0, 8($s1)
/* 40A60 8003FE60 00021400 */  sll        $v0, $v0, 0x10
/* 40A64 8003FE64 00022403 */  sra        $a0, $v0, 0x10
/* 40A68 8003FE68 00002821 */  addu       $a1, $zero, $zero
/* 40A6C 8003FE6C 8626000A */  lh         $a2, 0xa($s1)
/* 40A70 8003FE70 0C019C82 */  jal        func_80067208
/* 40A74 8003FE74 00003821 */   addu      $a3, $zero, $zero
/* 40A78 8003FE78 86240008 */  lh         $a0, 8($s1)
/* 40A7C 8003FE7C 00002821 */  addu       $a1, $zero, $zero
/* 40A80 8003FE80 0C019CE1 */  jal        func_80067384
/* 40A84 8003FE84 24064000 */   addiu     $a2, $zero, 0x4000
/* 40A88 8003FE88 86240008 */  lh         $a0, 8($s1)
/* 40A8C 8003FE8C 00002821 */  addu       $a1, $zero, $zero
/* 40A90 8003FE90 0C019D2F */  jal        func_800674BC
/* 40A94 8003FE94 34069000 */   ori       $a2, $zero, 0x9000
/* 40A98 8003FE98 86240008 */  lh         $a0, 8($s1)
/* 40A9C 8003FE9C 00002821 */  addu       $a1, $zero, $zero
/* 40AA0 8003FEA0 0C019CA1 */  jal        func_80067284
/* 40AA4 8003FEA4 00003021 */   addu      $a2, $zero, $zero
/* 40AA8 8003FEA8 86240008 */  lh         $a0, 8($s1)
/* 40AAC 8003FEAC 00002821 */  addu       $a1, $zero, $zero
/* 40AB0 8003FEB0 00003021 */  addu       $a2, $zero, $zero
/* 40AB4 8003FEB4 0C019CD5 */  jal        func_80067354
/* 40AB8 8003FEB8 00C03821 */   addu      $a3, $a2, $zero
/* 40ABC 8003FEBC 86240008 */  lh         $a0, 8($s1)
/* 40AC0 8003FEC0 00002821 */  addu       $a1, $zero, $zero
/* 40AC4 8003FEC4 00003021 */  addu       $a2, $zero, $zero
/* 40AC8 8003FEC8 0C019CB7 */  jal        func_800672DC
/* 40ACC 8003FECC 00003821 */   addu      $a3, $zero, $zero
/* 40AD0 8003FED0 86240008 */  lh         $a0, 8($s1)
/* 40AD4 8003FED4 00002821 */  addu       $a1, $zero, $zero
/* 40AD8 8003FED8 0C019CAC */  jal        func_800672B0
/* 40ADC 8003FEDC 24060001 */   addiu     $a2, $zero, 1
/* 40AE0 8003FEE0 24020001 */  addiu      $v0, $zero, 1
/* 40AE4 8003FEE4 A2220006 */  sb         $v0, 6($s1)
/* 40AE8 8003FEE8 8FBF0048 */  lw         $ra, 0x48($sp)
/* 40AEC 8003FEEC 8FB10044 */  lw         $s1, 0x44($sp)
/* 40AF0 8003FEF0 8FB00040 */  lw         $s0, 0x40($sp)
/* 40AF4 8003FEF4 03E00008 */  jr         $ra
/* 40AF8 8003FEF8 27BD0050 */   addiu     $sp, $sp, 0x50
