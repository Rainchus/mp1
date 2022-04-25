	.set noat
	.set noreorder

glabel func_8003E664
/* 3F264 8003E664 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3F268 8003E668 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F26C 8003E66C AFB00010 */  sw         $s0, 0x10($sp)
/* 3F270 8003E670 0C00F984 */  jal        func_8003E610
/* 3F274 8003E674 00808021 */   addu      $s0, $a0, $zero
/* 3F278 8003E678 9602000A */  lhu        $v0, 0xa($s0)
/* 3F27C 8003E67C 3042FFF7 */  andi       $v0, $v0, 0xfff7
/* 3F280 8003E680 A602000A */  sh         $v0, 0xa($s0)
/* 3F284 8003E684 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F288 8003E688 8FB00010 */  lw         $s0, 0x10($sp)
/* 3F28C 8003E68C 03E00008 */  jr         $ra
/* 3F290 8003E690 27BD0018 */   addiu     $sp, $sp, 0x18
