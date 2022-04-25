	.set noat
	.set noreorder

glabel func_80056E6C
/* 57A6C 80056E6C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 57A70 80056E70 AFBF0024 */  sw         $ra, 0x24($sp)
/* 57A74 80056E74 AFB20020 */  sw         $s2, 0x20($sp)
/* 57A78 80056E78 AFB1001C */  sw         $s1, 0x1c($sp)
/* 57A7C 80056E7C AFB00018 */  sw         $s0, 0x18($sp)
/* 57A80 80056E80 24120002 */  addiu      $s2, $zero, 2
/* 57A84 80056E84 24110001 */  addiu      $s1, $zero, 1
/* 57A88 80056E88 24100003 */  addiu      $s0, $zero, 3
.L80056E8C:
/* 57A8C 80056E8C 3C03800E */  lui        $v1, %hi(D_800D86FA)
/* 57A90 80056E90 846386FA */  lh         $v1, %lo(D_800D86FA)($v1)
/* 57A94 80056E94 10720017 */  beq        $v1, $s2, .L80056EF4
/* 57A98 80056E98 28620003 */   slti      $v0, $v1, 3
/* 57A9C 80056E9C 10400005 */  beqz       $v0, .L80056EB4
/* 57AA0 80056EA0 00000000 */   nop
/* 57AA4 80056EA4 10710007 */  beq        $v1, $s1, .L80056EC4
/* 57AA8 80056EA8 00000000 */   nop
/* 57AAC 80056EAC 08015BC6 */  j          .L80056F18
/* 57AB0 80056EB0 00000000 */   nop
.L80056EB4:
/* 57AB4 80056EB4 10700014 */  beq        $v1, $s0, .L80056F08
/* 57AB8 80056EB8 00000000 */   nop
/* 57ABC 80056EBC 08015BC6 */  j          .L80056F18
/* 57AC0 80056EC0 00000000 */   nop
.L80056EC4:
/* 57AC4 80056EC4 3C02800F */  lui        $v0, %hi(D_800ED5DC)
/* 57AC8 80056EC8 8442D5DC */  lh         $v0, %lo(D_800ED5DC)($v0)
/* 57ACC 80056ECC 00021840 */  sll        $v1, $v0, 1
/* 57AD0 80056ED0 00621821 */  addu       $v1, $v1, $v0
/* 57AD4 80056ED4 00031900 */  sll        $v1, $v1, 4
/* 57AD8 80056ED8 3C04800F */  lui        $a0, %hi(D_800F32D0)
/* 57ADC 80056EDC 00832021 */  addu       $a0, $a0, $v1
/* 57AE0 80056EE0 8C8432D0 */  lw         $a0, %lo(D_800F32D0)($a0)
/* 57AE4 80056EE4 0C012D77 */  jal        func_8004B5DC
/* 57AE8 80056EE8 2484000C */   addiu     $a0, $a0, 0xc
/* 57AEC 80056EEC 08015BC6 */  j          .L80056F18
/* 57AF0 80056EF0 00000000 */   nop
.L80056EF4:
/* 57AF4 80056EF4 3C04800E */  lui        $a0, %hi(D_800D86FC)
/* 57AF8 80056EF8 0C012D77 */  jal        func_8004B5DC
/* 57AFC 80056EFC 248486FC */   addiu     $a0, $a0, %lo(D_800D86FC)
/* 57B00 80056F00 08015BC6 */  j          .L80056F18
/* 57B04 80056F04 00000000 */   nop
.L80056F08:
/* 57B08 80056F08 0C012DB6 */  jal        func_8004B6D8
/* 57B0C 80056F0C 27A40010 */   addiu     $a0, $sp, 0x10
/* 57B10 80056F10 0C012D87 */  jal        func_8004B61C
/* 57B14 80056F14 27A40010 */   addiu     $a0, $sp, 0x10
.L80056F18:
/* 57B18 80056F18 0C018D6D */  jal        func_800635B4
/* 57B1C 80056F1C 00000000 */   nop
/* 57B20 80056F20 08015BA3 */  j          .L80056E8C
/* 57B24 80056F24 00000000 */   nop
/* 57B28 80056F28 8FBF0024 */  lw         $ra, 0x24($sp)
/* 57B2C 80056F2C 8FB20020 */  lw         $s2, 0x20($sp)
/* 57B30 80056F30 8FB1001C */  lw         $s1, 0x1c($sp)
/* 57B34 80056F34 8FB00018 */  lw         $s0, 0x18($sp)
/* 57B38 80056F38 03E00008 */  jr         $ra
/* 57B3C 80056F3C 27BD0028 */   addiu     $sp, $sp, 0x28
