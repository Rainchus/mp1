	.set noat
	.set noreorder

glabel func_8000E2D0
/* EED0 8000E2D0 84820002 */  lh         $v0, 2($a0)
/* EED4 8000E2D4 30A300FF */  andi       $v1, $a1, 0xff
/* EED8 8000E2D8 0043102A */  slt        $v0, $v0, $v1
/* EEDC 8000E2DC 14400016 */  bnez       $v0, .L8000E338
/* EEE0 8000E2E0 00001021 */   addu      $v0, $zero, $zero
/* EEE4 8000E2E4 30A200FF */  andi       $v0, $a1, 0xff
/* EEE8 8000E2E8 00021080 */  sll        $v0, $v0, 2
/* EEEC 8000E2EC 00441021 */  addu       $v0, $v0, $a0
/* EEF0 8000E2F0 8C440004 */  lw         $a0, 4($v0)
/* EEF4 8000E2F4 84820000 */  lh         $v0, ($a0)
/* EEF8 8000E2F8 30C300FF */  andi       $v1, $a2, 0xff
/* EEFC 8000E2FC 0043102A */  slt        $v0, $v0, $v1
/* EF00 8000E300 1440000D */  bnez       $v0, .L8000E338
/* EF04 8000E304 00001021 */   addu      $v0, $zero, $zero
/* EF08 8000E308 30C200FF */  andi       $v0, $a2, 0xff
/* EF0C 8000E30C 00021080 */  sll        $v0, $v0, 2
/* EF10 8000E310 00441021 */  addu       $v0, $v0, $a0
/* EF14 8000E314 8C43000C */  lw         $v1, 0xc($v0)
/* EF18 8000E318 8462000E */  lh         $v0, 0xe($v1)
/* EF1C 8000E31C 30E700FF */  andi       $a3, $a3, 0xff
/* EF20 8000E320 0047102A */  slt        $v0, $v0, $a3
/* EF24 8000E324 14400004 */  bnez       $v0, .L8000E338
/* EF28 8000E328 00001021 */   addu      $v0, $zero, $zero
/* EF2C 8000E32C 00071080 */  sll        $v0, $a3, 2
/* EF30 8000E330 00431021 */  addu       $v0, $v0, $v1
/* EF34 8000E334 8C420010 */  lw         $v0, 0x10($v0)
.L8000E338:
/* EF38 8000E338 03E00008 */  jr         $ra
/* EF3C 8000E33C 00000000 */   nop
