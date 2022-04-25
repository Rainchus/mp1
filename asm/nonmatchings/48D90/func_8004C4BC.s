	.set noat
	.set noreorder

glabel func_8004C4BC
/* 4D0BC 8004C4BC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4D0C0 8004C4C0 AFBF002C */  sw         $ra, 0x2c($sp)
/* 4D0C4 8004C4C4 AFB40028 */  sw         $s4, 0x28($sp)
/* 4D0C8 8004C4C8 AFB30024 */  sw         $s3, 0x24($sp)
/* 4D0CC 8004C4CC AFB20020 */  sw         $s2, 0x20($sp)
/* 4D0D0 8004C4D0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 4D0D4 8004C4D4 AFB00018 */  sw         $s0, 0x18($sp)
/* 4D0D8 8004C4D8 00809021 */  addu       $s2, $a0, $zero
/* 4D0DC 8004C4DC 00A09821 */  addu       $s3, $a1, $zero
/* 4D0E0 8004C4E0 00C0A021 */  addu       $s4, $a2, $zero
/* 4D0E4 8004C4E4 0C01308C */  jal        func_8004C230
/* 4D0E8 8004C4E8 3244FFFF */   andi      $a0, $s2, 0xffff
/* 4D0EC 8004C4EC 00021400 */  sll        $v0, $v0, 0x10
/* 4D0F0 8004C4F0 00028C03 */  sra        $s1, $v0, 0x10
/* 4D0F4 8004C4F4 1A200010 */  blez       $s1, .L8004C538
/* 4D0F8 8004C4F8 00008021 */   addu      $s0, $zero, $zero
/* 4D0FC 8004C4FC 3273FFFF */  andi       $s3, $s3, 0xffff
/* 4D100 8004C500 3244FFFF */  andi       $a0, $s2, 0xffff
.L8004C504:
/* 4D104 8004C504 0C013081 */  jal        func_8004C204
/* 4D108 8004C508 3205FFFF */   andi      $a1, $s0, 0xffff
/* 4D10C 8004C50C 00021400 */  sll        $v0, $v0, 0x10
/* 4D110 8004C510 0C01307B */  jal        func_8004C1EC
/* 4D114 8004C514 00022403 */   sra       $a0, $v0, 0x10
/* 4D118 8004C518 00401821 */  addu       $v1, $v0, $zero
/* 4D11C 8004C51C 90620001 */  lbu        $v0, 1($v1)
/* 4D120 8004C520 50530001 */  beql       $v0, $s3, .L8004C528
/* 4D124 8004C524 A0740001 */   sb        $s4, 1($v1)
.L8004C528:
/* 4D128 8004C528 26100001 */  addiu      $s0, $s0, 1
/* 4D12C 8004C52C 0211102A */  slt        $v0, $s0, $s1
/* 4D130 8004C530 1440FFF4 */  bnez       $v0, .L8004C504
/* 4D134 8004C534 3244FFFF */   andi      $a0, $s2, 0xffff
.L8004C538:
/* 4D138 8004C538 8FBF002C */  lw         $ra, 0x2c($sp)
/* 4D13C 8004C53C 8FB40028 */  lw         $s4, 0x28($sp)
/* 4D140 8004C540 8FB30024 */  lw         $s3, 0x24($sp)
/* 4D144 8004C544 8FB20020 */  lw         $s2, 0x20($sp)
/* 4D148 8004C548 8FB1001C */  lw         $s1, 0x1c($sp)
/* 4D14C 8004C54C 8FB00018 */  lw         $s0, 0x18($sp)
/* 4D150 8004C550 03E00008 */  jr         $ra
/* 4D154 8004C554 27BD0030 */   addiu     $sp, $sp, 0x30
