	.set noat
	.set noreorder

glabel func_80052ACC
/* 536CC 80052ACC 00041400 */  sll        $v0, $a0, 0x10
/* 536D0 80052AD0 00021403 */  sra        $v0, $v0, 0x10
/* 536D4 80052AD4 3C03800F */  lui        $v1, %hi(D_800ED5DC)
/* 536D8 80052AD8 8463D5DC */  lh         $v1, %lo(D_800ED5DC)($v1)
/* 536DC 80052ADC 00431026 */  xor        $v0, $v0, $v1
/* 536E0 80052AE0 03E00008 */  jr         $ra
/* 536E4 80052AE4 2C420001 */   sltiu     $v0, $v0, 1
