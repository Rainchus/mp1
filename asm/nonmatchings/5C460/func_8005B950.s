	.set noat
	.set noreorder

glabel func_8005B950
/* 5C550 8005B950 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5C554 8005B954 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5C558 8005B958 3C02800E */  lui        $v0, %hi(D_800D8920)
/* 5C55C 8005B95C 84428920 */  lh         $v0, %lo(D_800D8920)($v0)
/* 5C560 8005B960 04400005 */  bltz       $v0, .L8005B978
/* 5C564 8005B964 24020001 */   addiu     $v0, $zero, 1
/* 5C568 8005B968 3C04800E */  lui        $a0, %hi(D_800D8920)
/* 5C56C 8005B96C 84848920 */  lh         $a0, %lo(D_800D8920)($a0)
/* 5C570 8005B970 0C017392 */  jal        func_8005CE48
/* 5C574 8005B974 24840007 */   addiu     $a0, $a0, 7
.L8005B978:
/* 5C578 8005B978 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5C57C 8005B97C 03E00008 */  jr         $ra
/* 5C580 8005B980 27BD0018 */   addiu     $sp, $sp, 0x18
