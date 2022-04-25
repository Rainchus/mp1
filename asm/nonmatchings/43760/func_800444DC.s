	.set noat
	.set noreorder

glabel func_800444DC
/* 450DC 800444DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 450E0 800444E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 450E4 800444E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 450E8 800444E8 3C048004 */  lui        $a0, %hi(func_800441D4)
/* 450EC 800444EC 248441D4 */  addiu      $a0, $a0, %lo(func_800441D4)
/* 450F0 800444F0 00002821 */  addu       $a1, $zero, $zero
/* 450F4 800444F4 24062000 */  addiu      $a2, $zero, 0x2000
/* 450F8 800444F8 0C01770A */  jal        func_8005DC28
/* 450FC 800444FC 24070040 */   addiu     $a3, $zero, 0x40
/* 45100 80044500 00408021 */  addu       $s0, $v0, $zero
/* 45104 80044504 8E040018 */  lw         $a0, 0x18($s0)
/* 45108 80044508 0C016628 */  jal        func_800598A0
/* 4510C 8004450C 24050010 */   addiu     $a1, $zero, 0x10
/* 45110 80044510 AE02008C */  sw         $v0, 0x8c($s0)
/* 45114 80044514 AC400000 */  sw         $zero, ($v0)
/* 45118 80044518 02001021 */  addu       $v0, $s0, $zero
/* 4511C 8004451C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 45120 80044520 8FB00010 */  lw         $s0, 0x10($sp)
/* 45124 80044524 03E00008 */  jr         $ra
/* 45128 80044528 27BD0018 */   addiu     $sp, $sp, 0x18
