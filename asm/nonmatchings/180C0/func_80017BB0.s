	.set noat
	.set noreorder

glabel func_80017BB0
/* 187B0 80017BB0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 187B4 80017BB4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 187B8 80017BB8 AFB10014 */  sw         $s1, 0x14($sp)
/* 187BC 80017BBC AFB00010 */  sw         $s0, 0x10($sp)
/* 187C0 80017BC0 00808821 */  addu       $s1, $a0, $zero
/* 187C4 80017BC4 24100003 */  addiu      $s0, $zero, 3
.L80017BC8:
/* 187C8 80017BC8 9622003C */  lhu        $v0, 0x3c($s1)
/* 187CC 80017BCC 0202102A */  slt        $v0, $s0, $v0
/* 187D0 80017BD0 10400009 */  beqz       $v0, .L80017BF8
/* 187D4 80017BD4 00101840 */   sll       $v1, $s0, 1
/* 187D8 80017BD8 8E220040 */  lw         $v0, 0x40($s1)
/* 187DC 80017BDC 00621821 */  addu       $v1, $v1, $v0
/* 187E0 80017BE0 90640001 */  lbu        $a0, 1($v1)
/* 187E4 80017BE4 0C005ED3 */  jal        func_80017B4C
/* 187E8 80017BE8 26100001 */   addiu     $s0, $s0, 1
/* 187EC 80017BEC 2A020009 */  slti       $v0, $s0, 9
/* 187F0 80017BF0 1440FFF5 */  bnez       $v0, .L80017BC8
/* 187F4 80017BF4 00000000 */   nop
.L80017BF8:
/* 187F8 80017BF8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 187FC 80017BFC 8FB10014 */  lw         $s1, 0x14($sp)
/* 18800 80017C00 8FB00010 */  lw         $s0, 0x10($sp)
/* 18804 80017C04 03E00008 */  jr         $ra
/* 18808 80017C08 27BD0020 */   addiu     $sp, $sp, 0x20
