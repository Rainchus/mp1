	.set noat
	.set noreorder

glabel func_8001A428
/* 1B028 8001A428 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B02C 8001A42C AFBF0010 */  sw         $ra, 0x10($sp)
.L8001A430:
/* 1B030 8001A430 0C018D6D */  jal        func_800635B4
/* 1B034 8001A434 00000000 */   nop
/* 1B038 8001A438 0C0178FF */  jal        func_8005E3FC
/* 1B03C 8001A43C 00000000 */   nop
/* 1B040 8001A440 0800690C */  j          .L8001A430
/* 1B044 8001A444 00000000 */   nop
/* 1B048 8001A448 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1B04C 8001A44C 03E00008 */  jr         $ra
/* 1B050 8001A450 27BD0018 */   addiu     $sp, $sp, 0x18
