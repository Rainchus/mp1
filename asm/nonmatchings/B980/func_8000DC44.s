	.set noat
	.set noreorder

glabel func_8000DC44
/* E844 8000DC44 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E848 8000DC48 AFBF0018 */  sw         $ra, 0x18($sp)
/* E84C 8000DC4C AFB10014 */  sw         $s1, 0x14($sp)
/* E850 8000DC50 AFB00010 */  sw         $s0, 0x10($sp)
/* E854 8000DC54 00808821 */  addu       $s1, $a0, $zero
/* E858 8000DC58 8E22001C */  lw         $v0, 0x1c($s1)
/* E85C 8000DC5C 10400016 */  beqz       $v0, .L8000DCB8
/* E860 8000DC60 24020001 */   addiu     $v0, $zero, 1
/* E864 8000DC64 8E220020 */  lw         $v0, 0x20($s1)
/* E868 8000DC68 10400013 */  beqz       $v0, .L8000DCB8
/* E86C 8000DC6C 24020001 */   addiu     $v0, $zero, 1
/* E870 8000DC70 8E300020 */  lw         $s0, 0x20($s1)
/* E874 8000DC74 32020001 */  andi       $v0, $s0, 1
/* E878 8000DC78 02028021 */  addu       $s0, $s0, $v0
/* E87C 8000DC7C 0C002BE8 */  jal        func_8000AFA0
/* E880 8000DC80 02002021 */   addu      $a0, $s0, $zero
/* E884 8000DC84 00402821 */  addu       $a1, $v0, $zero
/* E888 8000DC88 3C01800D */  lui        $at, %hi(D_800CEA98)
/* E88C 8000DC8C AC25EA98 */  sw         $a1, %lo(D_800CEA98)($at)
/* E890 8000DC90 50A00009 */  beql       $a1, $zero, .L8000DCB8
/* E894 8000DC94 24020002 */   addiu     $v0, $zero, 2
/* E898 8000DC98 8E24001C */  lw         $a0, 0x1c($s1)
/* E89C 8000DC9C 3C02800C */  lui        $v0, %hi(D_800C1888)
/* E8A0 8000DCA0 8C421888 */  lw         $v0, %lo(D_800C1888)($v0)
/* E8A4 8000DCA4 00822021 */  addu       $a0, $a0, $v0
/* E8A8 8000DCA8 AE24001C */  sw         $a0, 0x1c($s1)
/* E8AC 8000DCAC 0C002B60 */  jal        func_8000AD80
/* E8B0 8000DCB0 02003021 */   addu      $a2, $s0, $zero
/* E8B4 8000DCB4 00001021 */  addu       $v0, $zero, $zero
.L8000DCB8:
/* E8B8 8000DCB8 8FBF0018 */  lw         $ra, 0x18($sp)
/* E8BC 8000DCBC 8FB10014 */  lw         $s1, 0x14($sp)
/* E8C0 8000DCC0 8FB00010 */  lw         $s0, 0x10($sp)
/* E8C4 8000DCC4 03E00008 */  jr         $ra
/* E8C8 8000DCC8 27BD0020 */   addiu     $sp, $sp, 0x20
