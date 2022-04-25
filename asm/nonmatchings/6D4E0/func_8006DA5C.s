	.set noat
	.set noreorder

glabel func_8006DA5C
/* 6E65C 8006DA5C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6E660 8006DA60 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6E664 8006DA64 AFB20018 */  sw         $s2, 0x18($sp)
/* 6E668 8006DA68 AFB10014 */  sw         $s1, 0x14($sp)
/* 6E66C 8006DA6C AFB00010 */  sw         $s0, 0x10($sp)
/* 6E670 8006DA70 00C08021 */  addu       $s0, $a2, $zero
/* 6E674 8006DA74 00042400 */  sll        $a0, $a0, 0x10
/* 6E678 8006DA78 00042403 */  sra        $a0, $a0, 0x10
/* 6E67C 8006DA7C 00041080 */  sll        $v0, $a0, 2
/* 6E680 8006DA80 00441021 */  addu       $v0, $v0, $a0
/* 6E684 8006DA84 00021140 */  sll        $v0, $v0, 5
/* 6E688 8006DA88 00441023 */  subu       $v0, $v0, $a0
/* 6E68C 8006DA8C 00021080 */  sll        $v0, $v0, 2
/* 6E690 8006DA90 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6E694 8006DA94 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6E698 8006DA98 00438821 */  addu       $s1, $v0, $v1
/* 6E69C 8006DA9C 00063600 */  sll        $a2, $a2, 0x18
/* 6E6A0 8006DAA0 00063603 */  sra        $a2, $a2, 0x18
/* 6E6A4 8006DAA4 00061080 */  sll        $v0, $a2, 2
/* 6E6A8 8006DAA8 00511021 */  addu       $v0, $v0, $s1
/* 6E6AC 8006DAAC 8C440088 */  lw         $a0, 0x88($v0)
/* 6E6B0 8006DAB0 10800007 */  beqz       $a0, .L8006DAD0
/* 6E6B4 8006DAB4 00A09021 */   addu      $s2, $a1, $zero
/* 6E6B8 8006DAB8 02261021 */  addu       $v0, $s1, $a2
/* 6E6BC 8006DABC 8042007B */  lb         $v0, 0x7b($v0)
/* 6E6C0 8006DAC0 10400004 */  beqz       $v0, .L8006DAD4
/* 6E6C4 8006DAC4 3C028000 */   lui       $v0, 0x8000
/* 6E6C8 8006DAC8 0C016E0E */  jal        func_8005B838
/* 6E6CC 8006DACC 00000000 */   nop
.L8006DAD0:
/* 6E6D0 8006DAD0 3C028000 */  lui        $v0, 0x8000
.L8006DAD4:
/* 6E6D4 8006DAD4 0052102B */  sltu       $v0, $v0, $s2
/* 6E6D8 8006DAD8 10400008 */  beqz       $v0, .L8006DAFC
/* 6E6DC 8006DADC 00101600 */   sll       $v0, $s0, 0x18
/* 6E6E0 8006DAE0 00021603 */  sra        $v0, $v0, 0x18
/* 6E6E4 8006DAE4 02221821 */  addu       $v1, $s1, $v0
/* 6E6E8 8006DAE8 A060007B */  sb         $zero, 0x7b($v1)
/* 6E6EC 8006DAEC 00021080 */  sll        $v0, $v0, 2
/* 6E6F0 8006DAF0 00511021 */  addu       $v0, $v0, $s1
/* 6E6F4 8006DAF4 0801B6C9 */  j          .L8006DB24
/* 6E6F8 8006DAF8 AC520088 */   sw        $s2, 0x88($v0)
.L8006DAFC:
/* 6E6FC 8006DAFC 00108600 */  sll        $s0, $s0, 0x18
/* 6E700 8006DB00 00108603 */  sra        $s0, $s0, 0x18
/* 6E704 8006DB04 02301821 */  addu       $v1, $s1, $s0
/* 6E708 8006DB08 24020001 */  addiu      $v0, $zero, 1
/* 6E70C 8006DB0C A062007B */  sb         $v0, 0x7b($v1)
/* 6E710 8006DB10 0C016DFA */  jal        func_8005B7E8
/* 6E714 8006DB14 02402021 */   addu      $a0, $s2, $zero
/* 6E718 8006DB18 00108080 */  sll        $s0, $s0, 2
/* 6E71C 8006DB1C 02118021 */  addu       $s0, $s0, $s1
/* 6E720 8006DB20 AE020088 */  sw         $v0, 0x88($s0)
.L8006DB24:
/* 6E724 8006DB24 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6E728 8006DB28 8FB20018 */  lw         $s2, 0x18($sp)
/* 6E72C 8006DB2C 8FB10014 */  lw         $s1, 0x14($sp)
/* 6E730 8006DB30 8FB00010 */  lw         $s0, 0x10($sp)
/* 6E734 8006DB34 03E00008 */  jr         $ra
/* 6E738 8006DB38 27BD0020 */   addiu     $sp, $sp, 0x20
