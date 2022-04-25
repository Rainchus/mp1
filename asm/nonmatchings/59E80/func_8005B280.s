	.set noat
	.set noreorder

glabel func_8005B280
/* 5BE80 8005B280 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5BE84 8005B284 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5BE88 8005B288 0C0165E6 */  jal        func_80059798
/* 5BE8C 8005B28C 00002021 */   addu      $a0, $zero, $zero
/* 5BE90 8005B290 1040000B */  beqz       $v0, .L8005B2C0
/* 5BE94 8005B294 00000000 */   nop
/* 5BE98 8005B298 0C01660B */  jal        func_8005982C
/* 5BE9C 8005B29C 24040040 */   addiu     $a0, $zero, 0x40
/* 5BEA0 8005B2A0 3C02800E */  lui        $v0, %hi(D_800D8720)
/* 5BEA4 8005B2A4 90428720 */  lbu        $v0, %lo(D_800D8720)($v0)
/* 5BEA8 8005B2A8 1040000E */  beqz       $v0, .L8005B2E4
/* 5BEAC 8005B2AC 00002021 */   addu      $a0, $zero, $zero
/* 5BEB0 8005B2B0 3C05800F */  lui        $a1, %hi(D_800ED100)
/* 5BEB4 8005B2B4 24A5D100 */  addiu      $a1, $a1, %lo(D_800ED100)
/* 5BEB8 8005B2B8 08016CB7 */  j          .L8005B2DC
/* 5BEBC 8005B2BC 24060094 */   addiu     $a2, $zero, 0x94
.L8005B2C0:
/* 5BEC0 8005B2C0 3C02800E */  lui        $v0, %hi(D_800D8720)
/* 5BEC4 8005B2C4 90428720 */  lbu        $v0, %lo(D_800D8720)($v0)
/* 5BEC8 8005B2C8 10400006 */  beqz       $v0, .L8005B2E4
/* 5BECC 8005B2CC 00002021 */   addu      $a0, $zero, $zero
/* 5BED0 8005B2D0 3C05800F */  lui        $a1, %hi(D_800ED100)
/* 5BED4 8005B2D4 24A5D100 */  addiu      $a1, $a1, %lo(D_800ED100)
/* 5BED8 8005B2D8 24060050 */  addiu      $a2, $zero, 0x50
.L8005B2DC:
/* 5BEDC 8005B2DC 0C006541 */  jal        func_80019504
/* 5BEE0 8005B2E0 00000000 */   nop
.L8005B2E4:
/* 5BEE4 8005B2E4 0C01660B */  jal        func_8005982C
/* 5BEE8 8005B2E8 00002021 */   addu      $a0, $zero, $zero
/* 5BEEC 8005B2EC 0C016C09 */  jal        func_8005B024
/* 5BEF0 8005B2F0 00000000 */   nop
/* 5BEF4 8005B2F4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5BEF8 8005B2F8 03E00008 */  jr         $ra
/* 5BEFC 8005B2FC 27BD0018 */   addiu     $sp, $sp, 0x18
