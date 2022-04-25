	.set noat
	.set noreorder

glabel func_8005AFC8
/* 5BBC8 8005AFC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5BBCC 8005AFCC AFBF0010 */  sw         $ra, 0x10($sp)
/* 5BBD0 8005AFD0 00002021 */  addu       $a0, $zero, $zero
/* 5BBD4 8005AFD4 0C006590 */  jal        func_80019640
/* 5BBD8 8005AFD8 240501F0 */   addiu     $a1, $zero, 0x1f0
/* 5BBDC 8005AFDC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5BBE0 8005AFE0 3042FFFF */  andi       $v0, $v0, 0xffff
/* 5BBE4 8005AFE4 03E00008 */  jr         $ra
/* 5BBE8 8005AFE8 27BD0018 */   addiu     $sp, $sp, 0x18
