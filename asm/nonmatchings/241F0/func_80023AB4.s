	.set noat
	.set noreorder

glabel func_80023AB4
/* 246B4 80023AB4 3C02800F */  lui        $v0, %hi(D_800F65DC)
/* 246B8 80023AB8 8C4265DC */  lw         $v0, %lo(D_800F65DC)($v0)
/* 246BC 80023ABC 8C430014 */  lw         $v1, 0x14($v0)
/* 246C0 80023AC0 3C02800F */  lui        $v0, %hi(D_800F2B78)
/* 246C4 80023AC4 8C422B78 */  lw         $v0, %lo(D_800F2B78)($v0)
/* 246C8 80023AC8 10620007 */  beq        $v1, $v0, .L80023AE8
/* 246CC 80023ACC 00002021 */   addu      $a0, $zero, $zero
/* 246D0 80023AD0 3C05800F */  lui        $a1, %hi(D_800F2B78)
/* 246D4 80023AD4 8CA52B78 */  lw         $a1, %lo(D_800F2B78)($a1)
.L80023AD8:
/* 246D8 80023AD8 8C620008 */  lw         $v0, 8($v1)
/* 246DC 80023ADC 8C630014 */  lw         $v1, 0x14($v1)
/* 246E0 80023AE0 1465FFFD */  bne        $v1, $a1, .L80023AD8
/* 246E4 80023AE4 00822021 */   addu      $a0, $a0, $v0
.L80023AE8:
/* 246E8 80023AE8 03E00008 */  jr         $ra
/* 246EC 80023AEC 00801021 */   addu      $v0, $a0, $zero
