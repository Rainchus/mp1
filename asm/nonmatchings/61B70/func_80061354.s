	.set noat
	.set noreorder

glabel func_80061354
/* 61F54 80061354 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 61F58 80061358 AFBF0010 */  sw         $ra, 0x10($sp)
/* 61F5C 8006135C 3C01800E */  lui        $at, %hi(D_800D8AB0)
/* 61F60 80061360 A4208AB0 */  sh         $zero, %lo(D_800D8AB0)($at)
/* 61F64 80061364 0C022124 */  jal        func_80088490
/* 61F68 80061368 24040001 */   addiu     $a0, $zero, 1
/* 61F6C 8006136C 3C04800E */  lui        $a0, %hi(D_800D8C58)
/* 61F70 80061370 8C848C58 */  lw         $a0, %lo(D_800D8C58)($a0)
/* 61F74 80061374 3C05800E */  lui        $a1, %hi(D_800D8C5C)
/* 61F78 80061378 8CA58C5C */  lw         $a1, %lo(D_800D8C5C)($a1)
/* 61F7C 8006137C 3C01800E */  lui        $at, %hi(D_800D8AA8)
/* 61F80 80061380 AC248AA8 */  sw         $a0, %lo(D_800D8AA8)($at)
/* 61F84 80061384 3C01800E */  lui        $at, %hi(D_800D8AAC)
/* 61F88 80061388 AC258AAC */  sw         $a1, %lo(D_800D8AAC)($at)
/* 61F8C 8006138C 0C022124 */  jal        func_80088490
/* 61F90 80061390 00402021 */   addu      $a0, $v0, $zero
/* 61F94 80061394 8FBF0010 */  lw         $ra, 0x10($sp)
/* 61F98 80061398 03E00008 */  jr         $ra
/* 61F9C 8006139C 27BD0018 */   addiu     $sp, $sp, 0x18
