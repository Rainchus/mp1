	.set noat
	.set noreorder

glabel func_8000B198
/* BD98 8000B198 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD9C 8000B19C AFBF0010 */  sw         $ra, 0x10($sp)
/* BDA0 8000B1A0 3C02800D */  lui        $v0, %hi(D_800CDAEC)
/* BDA4 8000B1A4 8C42DAEC */  lw         $v0, %lo(D_800CDAEC)($v0)
/* BDA8 8000B1A8 14400016 */  bnez       $v0, .L8000B204
/* BDAC 8000B1AC 24020001 */   addiu     $v0, $zero, 1
/* BDB0 8000B1B0 3C02800D */  lui        $v0, %hi(D_800CEAA0)
/* BDB4 8000B1B4 8C42EAA0 */  lw         $v0, %lo(D_800CEAA0)($v0)
/* BDB8 8000B1B8 14400012 */  bnez       $v0, .L8000B204
/* BDBC 8000B1BC 24020001 */   addiu     $v0, $zero, 1
/* BDC0 8000B1C0 3C02800C */  lui        $v0, %hi(D_800C1870)
/* BDC4 8000B1C4 8C421870 */  lw         $v0, %lo(D_800C1870)($v0)
/* BDC8 8000B1C8 30428000 */  andi       $v0, $v0, 0x8000
/* BDCC 8000B1CC 1040000D */  beqz       $v0, .L8000B204
/* BDD0 8000B1D0 00001021 */   addu      $v0, $zero, $zero
/* BDD4 8000B1D4 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* BDD8 8000B1D8 0C022940 */  jal        func_8008A500
/* BDDC 8000B1DC 8C84DAD4 */   lw        $a0, %lo(D_800CDAD4)($a0)
/* BDE0 8000B1E0 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* BDE4 8000B1E4 0C0229F4 */  jal        func_8008A7D0
/* BDE8 8000B1E8 8C84EA8C */   lw        $a0, %lo(D_800CEA8C)($a0)
/* BDEC 8000B1EC 3C04800C */  lui        $a0, %hi(D_800C1874)
/* BDF0 8000B1F0 0C004C29 */  jal        func_800130A4
/* BDF4 8000B1F4 24841874 */   addiu     $a0, $a0, %lo(D_800C1874)
/* BDF8 8000B1F8 3C01800C */  lui        $at, %hi(D_800C1870)
/* BDFC 8000B1FC AC201870 */  sw         $zero, %lo(D_800C1870)($at)
/* BE00 8000B200 00001021 */  addu       $v0, $zero, $zero
.L8000B204:
/* BE04 8000B204 8FBF0010 */  lw         $ra, 0x10($sp)
/* BE08 8000B208 03E00008 */  jr         $ra
/* BE0C 8000B20C 27BD0018 */   addiu     $sp, $sp, 0x18
