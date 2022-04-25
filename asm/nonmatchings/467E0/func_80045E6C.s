	.set noat
	.set noreorder

glabel func_80045E6C
/* 46A6C 80045E6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 46A70 80045E70 AFBF0014 */  sw         $ra, 0x14($sp)
/* 46A74 80045E74 AFB00010 */  sw         $s0, 0x10($sp)
/* 46A78 80045E78 00808021 */  addu       $s0, $a0, $zero
/* 46A7C 80045E7C 12000013 */  beqz       $s0, .L80045ECC
/* 46A80 80045E80 00000000 */   nop
/* 46A84 80045E84 8E020004 */  lw         $v0, 4($s0)
/* 46A88 80045E88 AC400050 */  sw         $zero, 0x50($v0)
/* 46A8C 80045E8C 0C0175C6 */  jal        func_8005D718
/* 46A90 80045E90 8E040004 */   lw        $a0, 4($s0)
/* 46A94 80045E94 86040008 */  lh         $a0, 8($s0)
/* 46A98 80045E98 0480000A */  bltz       $a0, .L80045EC4
/* 46A9C 80045E9C 00000000 */   nop
/* 46AA0 80045EA0 0C01C364 */  jal        func_80070D90
/* 46AA4 80045EA4 00000000 */   nop
/* 46AA8 80045EA8 0C00EDE6 */  jal        func_8003B798
/* 46AAC 80045EAC 8E04000C */   lw        $a0, 0xc($s0)
/* 46AB0 80045EB0 8E040010 */  lw         $a0, 0x10($s0)
/* 46AB4 80045EB4 10800003 */  beqz       $a0, .L80045EC4
/* 46AB8 80045EB8 00000000 */   nop
/* 46ABC 80045EBC 0C00EDE6 */  jal        func_8003B798
/* 46AC0 80045EC0 00000000 */   nop
.L80045EC4:
/* 46AC4 80045EC4 0C00EDE6 */  jal        func_8003B798
/* 46AC8 80045EC8 02002021 */   addu      $a0, $s0, $zero
.L80045ECC:
/* 46ACC 80045ECC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 46AD0 80045ED0 8FB00010 */  lw         $s0, 0x10($sp)
/* 46AD4 80045ED4 03E00008 */  jr         $ra
/* 46AD8 80045ED8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 46ADC 80045EDC 00000000 */  nop
