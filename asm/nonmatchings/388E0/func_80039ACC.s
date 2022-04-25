	.set noat
	.set noreorder

glabel func_80039ACC
/* 3A6CC 80039ACC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3A6D0 80039AD0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3A6D4 80039AD4 00042400 */  sll        $a0, $a0, 0x10
/* 3A6D8 80039AD8 0C00E67C */  jal        func_800399F0
/* 3A6DC 80039ADC 00042403 */   sra       $a0, $a0, 0x10
/* 3A6E0 80039AE0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3A6E4 80039AE4 03E00008 */  jr         $ra
/* 3A6E8 80039AE8 27BD0018 */   addiu     $sp, $sp, 0x18
