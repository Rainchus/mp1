	.set noat
	.set noreorder

glabel func_8000DA7C
/* E67C 8000DA7C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E680 8000DA80 AFBF0018 */  sw         $ra, 0x18($sp)
/* E684 8000DA84 AFB10014 */  sw         $s1, 0x14($sp)
/* E688 8000DA88 AFB00010 */  sw         $s0, 0x10($sp)
/* E68C 8000DA8C 3C02800C */  lui        $v0, %hi(D_800C1890)
/* E690 8000DA90 24421890 */  addiu      $v0, $v0, %lo(D_800C1890)
/* E694 8000DA94 8C430000 */  lw         $v1, ($v0)
/* E698 8000DA98 8C42FFFC */  lw         $v0, -4($v0)
/* E69C 8000DA9C 00628023 */  subu       $s0, $v1, $v0
/* E6A0 8000DAA0 1200001A */  beqz       $s0, .L8000DB0C
/* E6A4 8000DAA4 32020001 */   andi      $v0, $s0, 1
/* E6A8 8000DAA8 02028021 */  addu       $s0, $s0, $v0
/* E6AC 8000DAAC 0C002BE8 */  jal        func_8000AFA0
/* E6B0 8000DAB0 02002021 */   addu      $a0, $s0, $zero
/* E6B4 8000DAB4 3C01800D */  lui        $at, %hi(D_800CEA88)
/* E6B8 8000DAB8 AC22EA88 */  sw         $v0, %lo(D_800CEA88)($at)
/* E6BC 8000DABC 10400014 */  beqz       $v0, .L8000DB10
/* E6C0 8000DAC0 24020002 */   addiu     $v0, $zero, 2
/* E6C4 8000DAC4 3C11800C */  lui        $s1, %hi(D_800C188C)
/* E6C8 8000DAC8 2631188C */  addiu      $s1, $s1, %lo(D_800C188C)
/* E6CC 8000DACC 8E240000 */  lw         $a0, ($s1)
/* E6D0 8000DAD0 3C05800D */  lui        $a1, %hi(D_800CEA88)
/* E6D4 8000DAD4 8CA5EA88 */  lw         $a1, %lo(D_800CEA88)($a1)
/* E6D8 8000DAD8 0C002B60 */  jal        func_8000AD80
/* E6DC 8000DADC 02003021 */   addu      $a2, $s0, $zero
/* E6E0 8000DAE0 3C04800D */  lui        $a0, %hi(D_800CEA88)
/* E6E4 8000DAE4 8C84EA88 */  lw         $a0, %lo(D_800CEA88)($a0)
/* E6E8 8000DAE8 84830000 */  lh         $v1, ($a0)
/* E6EC 8000DAEC 24024231 */  addiu      $v0, $zero, 0x4231
/* E6F0 8000DAF0 14620007 */  bne        $v1, $v0, .L8000DB10
/* E6F4 8000DAF4 24020001 */   addiu     $v0, $zero, 1
/* E6F8 8000DAF8 8E250008 */  lw         $a1, 8($s1)
/* E6FC 8000DAFC 0C0224B8 */  jal        func_800892E0
/* E700 8000DB00 00000000 */   nop
/* E704 8000DB04 080036C4 */  j          .L8000DB10
/* E708 8000DB08 00001021 */   addu      $v0, $zero, $zero
.L8000DB0C:
/* E70C 8000DB0C 24020001 */  addiu      $v0, $zero, 1
.L8000DB10:
/* E710 8000DB10 8FBF0018 */  lw         $ra, 0x18($sp)
/* E714 8000DB14 8FB10014 */  lw         $s1, 0x14($sp)
/* E718 8000DB18 8FB00010 */  lw         $s0, 0x10($sp)
/* E71C 8000DB1C 03E00008 */  jr         $ra
/* E720 8000DB20 27BD0020 */   addiu     $sp, $sp, 0x20
