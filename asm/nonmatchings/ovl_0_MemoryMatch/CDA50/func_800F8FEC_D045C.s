	.set noat
	.set noreorder

glabel func_800F8FEC_D045C
/* D045C 800F8FEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D0460 800F8FF0 AFBF0010 */  sw         $ra, 0x10($sp)
/* D0464 800F8FF4 24040008 */  addiu      $a0, $zero, 8
/* D0468 800F8FF8 2405002D */  addiu      $a1, $zero, 0x2d
/* D046C 800F8FFC 240600A0 */  addiu      $a2, $zero, 0xa0
/* D0470 800F9000 0C01D733 */  jal        func_80075CCC
/* D0474 800F9004 24070020 */   addiu     $a3, $zero, 0x20
/* D0478 800F9008 3C018010 */  lui        $at, %hi(D_800FDE2C)
/* D047C 800F900C A420DE2C */  sh         $zero, %lo(D_800FDE2C)($at)
/* D0480 800F9010 8FBF0010 */  lw         $ra, 0x10($sp)
/* D0484 800F9014 03E00008 */  jr         $ra
/* D0488 800F9018 27BD0018 */   addiu     $sp, $sp, 0x18
