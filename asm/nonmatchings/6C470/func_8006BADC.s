	.set noat
	.set noreorder

glabel func_8006BADC
/* 6C6DC 8006BADC 8C820050 */  lw         $v0, 0x50($a0)
/* 6C6E0 8006BAE0 AC450010 */  sw         $a1, 0x10($v0)
/* 6C6E4 8006BAE4 AC460014 */  sw         $a2, 0x14($v0)
/* 6C6E8 8006BAE8 03E00008 */  jr         $ra
/* 6C6EC 8006BAEC AC470018 */   sw        $a3, 0x18($v0)
