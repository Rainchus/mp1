	.set noat
	.set noreorder

glabel func_80047E54
/* 48A54 80047E54 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 48A58 80047E58 AFBF0014 */  sw         $ra, 0x14($sp)
/* 48A5C 80047E5C AFB00010 */  sw         $s0, 0x10($sp)
/* 48A60 80047E60 3C048004 */  lui        $a0, %hi(func_80047DBC)
/* 48A64 80047E64 24847DBC */  addiu      $a0, $a0, %lo(func_80047DBC)
/* 48A68 80047E68 00002821 */  addu       $a1, $zero, $zero
/* 48A6C 80047E6C 00003021 */  addu       $a2, $zero, $zero
/* 48A70 80047E70 0C01770A */  jal        func_8005DC28
/* 48A74 80047E74 24070040 */   addiu     $a3, $zero, 0x40
/* 48A78 80047E78 00408021 */  addu       $s0, $v0, $zero
/* 48A7C 80047E7C 8E040018 */  lw         $a0, 0x18($s0)
/* 48A80 80047E80 0C016628 */  jal        func_800598A0
/* 48A84 80047E84 24050010 */   addiu     $a1, $zero, 0x10
/* 48A88 80047E88 AE02008C */  sw         $v0, 0x8c($s0)
/* 48A8C 80047E8C AC400000 */  sw         $zero, ($v0)
/* 48A90 80047E90 24030006 */  addiu      $v1, $zero, 6
/* 48A94 80047E94 AC430004 */  sw         $v1, 4($v0)
/* 48A98 80047E98 02001021 */  addu       $v0, $s0, $zero
/* 48A9C 80047E9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 48AA0 80047EA0 8FB00010 */  lw         $s0, 0x10($sp)
/* 48AA4 80047EA4 03E00008 */  jr         $ra
/* 48AA8 80047EA8 27BD0018 */   addiu     $sp, $sp, 0x18
