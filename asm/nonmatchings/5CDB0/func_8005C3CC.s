	.set noat
	.set noreorder

glabel func_8005C3CC
/* 5CFCC 8005C3CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5CFD0 8005C3D0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5CFD4 8005C3D4 0C016CE2 */  jal        func_8005B388
/* 5CFD8 8005C3D8 00000000 */   nop
/* 5CFDC 8005C3DC 2402FFFF */  addiu      $v0, $zero, -1
/* 5CFE0 8005C3E0 3C01800F */  lui        $at, %hi(D_800F329A)
/* 5CFE4 8005C3E4 A422329A */  sh         $v0, %lo(D_800F329A)($at)
/* 5CFE8 8005C3E8 3C01800F */  lui        $at, %hi(D_800F3750)
/* 5CFEC 8005C3EC A4223750 */  sh         $v0, %lo(D_800F3750)($at)
/* 5CFF0 8005C3F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5CFF4 8005C3F4 03E00008 */  jr         $ra
/* 5CFF8 8005C3F8 27BD0018 */   addiu     $sp, $sp, 0x18
