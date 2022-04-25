	.set noat
	.set noreorder

glabel func_80061094
/* 61C94 80061094 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 61C98 80061098 AFBF0010 */  sw         $ra, 0x10($sp)
/* 61C9C 8006109C 0C022204 */  jal        func_80088810
/* 61CA0 800610A0 00000000 */   nop
/* 61CA4 800610A4 3C01800E */  lui        $at, %hi(D_800D8C58)
/* 61CA8 800610A8 AC228C58 */  sw         $v0, %lo(D_800D8C58)($at)
/* 61CAC 800610AC 3C01800E */  lui        $at, %hi(D_800D8C5C)
/* 61CB0 800610B0 AC238C5C */  sw         $v1, %lo(D_800D8C5C)($at)
.L800610B4:
/* 61CB4 800610B4 3C04800E */  lui        $a0, %hi(D_800D8C60)
/* 61CB8 800610B8 24848C60 */  addiu      $a0, $a0, %lo(D_800D8C60)
/* 61CBC 800610BC 00002821 */  addu       $a1, $zero, $zero
/* 61CC0 800610C0 0C022278 */  jal        func_800889E0
/* 61CC4 800610C4 00003021 */   addu      $a2, $zero, $zero
/* 61CC8 800610C8 1040FFFA */  beqz       $v0, .L800610B4
/* 61CCC 800610CC 00000000 */   nop
/* 61CD0 800610D0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 61CD4 800610D4 03E00008 */  jr         $ra
/* 61CD8 800610D8 27BD0018 */   addiu     $sp, $sp, 0x18
