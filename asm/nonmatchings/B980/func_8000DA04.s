	.set noat
	.set noreorder

glabel func_8000DA04
/* E604 8000DA04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E608 8000DA08 AFBF0014 */  sw         $ra, 0x14($sp)
/* E60C 8000DA0C AFB00010 */  sw         $s0, 0x10($sp)
/* E610 8000DA10 30820001 */  andi       $v0, $a0, 1
/* E614 8000DA14 00448021 */  addu       $s0, $v0, $a0
/* E618 8000DA18 0C002BE8 */  jal        func_8000AFA0
/* E61C 8000DA1C 02002021 */   addu      $a0, $s0, $zero
/* E620 8000DA20 3C01800D */  lui        $at, %hi(D_800CEA90)
/* E624 8000DA24 AC22EA90 */  sw         $v0, %lo(D_800CEA90)($at)
/* E628 8000DA28 10400010 */  beqz       $v0, .L8000DA6C
/* E62C 8000DA2C 24020001 */   addiu     $v0, $zero, 1
/* E630 8000DA30 3C02800C */  lui        $v0, %hi(D_800C1888)
/* E634 8000DA34 8C421888 */  lw         $v0, %lo(D_800C1888)($v0)
/* E638 8000DA38 14400005 */  bnez       $v0, .L8000DA50
/* E63C 8000DA3C 00000000 */   nop
/* E640 8000DA40 3C02800D */  lui        $v0, %hi(D_800CEA90)
/* E644 8000DA44 8C42EA90 */  lw         $v0, %lo(D_800CEA90)($v0)
/* E648 8000DA48 0800369A */  j          .L8000DA68
/* E64C 8000DA4C A4400000 */   sh        $zero, ($v0)
.L8000DA50:
/* E650 8000DA50 3C04800C */  lui        $a0, %hi(D_800C1888)
/* E654 8000DA54 8C841888 */  lw         $a0, %lo(D_800C1888)($a0)
/* E658 8000DA58 3C05800D */  lui        $a1, %hi(D_800CEA90)
/* E65C 8000DA5C 8CA5EA90 */  lw         $a1, %lo(D_800CEA90)($a1)
/* E660 8000DA60 0C002B60 */  jal        func_8000AD80
/* E664 8000DA64 02003021 */   addu      $a2, $s0, $zero
.L8000DA68:
/* E668 8000DA68 00001021 */  addu       $v0, $zero, $zero
.L8000DA6C:
/* E66C 8000DA6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* E670 8000DA70 8FB00010 */  lw         $s0, 0x10($sp)
/* E674 8000DA74 03E00008 */  jr         $ra
/* E678 8000DA78 27BD0018 */   addiu     $sp, $sp, 0x18
