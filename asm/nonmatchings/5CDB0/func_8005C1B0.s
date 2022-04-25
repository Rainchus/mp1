	.set noat
	.set noreorder

glabel func_8005C1B0
/* 5CDB0 8005C1B0 3C02800E */  lui        $v0, %hi(D_800D8954)
/* 5CDB4 8005C1B4 94428954 */  lhu        $v0, %lo(D_800D8954)($v0)
/* 5CDB8 8005C1B8 24430001 */  addiu      $v1, $v0, 1
/* 5CDBC 8005C1BC 3C01800E */  lui        $at, %hi(D_800D8954)
/* 5CDC0 8005C1C0 A4238954 */  sh         $v1, %lo(D_800D8954)($at)
/* 5CDC4 8005C1C4 00021400 */  sll        $v0, $v0, 0x10
/* 5CDC8 8005C1C8 00021343 */  sra        $v0, $v0, 0xd
/* 5CDCC 8005C1CC 3C07800E */  lui        $a3, %hi(D_800D8958)
/* 5CDD0 8005C1D0 24E78958 */  addiu      $a3, $a3, %lo(D_800D8958)
/* 5CDD4 8005C1D4 00471021 */  addu       $v0, $v0, $a3
/* 5CDD8 8005C1D8 AC440000 */  sw         $a0, ($v0)
/* 5CDDC 8005C1DC A4450004 */  sh         $a1, 4($v0)
/* 5CDE0 8005C1E0 00031C00 */  sll        $v1, $v1, 0x10
/* 5CDE4 8005C1E4 00031C03 */  sra        $v1, $v1, 0x10
/* 5CDE8 8005C1E8 28630005 */  slti       $v1, $v1, 5
/* 5CDEC 8005C1EC 14600004 */  bnez       $v1, .L8005C200
/* 5CDF0 8005C1F0 A4460006 */   sh        $a2, 6($v0)
/* 5CDF4 8005C1F4 24020004 */  addiu      $v0, $zero, 4
/* 5CDF8 8005C1F8 3C01800E */  lui        $at, %hi(D_800D8954)
/* 5CDFC 8005C1FC A4228954 */  sh         $v0, %lo(D_800D8954)($at)
.L8005C200:
/* 5CE00 8005C200 03E00008 */  jr         $ra
/* 5CE04 8005C204 00000000 */   nop
