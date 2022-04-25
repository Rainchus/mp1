	.set noat
	.set noreorder

glabel func_8005FD5C
/* 6095C 8005FD5C 3C02800F */  lui        $v0, %hi(D_800F3858)
/* 60960 8005FD60 8C423858 */  lw         $v0, %lo(D_800F3858)($v0)
/* 60964 8005FD64 50400003 */  beql       $v0, $zero, .L8005FD74
/* 60968 8005FD68 00001021 */   addu      $v0, $zero, $zero
/* 6096C 8005FD6C 9042004C */  lbu        $v0, 0x4c($v0)
/* 60970 8005FD70 30420001 */  andi       $v0, $v0, 1
.L8005FD74:
/* 60974 8005FD74 03E00008 */  jr         $ra
/* 60978 8005FD78 00000000 */   nop
