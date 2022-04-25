	.set noat
	.set noreorder

glabel func_8007962C
/* 7A22C 8007962C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A230 80079630 AFBF0010 */  sw         $ra, 0x10($sp)
/* 7A234 80079634 3C05800D */  lui        $a1, %hi(D_800CBAD0)
/* 7A238 80079638 24A5BAD0 */  addiu      $a1, $a1, %lo(D_800CBAD0)
/* 7A23C 8007963C 0C01E44A */  jal        func_80079128
/* 7A240 80079640 2406041D */   addiu     $a2, $zero, 0x41d
/* 7A244 80079644 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7A248 80079648 03E00008 */  jr         $ra
/* 7A24C 8007964C 27BD0018 */   addiu     $sp, $sp, 0x18
