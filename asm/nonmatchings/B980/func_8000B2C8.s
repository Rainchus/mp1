	.set noat
	.set noreorder

glabel func_8000B2C8
/* BEC8 8000B2C8 3C02800C */  lui        $v0, %hi(D_800C1870)
/* BECC 8000B2CC 8C421870 */  lw         $v0, %lo(D_800C1870)($v0)
/* BED0 8000B2D0 30428000 */  andi       $v0, $v0, 0x8000
/* BED4 8000B2D4 10400004 */  beqz       $v0, .L8000B2E8
/* BED8 8000B2D8 00001021 */   addu      $v0, $zero, $zero
/* BEDC 8000B2DC 3C02800D */  lui        $v0, %hi(D_800CDAC8)
/* BEE0 8000B2E0 8C42DAC8 */  lw         $v0, %lo(D_800CDAC8)($v0)
/* BEE4 8000B2E4 8C420004 */  lw         $v0, 4($v0)
.L8000B2E8:
/* BEE8 8000B2E8 03E00008 */  jr         $ra
/* BEEC 8000B2EC 00000000 */   nop
