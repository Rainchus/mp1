	.set noat
	.set noreorder

glabel func_800F796C_CEDDC
/* CEDDC 800F796C 3C03800F */  lui        $v1, %hi(D_800F5144)
/* CEDE0 800F7970 94635144 */  lhu        $v1, %lo(D_800F5144)($v1)
/* CEDE4 800F7974 24020001 */  addiu      $v0, $zero, 1
/* CEDE8 800F7978 14620004 */  bne        $v1, $v0, .L800F798C
/* CEDEC 800F797C 00000000 */   nop
/* CEDF0 800F7980 3C02800F */  lui        $v0, %hi(func_800F7318_CE788)
/* CEDF4 800F7984 24427318 */  addiu      $v0, $v0, %lo(func_800F7318_CE788)
/* CEDF8 800F7988 AC820014 */  sw         $v0, 0x14($a0)
.L800F798C:
/* CEDFC 800F798C 03E00008 */  jr         $ra
/* CEE00 800F7990 00000000 */   nop
