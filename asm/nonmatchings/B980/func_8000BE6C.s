	.set noat
	.set noreorder

glabel func_8000BE6C
/* CA6C 8000BE6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CA70 8000BE70 AFBF0010 */  sw         $ra, 0x10($sp)
/* CA74 8000BE74 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* CA78 8000BE78 0C0229E8 */  jal        func_8008A7A0
/* CA7C 8000BE7C 8C84DAD4 */   lw        $a0, %lo(D_800CDAD4)($a0)
/* CA80 8000BE80 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* CA84 8000BE84 0C022940 */  jal        func_8008A500
/* CA88 8000BE88 8C84DAD4 */   lw        $a0, %lo(D_800CDAD4)($a0)
/* CA8C 8000BE8C 8FBF0010 */  lw         $ra, 0x10($sp)
/* CA90 8000BE90 03E00008 */  jr         $ra
/* CA94 8000BE94 27BD0018 */   addiu     $sp, $sp, 0x18
