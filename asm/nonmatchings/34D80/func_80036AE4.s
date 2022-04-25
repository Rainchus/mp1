	.set noat
	.set noreorder

glabel func_80036AE4
/* 376E4 80036AE4 C48000C0 */  lwc1       $f0, 0xc0($a0)
/* 376E8 80036AE8 4600008D */  trunc.w.s  $f2, $f0
/* 376EC 80036AEC 44021000 */  mfc1       $v0, $f2
/* 376F0 80036AF0 00000000 */  nop
/* 376F4 80036AF4 00021400 */  sll        $v0, $v0, 0x10
/* 376F8 80036AF8 03E00008 */  jr         $ra
/* 376FC 80036AFC 00021403 */   sra       $v0, $v0, 0x10
