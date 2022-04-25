	.set noat
	.set noreorder

glabel func_800672B0
/* 67EB0 800672B0 00042400 */  sll        $a0, $a0, 0x10
/* 67EB4 800672B4 00042383 */  sra        $a0, $a0, 0xe
/* 67EB8 800672B8 3C02800F */  lui        $v0, %hi(D_800EE330)
/* 67EBC 800672BC 00441021 */  addu       $v0, $v0, $a0
/* 67EC0 800672C0 8C42E330 */  lw         $v0, %lo(D_800EE330)($v0)
/* 67EC4 800672C4 00052C00 */  sll        $a1, $a1, 0x10
/* 67EC8 800672C8 00052B83 */  sra        $a1, $a1, 0xe
/* 67ECC 800672CC 00A22821 */  addu       $a1, $a1, $v0
/* 67ED0 800672D0 8CA2000C */  lw         $v0, 0xc($a1)
/* 67ED4 800672D4 03E00008 */  jr         $ra
/* 67ED8 800672D8 A446000A */   sh        $a2, 0xa($v0)
