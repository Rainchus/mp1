	.set noat
	.set noreorder

glabel func_8006FCF0
/* 708F0 8006FCF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 708F4 8006FCF4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 708F8 8006FCF8 AFB40020 */  sw         $s4, 0x20($sp)
/* 708FC 8006FCFC AFB3001C */  sw         $s3, 0x1c($sp)
/* 70900 8006FD00 AFB20018 */  sw         $s2, 0x18($sp)
/* 70904 8006FD04 AFB10014 */  sw         $s1, 0x14($sp)
/* 70908 8006FD08 AFB00010 */  sw         $s0, 0x10($sp)
/* 7090C 8006FD0C 00C09021 */  addu       $s2, $a2, $zero
/* 70910 8006FD10 0080A021 */  addu       $s4, $a0, $zero
/* 70914 8006FD14 00042400 */  sll        $a0, $a0, 0x10
/* 70918 8006FD18 00042403 */  sra        $a0, $a0, 0x10
/* 7091C 8006FD1C 00041080 */  sll        $v0, $a0, 2
/* 70920 8006FD20 00441021 */  addu       $v0, $v0, $a0
/* 70924 8006FD24 00021140 */  sll        $v0, $v0, 5
/* 70928 8006FD28 00441023 */  subu       $v0, $v0, $a0
/* 7092C 8006FD2C 00021080 */  sll        $v0, $v0, 2
/* 70930 8006FD30 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 70934 8006FD34 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 70938 8006FD38 00438821 */  addu       $s1, $v0, $v1
/* 7093C 8006FD3C 86230042 */  lh         $v1, 0x42($s1)
/* 70940 8006FD40 2402FFFF */  addiu      $v0, $zero, -1
/* 70944 8006FD44 14620021 */  bne        $v1, $v0, .L8006FDCC
/* 70948 8006FD48 00A09821 */   addu      $s3, $a1, $zero
/* 7094C 8006FD4C 0C00516C */  jal        func_800145B0
/* 70950 8006FD50 24040085 */   addiu     $a0, $zero, 0x85
/* 70954 8006FD54 00408021 */  addu       $s0, $v0, $zero
/* 70958 8006FD58 0C019E29 */  jal        func_800678A4
/* 7095C 8006FD5C 02002021 */   addu      $a0, $s0, $zero
/* 70960 8006FD60 A6220042 */  sh         $v0, 0x42($s1)
/* 70964 8006FD64 0C00EDB2 */  jal        func_8003B6C8
/* 70968 8006FD68 02002021 */   addu      $a0, $s0, $zero
/* 7096C 8006FD6C 86240044 */  lh         $a0, 0x44($s1)
/* 70970 8006FD70 2405000B */  addiu      $a1, $zero, 0xb
/* 70974 8006FD74 86260042 */  lh         $a2, 0x42($s1)
/* 70978 8006FD78 0C019C82 */  jal        func_80067208
/* 7097C 8006FD7C 00003821 */   addu      $a3, $zero, $zero
/* 70980 8006FD80 86240044 */  lh         $a0, 0x44($s1)
/* 70984 8006FD84 2405000B */  addiu      $a1, $zero, 0xb
/* 70988 8006FD88 0C019D4B */  jal        func_8006752C
/* 7098C 8006FD8C 24060100 */   addiu     $a2, $zero, 0x100
/* 70990 8006FD90 86240044 */  lh         $a0, 0x44($s1)
/* 70994 8006FD94 2405000B */  addiu      $a1, $zero, 0xb
/* 70998 8006FD98 0C019D20 */  jal        func_80067480
/* 7099C 8006FD9C 3406FFFF */   ori       $a2, $zero, 0xffff
/* 709A0 8006FDA0 86240044 */  lh         $a0, 0x44($s1)
/* 709A4 8006FDA4 2405000B */  addiu      $a1, $zero, 0xb
/* 709A8 8006FDA8 3C060100 */  lui        $a2, 0x100
/* 709AC 8006FDAC 0C019D2F */  jal        func_800674BC
/* 709B0 8006FDB0 34C69000 */   ori       $a2, $a2, 0x9000
/* 709B4 8006FDB4 96260038 */  lhu        $a2, 0x38($s1)
/* 709B8 8006FDB8 24C6FFFF */  addiu      $a2, $a2, -1
/* 709BC 8006FDBC 86240044 */  lh         $a0, 0x44($s1)
/* 709C0 8006FDC0 2405000B */  addiu      $a1, $zero, 0xb
/* 709C4 8006FDC4 0C019CE1 */  jal        func_80067384
/* 709C8 8006FDC8 30C6FFFF */   andi      $a2, $a2, 0xffff
.L8006FDCC:
/* 709CC 8006FDCC 52400005 */  beql       $s2, $zero, .L8006FDE4
/* 709D0 8006FDD0 A2330011 */   sb        $s3, 0x11($s1)
/* 709D4 8006FDD4 92220006 */  lbu        $v0, 6($s1)
/* 709D8 8006FDD8 34420001 */  ori        $v0, $v0, 1
/* 709DC 8006FDDC A2220006 */  sb         $v0, 6($s1)
/* 709E0 8006FDE0 A2330011 */  sb         $s3, 0x11($s1)
.L8006FDE4:
/* 709E4 8006FDE4 24020006 */  addiu      $v0, $zero, 6
/* 709E8 8006FDE8 A2220000 */  sb         $v0, ($s1)
/* 709EC 8006FDEC 24020001 */  addiu      $v0, $zero, 1
/* 709F0 8006FDF0 A622006E */  sh         $v0, 0x6e($s1)
/* 709F4 8006FDF4 A6200078 */  sh         $zero, 0x78($s1)
/* 709F8 8006FDF8 00148400 */  sll        $s0, $s4, 0x10
/* 709FC 8006FDFC 24120006 */  addiu      $s2, $zero, 6
.L8006FE00:
/* 70A00 8006FE00 0C01BF30 */  jal        func_8006FCC0
/* 70A04 8006FE04 00102403 */   sra       $a0, $s0, 0x10
/* 70A08 8006FE08 00021400 */  sll        $v0, $v0, 0x10
/* 70A0C 8006FE0C 00021403 */  sra        $v0, $v0, 0x10
/* 70A10 8006FE10 14520005 */  bne        $v0, $s2, .L8006FE28
/* 70A14 8006FE14 00000000 */   nop
/* 70A18 8006FE18 0C018D6D */  jal        func_800635B4
/* 70A1C 8006FE1C 00000000 */   nop
/* 70A20 8006FE20 0801BF80 */  j          .L8006FE00
/* 70A24 8006FE24 00000000 */   nop
.L8006FE28:
/* 70A28 8006FE28 82220011 */  lb         $v0, 0x11($s1)
/* 70A2C 8006FE2C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 70A30 8006FE30 8FB40020 */  lw         $s4, 0x20($sp)
/* 70A34 8006FE34 8FB3001C */  lw         $s3, 0x1c($sp)
/* 70A38 8006FE38 8FB20018 */  lw         $s2, 0x18($sp)
/* 70A3C 8006FE3C 8FB10014 */  lw         $s1, 0x14($sp)
/* 70A40 8006FE40 8FB00010 */  lw         $s0, 0x10($sp)
/* 70A44 8006FE44 03E00008 */  jr         $ra
/* 70A48 8006FE48 27BD0028 */   addiu     $sp, $sp, 0x28
