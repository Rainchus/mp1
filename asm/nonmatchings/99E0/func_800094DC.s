	.set noat
	.set noreorder

glabel func_800094DC
/* A0DC 800094DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A0E0 800094E0 AFBF0018 */  sw         $ra, 0x18($sp)
/* A0E4 800094E4 27A40010 */  addiu      $a0, $sp, 0x10
/* A0E8 800094E8 00002821 */  addu       $a1, $zero, $zero
/* A0EC 800094EC 0C026DDC */  jal        func_8009B770
/* A0F0 800094F0 24060001 */   addiu     $a2, $zero, 1
/* A0F4 800094F4 8FBF0018 */  lw         $ra, 0x18($sp)
/* A0F8 800094F8 03E00008 */  jr         $ra
/* A0FC 800094FC 27BD0020 */   addiu     $sp, $sp, 0x20
