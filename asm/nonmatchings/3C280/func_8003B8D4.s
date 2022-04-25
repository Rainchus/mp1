	.set noat
	.set noreorder

glabel func_8003B8D4
/* 3C4D4 8003B8D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C4D8 8003B8D8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3C4DC 8003B8DC 0C00EDDD */  jal        func_8003B774
/* 3C4E0 8003B8E0 2404006C */   addiu     $a0, $zero, 0x6c
/* 3C4E4 8003B8E4 A4400000 */  sh         $zero, ($v0)
/* 3C4E8 8003B8E8 A4400002 */  sh         $zero, 2($v0)
/* 3C4EC 8003B8EC AC400004 */  sw         $zero, 4($v0)
/* 3C4F0 8003B8F0 AC400008 */  sw         $zero, 8($v0)
/* 3C4F4 8003B8F4 A440000C */  sh         $zero, 0xc($v0)
/* 3C4F8 8003B8F8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3C4FC 8003B8FC AC400068 */  sw         $zero, 0x68($v0)
/* 3C500 8003B900 03E00008 */  jr         $ra
/* 3C504 8003B904 27BD0018 */   addiu     $sp, $sp, 0x18
