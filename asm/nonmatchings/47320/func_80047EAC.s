	.set noat
	.set noreorder

glabel func_80047EAC
/* 48AAC 80047EAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 48AB0 80047EB0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 48AB4 80047EB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 48AB8 80047EB8 3C048004 */  lui        $a0, %hi(func_80047DBC)
/* 48ABC 80047EBC 24847DBC */  addiu      $a0, $a0, %lo(func_80047DBC)
/* 48AC0 80047EC0 00002821 */  addu       $a1, $zero, $zero
/* 48AC4 80047EC4 00003021 */  addu       $a2, $zero, $zero
/* 48AC8 80047EC8 0C01770A */  jal        func_8005DC28
/* 48ACC 80047ECC 24070040 */   addiu     $a3, $zero, 0x40
/* 48AD0 80047ED0 00408021 */  addu       $s0, $v0, $zero
/* 48AD4 80047ED4 8E040018 */  lw         $a0, 0x18($s0)
/* 48AD8 80047ED8 0C016628 */  jal        func_800598A0
/* 48ADC 80047EDC 24050010 */   addiu     $a1, $zero, 0x10
/* 48AE0 80047EE0 AE02008C */  sw         $v0, 0x8c($s0)
/* 48AE4 80047EE4 AC400000 */  sw         $zero, ($v0)
/* 48AE8 80047EE8 24030005 */  addiu      $v1, $zero, 5
/* 48AEC 80047EEC AC430004 */  sw         $v1, 4($v0)
/* 48AF0 80047EF0 02001021 */  addu       $v0, $s0, $zero
/* 48AF4 80047EF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 48AF8 80047EF8 8FB00010 */  lw         $s0, 0x10($sp)
/* 48AFC 80047EFC 03E00008 */  jr         $ra
/* 48B00 80047F00 27BD0018 */   addiu     $sp, $sp, 0x18
