	.set noat
	.set noreorder

glabel func_80013AEC
/* 146EC 80013AEC 3C01800D */  lui        $at, %hi(D_800D12BE)
/* 146F0 80013AF0 A02412BE */  sb         $a0, %lo(D_800D12BE)($at)
/* 146F4 80013AF4 3C01800D */  lui        $at, %hi(D_800D12BF)
/* 146F8 80013AF8 03E00008 */  jr         $ra
/* 146FC 80013AFC A02512BF */   sb        $a1, %lo(D_800D12BF)($at)
