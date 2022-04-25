	.set noat
	.set noreorder

glabel func_8005A9D8
/* 5B5D8 8005A9D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5B5DC 8005A9DC AFBF001C */  sw         $ra, 0x1c($sp)
/* 5B5E0 8005A9E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 5B5E4 8005A9E4 AFB10014 */  sw         $s1, 0x14($sp)
/* 5B5E8 8005A9E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 5B5EC 8005A9EC 00042400 */  sll        $a0, $a0, 0x10
/* 5B5F0 8005A9F0 00042403 */  sra        $a0, $a0, 0x10
/* 5B5F4 8005A9F4 00041080 */  sll        $v0, $a0, 2
/* 5B5F8 8005A9F8 00441021 */  addu       $v0, $v0, $a0
/* 5B5FC 8005A9FC 00021140 */  sll        $v0, $v0, 5
/* 5B600 8005AA00 00441023 */  subu       $v0, $v0, $a0
/* 5B604 8005AA04 00021080 */  sll        $v0, $v0, 2
/* 5B608 8005AA08 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 5B60C 8005AA0C 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 5B610 8005AA10 00438821 */  addu       $s1, $v0, $v1
/* 5B614 8005AA14 2410000C */  addiu      $s0, $zero, 0xc
/* 5B618 8005AA18 2412FFFF */  addiu      $s2, $zero, -1
/* 5B61C 8005AA1C 00101040 */  sll        $v0, $s0, 1
.L8005AA20:
/* 5B620 8005AA20 00511021 */  addu       $v0, $v0, $s1
/* 5B624 8005AA24 84440046 */  lh         $a0, 0x46($v0)
/* 5B628 8005AA28 10920003 */  beq        $a0, $s2, .L8005AA38
/* 5B62C 8005AA2C 26100001 */   addiu     $s0, $s0, 1
/* 5B630 8005AA30 0C019DC1 */  jal        func_80067704
/* 5B634 8005AA34 00000000 */   nop
.L8005AA38:
/* 5B638 8005AA38 2A020014 */  slti       $v0, $s0, 0x14
/* 5B63C 8005AA3C 1440FFF8 */  bnez       $v0, .L8005AA20
/* 5B640 8005AA40 00101040 */   sll       $v0, $s0, 1
/* 5B644 8005AA44 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5B648 8005AA48 8FB20018 */  lw         $s2, 0x18($sp)
/* 5B64C 8005AA4C 8FB10014 */  lw         $s1, 0x14($sp)
/* 5B650 8005AA50 8FB00010 */  lw         $s0, 0x10($sp)
/* 5B654 8005AA54 03E00008 */  jr         $ra
/* 5B658 8005AA58 27BD0020 */   addiu     $sp, $sp, 0x20
