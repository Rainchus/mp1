	.set noat
	.set noreorder

glabel func_8000B2BC
/* BEBC 8000B2BC 3C02800C */  lui        $v0, %hi(D_800C1874)
/* BEC0 8000B2C0 03E00008 */  jr         $ra
/* BEC4 8000B2C4 24421874 */   addiu     $v0, $v0, %lo(D_800C1874)
