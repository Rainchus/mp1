	.set noat
	.set noreorder

glabel func_800F7E5C_1501BC
/* 1501BC 800F7E5C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1501C0 800F7E60 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1501C4 800F7E64 AFB20030 */  sw         $s2, 0x30($sp)
/* 1501C8 800F7E68 AFB1002C */  sw         $s1, 0x2c($sp)
/* 1501CC 800F7E6C AFB00028 */  sw         $s0, 0x28($sp)
/* 1501D0 800F7E70 27B10010 */  addiu      $s1, $sp, 0x10
/* 1501D4 800F7E74 3C02800F */  lui        $v0, %hi(D_800EE984)
/* 1501D8 800F7E78 9442E984 */  lhu        $v0, %lo(D_800EE984)($v0)
/* 1501DC 800F7E7C 18400014 */  blez       $v0, .L800F7ED0
/* 1501E0 800F7E80 00008021 */   addu      $s0, $zero, $zero
/* 1501E4 800F7E84 3C12800F */  lui        $s2, %hi(D_800EDE70)
/* 1501E8 800F7E88 2652DE70 */  addiu      $s2, $s2, %lo(D_800EDE70)
/* 1501EC 800F7E8C 00101080 */  sll        $v0, $s0, 2
.L800F7E90:
/* 1501F0 800F7E90 00521021 */  addu       $v0, $v0, $s2
/* 1501F4 800F7E94 8C440000 */  lw         $a0, ($v0)
/* 1501F8 800F7E98 C4800018 */  lwc1       $f0, 0x18($a0)
/* 1501FC 800F7E9C E6200000 */  swc1       $f0, ($s1)
/* 150200 800F7EA0 C480001C */  lwc1       $f0, 0x1c($a0)
/* 150204 800F7EA4 E6200004 */  swc1       $f0, 4($s1)
/* 150208 800F7EA8 C4800020 */  lwc1       $f0, 0x20($a0)
/* 15020C 800F7EAC E6200008 */  swc1       $f0, 8($s1)
/* 150210 800F7EB0 0C03DF66 */  jal        func_800F7D98_1500F8
/* 150214 800F7EB4 02202821 */   addu      $a1, $s1, $zero
/* 150218 800F7EB8 26100001 */  addiu      $s0, $s0, 1
/* 15021C 800F7EBC 3C02800F */  lui        $v0, %hi(D_800EE984)
/* 150220 800F7EC0 9442E984 */  lhu        $v0, %lo(D_800EE984)($v0)
/* 150224 800F7EC4 0202102A */  slt        $v0, $s0, $v0
/* 150228 800F7EC8 1440FFF1 */  bnez       $v0, .L800F7E90
/* 15022C 800F7ECC 00101080 */   sll       $v0, $s0, 2
.L800F7ED0:
/* 150230 800F7ED0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 150234 800F7ED4 8FB20030 */  lw         $s2, 0x30($sp)
/* 150238 800F7ED8 8FB1002C */  lw         $s1, 0x2c($sp)
/* 15023C 800F7EDC 8FB00028 */  lw         $s0, 0x28($sp)
/* 150240 800F7EE0 03E00008 */  jr         $ra
/* 150244 800F7EE4 27BD0038 */   addiu     $sp, $sp, 0x38
