	.set noat
	.set noreorder

glabel func_8007BCA8
/* 7C8A8 8007BCA8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7C8AC 8007BCAC AFBF0024 */  sw         $ra, 0x24($sp)
/* 7C8B0 8007BCB0 AFB20020 */  sw         $s2, 0x20($sp)
/* 7C8B4 8007BCB4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 7C8B8 8007BCB8 AFB00018 */  sw         $s0, 0x18($sp)
/* 7C8BC 8007BCBC 00042400 */  sll        $a0, $a0, 0x10
/* 7C8C0 8007BCC0 00052C00 */  sll        $a1, $a1, 0x10
/* 7C8C4 8007BCC4 AFA00010 */  sw         $zero, 0x10($sp)
/* 7C8C8 8007BCC8 AFA00014 */  sw         $zero, 0x14($sp)
/* 7C8CC 8007BCCC 00042403 */  sra        $a0, $a0, 0x10
/* 7C8D0 8007BCD0 00052C03 */  sra        $a1, $a1, 0x10
/* 7C8D4 8007BCD4 240600C8 */  addiu      $a2, $zero, 0xc8
/* 7C8D8 8007BCD8 0C01B404 */  jal        func_8006D010
/* 7C8DC 8007BCDC 2407003C */   addiu     $a3, $zero, 0x3c
/* 7C8E0 8007BCE0 00029400 */  sll        $s2, $v0, 0x10
/* 7C8E4 8007BCE4 00129403 */  sra        $s2, $s2, 0x10
/* 7C8E8 8007BCE8 02402021 */  addu       $a0, $s2, $zero
/* 7C8EC 8007BCEC 0C01B829 */  jal        func_8006E0A4
/* 7C8F0 8007BCF0 00002821 */   addu      $a1, $zero, $zero
/* 7C8F4 8007BCF4 00128080 */  sll        $s0, $s2, 2
/* 7C8F8 8007BCF8 02128021 */  addu       $s0, $s0, $s2
/* 7C8FC 8007BCFC 00108140 */  sll        $s0, $s0, 5
/* 7C900 8007BD00 02128023 */  subu       $s0, $s0, $s2
/* 7C904 8007BD04 00108080 */  sll        $s0, $s0, 2
/* 7C908 8007BD08 3C02800F */  lui        $v0, %hi(D_800ED4B0)
/* 7C90C 8007BD0C 8C42D4B0 */  lw         $v0, %lo(D_800ED4B0)($v0)
/* 7C910 8007BD10 02028021 */  addu       $s0, $s0, $v0
/* 7C914 8007BD14 A2000009 */  sb         $zero, 9($s0)
/* 7C918 8007BD18 24020001 */  addiu      $v0, $zero, 1
/* 7C91C 8007BD1C A202000A */  sb         $v0, 0xa($s0)
/* 7C920 8007BD20 02402021 */  addu       $a0, $s2, $zero
/* 7C924 8007BD24 0C01B81C */  jal        func_8006E070
/* 7C928 8007BD28 00002821 */   addu      $a1, $zero, $zero
/* 7C92C 8007BD2C 02402021 */  addu       $a0, $s2, $zero
/* 7C930 8007BD30 0C01B855 */  jal        func_8006E154
/* 7C934 8007BD34 00002821 */   addu      $a1, $zero, $zero
/* 7C938 8007BD38 AFA00010 */  sw         $zero, 0x10($sp)
/* 7C93C 8007BD3C 02402021 */  addu       $a0, $s2, $zero
/* 7C940 8007BD40 3C05000B */  lui        $a1, 0xb
/* 7C944 8007BD44 34A5001A */  ori        $a1, $a1, 0x1a
/* 7C948 8007BD48 00003021 */  addu       $a2, $zero, $zero
/* 7C94C 8007BD4C 0C01B6CF */  jal        func_8006DB3C
/* 7C950 8007BD50 00003821 */   addu      $a3, $zero, $zero
/* 7C954 8007BD54 00408821 */  addu       $s1, $v0, $zero
/* 7C958 8007BD58 A6110274 */  sh         $s1, 0x274($s0)
/* 7C95C 8007BD5C 00118C00 */  sll        $s1, $s1, 0x10
/* 7C960 8007BD60 00118C03 */  sra        $s1, $s1, 0x10
/* 7C964 8007BD64 86040044 */  lh         $a0, 0x44($s0)
/* 7C968 8007BD68 02202821 */  addu       $a1, $s1, $zero
/* 7C96C 8007BD6C 0C019CE1 */  jal        func_80067384
/* 7C970 8007BD70 24060001 */   addiu     $a2, $zero, 1
/* 7C974 8007BD74 86040044 */  lh         $a0, 0x44($s0)
/* 7C978 8007BD78 3C064054 */  lui        $a2, 0x4054
/* 7C97C 8007BD7C 34C6CCCD */  ori        $a2, $a2, 0xcccd
/* 7C980 8007BD80 3C074070 */  lui        $a3, 0x4070
/* 7C984 8007BD84 0C019CD5 */  jal        func_80067354
/* 7C988 8007BD88 02202821 */   addu      $a1, $s1, $zero
/* 7C98C 8007BD8C 86040044 */  lh         $a0, 0x44($s0)
/* 7C990 8007BD90 02202821 */  addu       $a1, $s1, $zero
/* 7C994 8007BD94 3C060100 */  lui        $a2, 0x100
/* 7C998 8007BD98 0C019D2F */  jal        func_800674BC
/* 7C99C 8007BD9C 34C61008 */   ori       $a2, $a2, 0x1008
/* 7C9A0 8007BDA0 86040044 */  lh         $a0, 0x44($s0)
/* 7C9A4 8007BDA4 02202821 */  addu       $a1, $s1, $zero
/* 7C9A8 8007BDA8 0C019D4B */  jal        func_8006752C
/* 7C9AC 8007BDAC 240600C0 */   addiu     $a2, $zero, 0xc0
/* 7C9B0 8007BDB0 86040044 */  lh         $a0, 0x44($s0)
/* 7C9B4 8007BDB4 24020040 */  addiu      $v0, $zero, 0x40
/* 7C9B8 8007BDB8 AFA20010 */  sw         $v0, 0x10($sp)
/* 7C9BC 8007BDBC 02202821 */  addu       $a1, $s1, $zero
/* 7C9C0 8007BDC0 24060010 */  addiu      $a2, $zero, 0x10
/* 7C9C4 8007BDC4 0C019D3D */  jal        func_800674F4
/* 7C9C8 8007BDC8 24070010 */   addiu     $a3, $zero, 0x10
/* 7C9CC 8007BDCC 02401021 */  addu       $v0, $s2, $zero
/* 7C9D0 8007BDD0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7C9D4 8007BDD4 8FB20020 */  lw         $s2, 0x20($sp)
/* 7C9D8 8007BDD8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 7C9DC 8007BDDC 8FB00018 */  lw         $s0, 0x18($sp)
/* 7C9E0 8007BDE0 03E00008 */  jr         $ra
/* 7C9E4 8007BDE4 27BD0028 */   addiu     $sp, $sp, 0x28
/* 7C9E8 8007BDE8 00000000 */  nop
/* 7C9EC 8007BDEC 00000000 */  nop
