	.set noat
	.set noreorder

glabel func_80072E1C
/* 73A1C 80072E1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 73A20 80072E20 AFBF0010 */  sw         $ra, 0x10($sp)
/* 73A24 80072E24 8C830000 */  lw         $v1, ($a0)
/* 73A28 80072E28 24620008 */  addiu      $v0, $v1, 8
/* 73A2C 80072E2C AC820000 */  sw         $v0, ($a0)
/* 73A30 80072E30 3C02DE00 */  lui        $v0, 0xde00
/* 73A34 80072E34 AC620000 */  sw         $v0, ($v1)
/* 73A38 80072E38 3C02800C */  lui        $v0, %hi(D_800C6108)
/* 73A3C 80072E3C 24426108 */  addiu      $v0, $v0, %lo(D_800C6108)
/* 73A40 80072E40 AC620004 */  sw         $v0, 4($v1)
/* 73A44 80072E44 3C05800F */  lui        $a1, %hi(D_800F545C)
/* 73A48 80072E48 0C01CB97 */  jal        func_80072E5C
/* 73A4C 80072E4C 8CA5545C */   lw        $a1, %lo(D_800F545C)($a1)
/* 73A50 80072E50 8FBF0010 */  lw         $ra, 0x10($sp)
/* 73A54 80072E54 03E00008 */  jr         $ra
/* 73A58 80072E58 27BD0018 */   addiu     $sp, $sp, 0x18
