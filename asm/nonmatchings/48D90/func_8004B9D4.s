	.set noat
	.set noreorder

glabel func_8004B9D4
/* 4C5D4 8004B9D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4C5D8 8004B9D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4C5DC 8004B9DC AFB00010 */  sw         $s0, 0x10($sp)
/* 4C5E0 8004B9E0 0C012E4B */  jal        func_8004B92C
/* 4C5E4 8004B9E4 00808021 */   addu      $s0, $a0, $zero
/* 4C5E8 8004B9E8 00108400 */  sll        $s0, $s0, 0x10
/* 4C5EC 8004B9EC 0C012E18 */  jal        func_8004B860
/* 4C5F0 8004B9F0 00102403 */   sra       $a0, $s0, 0x10
/* 4C5F4 8004B9F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4C5F8 8004B9F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 4C5FC 8004B9FC 03E00008 */  jr         $ra
/* 4C600 8004BA00 27BD0018 */   addiu     $sp, $sp, 0x18
