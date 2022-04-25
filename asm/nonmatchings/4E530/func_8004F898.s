	.set noat
	.set noreorder

glabel func_8004F898
/* 50498 8004F898 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5049C 8004F89C AFBF0018 */  sw         $ra, 0x18($sp)
/* 504A0 8004F8A0 00042080 */  sll        $a0, $a0, 2
/* 504A4 8004F8A4 3C01800E */  lui        $at, %hi(D_800D8220)
/* 504A8 8004F8A8 00240821 */  addu       $at, $at, $a0
/* 504AC 8004F8AC 84248220 */  lh         $a0, %lo(D_800D8220)($at)
/* 504B0 8004F8B0 30A200FF */  andi       $v0, $a1, 0xff
/* 504B4 8004F8B4 30C300FF */  andi       $v1, $a2, 0xff
/* 504B8 8004F8B8 30E700FF */  andi       $a3, $a3, 0xff
/* 504BC 8004F8BC AFA70010 */  sw         $a3, 0x10($sp)
/* 504C0 8004F8C0 00002821 */  addu       $a1, $zero, $zero
/* 504C4 8004F8C4 00403021 */  addu       $a2, $v0, $zero
/* 504C8 8004F8C8 0C019D3D */  jal        func_800674F4
/* 504CC 8004F8CC 00603821 */   addu      $a3, $v1, $zero
/* 504D0 8004F8D0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 504D4 8004F8D4 03E00008 */  jr         $ra
/* 504D8 8004F8D8 27BD0020 */   addiu     $sp, $sp, 0x20
