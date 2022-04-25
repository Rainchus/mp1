	.set noat
	.set noreorder

glabel func_80052ECC
/* 53ACC 80052ECC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 53AD0 80052ED0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 53AD4 80052ED4 AFB00010 */  sw         $s0, 0x10($sp)
/* 53AD8 80052ED8 00A08021 */  addu       $s0, $a1, $zero
/* 53ADC 80052EDC 00042400 */  sll        $a0, $a0, 0x10
/* 53AE0 80052EE0 0C014AA3 */  jal        func_80052A8C
/* 53AE4 80052EE4 00042403 */   sra       $a0, $a0, 0x10
/* 53AE8 80052EE8 8C440020 */  lw         $a0, 0x20($v0)
/* 53AEC 80052EEC 0C00F86F */  jal        func_8003E1BC
/* 53AF0 80052EF0 320500FF */   andi      $a1, $s0, 0xff
/* 53AF4 80052EF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 53AF8 80052EF8 8FB00010 */  lw         $s0, 0x10($sp)
/* 53AFC 80052EFC 03E00008 */  jr         $ra
/* 53B00 80052F00 27BD0018 */   addiu     $sp, $sp, 0x18
