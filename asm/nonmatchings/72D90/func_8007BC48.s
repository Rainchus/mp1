	.set noat
	.set noreorder

glabel func_8007BC48
/* 7C848 8007BC48 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C84C 8007BC4C AFBF0010 */  sw         $ra, 0x10($sp)
/* 7C850 8007BC50 3C04800F */  lui        $a0, %hi(D_800F64F4)
/* 7C854 8007BC54 848464F4 */  lh         $a0, %lo(D_800F64F4)($a0)
/* 7C858 8007BC58 2402FFFF */  addiu      $v0, $zero, -1
/* 7C85C 8007BC5C 10820003 */  beq        $a0, $v0, .L8007BC6C
/* 7C860 8007BC60 00000000 */   nop
/* 7C864 8007BC64 0C019DC1 */  jal        func_80067704
/* 7C868 8007BC68 00000000 */   nop
.L8007BC6C:
/* 7C86C 8007BC6C 3C04800F */  lui        $a0, %hi(D_800F2CE0)
/* 7C870 8007BC70 0C019DC1 */  jal        func_80067704
/* 7C874 8007BC74 84842CE0 */   lh        $a0, %lo(D_800F2CE0)($a0)
/* 7C878 8007BC78 3C04800F */  lui        $a0, %hi(D_800F6548)
/* 7C87C 8007BC7C 0C01934E */  jal        func_80064D38
/* 7C880 8007BC80 84846548 */   lh        $a0, %lo(D_800F6548)($a0)
/* 7C884 8007BC84 3C04800F */  lui        $a0, %hi(D_800F3182)
/* 7C888 8007BC88 0C019DC1 */  jal        func_80067704
/* 7C88C 8007BC8C 84843182 */   lh        $a0, %lo(D_800F3182)($a0)
/* 7C890 8007BC90 3C04800F */  lui        $a0, %hi(D_800F0A24)
/* 7C894 8007BC94 0C017764 */  jal        func_8005DD90
/* 7C898 8007BC98 8C840A24 */   lw        $a0, %lo(D_800F0A24)($a0)
/* 7C89C 8007BC9C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7C8A0 8007BCA0 03E00008 */  jr         $ra
/* 7C8A4 8007BCA4 27BD0018 */   addiu     $sp, $sp, 0x18
