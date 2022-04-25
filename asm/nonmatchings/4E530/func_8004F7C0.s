	.set noat
	.set noreorder

glabel func_8004F7C0
/* 503C0 8004F7C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 503C4 8004F7C4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 503C8 8004F7C8 44850000 */  mtc1       $a1, $f0
/* 503CC 8004F7CC 44861000 */  mtc1       $a2, $f2
/* 503D0 8004F7D0 00042080 */  sll        $a0, $a0, 2
/* 503D4 8004F7D4 3C01800E */  lui        $at, %hi(D_800D8220)
/* 503D8 8004F7D8 00240821 */  addu       $at, $at, $a0
/* 503DC 8004F7DC 84248220 */  lh         $a0, %lo(D_800D8220)($at)
/* 503E0 8004F7E0 44060000 */  mfc1       $a2, $f0
/* 503E4 8004F7E4 44071000 */  mfc1       $a3, $f2
/* 503E8 8004F7E8 00000000 */  nop
/* 503EC 8004F7EC 0C019CD5 */  jal        func_80067354
/* 503F0 8004F7F0 00002821 */   addu      $a1, $zero, $zero
/* 503F4 8004F7F4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 503F8 8004F7F8 03E00008 */  jr         $ra
/* 503FC 8004F7FC 27BD0018 */   addiu     $sp, $sp, 0x18
