	.set noat
	.set noreorder

glabel func_800F98F8_151C58
/* 151C58 800F98F8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 151C5C 800F98FC AFBF0034 */  sw         $ra, 0x34($sp)
/* 151C60 800F9900 AFB60030 */  sw         $s6, 0x30($sp)
/* 151C64 800F9904 AFB5002C */  sw         $s5, 0x2c($sp)
/* 151C68 800F9908 AFB40028 */  sw         $s4, 0x28($sp)
/* 151C6C 800F990C AFB30024 */  sw         $s3, 0x24($sp)
/* 151C70 800F9910 AFB20020 */  sw         $s2, 0x20($sp)
/* 151C74 800F9914 AFB1001C */  sw         $s1, 0x1c($sp)
/* 151C78 800F9918 AFB00018 */  sw         $s0, 0x18($sp)
/* 151C7C 800F991C 00809021 */  addu       $s2, $a0, $zero
/* 151C80 800F9920 00A08021 */  addu       $s0, $a1, $zero
/* 151C84 800F9924 00C0B021 */  addu       $s6, $a2, $zero
/* 151C88 800F9928 00E09821 */  addu       $s3, $a3, $zero
/* 151C8C 800F992C 8FB40048 */  lw         $s4, 0x48($sp)
/* 151C90 800F9930 00141040 */  sll        $v0, $s4, 1
/* 151C94 800F9934 00541021 */  addu       $v0, $v0, $s4
/* 151C98 800F9938 00021080 */  sll        $v0, $v0, 2
/* 151C9C 800F993C 3C038010 */  lui        $v1, %hi(D_800FA898)
/* 151CA0 800F9940 2463A898 */  addiu      $v1, $v1, %lo(D_800FA898)
/* 151CA4 800F9944 0043A821 */  addu       $s5, $v0, $v1
/* 151CA8 800F9948 2404006C */  addiu      $a0, $zero, 0x6c
/* 151CAC 800F994C 0C008DA1 */  jal        func_80023684
/* 151CB0 800F9950 24057918 */   addiu     $a1, $zero, 0x7918
/* 151CB4 800F9954 AE420050 */  sw         $v0, 0x50($s2)
/* 151CB8 800F9958 00402021 */  addu       $a0, $v0, $zero
/* 151CBC 800F995C 00002821 */  addu       $a1, $zero, $zero
/* 151CC0 800F9960 0C026DDC */  jal        func_8009B770
/* 151CC4 800F9964 2406006C */   addiu     $a2, $zero, 0x6c
/* 151CC8 800F9968 3C028010 */  lui        $v0, %hi(func_800F83A8_150708)
/* 151CCC 800F996C 244283A8 */  addiu      $v0, $v0, %lo(func_800F83A8_150708)
/* 151CD0 800F9970 AE420014 */  sw         $v0, 0x14($s2)
/* 151CD4 800F9974 8E510050 */  lw         $s1, 0x50($s2)
/* 151CD8 800F9978 24050A8D */  addiu      $a1, $zero, 0xa8d
/* 151CDC 800F997C 3C038010 */  lui        $v1, %hi(D_800FA81E)
/* 151CE0 800F9980 8463A81E */  lh         $v1, %lo(D_800FA81E)($v1)
/* 151CE4 800F9984 2402FFFF */  addiu      $v0, $zero, -1
/* 151CE8 800F9988 14620017 */  bne        $v1, $v0, .L800F99E8
/* 151CEC 800F998C 24060008 */   addiu     $a2, $zero, 8
/* 151CF0 800F9990 0C00516C */  jal        func_800145B0
/* 151CF4 800F9994 02002021 */   addu      $a0, $s0, $zero
/* 151CF8 800F9998 00408021 */  addu       $s0, $v0, $zero
/* 151CFC 800F999C 02002021 */  addu       $a0, $s0, $zero
/* 151D00 800F99A0 24050A8D */  addiu      $a1, $zero, 0xa8d
/* 151D04 800F99A4 0C007803 */  jal        func_8001E00C
/* 151D08 800F99A8 24060008 */   addiu     $a2, $zero, 8
/* 151D0C 800F99AC A2220055 */  sb         $v0, 0x55($s1)
/* 151D10 800F99B0 92230055 */  lbu        $v1, 0x55($s1)
/* 151D14 800F99B4 3C04800F */  lui        $a0, %hi(D_800ECDE0)
/* 151D18 800F99B8 8C84CDE0 */  lw         $a0, %lo(D_800ECDE0)($a0)
/* 151D1C 800F99BC 000310C0 */  sll        $v0, $v1, 3
/* 151D20 800F99C0 00431021 */  addu       $v0, $v0, $v1
/* 151D24 800F99C4 00021080 */  sll        $v0, $v0, 2
/* 151D28 800F99C8 00441021 */  addu       $v0, $v0, $a0
/* 151D2C 800F99CC 94420002 */  lhu        $v0, 2($v0)
/* 151D30 800F99D0 3C018010 */  lui        $at, %hi(D_800FA81E)
/* 151D34 800F99D4 A422A81E */  sh         $v0, %lo(D_800FA81E)($at)
/* 151D38 800F99D8 0C00EDB2 */  jal        func_8003B6C8
/* 151D3C 800F99DC 02002021 */   addu      $a0, $s0, $zero
/* 151D40 800F99E0 0803E68B */  j          .L800F9A2C
/* 151D44 800F99E4 00000000 */   nop
.L800F99E8:
/* 151D48 800F99E8 2404FFFF */  addiu      $a0, $zero, -1
/* 151D4C 800F99EC 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 151D50 800F99F0 0C007803 */  jal        func_8001E00C
/* 151D54 800F99F4 30C600FF */   andi      $a2, $a2, 0xff
/* 151D58 800F99F8 A2220055 */  sb         $v0, 0x55($s1)
/* 151D5C 800F99FC 92240055 */  lbu        $a0, 0x55($s1)
/* 151D60 800F9A00 240200FF */  addiu      $v0, $zero, 0xff
/* 151D64 800F9A04 10820009 */  beq        $a0, $v0, .L800F9A2C
/* 151D68 800F9A08 000418C0 */   sll       $v1, $a0, 3
/* 151D6C 800F9A0C 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 151D70 800F9A10 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 151D74 800F9A14 00641821 */  addu       $v1, $v1, $a0
/* 151D78 800F9A18 00031880 */  sll        $v1, $v1, 2
/* 151D7C 800F9A1C 00621821 */  addu       $v1, $v1, $v0
/* 151D80 800F9A20 3C028010 */  lui        $v0, %hi(D_800FA81E)
/* 151D84 800F9A24 9442A81E */  lhu        $v0, %lo(D_800FA81E)($v0)
/* 151D88 800F9A28 A4620002 */  sh         $v0, 2($v1)
.L800F9A2C:
/* 151D8C 800F9A2C 8E450040 */  lw         $a1, 0x40($s2)
/* 151D90 800F9A30 92230055 */  lbu        $v1, 0x55($s1)
/* 151D94 800F9A34 3C04800F */  lui        $a0, %hi(D_800ECDE0)
/* 151D98 800F9A38 8C84CDE0 */  lw         $a0, %lo(D_800ECDE0)($a0)
/* 151D9C 800F9A3C 000310C0 */  sll        $v0, $v1, 3
/* 151DA0 800F9A40 00431021 */  addu       $v0, $v0, $v1
/* 151DA4 800F9A44 00021080 */  sll        $v0, $v0, 2
/* 151DA8 800F9A48 00441021 */  addu       $v0, $v0, $a0
/* 151DAC 800F9A4C 94420000 */  lhu        $v0, ($v0)
/* 151DB0 800F9A50 A4A20000 */  sh         $v0, ($a1)
/* 151DB4 800F9A54 8E420040 */  lw         $v0, 0x40($s2)
/* 151DB8 800F9A58 84440000 */  lh         $a0, ($v0)
/* 151DBC 800F9A5C 3C057000 */  lui        $a1, 0x7000
/* 151DC0 800F9A60 0C00964C */  jal        func_80025930
/* 151DC4 800F9A64 3C067000 */   lui       $a2, 0x7000
/* 151DC8 800F9A68 24040006 */  addiu      $a0, $zero, 6
/* 151DCC 800F9A6C 0C005D3D */  jal        func_800174F4
/* 151DD0 800F9A70 24050A9D */   addiu     $a1, $zero, 0xa9d
/* 151DD4 800F9A74 8E430040 */  lw         $v1, 0x40($s2)
/* 151DD8 800F9A78 A4620002 */  sh         $v0, 2($v1)
/* 151DDC 800F9A7C 24020008 */  addiu      $v0, $zero, 8
/* 151DE0 800F9A80 AFA20010 */  sw         $v0, 0x10($sp)
/* 151DE4 800F9A84 3C028010 */  lui        $v0, %hi(D_800FA81C)
/* 151DE8 800F9A88 9442A81C */  lhu        $v0, %lo(D_800FA81C)($v0)
/* 151DEC 800F9A8C 24430001 */  addiu      $v1, $v0, 1
/* 151DF0 800F9A90 3C018010 */  lui        $at, %hi(D_800FA81C)
/* 151DF4 800F9A94 A423A81C */  sh         $v1, %lo(D_800FA81C)($at)
/* 151DF8 800F9A98 3042FFFF */  andi       $v0, $v0, 0xffff
/* 151DFC 800F9A9C AFA20014 */  sw         $v0, 0x14($sp)
/* 151E00 800F9AA0 02402021 */  addu       $a0, $s2, $zero
/* 151E04 800F9AA4 24050003 */  addiu      $a1, $zero, 3
/* 151E08 800F9AA8 2406002A */  addiu      $a2, $zero, 0x2a
/* 151E0C 800F9AAC 0C03E60E */  jal        func_800F9838_151B98
/* 151E10 800F9AB0 24070A8D */   addiu     $a3, $zero, 0xa8d
/* 151E14 800F9AB4 92240024 */  lbu        $a0, 0x24($s1)
/* 151E18 800F9AB8 240500FF */  addiu      $a1, $zero, 0xff
/* 151E1C 800F9ABC 240600FF */  addiu      $a2, $zero, 0xff
/* 151E20 800F9AC0 0C0078D8 */  jal        func_8001E360
/* 151E24 800F9AC4 240700BE */   addiu     $a3, $zero, 0xbe
/* 151E28 800F9AC8 C6600000 */  lwc1       $f0, ($s3)
/* 151E2C 800F9ACC E6400018 */  swc1       $f0, 0x18($s2)
/* 151E30 800F9AD0 C6600004 */  lwc1       $f0, 4($s3)
/* 151E34 800F9AD4 E640001C */  swc1       $f0, 0x1c($s2)
/* 151E38 800F9AD8 C6600008 */  lwc1       $f0, 8($s3)
/* 151E3C 800F9ADC E6400020 */  swc1       $f0, 0x20($s2)
/* 151E40 800F9AE0 3C014000 */  lui        $at, 0x4000
/* 151E44 800F9AE4 44810000 */  mtc1       $at, $f0
/* 151E48 800F9AE8 00000000 */  nop
/* 151E4C 800F9AEC E6400038 */  swc1       $f0, 0x38($s2)
/* 151E50 800F9AF0 E6400034 */  swc1       $f0, 0x34($s2)
/* 151E54 800F9AF4 E6400030 */  swc1       $f0, 0x30($s2)
/* 151E58 800F9AF8 02402021 */  addu       $a0, $s2, $zero
/* 151E5C 800F9AFC 3C053F4C */  lui        $a1, 0x3f4c
/* 151E60 800F9B00 34A5CCCD */  ori        $a1, $a1, 0xcccd
/* 151E64 800F9B04 00003021 */  addu       $a2, $zero, $zero
/* 151E68 800F9B08 0C03DBC9 */  jal        func_800F6F24_14F284
/* 151E6C 800F9B0C 24070001 */   addiu     $a3, $zero, 1
/* 151E70 800F9B10 3C013DCC */  lui        $at, 0x3dcc
/* 151E74 800F9B14 3421CCCD */  ori        $at, $at, 0xcccd
/* 151E78 800F9B18 44810000 */  mtc1       $at, $f0
/* 151E7C 800F9B1C 00000000 */  nop
/* 151E80 800F9B20 E6200044 */  swc1       $f0, 0x44($s1)
/* 151E84 800F9B24 3C0141F0 */  lui        $at, 0x41f0
/* 151E88 800F9B28 44810000 */  mtc1       $at, $f0
/* 151E8C 800F9B2C 00000000 */  nop
/* 151E90 800F9B30 E6200048 */  swc1       $f0, 0x48($s1)
/* 151E94 800F9B34 3C0143FA */  lui        $at, 0x43fa
/* 151E98 800F9B38 44810000 */  mtc1       $at, $f0
/* 151E9C 800F9B3C 00000000 */  nop
/* 151EA0 800F9B40 E6200034 */  swc1       $f0, 0x34($s1)
/* 151EA4 800F9B44 AE20005C */  sw         $zero, 0x5c($s1)
/* 151EA8 800F9B48 3C014270 */  lui        $at, 0x4270
/* 151EAC 800F9B4C 44810000 */  mtc1       $at, $f0
/* 151EB0 800F9B50 00000000 */  nop
/* 151EB4 800F9B54 E620003C */  swc1       $f0, 0x3c($s1)
/* 151EB8 800F9B58 3C01800C */  lui        $at, %hi(D_800B8984)
/* 151EBC 800F9B5C C4208984 */  lwc1       $f0, %lo(D_800B8984)($at)
/* 151EC0 800F9B60 E6200040 */  swc1       $f0, 0x40($s1)
/* 151EC4 800F9B64 3C01447A */  lui        $at, 0x447a
/* 151EC8 800F9B68 44810000 */  mtc1       $at, $f0
/* 151ECC 800F9B6C 00000000 */  nop
/* 151ED0 800F9B70 E6200038 */  swc1       $f0, 0x38($s1)
/* 151ED4 800F9B74 A2360052 */  sb         $s6, 0x52($s1)
/* 151ED8 800F9B78 AE200060 */  sw         $zero, 0x60($s1)
/* 151EDC 800F9B7C 3C013F00 */  lui        $at, 0x3f00
/* 151EE0 800F9B80 44810000 */  mtc1       $at, $f0
/* 151EE4 800F9B84 00000000 */  nop
/* 151EE8 800F9B88 E620004C */  swc1       $f0, 0x4c($s1)
/* 151EEC 800F9B8C A6200050 */  sh         $zero, 0x50($s1)
/* 151EF0 800F9B90 A2200054 */  sb         $zero, 0x54($s1)
/* 151EF4 800F9B94 E6200058 */  swc1       $f0, 0x58($s1)
/* 151EF8 800F9B98 A254004C */  sb         $s4, 0x4c($s2)
/* 151EFC 800F9B9C AEB20000 */  sw         $s2, ($s5)
/* 151F00 800F9BA0 AEA00008 */  sw         $zero, 8($s5)
/* 151F04 800F9BA4 8FBF0034 */  lw         $ra, 0x34($sp)
/* 151F08 800F9BA8 8FB60030 */  lw         $s6, 0x30($sp)
/* 151F0C 800F9BAC 8FB5002C */  lw         $s5, 0x2c($sp)
/* 151F10 800F9BB0 8FB40028 */  lw         $s4, 0x28($sp)
/* 151F14 800F9BB4 8FB30024 */  lw         $s3, 0x24($sp)
/* 151F18 800F9BB8 8FB20020 */  lw         $s2, 0x20($sp)
/* 151F1C 800F9BBC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 151F20 800F9BC0 8FB00018 */  lw         $s0, 0x18($sp)
/* 151F24 800F9BC4 03E00008 */  jr         $ra
/* 151F28 800F9BC8 27BD0038 */   addiu     $sp, $sp, 0x38
