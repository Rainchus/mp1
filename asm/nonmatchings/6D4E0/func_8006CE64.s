	.set noat
	.set noreorder

glabel func_8006CE64
/* 6DA64 8006CE64 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6DA68 8006CE68 AFBF0028 */  sw         $ra, 0x28($sp)
/* 6DA6C 8006CE6C A7A40020 */  sh         $a0, 0x20($sp)
/* 6DA70 8006CE70 A7A50022 */  sh         $a1, 0x22($sp)
/* 6DA74 8006CE74 A7A60024 */  sh         $a2, 0x24($sp)
/* 6DA78 8006CE78 A7A70026 */  sh         $a3, 0x26($sp)
/* 6DA7C 8006CE7C 27A40010 */  addiu      $a0, $sp, 0x10
/* 6DA80 8006CE80 3C058007 */  lui        $a1, %hi(func_8006CE0C)
/* 6DA84 8006CE84 24A5CE0C */  addiu      $a1, $a1, %lo(func_8006CE0C)
/* 6DA88 8006CE88 27A60020 */  addiu      $a2, $sp, 0x20
/* 6DA8C 8006CE8C 0C0190BF */  jal        func_800642FC
/* 6DA90 8006CE90 24070001 */   addiu     $a3, $zero, 1
/* 6DA94 8006CE94 8FBF0028 */  lw         $ra, 0x28($sp)
/* 6DA98 8006CE98 03E00008 */  jr         $ra
/* 6DA9C 8006CE9C 27BD0030 */   addiu     $sp, $sp, 0x30
