	.set noat
	.set noreorder

glabel func_80020CC4
/* 218C4 80020CC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 218C8 80020CC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 218CC 80020CCC AFB00010 */  sw         $s0, 0x10($sp)
/* 218D0 80020CD0 00808021 */  addu       $s0, $a0, $zero
/* 218D4 80020CD4 0C00EDB2 */  jal        func_8003B6C8
/* 218D8 80020CD8 8E040008 */   lw        $a0, 8($s0)
/* 218DC 80020CDC 0C00EDB2 */  jal        func_8003B6C8
/* 218E0 80020CE0 8E040004 */   lw        $a0, 4($s0)
/* 218E4 80020CE4 0C00EDB2 */  jal        func_8003B6C8
/* 218E8 80020CE8 02002021 */   addu      $a0, $s0, $zero
/* 218EC 80020CEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 218F0 80020CF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 218F4 80020CF4 03E00008 */  jr         $ra
/* 218F8 80020CF8 27BD0018 */   addiu     $sp, $sp, 0x18
