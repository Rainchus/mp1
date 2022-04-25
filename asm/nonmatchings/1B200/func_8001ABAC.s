	.set noat
	.set noreorder

glabel func_8001ABAC
/* 1B7AC 8001ABAC 8C820000 */  lw         $v0, ($a0)
/* 1B7B0 8001ABB0 3C01800F */  lui        $at, %hi(D_800F2A70)
/* 1B7B4 8001ABB4 AC222A70 */  sw         $v0, %lo(D_800F2A70)($at)
/* 1B7B8 8001ABB8 24840004 */  addiu      $a0, $a0, 4
/* 1B7BC 8001ABBC 8C820000 */  lw         $v0, ($a0)
/* 1B7C0 8001ABC0 3C01800F */  lui        $at, %hi(D_800F2CBC)
/* 1B7C4 8001ABC4 AC222CBC */  sw         $v0, %lo(D_800F2CBC)($at)
/* 1B7C8 8001ABC8 24840004 */  addiu      $a0, $a0, 4
/* 1B7CC 8001ABCC 8C820000 */  lw         $v0, ($a0)
/* 1B7D0 8001ABD0 3C01800F */  lui        $at, %hi(D_800ECB34)
/* 1B7D4 8001ABD4 AC22CB34 */  sw         $v0, %lo(D_800ECB34)($at)
/* 1B7D8 8001ABD8 8C820004 */  lw         $v0, 4($a0)
/* 1B7DC 8001ABDC 3C01800F */  lui        $at, %hi(D_800F09F0)
/* 1B7E0 8001ABE0 03E00008 */  jr         $ra
/* 1B7E4 8001ABE4 AC2209F0 */   sw        $v0, %lo(D_800F09F0)($at)
