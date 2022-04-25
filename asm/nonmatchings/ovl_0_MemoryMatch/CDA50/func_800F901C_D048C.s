	.set noat
	.set noreorder

glabel func_800F901C_D048C
/* D048C 800F901C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D0490 800F9020 AFBF0014 */  sw         $ra, 0x14($sp)
/* D0494 800F9024 AFB00010 */  sw         $s0, 0x10($sp)
/* D0498 800F9028 3C038010 */  lui        $v1, %hi(D_800FDE2C)
/* D049C 800F902C 9463DE2C */  lhu        $v1, %lo(D_800FDE2C)($v1)
/* D04A0 800F9030 3C028888 */  lui        $v0, 0x8888
/* D04A4 800F9034 34428889 */  ori        $v0, $v0, 0x8889
/* D04A8 800F9038 00620019 */  multu      $v1, $v0
/* D04AC 800F903C 00002810 */  mfhi       $a1
/* D04B0 800F9040 00051102 */  srl        $v0, $a1, 4
/* D04B4 800F9044 2404002D */  addiu      $a0, $zero, 0x2d
/* D04B8 800F9048 00822023 */  subu       $a0, $a0, $v0
/* D04BC 800F904C 00808021 */  addu       $s0, $a0, $zero
/* D04C0 800F9050 00042400 */  sll        $a0, $a0, 0x10
/* D04C4 800F9054 0C01E41E */  jal        func_80079078
/* D04C8 800F9058 00042403 */   sra       $a0, $a0, 0x10
/* D04CC 800F905C 3C038010 */  lui        $v1, %hi(D_800FE2C2)
/* D04D0 800F9060 9463E2C2 */  lhu        $v1, %lo(D_800FE2C2)($v1)
/* D04D4 800F9064 24020001 */  addiu      $v0, $zero, 1
/* D04D8 800F9068 1462000B */  bne        $v1, $v0, .L800F9098
/* D04DC 800F906C 3202FFFF */   andi      $v0, $s0, 0xffff
/* D04E0 800F9070 3C028010 */  lui        $v0, %hi(D_800FE2C4)
/* D04E4 800F9074 9442E2C4 */  lhu        $v0, %lo(D_800FE2C4)($v0)
/* D04E8 800F9078 14400007 */  bnez       $v0, .L800F9098
/* D04EC 800F907C 3202FFFF */   andi      $v0, $s0, 0xffff
/* D04F0 800F9080 3C028010 */  lui        $v0, %hi(D_800FDE2C)
/* D04F4 800F9084 9442DE2C */  lhu        $v0, %lo(D_800FDE2C)($v0)
/* D04F8 800F9088 24420001 */  addiu      $v0, $v0, 1
/* D04FC 800F908C 3C018010 */  lui        $at, %hi(D_800FDE2C)
/* D0500 800F9090 A422DE2C */  sh         $v0, %lo(D_800FDE2C)($at)
/* D0504 800F9094 3202FFFF */  andi       $v0, $s0, 0xffff
.L800F9098:
/* D0508 800F9098 14400008 */  bnez       $v0, .L800F90BC
/* D050C 800F909C 24020001 */   addiu     $v0, $zero, 1
/* D0510 800F90A0 3C028010 */  lui        $v0, %hi(D_800FE2C4)
/* D0514 800F90A4 9442E2C4 */  lhu        $v0, %lo(D_800FE2C4)($v0)
/* D0518 800F90A8 14400004 */  bnez       $v0, .L800F90BC
/* D051C 800F90AC 00001021 */   addu      $v0, $zero, $zero
/* D0520 800F90B0 0C01E430 */  jal        func_800790C0
/* D0524 800F90B4 00000000 */   nop
/* D0528 800F90B8 00001021 */  addu       $v0, $zero, $zero
.L800F90BC:
/* D052C 800F90BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* D0530 800F90C0 8FB00010 */  lw         $s0, 0x10($sp)
/* D0534 800F90C4 03E00008 */  jr         $ra
/* D0538 800F90C8 27BD0018 */   addiu     $sp, $sp, 0x18
