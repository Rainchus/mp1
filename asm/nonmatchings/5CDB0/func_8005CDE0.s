	.set noat
	.set noreorder

glabel func_8005CDE0
/* 5D9E0 8005CDE0 3C02800F */  lui        $v0, %hi(D_800F32BF)
/* 5D9E4 8005CDE4 904232BF */  lbu        $v0, %lo(D_800F32BF)($v0)
/* 5D9E8 8005CDE8 3C01800F */  lui        $at, %hi(D_800F37C5)
/* 5D9EC 8005CDEC A02237C5 */  sb         $v0, %lo(D_800F37C5)($at)
/* 5D9F0 8005CDF0 3C02800F */  lui        $v0, %hi(D_800F32C1)
/* 5D9F4 8005CDF4 904232C1 */  lbu        $v0, %lo(D_800F32C1)($v0)
/* 5D9F8 8005CDF8 3C01800F */  lui        $at, %hi(D_800F37C6)
/* 5D9FC 8005CDFC 03E00008 */  jr         $ra
/* 5DA00 8005CE00 A02237C6 */   sb        $v0, %lo(D_800F37C6)($at)
