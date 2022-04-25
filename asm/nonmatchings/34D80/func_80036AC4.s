	.set noat
	.set noreorder

glabel func_80036AC4
/* 376C4 80036AC4 8C8200AC */  lw         $v0, 0xac($a0)
/* 376C8 80036AC8 84420002 */  lh         $v0, 2($v0)
/* 376CC 80036ACC 2442FFFF */  addiu      $v0, $v0, -1
/* 376D0 80036AD0 44820000 */  mtc1       $v0, $f0
/* 376D4 80036AD4 00000000 */  nop
/* 376D8 80036AD8 46800020 */  cvt.s.w    $f0, $f0
/* 376DC 80036ADC 03E00008 */  jr         $ra
/* 376E0 80036AE0 E48000C0 */   swc1      $f0, 0xc0($a0)
