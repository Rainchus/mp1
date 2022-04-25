	.set noat
	.set noreorder

glabel func_80079860
/* 7A460 80079860 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A464 80079864 AFBF0010 */  sw         $ra, 0x10($sp)
/* 7A468 80079868 3C05000B */  lui        $a1, 0xb
/* 7A46C 8007986C 34A5005C */  ori        $a1, $a1, 0x5c
/* 7A470 80079870 0C01DCFB */  jal        func_800773EC
/* 7A474 80079874 24060420 */   addiu     $a2, $zero, 0x420
/* 7A478 80079878 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7A47C 8007987C 03E00008 */  jr         $ra
/* 7A480 80079880 27BD0018 */   addiu     $sp, $sp, 0x18
