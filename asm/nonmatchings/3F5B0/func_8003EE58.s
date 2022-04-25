	.set noat
	.set noreorder

glabel func_8003EE58
/* 3FA58 8003EE58 84820008 */  lh         $v0, 8($a0)
/* 3FA5C 8003EE5C 00021027 */  nor        $v0, $zero, $v0
/* 3FA60 8003EE60 03E00008 */  jr         $ra
/* 3FA64 8003EE64 2C420001 */   sltiu     $v0, $v0, 1
