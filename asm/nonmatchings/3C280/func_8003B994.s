	.set noat
	.set noreorder

glabel func_8003B994
/* 3C594 8003B994 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3C598 8003B998 AFBF0028 */  sw         $ra, 0x28($sp)
/* 3C59C 8003B99C AFB30024 */  sw         $s3, 0x24($sp)
/* 3C5A0 8003B9A0 AFB20020 */  sw         $s2, 0x20($sp)
/* 3C5A4 8003B9A4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3C5A8 8003B9A8 AFB00018 */  sw         $s0, 0x18($sp)
/* 3C5AC 8003B9AC 00808021 */  addu       $s0, $a0, $zero
/* 3C5B0 8003B9B0 00A09821 */  addu       $s3, $a1, $zero
/* 3C5B4 8003B9B4 00C09021 */  addu       $s2, $a2, $zero
/* 3C5B8 8003B9B8 96040002 */  lhu        $a0, 2($s0)
/* 3C5BC 8003B9BC 24840001 */  addiu      $a0, $a0, 1
/* 3C5C0 8003B9C0 A6040002 */  sh         $a0, 2($s0)
/* 3C5C4 8003B9C4 00042400 */  sll        $a0, $a0, 0x10
/* 3C5C8 8003B9C8 0C00EDDD */  jal        func_8003B774
/* 3C5CC 8003B9CC 00042383 */   sra       $a0, $a0, 0xe
/* 3C5D0 8003B9D0 00408821 */  addu       $s1, $v0, $zero
/* 3C5D4 8003B9D4 8E020004 */  lw         $v0, 4($s0)
/* 3C5D8 8003B9D8 1040000F */  beqz       $v0, .L8003BA18
/* 3C5DC 8003B9DC 02202021 */   addu      $a0, $s1, $zero
/* 3C5E0 8003B9E0 00402821 */  addu       $a1, $v0, $zero
/* 3C5E4 8003B9E4 86020002 */  lh         $v0, 2($s0)
/* 3C5E8 8003B9E8 2442FFFF */  addiu      $v0, $v0, -1
/* 3C5EC 8003B9EC 1840000A */  blez       $v0, .L8003BA18
/* 3C5F0 8003B9F0 00001821 */   addu      $v1, $zero, $zero
.L8003B9F4:
/* 3C5F4 8003B9F4 8CA20000 */  lw         $v0, ($a1)
/* 3C5F8 8003B9F8 AC820000 */  sw         $v0, ($a0)
/* 3C5FC 8003B9FC 24A50004 */  addiu      $a1, $a1, 4
/* 3C600 8003BA00 24630001 */  addiu      $v1, $v1, 1
/* 3C604 8003BA04 86020002 */  lh         $v0, 2($s0)
/* 3C608 8003BA08 2442FFFF */  addiu      $v0, $v0, -1
/* 3C60C 8003BA0C 0062102A */  slt        $v0, $v1, $v0
/* 3C610 8003BA10 1440FFF8 */  bnez       $v0, .L8003B9F4
/* 3C614 8003BA14 24840004 */   addiu     $a0, $a0, 4
.L8003BA18:
/* 3C618 8003BA18 AC930000 */  sw         $s3, ($a0)
/* 3C61C 8003BA1C 8E040004 */  lw         $a0, 4($s0)
/* 3C620 8003BA20 50800004 */  beql       $a0, $zero, .L8003BA34
/* 3C624 8003BA24 AE110004 */   sw        $s1, 4($s0)
/* 3C628 8003BA28 0C00EDE6 */  jal        func_8003B798
/* 3C62C 8003BA2C 00000000 */   nop
/* 3C630 8003BA30 AE110004 */  sw         $s1, 4($s0)
.L8003BA34:
/* 3C634 8003BA34 32420001 */  andi       $v0, $s2, 1
/* 3C638 8003BA38 10400004 */  beqz       $v0, .L8003BA4C
/* 3C63C 8003BA3C A6720000 */   sh        $s2, ($s3)
/* 3C640 8003BA40 96020002 */  lhu        $v0, 2($s0)
/* 3C644 8003BA44 2442FFFF */  addiu      $v0, $v0, -1
/* 3C648 8003BA48 A602000C */  sh         $v0, 0xc($s0)
.L8003BA4C:
/* 3C64C 8003BA4C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 3C650 8003BA50 8FB30024 */  lw         $s3, 0x24($sp)
/* 3C654 8003BA54 8FB20020 */  lw         $s2, 0x20($sp)
/* 3C658 8003BA58 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3C65C 8003BA5C 8FB00018 */  lw         $s0, 0x18($sp)
/* 3C660 8003BA60 03E00008 */  jr         $ra
/* 3C664 8003BA64 27BD0030 */   addiu     $sp, $sp, 0x30
