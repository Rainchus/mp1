	.set noat
	.set noreorder

glabel func_800130A4
/* 13CA4 800130A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13CA8 800130A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13CAC 800130AC AFB00010 */  sw         $s0, 0x10($sp)
/* 13CB0 800130B0 00808021 */  addu       $s0, $a0, $zero
/* 13CB4 800130B4 3C04800D */  lui        $a0, %hi(D_800D0B30)
/* 13CB8 800130B8 0C0221C8 */  jal        func_80088720
/* 13CBC 800130BC 24840B30 */   addiu     $a0, $a0, %lo(D_800D0B30)
/* 13CC0 800130C0 3C04800D */  lui        $a0, %hi(D_800D0D50)
/* 13CC4 800130C4 0C02263B */  jal        func_800898EC
/* 13CC8 800130C8 24840D50 */   addiu     $a0, $a0, %lo(D_800D0D50)
/* 13CCC 800130CC 8E04007C */  lw         $a0, 0x7c($s0)
/* 13CD0 800130D0 0C004D97 */  jal        func_8001365C
/* 13CD4 800130D4 24050001 */   addiu     $a1, $zero, 1
/* 13CD8 800130D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13CDC 800130DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 13CE0 800130E0 03E00008 */  jr         $ra
/* 13CE4 800130E4 27BD0018 */   addiu     $sp, $sp, 0x18
