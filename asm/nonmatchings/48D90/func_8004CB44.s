	.set noat
	.set noreorder

glabel func_8004CB44
/* 4D744 8004CB44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4D748 8004CB48 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4D74C 8004CB4C 0C0130EE */  jal        func_8004C3B8
/* 4D750 8004CB50 24040006 */   addiu     $a0, $zero, 6
/* 4D754 8004CB54 00021400 */  sll        $v0, $v0, 0x10
/* 4D758 8004CB58 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4D75C 8004CB5C 00021403 */  sra        $v0, $v0, 0x10
/* 4D760 8004CB60 03E00008 */  jr         $ra
/* 4D764 8004CB64 27BD0018 */   addiu     $sp, $sp, 0x18
/* 4D768 8004CB68 00000000 */  nop
/* 4D76C 8004CB6C 00000000 */  nop
