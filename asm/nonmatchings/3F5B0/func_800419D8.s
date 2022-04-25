	.set noat
	.set noreorder

glabel func_800419D8
/* 425D8 800419D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 425DC 800419DC AFBF0018 */  sw         $ra, 0x18($sp)
/* 425E0 800419E0 AFB10014 */  sw         $s1, 0x14($sp)
/* 425E4 800419E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 425E8 800419E8 00808821 */  addu       $s1, $a0, $zero
/* 425EC 800419EC 3C048004 */  lui        $a0, %hi(func_800417B4)
/* 425F0 800419F0 248417B4 */  addiu      $a0, $a0, %lo(func_800417B4)
/* 425F4 800419F4 00002821 */  addu       $a1, $zero, $zero
/* 425F8 800419F8 00003021 */  addu       $a2, $zero, $zero
/* 425FC 800419FC 0C01770A */  jal        func_8005DC28
/* 42600 80041A00 24070040 */   addiu     $a3, $zero, 0x40
/* 42604 80041A04 00408021 */  addu       $s0, $v0, $zero
/* 42608 80041A08 8E040018 */  lw         $a0, 0x18($s0)
/* 4260C 80041A0C 0C016628 */  jal        func_800598A0
/* 42610 80041A10 24050010 */   addiu     $a1, $zero, 0x10
/* 42614 80041A14 AE02008C */  sw         $v0, 0x8c($s0)
/* 42618 80041A18 AC510000 */  sw         $s1, ($v0)
/* 4261C 80041A1C AC400004 */  sw         $zero, 4($v0)
/* 42620 80041A20 02001021 */  addu       $v0, $s0, $zero
/* 42624 80041A24 8FBF0018 */  lw         $ra, 0x18($sp)
/* 42628 80041A28 8FB10014 */  lw         $s1, 0x14($sp)
/* 4262C 80041A2C 8FB00010 */  lw         $s0, 0x10($sp)
/* 42630 80041A30 03E00008 */  jr         $ra
/* 42634 80041A34 27BD0020 */   addiu     $sp, $sp, 0x20
