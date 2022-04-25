	.set noat
	.set noreorder

glabel func_8004F4D4
/* 500D4 8004F4D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 500D8 8004F4D8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 500DC 8004F4DC 00052C00 */  sll        $a1, $a1, 0x10
/* 500E0 8004F4E0 30C6FFFF */  andi       $a2, $a2, 0xffff
/* 500E4 8004F4E4 AFA60010 */  sw         $a2, 0x10($sp)
/* 500E8 8004F4E8 00052C03 */  sra        $a1, $a1, 0x10
/* 500EC 8004F4EC 00003021 */  addu       $a2, $zero, $zero
/* 500F0 8004F4F0 0C00FA2E */  jal        func_8003E8B8
/* 500F4 8004F4F4 2407000A */   addiu     $a3, $zero, 0xa
/* 500F8 8004F4F8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 500FC 8004F4FC 03E00008 */  jr         $ra
/* 50100 8004F500 27BD0020 */   addiu     $sp, $sp, 0x20
