	.set noat
	.set noreorder

glabel func_8003C858
/* 3D458 8003C858 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3D45C 8003C85C AFBF0018 */  sw         $ra, 0x18($sp)
/* 3D460 8003C860 AFB10014 */  sw         $s1, 0x14($sp)
/* 3D464 8003C864 AFB00010 */  sw         $s0, 0x10($sp)
/* 3D468 8003C868 00008021 */  addu       $s0, $zero, $zero
/* 3D46C 8003C86C 3C11800D */  lui        $s1, %hi(D_800D61A8)
/* 3D470 8003C870 263161A8 */  addiu      $s1, $s1, %lo(D_800D61A8)
/* 3D474 8003C874 00101080 */  sll        $v0, $s0, 2
.L8003C878:
/* 3D478 8003C878 00511021 */  addu       $v0, $v0, $s1
/* 3D47C 8003C87C 8C440000 */  lw         $a0, ($v0)
/* 3D480 8003C880 0C014D15 */  jal        func_80053454
/* 3D484 8003C884 26100001 */   addiu     $s0, $s0, 1
/* 3D488 8003C888 2A020004 */  slti       $v0, $s0, 4
/* 3D48C 8003C88C 1440FFFA */  bnez       $v0, .L8003C878
/* 3D490 8003C890 00101080 */   sll       $v0, $s0, 2
/* 3D494 8003C894 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3D498 8003C898 8FB10014 */  lw         $s1, 0x14($sp)
/* 3D49C 8003C89C 8FB00010 */  lw         $s0, 0x10($sp)
/* 3D4A0 8003C8A0 03E00008 */  jr         $ra
/* 3D4A4 8003C8A4 27BD0020 */   addiu     $sp, $sp, 0x20
