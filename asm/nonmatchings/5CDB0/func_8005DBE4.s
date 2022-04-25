	.set noat
	.set noreorder

glabel func_8005DBE4
/* 5E7E4 8005DBE4 00042400 */  sll        $a0, $a0, 0x10
/* 5E7E8 8005DBE8 00042303 */  sra        $a0, $a0, 0xc
/* 5E7EC 8005DBEC 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 5E7F0 8005DBF0 3C02800F */  lui        $v0, %hi(D_800ED624)
/* 5E7F4 8005DBF4 00441021 */  addu       $v0, $v0, $a0
/* 5E7F8 8005DBF8 8C42D624 */  lw         $v0, %lo(D_800ED624)($v0)
/* 5E7FC 8005DBFC 00052880 */  sll        $a1, $a1, 2
/* 5E800 8005DC00 00A22821 */  addu       $a1, $a1, $v0
/* 5E804 8005DC04 8CA30000 */  lw         $v1, ($a1)
/* 5E808 8005DC08 8C620010 */  lw         $v0, 0x10($v1)
/* 5E80C 8005DC0C 00C23025 */  or         $a2, $a2, $v0
/* 5E810 8005DC10 03E00008 */  jr         $ra
/* 5E814 8005DC14 AC660010 */   sw        $a2, 0x10($v1)
