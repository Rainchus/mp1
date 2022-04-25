	.set noat
	.set noreorder

glabel func_8005CE04
/* 5DA04 8005CE04 3C02800F */  lui        $v0, %hi(D_800F37C5)
/* 5DA08 8005CE08 904237C5 */  lbu        $v0, %lo(D_800F37C5)($v0)
/* 5DA0C 8005CE0C 00021600 */  sll        $v0, $v0, 0x18
/* 5DA10 8005CE10 00021603 */  sra        $v0, $v0, 0x18
/* 5DA14 8005CE14 3C01800F */  lui        $at, %hi(D_800F32BE)
/* 5DA18 8005CE18 A42232BE */  sh         $v0, %lo(D_800F32BE)($at)
/* 5DA1C 8005CE1C 3C02800F */  lui        $v0, %hi(D_800F37C6)
/* 5DA20 8005CE20 904237C6 */  lbu        $v0, %lo(D_800F37C6)($v0)
/* 5DA24 8005CE24 00021600 */  sll        $v0, $v0, 0x18
/* 5DA28 8005CE28 00021603 */  sra        $v0, $v0, 0x18
/* 5DA2C 8005CE2C 3C01800F */  lui        $at, %hi(D_800F32C0)
/* 5DA30 8005CE30 A42232C0 */  sh         $v0, %lo(D_800F32C0)($at)
/* 5DA34 8005CE34 3C02800F */  lui        $v0, %hi(D_800F37B8)
/* 5DA38 8005CE38 904237B8 */  lbu        $v0, %lo(D_800F37B8)($v0)
/* 5DA3C 8005CE3C 3C01800F */  lui        $at, %hi(D_800F32B4)
/* 5DA40 8005CE40 03E00008 */  jr         $ra
/* 5DA44 8005CE44 A02232B4 */   sb        $v0, %lo(D_800F32B4)($at)
