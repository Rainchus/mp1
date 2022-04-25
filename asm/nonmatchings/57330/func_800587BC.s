	.set noat
	.set noreorder

glabel func_800587BC
/* 593BC 800587BC 3C01800E */  lui        $at, %hi(D_800D86F4)
/* 593C0 800587C0 AC2486F4 */  sw         $a0, %lo(D_800D86F4)($at)
/* 593C4 800587C4 3C01800E */  lui        $at, %hi(D_800D86F8)
/* 593C8 800587C8 A42586F8 */  sh         $a1, %lo(D_800D86F8)($at)
/* 593CC 800587CC 24020008 */  addiu      $v0, $zero, 8
/* 593D0 800587D0 3C01800E */  lui        $at, %hi(D_800D86EC)
/* 593D4 800587D4 A42286EC */  sh         $v0, %lo(D_800D86EC)($at)
/* 593D8 800587D8 3C01800E */  lui        $at, %hi(D_800D86EE)
/* 593DC 800587DC A42686EE */  sh         $a2, %lo(D_800D86EE)($at)
/* 593E0 800587E0 3C01800E */  lui        $at, %hi(D_800D86F0)
/* 593E4 800587E4 03E00008 */  jr         $ra
/* 593E8 800587E8 A42786F0 */   sh        $a3, %lo(D_800D86F0)($at)
