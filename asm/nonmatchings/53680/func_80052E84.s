	.set noat
	.set noreorder

glabel func_80052E84
/* 53A84 80052E84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 53A88 80052E88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 53A8C 80052E8C AFB00010 */  sw         $s0, 0x10($sp)
/* 53A90 80052E90 00048400 */  sll        $s0, $a0, 0x10
/* 53A94 80052E94 00108403 */  sra        $s0, $s0, 0x10
/* 53A98 80052E98 0C014AA3 */  jal        func_80052A8C
/* 53A9C 80052E9C 02002021 */   addu      $a0, $s0, $zero
/* 53AA0 80052EA0 90420004 */  lbu        $v0, 4($v0)
/* 53AA4 80052EA4 00021080 */  sll        $v0, $v0, 2
/* 53AA8 80052EA8 3C05800C */  lui        $a1, %hi(D_800C5490)
/* 53AAC 80052EAC 00A22821 */  addu       $a1, $a1, $v0
/* 53AB0 80052EB0 8CA55490 */  lw         $a1, %lo(D_800C5490)($a1)
/* 53AB4 80052EB4 0C014B72 */  jal        func_80052DC8
/* 53AB8 80052EB8 02002021 */   addu      $a0, $s0, $zero
/* 53ABC 80052EBC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 53AC0 80052EC0 8FB00010 */  lw         $s0, 0x10($sp)
/* 53AC4 80052EC4 03E00008 */  jr         $ra
/* 53AC8 80052EC8 27BD0018 */   addiu     $sp, $sp, 0x18
