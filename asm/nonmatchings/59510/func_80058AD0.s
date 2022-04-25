	.set noat
	.set noreorder

glabel func_80058AD0
/* 596D0 80058AD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 596D4 80058AD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 596D8 80058AD8 AFB00010 */  sw         $s0, 0x10($sp)
/* 596DC 80058ADC 00808021 */  addu       $s0, $a0, $zero
/* 596E0 80058AE0 12000005 */  beqz       $s0, .L80058AF8
/* 596E4 80058AE4 00000000 */   nop
/* 596E8 80058AE8 0C017764 */  jal        func_8005DD90
/* 596EC 80058AEC 8E040008 */   lw        $a0, 8($s0)
/* 596F0 80058AF0 0C00EDE6 */  jal        func_8003B798
/* 596F4 80058AF4 02002021 */   addu      $a0, $s0, $zero
.L80058AF8:
/* 596F8 80058AF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 596FC 80058AFC 8FB00010 */  lw         $s0, 0x10($sp)
/* 59700 80058B00 03E00008 */  jr         $ra
/* 59704 80058B04 27BD0018 */   addiu     $sp, $sp, 0x18
/* 59708 80058B08 00000000 */  nop
/* 5970C 80058B0C 00000000 */  nop
