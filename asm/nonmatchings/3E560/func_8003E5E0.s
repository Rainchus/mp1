	.set noat
	.set noreorder

glabel func_8003E5E0
/* 3F1E0 8003E5E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3F1E4 8003E5E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F1E8 8003E5E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 3F1EC 8003E5EC 0C00F963 */  jal        func_8003E58C
/* 3F1F0 8003E5F0 00808021 */   addu      $s0, $a0, $zero
/* 3F1F4 8003E5F4 9602000A */  lhu        $v0, 0xa($s0)
/* 3F1F8 8003E5F8 34420008 */  ori        $v0, $v0, 8
/* 3F1FC 8003E5FC A602000A */  sh         $v0, 0xa($s0)
/* 3F200 8003E600 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F204 8003E604 8FB00010 */  lw         $s0, 0x10($sp)
/* 3F208 8003E608 03E00008 */  jr         $ra
/* 3F20C 8003E60C 27BD0018 */   addiu     $sp, $sp, 0x18
