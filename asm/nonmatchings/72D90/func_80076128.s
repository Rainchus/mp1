	.set noat
	.set noreorder

glabel func_80076128
/* 76D28 80076128 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 76D2C 8007612C AFBF0010 */  sw         $ra, 0x10($sp)
/* 76D30 80076130 2402FFFF */  addiu      $v0, $zero, -1
/* 76D34 80076134 3C01800F */  lui        $at, %hi(D_800F3FFC)
/* 76D38 80076138 A0223FFC */  sb         $v0, %lo(D_800F3FFC)($at)
/* 76D3C 8007613C 24020001 */  addiu      $v0, $zero, 1
/* 76D40 80076140 3C01800F */  lui        $at, %hi(D_800F3394)
/* 76D44 80076144 A0223394 */  sb         $v0, %lo(D_800F3394)($at)
/* 76D48 80076148 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 76D4C 8007614C 0C01D671 */  jal        func_800759C4
/* 76D50 80076150 248437DC */   addiu     $a0, $a0, %lo(D_800F37DC)
/* 76D54 80076154 3C01800F */  lui        $at, %hi(D_800F3394)
/* 76D58 80076158 0C01D893 */  jal        func_8007624C
/* 76D5C 8007615C A0203394 */   sb        $zero, %lo(D_800F3394)($at)
/* 76D60 80076160 3C01800F */  lui        $at, %hi(D_800F3753)
/* 76D64 80076164 A0203753 */  sb         $zero, %lo(D_800F3753)($at)
/* 76D68 80076168 8FBF0010 */  lw         $ra, 0x10($sp)
/* 76D6C 8007616C 03E00008 */  jr         $ra
/* 76D70 80076170 27BD0018 */   addiu     $sp, $sp, 0x18
