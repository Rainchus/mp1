	.set noat
	.set noreorder

glabel func_8003BA68
/* 3C668 8003BA68 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3C66C 8003BA6C AFBF0024 */  sw         $ra, 0x24($sp)
/* 3C670 8003BA70 AFB20020 */  sw         $s2, 0x20($sp)
/* 3C674 8003BA74 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3C678 8003BA78 AFB00018 */  sw         $s0, 0x18($sp)
/* 3C67C 8003BA7C 00808021 */  addu       $s0, $a0, $zero
/* 3C680 8003BA80 00A09021 */  addu       $s2, $a1, $zero
/* 3C684 8003BA84 86020002 */  lh         $v0, 2($s0)
/* 3C688 8003BA88 00402021 */  addu       $a0, $v0, $zero
/* 3C68C 8003BA8C 28420002 */  slti       $v0, $v0, 2
/* 3C690 8003BA90 1440001A */  bnez       $v0, .L8003BAFC
/* 3C694 8003BA94 00008821 */   addu      $s1, $zero, $zero
/* 3C698 8003BA98 2484FFFF */  addiu      $a0, $a0, -1
/* 3C69C 8003BA9C A6040002 */  sh         $a0, 2($s0)
/* 3C6A0 8003BAA0 00042400 */  sll        $a0, $a0, 0x10
/* 3C6A4 8003BAA4 0C00EDDD */  jal        func_8003B774
/* 3C6A8 8003BAA8 00042383 */   sra       $a0, $a0, 0xe
/* 3C6AC 8003BAAC 00408821 */  addu       $s1, $v0, $zero
/* 3C6B0 8003BAB0 02202821 */  addu       $a1, $s1, $zero
/* 3C6B4 8003BAB4 8E030004 */  lw         $v1, 4($s0)
/* 3C6B8 8003BAB8 86020002 */  lh         $v0, 2($s0)
/* 3C6BC 8003BABC 04400010 */  bltz       $v0, .L8003BB00
/* 3C6C0 8003BAC0 00002021 */   addu      $a0, $zero, $zero
.L8003BAC4:
/* 3C6C4 8003BAC4 8C620000 */  lw         $v0, ($v1)
/* 3C6C8 8003BAC8 54520003 */  bnel       $v0, $s2, .L8003BAD8
/* 3C6CC 8003BACC ACA20000 */   sw        $v0, ($a1)
/* 3C6D0 8003BAD0 0800EEB8 */  j          .L8003BAE0
/* 3C6D4 8003BAD4 24630004 */   addiu     $v1, $v1, 4
.L8003BAD8:
/* 3C6D8 8003BAD8 24630004 */  addiu      $v1, $v1, 4
/* 3C6DC 8003BADC 24A50004 */  addiu      $a1, $a1, 4
.L8003BAE0:
/* 3C6E0 8003BAE0 24840001 */  addiu      $a0, $a0, 1
/* 3C6E4 8003BAE4 86020002 */  lh         $v0, 2($s0)
/* 3C6E8 8003BAE8 0044102A */  slt        $v0, $v0, $a0
/* 3C6EC 8003BAEC 1040FFF5 */  beqz       $v0, .L8003BAC4
/* 3C6F0 8003BAF0 00000000 */   nop
/* 3C6F4 8003BAF4 0800EEC0 */  j          .L8003BB00
/* 3C6F8 8003BAF8 00000000 */   nop
.L8003BAFC:
/* 3C6FC 8003BAFC A6000002 */  sh         $zero, 2($s0)
.L8003BB00:
/* 3C700 8003BB00 8E040004 */  lw         $a0, 4($s0)
/* 3C704 8003BB04 50800004 */  beql       $a0, $zero, .L8003BB18
/* 3C708 8003BB08 AE110004 */   sw        $s1, 4($s0)
/* 3C70C 8003BB0C 0C00EDE6 */  jal        func_8003B798
/* 3C710 8003BB10 00000000 */   nop
/* 3C714 8003BB14 AE110004 */  sw         $s1, 4($s0)
.L8003BB18:
/* 3C718 8003BB18 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3C71C 8003BB1C 8FB20020 */  lw         $s2, 0x20($sp)
/* 3C720 8003BB20 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3C724 8003BB24 8FB00018 */  lw         $s0, 0x18($sp)
/* 3C728 8003BB28 03E00008 */  jr         $ra
/* 3C72C 8003BB2C 27BD0028 */   addiu     $sp, $sp, 0x28
