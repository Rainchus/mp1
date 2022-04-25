	.set noat
	.set noreorder

glabel func_80061264
/* 61E64 80061264 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 61E68 80061268 AFBF0010 */  sw         $ra, 0x10($sp)
/* 61E6C 8006126C 00042C00 */  sll        $a1, $a0, 0x10
/* 61E70 80061270 3C04800E */  lui        $a0, %hi(D_800D8AA8)
/* 61E74 80061274 24848AA8 */  addiu      $a0, $a0, %lo(D_800D8AA8)
/* 61E78 80061278 0C018469 */  jal        func_800611A4
/* 61E7C 8006127C 00052C03 */   sra       $a1, $a1, 0x10
/* 61E80 80061280 8FBF0010 */  lw         $ra, 0x10($sp)
/* 61E84 80061284 03E00008 */  jr         $ra
/* 61E88 80061288 27BD0018 */   addiu     $sp, $sp, 0x18
