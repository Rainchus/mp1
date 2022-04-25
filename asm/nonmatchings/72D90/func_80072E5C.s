	.set noat
	.set noreorder

glabel func_80072E5C
/* 73A5C 80072E5C 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 73A60 80072E60 AFBF006C */  sw         $ra, 0x6c($sp)
/* 73A64 80072E64 AFBE0068 */  sw         $fp, 0x68($sp)
/* 73A68 80072E68 AFB70064 */  sw         $s7, 0x64($sp)
/* 73A6C 80072E6C AFB60060 */  sw         $s6, 0x60($sp)
/* 73A70 80072E70 AFB5005C */  sw         $s5, 0x5c($sp)
/* 73A74 80072E74 AFB40058 */  sw         $s4, 0x58($sp)
/* 73A78 80072E78 AFB30054 */  sw         $s3, 0x54($sp)
/* 73A7C 80072E7C AFB20050 */  sw         $s2, 0x50($sp)
/* 73A80 80072E80 AFB1004C */  sw         $s1, 0x4c($sp)
/* 73A84 80072E84 AFB00048 */  sw         $s0, 0x48($sp)
/* 73A88 80072E88 00808821 */  addu       $s1, $a0, $zero
/* 73A8C 80072E8C 00A0B821 */  addu       $s7, $a1, $zero
/* 73A90 80072E90 00009821 */  addu       $s3, $zero, $zero
/* 73A94 80072E94 241E0002 */  addiu      $fp, $zero, 2
/* 73A98 80072E98 00009021 */  addu       $s2, $zero, $zero
.L80072E9C:
/* 73A9C 80072E9C 00131400 */  sll        $v0, $s3, 0x10
/* 73AA0 80072EA0 00021403 */  sra        $v0, $v0, 0x10
/* 73AA4 80072EA4 00022080 */  sll        $a0, $v0, 2
/* 73AA8 80072EA8 00821821 */  addu       $v1, $a0, $v0
/* 73AAC 80072EAC 0003B180 */  sll        $s6, $v1, 6
/* 73AB0 80072EB0 24420010 */  addiu      $v0, $v0, 0x10
/* 73AB4 80072EB4 00021080 */  sll        $v0, $v0, 2
/* 73AB8 80072EB8 30420FFF */  andi       $v0, $v0, 0xfff
/* 73ABC 80072EBC 3C08E400 */  lui        $t0, 0xe400
/* 73AC0 80072EC0 0048A825 */  or         $s5, $v0, $t0
/* 73AC4 80072EC4 30940FFF */  andi       $s4, $a0, 0xfff
/* 73AC8 80072EC8 00128400 */  sll        $s0, $s2, 0x10
.L80072ECC:
/* 73ACC 80072ECC 00108403 */  sra        $s0, $s0, 0x10
/* 73AD0 80072ED0 02162821 */  addu       $a1, $s0, $s6
/* 73AD4 80072ED4 00052840 */  sll        $a1, $a1, 1
/* 73AD8 80072ED8 24020140 */  addiu      $v0, $zero, 0x140
/* 73ADC 80072EDC AFA20010 */  sw         $v0, 0x10($sp)
/* 73AE0 80072EE0 240200F0 */  addiu      $v0, $zero, 0xf0
/* 73AE4 80072EE4 AFA20014 */  sw         $v0, 0x14($sp)
/* 73AE8 80072EE8 AFA00018 */  sw         $zero, 0x18($sp)
/* 73AEC 80072EEC AFA0001C */  sw         $zero, 0x1c($sp)
/* 73AF0 80072EF0 24020040 */  addiu      $v0, $zero, 0x40
/* 73AF4 80072EF4 AFA20020 */  sw         $v0, 0x20($sp)
/* 73AF8 80072EF8 24020010 */  addiu      $v0, $zero, 0x10
/* 73AFC 80072EFC AFA20024 */  sw         $v0, 0x24($sp)
/* 73B00 80072F00 AFA00028 */  sw         $zero, 0x28($sp)
/* 73B04 80072F04 AFBE002C */  sw         $fp, 0x2c($sp)
/* 73B08 80072F08 AFBE0030 */  sw         $fp, 0x30($sp)
/* 73B0C 80072F0C AFA00034 */  sw         $zero, 0x34($sp)
/* 73B10 80072F10 AFA00038 */  sw         $zero, 0x38($sp)
/* 73B14 80072F14 AFA0003C */  sw         $zero, 0x3c($sp)
/* 73B18 80072F18 AFA00040 */  sw         $zero, 0x40($sp)
/* 73B1C 80072F1C 02202021 */  addu       $a0, $s1, $zero
/* 73B20 80072F20 02E52821 */  addu       $a1, $s7, $a1
/* 73B24 80072F24 00003021 */  addu       $a2, $zero, $zero
/* 73B28 80072F28 0C00E818 */  jal        func_8003A060
/* 73B2C 80072F2C 24070002 */   addiu     $a3, $zero, 2
/* 73B30 80072F30 8E230000 */  lw         $v1, ($s1)
/* 73B34 80072F34 24620008 */  addiu      $v0, $v1, 8
/* 73B38 80072F38 AE220000 */  sw         $v0, ($s1)
/* 73B3C 80072F3C 26020040 */  addiu      $v0, $s0, 0x40
/* 73B40 80072F40 00021080 */  sll        $v0, $v0, 2
/* 73B44 80072F44 30420FFF */  andi       $v0, $v0, 0xfff
/* 73B48 80072F48 00021300 */  sll        $v0, $v0, 0xc
/* 73B4C 80072F4C 00551025 */  or         $v0, $v0, $s5
/* 73B50 80072F50 AC620000 */  sw         $v0, ($v1)
/* 73B54 80072F54 00108080 */  sll        $s0, $s0, 2
/* 73B58 80072F58 32100FFF */  andi       $s0, $s0, 0xfff
/* 73B5C 80072F5C 00108300 */  sll        $s0, $s0, 0xc
/* 73B60 80072F60 02148025 */  or         $s0, $s0, $s4
/* 73B64 80072F64 AC700004 */  sw         $s0, 4($v1)
/* 73B68 80072F68 8E230000 */  lw         $v1, ($s1)
/* 73B6C 80072F6C 24620008 */  addiu      $v0, $v1, 8
/* 73B70 80072F70 AE220000 */  sw         $v0, ($s1)
/* 73B74 80072F74 3C02E100 */  lui        $v0, 0xe100
/* 73B78 80072F78 AC620000 */  sw         $v0, ($v1)
/* 73B7C 80072F7C AC600004 */  sw         $zero, 4($v1)
/* 73B80 80072F80 8E230000 */  lw         $v1, ($s1)
/* 73B84 80072F84 24620008 */  addiu      $v0, $v1, 8
/* 73B88 80072F88 AE220000 */  sw         $v0, ($s1)
/* 73B8C 80072F8C 3C02F100 */  lui        $v0, 0xf100
/* 73B90 80072F90 AC620000 */  sw         $v0, ($v1)
/* 73B94 80072F94 3C020400 */  lui        $v0, 0x400
/* 73B98 80072F98 34420400 */  ori        $v0, $v0, 0x400
/* 73B9C 80072F9C AC620004 */  sw         $v0, 4($v1)
/* 73BA0 80072FA0 26420040 */  addiu      $v0, $s2, 0x40
/* 73BA4 80072FA4 00409021 */  addu       $s2, $v0, $zero
/* 73BA8 80072FA8 00021400 */  sll        $v0, $v0, 0x10
/* 73BAC 80072FAC 00021403 */  sra        $v0, $v0, 0x10
/* 73BB0 80072FB0 28420140 */  slti       $v0, $v0, 0x140
/* 73BB4 80072FB4 5440FFC5 */  bnel       $v0, $zero, .L80072ECC
/* 73BB8 80072FB8 00128400 */   sll       $s0, $s2, 0x10
/* 73BBC 80072FBC 26620010 */  addiu      $v0, $s3, 0x10
/* 73BC0 80072FC0 00409821 */  addu       $s3, $v0, $zero
/* 73BC4 80072FC4 00021400 */  sll        $v0, $v0, 0x10
/* 73BC8 80072FC8 00021403 */  sra        $v0, $v0, 0x10
/* 73BCC 80072FCC 284200F0 */  slti       $v0, $v0, 0xf0
/* 73BD0 80072FD0 1440FFB2 */  bnez       $v0, .L80072E9C
/* 73BD4 80072FD4 00009021 */   addu      $s2, $zero, $zero
/* 73BD8 80072FD8 8FBF006C */  lw         $ra, 0x6c($sp)
/* 73BDC 80072FDC 8FBE0068 */  lw         $fp, 0x68($sp)
/* 73BE0 80072FE0 8FB70064 */  lw         $s7, 0x64($sp)
/* 73BE4 80072FE4 8FB60060 */  lw         $s6, 0x60($sp)
/* 73BE8 80072FE8 8FB5005C */  lw         $s5, 0x5c($sp)
/* 73BEC 80072FEC 8FB40058 */  lw         $s4, 0x58($sp)
/* 73BF0 80072FF0 8FB30054 */  lw         $s3, 0x54($sp)
/* 73BF4 80072FF4 8FB20050 */  lw         $s2, 0x50($sp)
/* 73BF8 80072FF8 8FB1004C */  lw         $s1, 0x4c($sp)
/* 73BFC 80072FFC 8FB00048 */  lw         $s0, 0x48($sp)
/* 73C00 80073000 03E00008 */  jr         $ra
/* 73C04 80073004 27BD0070 */   addiu     $sp, $sp, 0x70
