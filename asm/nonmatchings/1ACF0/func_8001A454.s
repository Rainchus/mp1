	.set noat
	.set noreorder

glabel func_8001A454
/* 1B054 8001A454 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B058 8001A458 AFBF0010 */  sw         $ra, 0x10($sp)
.L8001A45C:
/* 1B05C 8001A45C 0C018D6D */  jal        func_800635B4
/* 1B060 8001A460 00000000 */   nop
/* 1B064 8001A464 0C0062CB */  jal        func_80018B2C
/* 1B068 8001A468 00000000 */   nop
/* 1B06C 8001A46C 0C007968 */  jal        func_8001E5A0
/* 1B070 8001A470 24040002 */   addiu     $a0, $zero, 2
/* 1B074 8001A474 3C04800F */  lui        $a0, %hi(D_800ED538)
/* 1B078 8001A478 2484D538 */  addiu      $a0, $a0, %lo(D_800ED538)
/* 1B07C 8001A47C 0C0091FF */  jal        func_800247FC
/* 1B080 8001A480 24050002 */   addiu     $a1, $zero, 2
/* 1B084 8001A484 08006917 */  j          .L8001A45C
/* 1B088 8001A488 00000000 */   nop
/* 1B08C 8001A48C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1B090 8001A490 03E00008 */  jr         $ra
/* 1B094 8001A494 27BD0018 */   addiu     $sp, $sp, 0x18
