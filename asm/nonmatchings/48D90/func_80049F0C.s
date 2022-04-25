	.set noat
	.set noreorder

glabel func_80049F0C
/* 4AB0C 80049F0C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4AB10 80049F10 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4AB14 80049F14 3C04800C */  lui        $a0, %hi(D_800C4F70)
/* 4AB18 80049F18 8C844F70 */  lw         $a0, %lo(D_800C4F70)($a0)
/* 4AB1C 80049F1C 10800008 */  beqz       $a0, .L80049F40
/* 4AB20 80049F20 00000000 */   nop
/* 4AB24 80049F24 0C00EDE6 */  jal        func_8003B798
/* 4AB28 80049F28 00000000 */   nop
/* 4AB2C 80049F2C 3C01800C */  lui        $at, %hi(D_800C4F70)
/* 4AB30 80049F30 AC204F70 */  sw         $zero, %lo(D_800C4F70)($at)
/* 4AB34 80049F34 3C04800D */  lui        $a0, %hi(D_800D673C)
/* 4AB38 80049F38 0C00EDE6 */  jal        func_8003B798
/* 4AB3C 80049F3C 8C84673C */   lw        $a0, %lo(D_800D673C)($a0)
.L80049F40:
/* 4AB40 80049F40 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4AB44 80049F44 03E00008 */  jr         $ra
/* 4AB48 80049F48 27BD0018 */   addiu     $sp, $sp, 0x18
