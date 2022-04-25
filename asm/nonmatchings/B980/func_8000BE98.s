	.set noat
	.set noreorder

glabel func_8000BE98
/* CA98 8000BE98 8FA30010 */  lw         $v1, 0x10($sp)
/* CA9C 8000BE9C 3C02800C */  lui        $v0, %hi(D_800C1874)
/* CAA0 8000BEA0 24421874 */  addiu      $v0, $v0, %lo(D_800C1874)
/* CAA4 8000BEA4 AC440000 */  sw         $a0, ($v0)
/* CAA8 8000BEA8 AC450004 */  sw         $a1, 4($v0)
/* CAAC 8000BEAC AC460008 */  sw         $a2, 8($v0)
/* CAB0 8000BEB0 AC47000C */  sw         $a3, 0xc($v0)
/* CAB4 8000BEB4 03E00008 */  jr         $ra
/* CAB8 8000BEB8 AC430010 */   sw        $v1, 0x10($v0)
