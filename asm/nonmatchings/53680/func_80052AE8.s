	.set noat
	.set noreorder

glabel func_80052AE8
/* 536E8 80052AE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 536EC 80052AEC AFBF0014 */  sw         $ra, 0x14($sp)
/* 536F0 80052AF0 AFB00010 */  sw         $s0, 0x10($sp)
/* 536F4 80052AF4 0C014AA0 */  jal        func_80052A80
/* 536F8 80052AF8 00808021 */   addu      $s0, $a0, $zero
/* 536FC 80052AFC 92030018 */  lbu        $v1, 0x18($s0)
/* 53700 80052B00 00021400 */  sll        $v0, $v0, 0x10
/* 53704 80052B04 00021403 */  sra        $v0, $v0, 0x10
/* 53708 80052B08 00621826 */  xor        $v1, $v1, $v0
/* 5370C 80052B0C 2C620001 */  sltiu      $v0, $v1, 1
/* 53710 80052B10 8FBF0014 */  lw         $ra, 0x14($sp)
/* 53714 80052B14 8FB00010 */  lw         $s0, 0x10($sp)
/* 53718 80052B18 03E00008 */  jr         $ra
/* 5371C 80052B1C 27BD0018 */   addiu     $sp, $sp, 0x18
