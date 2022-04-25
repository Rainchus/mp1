	.set noat
	.set noreorder

glabel func_8006DC7C
/* 6E87C 8006DC7C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6E880 8006DC80 AFBF0024 */  sw         $ra, 0x24($sp)
/* 6E884 8006DC84 AFB20020 */  sw         $s2, 0x20($sp)
/* 6E888 8006DC88 AFB1001C */  sw         $s1, 0x1c($sp)
/* 6E88C 8006DC8C AFB00018 */  sw         $s0, 0x18($sp)
/* 6E890 8006DC90 00C08821 */  addu       $s1, $a2, $zero
/* 6E894 8006DC94 00E09021 */  addu       $s2, $a3, $zero
/* 6E898 8006DC98 00042400 */  sll        $a0, $a0, 0x10
/* 6E89C 8006DC9C 00042403 */  sra        $a0, $a0, 0x10
/* 6E8A0 8006DCA0 00048080 */  sll        $s0, $a0, 2
/* 6E8A4 8006DCA4 02048021 */  addu       $s0, $s0, $a0
/* 6E8A8 8006DCA8 00108140 */  sll        $s0, $s0, 5
/* 6E8AC 8006DCAC 02048023 */  subu       $s0, $s0, $a0
/* 6E8B0 8006DCB0 00108080 */  sll        $s0, $s0, 2
/* 6E8B4 8006DCB4 3C02800F */  lui        $v0, %hi(D_800ED4B0)
/* 6E8B8 8006DCB8 8C42D4B0 */  lw         $v0, %lo(D_800ED4B0)($v0)
/* 6E8BC 8006DCBC 02028021 */  addu       $s0, $s0, $v0
/* 6E8C0 8006DCC0 00063400 */  sll        $a2, $a2, 0x10
/* 6E8C4 8006DCC4 00073C00 */  sll        $a3, $a3, 0x10
/* 6E8C8 8006DCC8 87A2003A */  lh         $v0, 0x3a($sp)
/* 6E8CC 8006DCCC AFA20010 */  sw         $v0, 0x10($sp)
/* 6E8D0 8006DCD0 00063403 */  sra        $a2, $a2, 0x10
/* 6E8D4 8006DCD4 0C01B6CF */  jal        func_8006DB3C
/* 6E8D8 8006DCD8 00073C03 */   sra       $a3, $a3, 0x10
/* 6E8DC 8006DCDC 82030010 */  lb         $v1, 0x10($s0)
/* 6E8E0 8006DCE0 00031900 */  sll        $v1, $v1, 4
/* 6E8E4 8006DCE4 246300F4 */  addiu      $v1, $v1, 0xf4
/* 6E8E8 8006DCE8 02031821 */  addu       $v1, $s0, $v1
/* 6E8EC 8006DCEC A4710002 */  sh         $s1, 2($v1)
/* 6E8F0 8006DCF0 A4720004 */  sh         $s2, 4($v1)
/* 6E8F4 8006DCF4 A4600006 */  sh         $zero, 6($v1)
/* 6E8F8 8006DCF8 A4600008 */  sh         $zero, 8($v1)
/* 6E8FC 8006DCFC 24040001 */  addiu      $a0, $zero, 1
/* 6E900 8006DD00 A0640000 */  sb         $a0, ($v1)
/* 6E904 8006DD04 92030010 */  lbu        $v1, 0x10($s0)
/* 6E908 8006DD08 24630001 */  addiu      $v1, $v1, 1
/* 6E90C 8006DD0C A2030010 */  sb         $v1, 0x10($s0)
/* 6E910 8006DD10 00021400 */  sll        $v0, $v0, 0x10
/* 6E914 8006DD14 00021403 */  sra        $v0, $v0, 0x10
/* 6E918 8006DD18 8FBF0024 */  lw         $ra, 0x24($sp)
/* 6E91C 8006DD1C 8FB20020 */  lw         $s2, 0x20($sp)
/* 6E920 8006DD20 8FB1001C */  lw         $s1, 0x1c($sp)
/* 6E924 8006DD24 8FB00018 */  lw         $s0, 0x18($sp)
/* 6E928 8006DD28 03E00008 */  jr         $ra
/* 6E92C 8006DD2C 27BD0028 */   addiu     $sp, $sp, 0x28
