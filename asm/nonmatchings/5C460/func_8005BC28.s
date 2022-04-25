	.set noat
	.set noreorder

glabel func_8005BC28
/* 5C828 8005BC28 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5C82C 8005BC2C AFBF0024 */  sw         $ra, 0x24($sp)
/* 5C830 8005BC30 AFB00020 */  sw         $s0, 0x20($sp)
/* 5C834 8005BC34 0C014AA3 */  jal        func_80052A8C
/* 5C838 8005BC38 2404FFFF */   addiu     $a0, $zero, -1
/* 5C83C 8005BC3C 00408021 */  addu       $s0, $v0, $zero
/* 5C840 8005BC40 2404FFFF */  addiu      $a0, $zero, -1
/* 5C844 8005BC44 2405FFFF */  addiu      $a1, $zero, -1
/* 5C848 8005BC48 0C014AFA */  jal        func_80052BE8
/* 5C84C 8005BC4C 24060002 */   addiu     $a2, $zero, 2
/* 5C850 8005BC50 0C013361 */  jal        func_8004CD84
/* 5C854 8005BC54 27A40010 */   addiu     $a0, $sp, 0x10
/* 5C858 8005BC58 8E060020 */  lw         $a2, 0x20($s0)
/* 5C85C 8005BC5C 24C60018 */  addiu      $a2, $a2, 0x18
/* 5C860 8005BC60 00C02021 */  addu       $a0, $a2, $zero
/* 5C864 8005BC64 27A50010 */  addiu      $a1, $sp, 0x10
/* 5C868 8005BC68 0C01347B */  jal        func_8004D1EC
/* 5C86C 8005BC6C 24070008 */   addiu     $a3, $zero, 8
/* 5C870 8005BC70 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5C874 8005BC74 8FB00020 */  lw         $s0, 0x20($sp)
/* 5C878 8005BC78 03E00008 */  jr         $ra
/* 5C87C 8005BC7C 27BD0028 */   addiu     $sp, $sp, 0x28
