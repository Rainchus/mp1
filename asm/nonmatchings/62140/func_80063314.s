	.set noat
	.set noreorder

glabel func_80063314
/* 63F14 80063314 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 63F18 80063318 AFBF0018 */  sw         $ra, 0x18($sp)
/* 63F1C 8006331C AFB10014 */  sw         $s1, 0x14($sp)
/* 63F20 80063320 AFB00010 */  sw         $s0, 0x10($sp)
/* 63F24 80063324 8FB10030 */  lw         $s1, 0x30($sp)
/* 63F28 80063328 0C018C51 */  jal        func_80063144
/* 63F2C 8006332C 30A5FFFF */   andi      $a1, $a1, 0xffff
/* 63F30 80063330 00408021 */  addu       $s0, $v0, $zero
/* 63F34 80063334 02202021 */  addu       $a0, $s1, $zero
/* 63F38 80063338 0C018C9C */  jal        func_80063270
/* 63F3C 8006333C 02002821 */   addu      $a1, $s0, $zero
/* 63F40 80063340 02001021 */  addu       $v0, $s0, $zero
/* 63F44 80063344 8FBF0018 */  lw         $ra, 0x18($sp)
/* 63F48 80063348 8FB10014 */  lw         $s1, 0x14($sp)
/* 63F4C 8006334C 8FB00010 */  lw         $s0, 0x10($sp)
/* 63F50 80063350 03E00008 */  jr         $ra
/* 63F54 80063354 27BD0020 */   addiu     $sp, $sp, 0x20
