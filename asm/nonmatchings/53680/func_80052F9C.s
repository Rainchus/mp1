	.set noat
	.set noreorder

glabel func_80052F9C
/* 53B9C 80052F9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 53BA0 80052FA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 53BA4 80052FA4 AFB00010 */  sw         $s0, 0x10($sp)
/* 53BA8 80052FA8 00048400 */  sll        $s0, $a0, 0x10
/* 53BAC 80052FAC 00108403 */  sra        $s0, $s0, 0x10
/* 53BB0 80052FB0 0C014BDB */  jal        func_80052F6C
/* 53BB4 80052FB4 02002021 */   addu      $a0, $s0, $zero
/* 53BB8 80052FB8 02002021 */  addu       $a0, $s0, $zero
/* 53BBC 80052FBC 0C014BB3 */  jal        func_80052ECC
/* 53BC0 80052FC0 304500FF */   andi      $a1, $v0, 0xff
/* 53BC4 80052FC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 53BC8 80052FC8 8FB00010 */  lw         $s0, 0x10($sp)
/* 53BCC 80052FCC 03E00008 */  jr         $ra
/* 53BD0 80052FD0 27BD0018 */   addiu     $sp, $sp, 0x18
