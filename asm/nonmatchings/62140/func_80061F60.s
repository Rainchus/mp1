	.set noat
	.set noreorder

glabel func_80061F60
/* 62B60 80061F60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 62B64 80061F64 AFBF0010 */  sw         $ra, 0x10($sp)
/* 62B68 80061F68 24040096 */  addiu      $a0, $zero, 0x96
/* 62B6C 80061F6C 3C05800F */  lui        $a1, %hi(D_800F65A0)
/* 62B70 80061F70 24A565A0 */  addiu      $a1, $a1, %lo(D_800F65A0)
/* 62B74 80061F74 3C06800F */  lui        $a2, %hi(D_800ED570)
/* 62B78 80061F78 24C6D570 */  addiu      $a2, $a2, %lo(D_800ED570)
/* 62B7C 80061F7C 0C02472C */  jal        func_80091CB0
/* 62B80 80061F80 24070014 */   addiu     $a3, $zero, 0x14
/* 62B84 80061F84 0C023E54 */  jal        func_8008F950
/* 62B88 80061F88 00000000 */   nop
/* 62B8C 80061F8C 3C01800F */  lui        $at, %hi(D_800EE31C)
/* 62B90 80061F90 AC22E31C */  sw         $v0, %lo(D_800EE31C)($at)
/* 62B94 80061F94 8FBF0010 */  lw         $ra, 0x10($sp)
/* 62B98 80061F98 03E00008 */  jr         $ra
/* 62B9C 80061F9C 27BD0018 */   addiu     $sp, $sp, 0x18
