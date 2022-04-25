	.set noat
	.set noreorder

glabel func_80071264
/* 71E64 80071264 3C01800F */  lui        $at, %hi(D_800F3718)
/* 71E68 80071268 A0203718 */  sb         $zero, %lo(D_800F3718)($at)
/* 71E6C 8007126C 3C01800F */  lui        $at, %hi(D_800F64C4)
/* 71E70 80071270 03E00008 */  jr         $ra
/* 71E74 80071274 A02064C4 */   sb        $zero, %lo(D_800F64C4)($at)
