	.set noat
	.set noreorder

glabel func_8007B47C
/* 7C07C 8007B47C 3C02800C */  lui        $v0, %hi(D_800C6104)
/* 7C080 8007B480 8C426104 */  lw         $v0, %lo(D_800C6104)($v0)
/* 7C084 8007B484 3C01800E */  lui        $at, %hi(D_800E4340)
/* 7C088 8007B488 AC224340 */  sw         $v0, %lo(D_800E4340)($at)
/* 7C08C 8007B48C 3C02800F */  lui        $v0, %hi(D_800F545C)
/* 7C090 8007B490 8C42545C */  lw         $v0, %lo(D_800F545C)($v0)
/* 7C094 8007B494 3C01800E */  lui        $at, %hi(D_800E4344)
/* 7C098 8007B498 AC224344 */  sw         $v0, %lo(D_800E4344)($at)
/* 7C09C 8007B49C 24020001 */  addiu      $v0, $zero, 1
/* 7C0A0 8007B4A0 3C01800F */  lui        $at, %hi(D_800F50B8)
/* 7C0A4 8007B4A4 03E00008 */  jr         $ra
/* 7C0A8 8007B4A8 A02250B8 */   sb        $v0, %lo(D_800F50B8)($at)
