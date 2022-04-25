	.set noat
	.set noreorder

glabel func_80059B10
/* 5A710 80059B10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5A714 80059B14 04810007 */  bgez       $a0, .L80059B34
/* 5A718 80059B18 AFBF0010 */   sw        $ra, 0x10($sp)
/* 5A71C 80059B1C 24820003 */  addiu      $v0, $a0, 3
/* 5A720 80059B20 3C03800F */  lui        $v1, %hi(D_800ED147)
/* 5A724 80059B24 8063D147 */  lb         $v1, %lo(D_800ED147)($v1)
/* 5A728 80059B28 00431026 */  xor        $v0, $v0, $v1
/* 5A72C 80059B2C 080166CF */  j          .L80059B3C
/* 5A730 80059B30 2C420001 */   sltiu     $v0, $v0, 1
.L80059B34:
/* 5A734 80059B34 0C0165E6 */  jal        func_80059798
/* 5A738 80059B38 00000000 */   nop
.L80059B3C:
/* 5A73C 80059B3C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5A740 80059B40 03E00008 */  jr         $ra
/* 5A744 80059B44 27BD0018 */   addiu     $sp, $sp, 0x18
