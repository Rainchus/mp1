	.set noat
	.set noreorder

glabel func_80063F40
/* 64B40 80063F40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 64B44 80063F44 AFBF0018 */  sw         $ra, 0x18($sp)
/* 64B48 80063F48 3C01800E */  lui        $at, %hi(D_800E40D0)
/* 64B4C 80063F4C AC2040D0 */  sw         $zero, %lo(D_800E40D0)($at)
/* 64B50 80063F50 3C01800E */  lui        $at, %hi(D_800E40D4)
/* 64B54 80063F54 AC2040D4 */  sw         $zero, %lo(D_800E40D4)($at)
/* 64B58 80063F58 3C04800F */  lui        $a0, %hi(D_800EE960)
/* 64B5C 80063F5C 2484E960 */  addiu      $a0, $a0, %lo(D_800EE960)
/* 64B60 80063F60 3C05800E */  lui        $a1, %hi(D_800E3620)
/* 64B64 80063F64 24A53620 */  addiu      $a1, $a1, %lo(D_800E3620)
/* 64B68 80063F68 0C022188 */  jal        func_80088620
/* 64B6C 80063F6C 24060020 */   addiu     $a2, $zero, 0x20
/* 64B70 80063F70 24040005 */  addiu      $a0, $zero, 5
/* 64B74 80063F74 3C05800F */  lui        $a1, %hi(D_800EE960)
/* 64B78 80063F78 24A5E960 */  addiu      $a1, $a1, %lo(D_800EE960)
/* 64B7C 80063F7C 0C024D6C */  jal        func_800935B0
/* 64B80 80063F80 24060020 */   addiu     $a2, $zero, 0x20
/* 64B84 80063F84 3C04800F */  lui        $a0, %hi(D_800F3370)
/* 64B88 80063F88 24843370 */  addiu      $a0, $a0, %lo(D_800F3370)
/* 64B8C 80063F8C 3C05800E */  lui        $a1, %hi(D_800E36A0)
/* 64B90 80063F90 24A536A0 */  addiu      $a1, $a1, %lo(D_800E36A0)
/* 64B94 80063F94 0C022188 */  jal        func_80088620
/* 64B98 80063F98 24060020 */   addiu     $a2, $zero, 0x20
/* 64B9C 80063F9C 3C02800E */  lui        $v0, %hi(D_800E40D0)
/* 64BA0 80063FA0 244240D0 */  addiu      $v0, $v0, %lo(D_800E40D0)
/* 64BA4 80063FA4 AFA20010 */  sw         $v0, 0x10($sp)
/* 64BA8 80063FA8 2402005A */  addiu      $v0, $zero, 0x5a
/* 64BAC 80063FAC AFA20014 */  sw         $v0, 0x14($sp)
/* 64BB0 80063FB0 3C04800E */  lui        $a0, %hi(D_800E3720)
/* 64BB4 80063FB4 24843720 */  addiu      $a0, $a0, %lo(D_800E3720)
/* 64BB8 80063FB8 24050014 */  addiu      $a1, $zero, 0x14
/* 64BBC 80063FBC 3C068006 */  lui        $a2, %hi(func_80064234)
/* 64BC0 80063FC0 24C64234 */  addiu      $a2, $a2, %lo(func_80064234)
/* 64BC4 80063FC4 0C022194 */  jal        func_80088650
/* 64BC8 80063FC8 00003821 */   addu      $a3, $zero, $zero
/* 64BCC 80063FCC 3C04800E */  lui        $a0, %hi(D_800E3720)
/* 64BD0 80063FD0 0C022344 */  jal        func_80088D10
/* 64BD4 80063FD4 24843720 */   addiu     $a0, $a0, %lo(D_800E3720)
/* 64BD8 80063FD8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 64BDC 80063FDC 03E00008 */  jr         $ra
/* 64BE0 80063FE0 27BD0020 */   addiu     $sp, $sp, 0x20
