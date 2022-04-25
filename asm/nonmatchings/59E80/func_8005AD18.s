	.set noat
	.set noreorder

glabel func_8005AD18
/* 5B918 8005AD18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5B91C 8005AD1C AFBF001C */  sw         $ra, 0x1c($sp)
/* 5B920 8005AD20 AFB00018 */  sw         $s0, 0x18($sp)
/* 5B924 8005AD24 3C03800C */  lui        $v1, %hi(D_800C572F)
/* 5B928 8005AD28 9063572F */  lbu        $v1, %lo(D_800C572F)($v1)
/* 5B92C 8005AD2C 24020001 */  addiu      $v0, $zero, 1
/* 5B930 8005AD30 14620040 */  bne        $v1, $v0, .L8005AE34
/* 5B934 8005AD34 24040045 */   addiu     $a0, $zero, 0x45
/* 5B938 8005AD38 AFA00010 */  sw         $zero, 0x10($sp)
/* 5B93C 8005AD3C AFA00014 */  sw         $zero, 0x14($sp)
/* 5B940 8005AD40 24050094 */  addiu      $a1, $zero, 0x94
/* 5B944 8005AD44 240600B6 */  addiu      $a2, $zero, 0xb6
/* 5B948 8005AD48 0C01B404 */  jal        func_8006D010
/* 5B94C 8005AD4C 24070018 */   addiu     $a3, $zero, 0x18
/* 5B950 8005AD50 3C01800E */  lui        $at, %hi(D_800D8902)
/* 5B954 8005AD54 A4228902 */  sh         $v0, %lo(D_800D8902)($at)
/* 5B958 8005AD58 00021400 */  sll        $v0, $v0, 0x10
/* 5B95C 8005AD5C 00022403 */  sra        $a0, $v0, 0x10
/* 5B960 8005AD60 0C01B829 */  jal        func_8006E0A4
/* 5B964 8005AD64 24050001 */   addiu     $a1, $zero, 1
/* 5B968 8005AD68 3C040009 */  lui        $a0, 9
/* 5B96C 8005AD6C 0C00516C */  jal        func_800145B0
/* 5B970 8005AD70 34840070 */   ori       $a0, $a0, 0x70
/* 5B974 8005AD74 00408021 */  addu       $s0, $v0, $zero
/* 5B978 8005AD78 0C019E29 */  jal        func_800678A4
/* 5B97C 8005AD7C 02002021 */   addu      $a0, $s0, $zero
/* 5B980 8005AD80 3C01800E */  lui        $at, %hi(D_800D8906)
/* 5B984 8005AD84 A4228906 */  sh         $v0, %lo(D_800D8906)($at)
/* 5B988 8005AD88 0C0051CC */  jal        func_80014730
/* 5B98C 8005AD8C 02002021 */   addu      $a0, $s0, $zero
/* 5B990 8005AD90 24040001 */  addiu      $a0, $zero, 1
/* 5B994 8005AD94 0C0193BD */  jal        func_80064EF4
/* 5B998 8005AD98 24050005 */   addiu     $a1, $zero, 5
/* 5B99C 8005AD9C 3C01800E */  lui        $at, %hi(D_800D8904)
/* 5B9A0 8005ADA0 A4228904 */  sh         $v0, %lo(D_800D8904)($at)
/* 5B9A4 8005ADA4 00021400 */  sll        $v0, $v0, 0x10
/* 5B9A8 8005ADA8 00022403 */  sra        $a0, $v0, 0x10
/* 5B9AC 8005ADAC 00002821 */  addu       $a1, $zero, $zero
/* 5B9B0 8005ADB0 3C06800E */  lui        $a2, %hi(D_800D8906)
/* 5B9B4 8005ADB4 84C68906 */  lh         $a2, %lo(D_800D8906)($a2)
/* 5B9B8 8005ADB8 0C019C82 */  jal        func_80067208
/* 5B9BC 8005ADBC 00003821 */   addu      $a3, $zero, $zero
/* 5B9C0 8005ADC0 3C04800E */  lui        $a0, %hi(D_800D8904)
/* 5B9C4 8005ADC4 84848904 */  lh         $a0, %lo(D_800D8904)($a0)
/* 5B9C8 8005ADC8 00002821 */  addu       $a1, $zero, $zero
/* 5B9CC 8005ADCC 0C019D20 */  jal        func_80067480
/* 5B9D0 8005ADD0 3406FFFF */   ori       $a2, $zero, 0xffff
/* 5B9D4 8005ADD4 3C04800E */  lui        $a0, %hi(D_800D8904)
/* 5B9D8 8005ADD8 84848904 */  lh         $a0, %lo(D_800D8904)($a0)
/* 5B9DC 8005ADDC 00002821 */  addu       $a1, $zero, $zero
/* 5B9E0 8005ADE0 0C019D2F */  jal        func_800674BC
/* 5B9E4 8005ADE4 24061000 */   addiu     $a2, $zero, 0x1000
/* 5B9E8 8005ADE8 3C04800E */  lui        $a0, %hi(D_800D8904)
/* 5B9EC 8005ADEC 84848904 */  lh         $a0, %lo(D_800D8904)($a0)
/* 5B9F0 8005ADF0 00002821 */  addu       $a1, $zero, $zero
/* 5B9F4 8005ADF4 240600A0 */  addiu      $a2, $zero, 0xa0
/* 5B9F8 8005ADF8 0C019B71 */  jal        func_80066DC4
/* 5B9FC 8005ADFC 240700A0 */   addiu     $a3, $zero, 0xa0
/* 5BA00 8005AE00 3C04800E */  lui        $a0, %hi(D_800D8904)
/* 5BA04 8005AE04 84848904 */  lh         $a0, %lo(D_800D8904)($a0)
/* 5BA08 8005AE08 00002821 */  addu       $a1, $zero, $zero
/* 5BA0C 8005AE0C 0C019CE1 */  jal        func_80067384
/* 5BA10 8005AE10 00003021 */   addu      $a2, $zero, $zero
/* 5BA14 8005AE14 3C028006 */  lui        $v0, %hi(func_8005AC50)
/* 5BA18 8005AE18 2442AC50 */  addiu      $v0, $v0, %lo(func_8005AC50)
/* 5BA1C 8005AE1C AFA20010 */  sw         $v0, 0x10($sp)
/* 5BA20 8005AE20 00002021 */  addu       $a0, $zero, $zero
/* 5BA24 8005AE24 00002821 */  addu       $a1, $zero, $zero
/* 5BA28 8005AE28 00003021 */  addu       $a2, $zero, $zero
/* 5BA2C 8005AE2C 0C0174E1 */  jal        func_8005D384
/* 5BA30 8005AE30 2407FFFF */   addiu     $a3, $zero, -1
.L8005AE34:
/* 5BA34 8005AE34 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5BA38 8005AE38 8FB00018 */  lw         $s0, 0x18($sp)
/* 5BA3C 8005AE3C 03E00008 */  jr         $ra
/* 5BA40 8005AE40 27BD0020 */   addiu     $sp, $sp, 0x20
