	.set noat
	.set noreorder

glabel func_80013A74
/* 14674 80013A74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 14678 80013A78 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1467C 80013A7C 3C04800D */  lui        $a0, %hi(D_800D12D0)
/* 14680 80013A80 248412D0 */  addiu      $a0, $a0, %lo(D_800D12D0)
/* 14684 80013A84 00002821 */  addu       $a1, $zero, $zero
/* 14688 80013A88 0C022278 */  jal        func_800889E0
/* 1468C 80013A8C 24060001 */   addiu     $a2, $zero, 1
/* 14690 80013A90 3C02800D */  lui        $v0, %hi(D_800D12B0)
/* 14694 80013A94 844212B0 */  lh         $v0, %lo(D_800D12B0)($v0)
/* 14698 80013A98 28420008 */  slti       $v0, $v0, 8
/* 1469C 80013A9C 1040000B */  beqz       $v0, .L80013ACC
/* 146A0 80013AA0 00003021 */   addu      $a2, $zero, $zero
/* 146A4 80013AA4 3C04800D */  lui        $a0, %hi(D_800D12B4)
/* 146A8 80013AA8 848412B4 */  lh         $a0, %lo(D_800D12B4)($a0)
/* 146AC 80013AAC 00042100 */  sll        $a0, $a0, 4
/* 146B0 80013AB0 3C02800D */  lui        $v0, %hi(D_800D1230)
/* 146B4 80013AB4 24421230 */  addiu      $v0, $v0, %lo(D_800D1230)
/* 146B8 80013AB8 00822021 */  addu       $a0, $a0, $v0
/* 146BC 80013ABC 3C058001 */  lui        $a1, %hi(func_80013974)
/* 146C0 80013AC0 24A53974 */  addiu      $a1, $a1, %lo(func_80013974)
/* 146C4 80013AC4 0C0190BF */  jal        func_800642FC
/* 146C8 80013AC8 00003821 */   addu      $a3, $zero, $zero
.L80013ACC:
/* 146CC 80013ACC 3C04800D */  lui        $a0, %hi(D_800D12D0)
/* 146D0 80013AD0 248412D0 */  addiu      $a0, $a0, %lo(D_800D12D0)
/* 146D4 80013AD4 00002821 */  addu       $a1, $zero, $zero
/* 146D8 80013AD8 0C0222C4 */  jal        func_80088B10
/* 146DC 80013ADC 24060001 */   addiu     $a2, $zero, 1
/* 146E0 80013AE0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 146E4 80013AE4 03E00008 */  jr         $ra
/* 146E8 80013AE8 27BD0018 */   addiu     $sp, $sp, 0x18
