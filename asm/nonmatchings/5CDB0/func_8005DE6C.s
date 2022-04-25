	.set noat
	.set noreorder

glabel func_8005DE6C
/* 5EA6C 8005DE6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5EA70 8005DE70 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5EA74 8005DE74 AFB00010 */  sw         $s0, 0x10($sp)
/* 5EA78 8005DE78 0C018CEA */  jal        func_800633A8
/* 5EA7C 8005DE7C 00A08021 */   addu      $s0, $a1, $zero
/* 5EA80 8005DE80 84430022 */  lh         $v1, 0x22($v0)
/* 5EA84 8005DE84 00031040 */  sll        $v0, $v1, 1
/* 5EA88 8005DE88 00431021 */  addu       $v0, $v0, $v1
/* 5EA8C 8005DE8C 00021080 */  sll        $v0, $v0, 2
/* 5EA90 8005DE90 3C03800C */  lui        $v1, %hi(D_800C5990)
/* 5EA94 8005DE94 8C635990 */  lw         $v1, %lo(D_800C5990)($v1)
/* 5EA98 8005DE98 00431021 */  addu       $v0, $v0, $v1
/* 5EA9C 8005DE9C AC500008 */  sw         $s0, 8($v0)
/* 5EAA0 8005DEA0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5EAA4 8005DEA4 8FB00010 */  lw         $s0, 0x10($sp)
/* 5EAA8 8005DEA8 03E00008 */  jr         $ra
/* 5EAAC 8005DEAC 27BD0018 */   addiu     $sp, $sp, 0x18
