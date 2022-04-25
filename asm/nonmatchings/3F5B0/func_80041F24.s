	.set noat
	.set noreorder

glabel func_80041F24
/* 42B24 80041F24 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 42B28 80041F28 AFBF0018 */  sw         $ra, 0x18($sp)
/* 42B2C 80041F2C AFB10014 */  sw         $s1, 0x14($sp)
/* 42B30 80041F30 AFB00010 */  sw         $s0, 0x10($sp)
/* 42B34 80041F34 00808821 */  addu       $s1, $a0, $zero
/* 42B38 80041F38 3C048004 */  lui        $a0, %hi(func_80041C64)
/* 42B3C 80041F3C 24841C64 */  addiu      $a0, $a0, %lo(func_80041C64)
/* 42B40 80041F40 00002821 */  addu       $a1, $zero, $zero
/* 42B44 80041F44 00003021 */  addu       $a2, $zero, $zero
/* 42B48 80041F48 0C01770A */  jal        func_8005DC28
/* 42B4C 80041F4C 24070040 */   addiu     $a3, $zero, 0x40
/* 42B50 80041F50 00408021 */  addu       $s0, $v0, $zero
/* 42B54 80041F54 8E040018 */  lw         $a0, 0x18($s0)
/* 42B58 80041F58 0C016628 */  jal        func_800598A0
/* 42B5C 80041F5C 24050010 */   addiu     $a1, $zero, 0x10
/* 42B60 80041F60 AE02008C */  sw         $v0, 0x8c($s0)
/* 42B64 80041F64 AC510000 */  sw         $s1, ($v0)
/* 42B68 80041F68 AC400004 */  sw         $zero, 4($v0)
/* 42B6C 80041F6C 02001021 */  addu       $v0, $s0, $zero
/* 42B70 80041F70 8FBF0018 */  lw         $ra, 0x18($sp)
/* 42B74 80041F74 8FB10014 */  lw         $s1, 0x14($sp)
/* 42B78 80041F78 8FB00010 */  lw         $s0, 0x10($sp)
/* 42B7C 80041F7C 03E00008 */  jr         $ra
/* 42B80 80041F80 27BD0020 */   addiu     $sp, $sp, 0x20
