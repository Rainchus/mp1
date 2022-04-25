	.set noat
	.set noreorder

glabel func_8004CDA0
/* 4D9A0 8004CDA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4D9A4 8004CDA4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4D9A8 8004CDA8 00042400 */  sll        $a0, $a0, 0x10
/* 4D9AC 8004CDAC 0C014AA3 */  jal        func_80052A8C
/* 4D9B0 8004CDB0 00042403 */   sra       $a0, $a0, 0x10
/* 4D9B4 8004CDB4 8C440020 */  lw         $a0, 0x20($v0)
/* 4D9B8 8004CDB8 0C013361 */  jal        func_8004CD84
/* 4D9BC 8004CDBC 24840018 */   addiu     $a0, $a0, 0x18
/* 4D9C0 8004CDC0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4D9C4 8004CDC4 03E00008 */  jr         $ra
/* 4D9C8 8004CDC8 27BD0018 */   addiu     $sp, $sp, 0x18
