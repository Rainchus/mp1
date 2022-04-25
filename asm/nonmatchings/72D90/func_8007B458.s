	.set noat
	.set noreorder

glabel func_8007B458
/* 7C058 8007B458 8C830000 */  lw         $v1, ($a0)
/* 7C05C 8007B45C 24620008 */  addiu      $v0, $v1, 8
/* 7C060 8007B460 AC820000 */  sw         $v0, ($a0)
/* 7C064 8007B464 3C02DE00 */  lui        $v0, 0xde00
/* 7C068 8007B468 AC620000 */  sw         $v0, ($v1)
/* 7C06C 8007B46C 3C02800E */  lui        $v0, %hi(D_800E434C)
/* 7C070 8007B470 8C42434C */  lw         $v0, %lo(D_800E434C)($v0)
/* 7C074 8007B474 03E00008 */  jr         $ra
/* 7C078 8007B478 AC620004 */   sw        $v0, 4($v1)
