	.set noat
	.set noreorder

glabel func_8001E268
/* 1EE68 8001E268 00042400 */  sll        $a0, $a0, 0x10
/* 1EE6C 8001E26C 00042403 */  sra        $a0, $a0, 0x10
/* 1EE70 8001E270 000418C0 */  sll        $v1, $a0, 3
/* 1EE74 8001E274 00641821 */  addu       $v1, $v1, $a0
/* 1EE78 8001E278 00031880 */  sll        $v1, $v1, 2
/* 1EE7C 8001E27C 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1EE80 8001E280 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1EE84 8001E284 00621821 */  addu       $v1, $v1, $v0
/* 1EE88 8001E288 30A500FF */  andi       $a1, $a1, 0xff
/* 1EE8C 8001E28C 00052827 */  nor        $a1, $zero, $a1
/* 1EE90 8001E290 94620010 */  lhu        $v0, 0x10($v1)
/* 1EE94 8001E294 00451024 */  and        $v0, $v0, $a1
/* 1EE98 8001E298 30C600FF */  andi       $a2, $a2, 0xff
/* 1EE9C 8001E29C 00C23025 */  or         $a2, $a2, $v0
/* 1EEA0 8001E2A0 03E00008 */  jr         $ra
/* 1EEA4 8001E2A4 A4660010 */   sh        $a2, 0x10($v1)
