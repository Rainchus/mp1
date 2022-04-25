	.set noat
	.set noreorder

glabel func_80079104
/* 79D04 80079104 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 79D08 80079108 AFBF0010 */  sw         $ra, 0x10($sp)
/* 79D0C 8007910C 3C05800D */  lui        $a1, %hi(D_800CBAB4)
/* 79D10 80079110 24A5BAB4 */  addiu      $a1, $a1, %lo(D_800CBAB4)
/* 79D14 80079114 0C01E44A */  jal        func_80079128
/* 79D18 80079118 2406FFFF */   addiu     $a2, $zero, -1
/* 79D1C 8007911C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 79D20 80079120 03E00008 */  jr         $ra
/* 79D24 80079124 27BD0018 */   addiu     $sp, $sp, 0x18
