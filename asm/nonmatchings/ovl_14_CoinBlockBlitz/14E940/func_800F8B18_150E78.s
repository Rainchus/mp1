	.set noat
	.set noreorder

glabel func_800F8B18_150E78
/* 150E78 800F8B18 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 150E7C 800F8B1C AFBF002C */  sw         $ra, 0x2c($sp)
/* 150E80 800F8B20 AFB40028 */  sw         $s4, 0x28($sp)
/* 150E84 800F8B24 AFB30024 */  sw         $s3, 0x24($sp)
/* 150E88 800F8B28 AFB20020 */  sw         $s2, 0x20($sp)
/* 150E8C 800F8B2C AFB1001C */  sw         $s1, 0x1c($sp)
/* 150E90 800F8B30 AFB00018 */  sw         $s0, 0x18($sp)
/* 150E94 800F8B34 3C02800F */  lui        $v0, %hi(D_800F2BC0)
/* 150E98 800F8B38 94422BC0 */  lhu        $v0, %lo(D_800F2BC0)($v0)
/* 150E9C 800F8B3C 18400021 */  blez       $v0, .L800F8BC4
/* 150EA0 800F8B40 00009021 */   addu      $s2, $zero, $zero
/* 150EA4 800F8B44 3C14800F */  lui        $s4, %hi(D_800F3FB0)
/* 150EA8 800F8B48 26943FB0 */  addiu      $s4, $s4, %lo(D_800F3FB0)
/* 150EAC 800F8B4C 00121080 */  sll        $v0, $s2, 2
.L800F8B50:
/* 150EB0 800F8B50 00541021 */  addu       $v0, $v0, $s4
/* 150EB4 800F8B54 8C500000 */  lw         $s0, ($v0)
/* 150EB8 800F8B58 8E130050 */  lw         $s3, 0x50($s0)
/* 150EBC 800F8B5C 9211004D */  lbu        $s1, 0x4d($s0)
/* 150EC0 800F8B60 0C0165E6 */  jal        func_80059798
/* 150EC4 800F8B64 2404002B */   addiu     $a0, $zero, 0x2b
/* 150EC8 800F8B68 14400005 */  bnez       $v0, .L800F8B80
/* 150ECC 800F8B6C 00000000 */   nop
/* 150ED0 800F8B70 9202004D */  lbu        $v0, 0x4d($s0)
/* 150ED4 800F8B74 2C420002 */  sltiu      $v0, $v0, 2
/* 150ED8 800F8B78 50400001 */  beql       $v0, $zero, .L800F8B80
/* 150EDC 800F8B7C 00118842 */   srl       $s1, $s1, 1
.L800F8B80:
/* 150EE0 800F8B80 82620058 */  lb         $v0, 0x58($s3)
/* 150EE4 800F8B84 00021840 */  sll        $v1, $v0, 1
/* 150EE8 800F8B88 00621821 */  addu       $v1, $v1, $v0
/* 150EEC 800F8B8C 00031900 */  sll        $v1, $v1, 4
/* 150EF0 800F8B90 3C02800F */  lui        $v0, %hi(D_800F32BA)
/* 150EF4 800F8B94 00431021 */  addu       $v0, $v0, $v1
/* 150EF8 800F8B98 944232BA */  lhu        $v0, %lo(D_800F32BA)($v0)
/* 150EFC 800F8B9C 00511021 */  addu       $v0, $v0, $s1
/* 150F00 800F8BA0 3C01800F */  lui        $at, %hi(D_800F32BA)
/* 150F04 800F8BA4 00230821 */  addu       $at, $at, $v1
/* 150F08 800F8BA8 A42232BA */  sh         $v0, %lo(D_800F32BA)($at)
/* 150F0C 800F8BAC 26520001 */  addiu      $s2, $s2, 1
/* 150F10 800F8BB0 3C02800F */  lui        $v0, %hi(D_800F2BC0)
/* 150F14 800F8BB4 94422BC0 */  lhu        $v0, %lo(D_800F2BC0)($v0)
/* 150F18 800F8BB8 0242102A */  slt        $v0, $s2, $v0
/* 150F1C 800F8BBC 1440FFE4 */  bnez       $v0, .L800F8B50
/* 150F20 800F8BC0 00121080 */   sll       $v0, $s2, 2
.L800F8BC4:
/* 150F24 800F8BC4 8FBF002C */  lw         $ra, 0x2c($sp)
/* 150F28 800F8BC8 8FB40028 */  lw         $s4, 0x28($sp)
/* 150F2C 800F8BCC 8FB30024 */  lw         $s3, 0x24($sp)
/* 150F30 800F8BD0 8FB20020 */  lw         $s2, 0x20($sp)
/* 150F34 800F8BD4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 150F38 800F8BD8 8FB00018 */  lw         $s0, 0x18($sp)
/* 150F3C 800F8BDC 03E00008 */  jr         $ra
/* 150F40 800F8BE0 27BD0030 */   addiu     $sp, $sp, 0x30
