	.set noat
	.set noreorder

glabel func_80053E8C
/* 54A8C 80053E8C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 54A90 80053E90 AFBF0034 */  sw         $ra, 0x34($sp)
/* 54A94 80053E94 AFB60030 */  sw         $s6, 0x30($sp)
/* 54A98 80053E98 AFB5002C */  sw         $s5, 0x2c($sp)
/* 54A9C 80053E9C AFB40028 */  sw         $s4, 0x28($sp)
/* 54AA0 80053EA0 AFB30024 */  sw         $s3, 0x24($sp)
/* 54AA4 80053EA4 AFB20020 */  sw         $s2, 0x20($sp)
/* 54AA8 80053EA8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 54AAC 80053EAC AFB00018 */  sw         $s0, 0x18($sp)
/* 54AB0 80053EB0 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 54AB4 80053EB4 3C02000A */  lui        $v0, 0xa
/* 54AB8 80053EB8 34420013 */  ori        $v0, $v0, 0x13
/* 54ABC 80053EBC AFA20010 */  sw         $v0, 0x10($sp)
/* 54AC0 80053EC0 3C02000A */  lui        $v0, 0xa
/* 54AC4 80053EC4 34420014 */  ori        $v0, $v0, 0x14
/* 54AC8 80053EC8 AFA20014 */  sw         $v0, 0x14($sp)
/* 54ACC 80053ECC 00042180 */  sll        $a0, $a0, 6
/* 54AD0 80053ED0 3C02800E */  lui        $v0, %hi(D_800D83A8)
/* 54AD4 80053ED4 244283A8 */  addiu      $v0, $v0, %lo(D_800D83A8)
/* 54AD8 80053ED8 0082A821 */  addu       $s5, $a0, $v0
/* 54ADC 80053EDC 0000A021 */  addu       $s4, $zero, $zero
/* 54AE0 80053EE0 27B60010 */  addiu      $s6, $sp, 0x10
/* 54AE4 80053EE4 86B30006 */  lh         $s3, 6($s5)
/* 54AE8 80053EE8 3C013F00 */  lui        $at, 0x3f00
/* 54AEC 80053EEC 4481A000 */  mtc1       $at, $f20
/* 54AF0 80053EF0 00141080 */  sll        $v0, $s4, 2
.L80053EF4:
/* 54AF4 80053EF4 00561021 */  addu       $v0, $v0, $s6
/* 54AF8 80053EF8 8C440000 */  lw         $a0, ($v0)
/* 54AFC 80053EFC 0C00516C */  jal        func_800145B0
/* 54B00 80053F00 00148040 */   sll       $s0, $s4, 1
/* 54B04 80053F04 00408821 */  addu       $s1, $v0, $zero
/* 54B08 80053F08 0C019E29 */  jal        func_800678A4
/* 54B0C 80053F0C 02202021 */   addu      $a0, $s1, $zero
/* 54B10 80053F10 02158021 */  addu       $s0, $s0, $s5
/* 54B14 80053F14 A6020032 */  sh         $v0, 0x32($s0)
/* 54B18 80053F18 0C0051CC */  jal        func_80014730
/* 54B1C 80053F1C 02202021 */   addu      $a0, $s1, $zero
/* 54B20 80053F20 26920002 */  addiu      $s2, $s4, 2
/* 54B24 80053F24 00128C00 */  sll        $s1, $s2, 0x10
/* 54B28 80053F28 00118C03 */  sra        $s1, $s1, 0x10
/* 54B2C 80053F2C 02602021 */  addu       $a0, $s3, $zero
/* 54B30 80053F30 02202821 */  addu       $a1, $s1, $zero
/* 54B34 80053F34 86060032 */  lh         $a2, 0x32($s0)
/* 54B38 80053F38 0C019C82 */  jal        func_80067208
/* 54B3C 80053F3C 00003821 */   addu      $a3, $zero, $zero
/* 54B40 80053F40 02602021 */  addu       $a0, $s3, $zero
/* 54B44 80053F44 02202821 */  addu       $a1, $s1, $zero
/* 54B48 80053F48 0C019CE1 */  jal        func_80067384
/* 54B4C 80053F4C 24064790 */   addiu     $a2, $zero, 0x4790
/* 54B50 80053F50 02602021 */  addu       $a0, $s3, $zero
/* 54B54 80053F54 02202821 */  addu       $a1, $s1, $zero
/* 54B58 80053F58 0C019D2F */  jal        func_800674BC
/* 54B5C 80053F5C 24061000 */   addiu     $a2, $zero, 0x1000
/* 54B60 80053F60 00129080 */  sll        $s2, $s2, 2
/* 54B64 80053F64 02602021 */  addu       $a0, $s3, $zero
/* 54B68 80053F68 3C06800C */  lui        $a2, %hi(D_800C5610)
/* 54B6C 80053F6C 00D23021 */  addu       $a2, $a2, $s2
/* 54B70 80053F70 84C65610 */  lh         $a2, %lo(D_800C5610)($a2)
/* 54B74 80053F74 3C07800C */  lui        $a3, %hi(D_800C5612)
/* 54B78 80053F78 00F23821 */  addu       $a3, $a3, $s2
/* 54B7C 80053F7C 84E75612 */  lh         $a3, %lo(D_800C5612)($a3)
/* 54B80 80053F80 0C019B71 */  jal        func_80066DC4
/* 54B84 80053F84 02202821 */   addu      $a1, $s1, $zero
/* 54B88 80053F88 02602021 */  addu       $a0, $s3, $zero
/* 54B8C 80053F8C 4406A000 */  mfc1       $a2, $f20
/* 54B90 80053F90 4407A000 */  mfc1       $a3, $f20
/* 54B94 80053F94 00000000 */  nop
/* 54B98 80053F98 0C019CD5 */  jal        func_80067354
/* 54B9C 80053F9C 02202821 */   addu      $a1, $s1, $zero
/* 54BA0 80053FA0 02602021 */  addu       $a0, $s3, $zero
/* 54BA4 80053FA4 02202821 */  addu       $a1, $s1, $zero
/* 54BA8 80053FA8 0C019CA1 */  jal        func_80067284
/* 54BAC 80053FAC 00003021 */   addu      $a2, $zero, $zero
/* 54BB0 80053FB0 26940001 */  addiu      $s4, $s4, 1
/* 54BB4 80053FB4 2A820002 */  slti       $v0, $s4, 2
/* 54BB8 80053FB8 1440FFCE */  bnez       $v0, .L80053EF4
/* 54BBC 80053FBC 00141080 */   sll       $v0, $s4, 2
/* 54BC0 80053FC0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 54BC4 80053FC4 8FB60030 */  lw         $s6, 0x30($sp)
/* 54BC8 80053FC8 8FB5002C */  lw         $s5, 0x2c($sp)
/* 54BCC 80053FCC 8FB40028 */  lw         $s4, 0x28($sp)
/* 54BD0 80053FD0 8FB30024 */  lw         $s3, 0x24($sp)
/* 54BD4 80053FD4 8FB20020 */  lw         $s2, 0x20($sp)
/* 54BD8 80053FD8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 54BDC 80053FDC 8FB00018 */  lw         $s0, 0x18($sp)
/* 54BE0 80053FE0 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 54BE4 80053FE4 03E00008 */  jr         $ra
/* 54BE8 80053FE8 27BD0040 */   addiu     $sp, $sp, 0x40
