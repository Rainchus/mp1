	.set noat
	.set noreorder

glabel func_8000B2FC
/* BEFC 8000B2FC 3C03800D */  lui        $v1, %hi(D_800CDAB0)
/* BF00 8000B300 2463DAB0 */  addiu      $v1, $v1, %lo(D_800CDAB0)
/* BF04 8000B304 8C62FFFC */  lw         $v0, -4($v1)
/* BF08 8000B308 8C64FFF8 */  lw         $a0, -8($v1)
/* BF0C 8000B30C 00441023 */  subu       $v0, $v0, $a0
/* BF10 8000B310 8C630000 */  lw         $v1, ($v1)
/* BF14 8000B314 03E00008 */  jr         $ra
/* BF18 8000B318 00621023 */   subu      $v0, $v1, $v0
