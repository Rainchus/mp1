	.set noat
	.set noreorder

glabel func_800599DC
/* 5A5DC 800599DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5A5E0 800599E0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5A5E4 800599E4 AFB20018 */  sw         $s2, 0x18($sp)
/* 5A5E8 800599E8 AFB10014 */  sw         $s1, 0x14($sp)
/* 5A5EC 800599EC AFB00010 */  sw         $s0, 0x10($sp)
/* 5A5F0 800599F0 00A08021 */  addu       $s0, $a1, $zero
/* 5A5F4 800599F4 00C02821 */  addu       $a1, $a2, $zero
/* 5A5F8 800599F8 24A7001F */  addiu      $a3, $a1, 0x1f
/* 5A5FC 800599FC 2402FFF0 */  addiu      $v0, $zero, -0x10
/* 5A600 80059A00 00E23824 */  and        $a3, $a3, $v0
/* 5A604 80059A04 8E03FFF0 */  lw         $v1, -0x10($s0)
/* 5A608 80059A08 0067102A */  slt        $v0, $v1, $a3
/* 5A60C 80059A0C 14400013 */  bnez       $v0, .L80059A5C
/* 5A610 80059A10 2612FFF0 */   addiu     $s2, $s0, -0x10
/* 5A614 80059A14 00671823 */  subu       $v1, $v1, $a3
/* 5A618 80059A18 2C620021 */  sltiu      $v0, $v1, 0x21
/* 5A61C 80059A1C 5440001B */  bnel       $v0, $zero, .L80059A8C
/* 5A620 80059A20 26420010 */   addiu     $v0, $s2, 0x10
/* 5A624 80059A24 02471021 */  addu       $v0, $s2, $a3
/* 5A628 80059A28 AC430000 */  sw         $v1, ($v0)
/* 5A62C 80059A2C 240300A5 */  addiu      $v1, $zero, 0xa5
/* 5A630 80059A30 A0430004 */  sb         $v1, 4($v0)
/* 5A634 80059A34 A0400005 */  sb         $zero, 5($v0)
/* 5A638 80059A38 8E03FFFC */  lw         $v1, -4($s0)
/* 5A63C 80059A3C AC620008 */  sw         $v0, 8($v1)
/* 5A640 80059A40 8E03FFFC */  lw         $v1, -4($s0)
/* 5A644 80059A44 AC43000C */  sw         $v1, 0xc($v0)
/* 5A648 80059A48 AE02FFFC */  sw         $v0, -4($s0)
/* 5A64C 80059A4C AC520008 */  sw         $s2, 8($v0)
/* 5A650 80059A50 AE07FFF0 */  sw         $a3, -0x10($s0)
/* 5A654 80059A54 080166A3 */  j          .L80059A8C
/* 5A658 80059A58 26420010 */   addiu     $v0, $s2, 0x10
.L80059A5C:
/* 5A65C 80059A5C 0C016628 */  jal        func_800598A0
/* 5A660 80059A60 00000000 */   nop
/* 5A664 80059A64 00408821 */  addu       $s1, $v0, $zero
/* 5A668 80059A68 12200007 */  beqz       $s1, .L80059A88
/* 5A66C 80059A6C 02202821 */   addu      $a1, $s1, $zero
/* 5A670 80059A70 8E460000 */  lw         $a2, ($s2)
/* 5A674 80059A74 02002021 */  addu       $a0, $s0, $zero
/* 5A678 80059A78 0C023010 */  jal        func_8008C040
/* 5A67C 80059A7C 24C6FFF0 */   addiu     $a2, $a2, -0x10
/* 5A680 80059A80 0C01664B */  jal        func_8005992C
/* 5A684 80059A84 02002021 */   addu      $a0, $s0, $zero
.L80059A88:
/* 5A688 80059A88 02201021 */  addu       $v0, $s1, $zero
.L80059A8C:
/* 5A68C 80059A8C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5A690 80059A90 8FB20018 */  lw         $s2, 0x18($sp)
/* 5A694 80059A94 8FB10014 */  lw         $s1, 0x14($sp)
/* 5A698 80059A98 8FB00010 */  lw         $s0, 0x10($sp)
/* 5A69C 80059A9C 03E00008 */  jr         $ra
/* 5A6A0 80059AA0 27BD0020 */   addiu     $sp, $sp, 0x20
