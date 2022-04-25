	.set noat
	.set noreorder

glabel func_8005412C
/* 54D2C 8005412C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 54D30 80054130 AFBF001C */  sw         $ra, 0x1c($sp)
/* 54D34 80054134 AFB20018 */  sw         $s2, 0x18($sp)
/* 54D38 80054138 AFB10014 */  sw         $s1, 0x14($sp)
/* 54D3C 8005413C AFB00010 */  sw         $s0, 0x10($sp)
/* 54D40 80054140 00049180 */  sll        $s2, $a0, 6
/* 54D44 80054144 3C02800E */  lui        $v0, %hi(D_800D83A8)
/* 54D48 80054148 244283A8 */  addiu      $v0, $v0, %lo(D_800D83A8)
/* 54D4C 8005414C 02429021 */  addu       $s2, $s2, $v0
/* 54D50 80054150 2404000B */  addiu      $a0, $zero, 0xb
/* 54D54 80054154 0C0193BD */  jal        func_80064EF4
/* 54D58 80054158 24050005 */   addiu     $a1, $zero, 5
/* 54D5C 8005415C 00408021 */  addu       $s0, $v0, $zero
/* 54D60 80054160 A6500006 */  sh         $s0, 6($s2)
/* 54D64 80054164 3C04000A */  lui        $a0, 0xa
/* 54D68 80054168 0C00516C */  jal        func_800145B0
/* 54D6C 8005416C 3484001F */   ori       $a0, $a0, 0x1f
/* 54D70 80054170 00408821 */  addu       $s1, $v0, $zero
/* 54D74 80054174 0C019E29 */  jal        func_800678A4
/* 54D78 80054178 02202021 */   addu      $a0, $s1, $zero
/* 54D7C 8005417C A6420008 */  sh         $v0, 8($s2)
/* 54D80 80054180 0C0051CC */  jal        func_80014730
/* 54D84 80054184 02202021 */   addu      $a0, $s1, $zero
/* 54D88 80054188 00108400 */  sll        $s0, $s0, 0x10
/* 54D8C 8005418C 00108403 */  sra        $s0, $s0, 0x10
/* 54D90 80054190 02002021 */  addu       $a0, $s0, $zero
/* 54D94 80054194 00002821 */  addu       $a1, $zero, $zero
/* 54D98 80054198 86460008 */  lh         $a2, 8($s2)
/* 54D9C 8005419C 0C019C82 */  jal        func_80067208
/* 54DA0 800541A0 00003821 */   addu      $a3, $zero, $zero
/* 54DA4 800541A4 02002021 */  addu       $a0, $s0, $zero
/* 54DA8 800541A8 00002821 */  addu       $a1, $zero, $zero
/* 54DAC 800541AC 0C019CE1 */  jal        func_80067384
/* 54DB0 800541B0 24064790 */   addiu     $a2, $zero, 0x4790
/* 54DB4 800541B4 02002021 */  addu       $a0, $s0, $zero
/* 54DB8 800541B8 00002821 */  addu       $a1, $zero, $zero
/* 54DBC 800541BC 0C019D2F */  jal        func_800674BC
/* 54DC0 800541C0 24061000 */   addiu     $a2, $zero, 0x1000
/* 54DC4 800541C4 02002021 */  addu       $a0, $s0, $zero
/* 54DC8 800541C8 00002821 */  addu       $a1, $zero, $zero
/* 54DCC 800541CC 00003021 */  addu       $a2, $zero, $zero
/* 54DD0 800541D0 0C019B71 */  jal        func_80066DC4
/* 54DD4 800541D4 00003821 */   addu      $a3, $zero, $zero
/* 54DD8 800541D8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 54DDC 800541DC 8FB20018 */  lw         $s2, 0x18($sp)
/* 54DE0 800541E0 8FB10014 */  lw         $s1, 0x14($sp)
/* 54DE4 800541E4 8FB00010 */  lw         $s0, 0x10($sp)
/* 54DE8 800541E8 03E00008 */  jr         $ra
/* 54DEC 800541EC 27BD0020 */   addiu     $sp, $sp, 0x20
