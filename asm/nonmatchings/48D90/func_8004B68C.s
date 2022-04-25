	.set noat
	.set noreorder

glabel func_8004B68C
/* 4C28C 8004B68C 3C02800E */  lui        $v0, %hi(D_800D80BC)
/* 4C290 8004B690 244280BC */  addiu      $v0, $v0, %lo(D_800D80BC)
/* 4C294 8004B694 C4400000 */  lwc1       $f0, ($v0)
/* 4C298 8004B698 3C014320 */  lui        $at, 0x4320
/* 4C29C 8004B69C 44811000 */  mtc1       $at, $f2
/* 4C2A0 8004B6A0 00000000 */  nop
/* 4C2A4 8004B6A4 46020001 */  sub.s      $f0, $f0, $f2
/* 4C2A8 8004B6A8 3C01800E */  lui        $at, %hi(D_800D80B8)
/* 4C2AC 8004B6AC C42480B8 */  lwc1       $f4, %lo(D_800D80B8)($at)
/* 4C2B0 8004B6B0 46040002 */  mul.s      $f0, $f0, $f4
/* 4C2B4 8004B6B4 E4800000 */  swc1       $f0, ($a0)
/* 4C2B8 8004B6B8 C4400004 */  lwc1       $f0, 4($v0)
/* 4C2BC 8004B6BC 3C0142F0 */  lui        $at, 0x42f0
/* 4C2C0 8004B6C0 44811000 */  mtc1       $at, $f2
/* 4C2C4 8004B6C4 00000000 */  nop
/* 4C2C8 8004B6C8 46020001 */  sub.s      $f0, $f0, $f2
/* 4C2CC 8004B6CC 46040002 */  mul.s      $f0, $f0, $f4
/* 4C2D0 8004B6D0 03E00008 */  jr         $ra
/* 4C2D4 8004B6D4 E4800004 */   swc1      $f0, 4($a0)
