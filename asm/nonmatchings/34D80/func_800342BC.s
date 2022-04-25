	.set noat
	.set noreorder

glabel func_800342BC
/* 34EBC 800342BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 34EC0 800342C0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 34EC4 800342C4 0C00D07A */  jal        func_800341E8
/* 34EC8 800342C8 00002821 */   addu      $a1, $zero, $zero
/* 34ECC 800342CC 00021400 */  sll        $v0, $v0, 0x10
/* 34ED0 800342D0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 34ED4 800342D4 00021403 */  sra        $v0, $v0, 0x10
/* 34ED8 800342D8 03E00008 */  jr         $ra
/* 34EDC 800342DC 27BD0018 */   addiu     $sp, $sp, 0x18
