	.set noat
	.set noreorder

glabel func_80010C4C
/* 1184C 80010C4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11850 80010C50 AFBF0010 */  sw         $ra, 0x10($sp)
/* 11854 80010C54 00042400 */  sll        $a0, $a0, 0x10
/* 11858 80010C58 00042403 */  sra        $a0, $a0, 0x10
/* 1185C 80010C5C 0C00431E */  jal        func_80010C78
/* 11860 80010C60 00002821 */   addu      $a1, $zero, $zero
/* 11864 80010C64 00021400 */  sll        $v0, $v0, 0x10
/* 11868 80010C68 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1186C 80010C6C 00021403 */  sra        $v0, $v0, 0x10
/* 11870 80010C70 03E00008 */  jr         $ra
/* 11874 80010C74 27BD0018 */   addiu     $sp, $sp, 0x18
