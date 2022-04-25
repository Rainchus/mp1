	.set noat
	.set noreorder

glabel func_800FB0A8_D2518
/* D2518 800FB0A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D251C 800FB0AC AFBF0020 */  sw         $ra, 0x20($sp)
/* D2520 800FB0B0 AFB1001C */  sw         $s1, 0x1c($sp)
/* D2524 800FB0B4 AFB00018 */  sw         $s0, 0x18($sp)
/* D2528 800FB0B8 F7B40028 */  sdc1       $f20, 0x28($sp)
/* D252C 800FB0BC 00808821 */  addu       $s1, $a0, $zero
/* D2530 800FB0C0 3C028010 */  lui        $v0, %hi(func_800FB1B0_D2620)
/* D2534 800FB0C4 2442B1B0 */  addiu      $v0, $v0, %lo(func_800FB1B0_D2620)
/* D2538 800FB0C8 AE220014 */  sw         $v0, 0x14($s1)
/* D253C 800FB0CC 4480A000 */  mtc1       $zero, $f20
/* D2540 800FB0D0 00000000 */  nop
/* D2544 800FB0D4 E6340020 */  swc1       $f20, 0x20($s1)
/* D2548 800FB0D8 E634001C */  swc1       $f20, 0x1c($s1)
/* D254C 800FB0DC E6340018 */  swc1       $f20, 0x18($s1)
/* D2550 800FB0E0 3C0140A0 */  lui        $at, 0x40a0
/* D2554 800FB0E4 44810000 */  mtc1       $at, $f0
/* D2558 800FB0E8 00000000 */  nop
/* D255C 800FB0EC E6200038 */  swc1       $f0, 0x38($s1)
/* D2560 800FB0F0 E6200034 */  swc1       $f0, 0x34($s1)
/* D2564 800FB0F4 E6200030 */  swc1       $f0, 0x30($s1)
/* D2568 800FB0F8 3C040012 */  lui        $a0, 0x12
/* D256C 800FB0FC 3484000E */  ori        $a0, $a0, 0xe
/* D2570 800FB100 0C005D30 */  jal        func_800174C0
/* D2574 800FB104 240500DD */   addiu     $a1, $zero, 0xdd
/* D2578 800FB108 8E230040 */  lw         $v1, 0x40($s1)
/* D257C 800FB10C A4620000 */  sh         $v0, ($v1)
/* D2580 800FB110 2404002C */  addiu      $a0, $zero, 0x2c
/* D2584 800FB114 0C008DA1 */  jal        func_80023684
/* D2588 800FB118 24057918 */   addiu     $a1, $zero, 0x7918
/* D258C 800FB11C 00408021 */  addu       $s0, $v0, $zero
/* D2590 800FB120 AE300050 */  sw         $s0, 0x50($s1)
/* D2594 800FB124 02002021 */  addu       $a0, $s0, $zero
/* D2598 800FB128 00002821 */  addu       $a1, $zero, $zero
/* D259C 800FB12C 0C026DDC */  jal        func_8009B770
/* D25A0 800FB130 2406002C */   addiu     $a2, $zero, 0x2c
/* D25A4 800FB134 24020001 */  addiu      $v0, $zero, 1
/* D25A8 800FB138 A2020004 */  sb         $v0, 4($s0)
/* D25AC 800FB13C A2000005 */  sb         $zero, 5($s0)
/* D25B0 800FB140 3C0541A0 */  lui        $a1, 0x41a0
/* D25B4 800FB144 0C0023F1 */  jal        func_80008FC4
/* D25B8 800FB148 02202021 */   addu      $a0, $s1, $zero
/* D25BC 800FB14C 3C053F80 */  lui        $a1, 0x3f80
/* D25C0 800FB150 0C0023EE */  jal        func_80008FB8
/* D25C4 800FB154 02202021 */   addu      $a0, $s1, $zero
/* D25C8 800FB158 3C014409 */  lui        $at, 0x4409
/* D25CC 800FB15C 34218000 */  ori        $at, $at, 0x8000
/* D25D0 800FB160 44810000 */  mtc1       $at, $f0
/* D25D4 800FB164 00000000 */  nop
/* D25D8 800FB168 E7A00010 */  swc1       $f0, 0x10($sp)
/* D25DC 800FB16C 3C0143FA */  lui        $at, 0x43fa
/* D25E0 800FB170 44810000 */  mtc1       $at, $f0
/* D25E4 800FB174 00000000 */  nop
/* D25E8 800FB178 E7A00014 */  swc1       $f0, 0x14($sp)
/* D25EC 800FB17C 3C04800F */  lui        $a0, %hi(D_800F2AF8)
/* D25F0 800FB180 8C842AF8 */  lw         $a0, %lo(D_800F2AF8)($a0)
/* D25F4 800FB184 4405A000 */  mfc1       $a1, $f20
/* D25F8 800FB188 3C06C409 */  lui        $a2, 0xc409
/* D25FC 800FB18C 34C68000 */  ori        $a2, $a2, 0x8000
/* D2600 800FB190 0C00240A */  jal        func_80009028
/* D2604 800FB194 3C07C3FA */   lui       $a3, 0xc3fa
/* D2608 800FB198 8FBF0020 */  lw         $ra, 0x20($sp)
/* D260C 800FB19C 8FB1001C */  lw         $s1, 0x1c($sp)
/* D2610 800FB1A0 8FB00018 */  lw         $s0, 0x18($sp)
/* D2614 800FB1A4 D7B40028 */  ldc1       $f20, 0x28($sp)
/* D2618 800FB1A8 03E00008 */  jr         $ra
/* D261C 800FB1AC 27BD0030 */   addiu     $sp, $sp, 0x30
