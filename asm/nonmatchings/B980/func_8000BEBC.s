	.set noat
	.set noreorder

glabel func_8000BEBC
/* CABC 8000BEBC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CAC0 8000BEC0 AFBF0010 */  sw         $ra, 0x10($sp)
/* CAC4 8000BEC4 00042400 */  sll        $a0, $a0, 0x10
/* CAC8 8000BEC8 00042403 */  sra        $a0, $a0, 0x10
/* CACC 8000BECC 00002821 */  addu       $a1, $zero, $zero
/* CAD0 8000BED0 0C002FBB */  jal        func_8000BEEC
/* CAD4 8000BED4 00003021 */   addu      $a2, $zero, $zero
/* CAD8 8000BED8 00021400 */  sll        $v0, $v0, 0x10
/* CADC 8000BEDC 8FBF0010 */  lw         $ra, 0x10($sp)
/* CAE0 8000BEE0 00021403 */  sra        $v0, $v0, 0x10
/* CAE4 8000BEE4 03E00008 */  jr         $ra
/* CAE8 8000BEE8 27BD0018 */   addiu     $sp, $sp, 0x18
