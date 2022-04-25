	.set noat
	.set noreorder

glabel func_80050E10
/* 51A10 80050E10 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 51A14 80050E14 AFBF001C */  sw         $ra, 0x1c($sp)
/* 51A18 80050E18 AFB20018 */  sw         $s2, 0x18($sp)
/* 51A1C 80050E1C AFB10014 */  sw         $s1, 0x14($sp)
/* 51A20 80050E20 AFB00010 */  sw         $s0, 0x10($sp)
/* 51A24 80050E24 00A08821 */  addu       $s1, $a1, $zero
/* 51A28 80050E28 00809021 */  addu       $s2, $a0, $zero
/* 51A2C 80050E2C 3C048005 */  lui        $a0, %hi(func_80050D68)
/* 51A30 80050E30 24840D68 */  addiu      $a0, $a0, %lo(func_80050D68)
/* 51A34 80050E34 24051005 */  addiu      $a1, $zero, 0x1005
/* 51A38 80050E38 00003021 */  addu       $a2, $zero, $zero
/* 51A3C 80050E3C 0C01770A */  jal        func_8005DC28
/* 51A40 80050E40 24070040 */   addiu     $a3, $zero, 0x40
/* 51A44 80050E44 00408021 */  addu       $s0, $v0, $zero
/* 51A48 80050E48 8E040018 */  lw         $a0, 0x18($s0)
/* 51A4C 80050E4C 0C016628 */  jal        func_800598A0
/* 51A50 80050E50 24050008 */   addiu     $a1, $zero, 8
/* 51A54 80050E54 AE02008C */  sw         $v0, 0x8c($s0)
/* 51A58 80050E58 AC510000 */  sw         $s1, ($v0)
/* 51A5C 80050E5C A4520004 */  sh         $s2, 4($v0)
/* 51A60 80050E60 02001021 */  addu       $v0, $s0, $zero
/* 51A64 80050E64 8FBF001C */  lw         $ra, 0x1c($sp)
/* 51A68 80050E68 8FB20018 */  lw         $s2, 0x18($sp)
/* 51A6C 80050E6C 8FB10014 */  lw         $s1, 0x14($sp)
/* 51A70 80050E70 8FB00010 */  lw         $s0, 0x10($sp)
/* 51A74 80050E74 03E00008 */  jr         $ra
/* 51A78 80050E78 27BD0020 */   addiu     $sp, $sp, 0x20
