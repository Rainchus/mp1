	.set noat
	.set noreorder

glabel func_800633D4
/* 63FD4 800633D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 63FD8 800633D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 63FDC 800633DC AFB00010 */  sw         $s0, 0x10($sp)
/* 63FE0 800633E0 00808021 */  addu       $s0, $a0, $zero
/* 63FE4 800633E4 9603001C */  lhu        $v1, 0x1c($s0)
/* 63FE8 800633E8 24020003 */  addiu      $v0, $zero, 3
/* 63FEC 800633EC 10620006 */  beq        $v1, $v0, .L80063408
/* 63FF0 800633F0 2402FFFF */   addiu     $v0, $zero, -1
/* 63FF4 800633F4 0C018D74 */  jal        func_800635D0
/* 63FF8 800633F8 02002021 */   addu      $a0, $s0, $zero
/* 63FFC 800633FC 24020003 */  addiu      $v0, $zero, 3
/* 64000 80063400 A602001C */  sh         $v0, 0x1c($s0)
/* 64004 80063404 00001021 */  addu       $v0, $zero, $zero
.L80063408:
/* 64008 80063408 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6400C 8006340C 8FB00010 */  lw         $s0, 0x10($sp)
/* 64010 80063410 03E00008 */  jr         $ra
/* 64014 80063414 27BD0018 */   addiu     $sp, $sp, 0x18
