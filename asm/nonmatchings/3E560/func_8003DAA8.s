	.set noat
	.set noreorder

glabel func_8003DAA8
/* 3E6A8 8003DAA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E6AC 8003DAAC AFBF0010 */  sw         $ra, 0x10($sp)
/* 3E6B0 8003DAB0 3C01800D */  lui        $at, %hi(D_800D61C0)
/* 3E6B4 8003DAB4 AC2061C0 */  sw         $zero, %lo(D_800D61C0)($at)
/* 3E6B8 8003DAB8 3C01800D */  lui        $at, %hi(D_800D61C4)
/* 3E6BC 8003DABC A42061C4 */  sh         $zero, %lo(D_800D61C4)($at)
/* 3E6C0 8003DAC0 24020001 */  addiu      $v0, $zero, 1
/* 3E6C4 8003DAC4 3C01800F */  lui        $at, %hi(D_800F5278)
/* 3E6C8 8003DAC8 0C00F658 */  jal        func_8003D960
/* 3E6CC 8003DACC A4225278 */   sh        $v0, %lo(D_800F5278)($at)
/* 3E6D0 8003DAD0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3E6D4 8003DAD4 03E00008 */  jr         $ra
/* 3E6D8 8003DAD8 27BD0018 */   addiu     $sp, $sp, 0x18
