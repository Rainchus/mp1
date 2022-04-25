	.set noat
	.set noreorder

glabel func_80079608
/* 7A208 80079608 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A20C 8007960C AFBF0010 */  sw         $ra, 0x10($sp)
/* 7A210 80079610 3C05800D */  lui        $a1, %hi(D_800CBAC8)
/* 7A214 80079614 24A5BAC8 */  addiu      $a1, $a1, %lo(D_800CBAC8)
/* 7A218 80079618 0C01E44A */  jal        func_80079128
/* 7A21C 8007961C 2406FFFF */   addiu     $a2, $zero, -1
/* 7A220 80079620 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7A224 80079624 03E00008 */  jr         $ra
/* 7A228 80079628 27BD0018 */   addiu     $sp, $sp, 0x18
