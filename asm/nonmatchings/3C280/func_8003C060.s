	.set noat
	.set noreorder

glabel func_8003C060
/* 3CC60 8003C060 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3CC64 8003C064 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3CC68 8003C068 AFB20018 */  sw         $s2, 0x18($sp)
/* 3CC6C 8003C06C AFB10014 */  sw         $s1, 0x14($sp)
/* 3CC70 8003C070 AFB00010 */  sw         $s0, 0x10($sp)
/* 3CC74 8003C074 00808021 */  addu       $s0, $a0, $zero
/* 3CC78 8003C078 00A09021 */  addu       $s2, $a1, $zero
/* 3CC7C 8003C07C 8E020008 */  lw         $v0, 8($s0)
/* 3CC80 8003C080 1440002B */  bnez       $v0, .L8003C130
/* 3CC84 8003C084 00C08821 */   addu      $s1, $a2, $zero
/* 3CC88 8003C088 3C048004 */  lui        $a0, %hi(func_8003BB48)
/* 3CC8C 8003C08C 2484BB48 */  addiu      $a0, $a0, %lo(func_8003BB48)
/* 3CC90 8003C090 3405EFFF */  ori        $a1, $zero, 0xefff
/* 3CC94 8003C094 00003021 */  addu       $a2, $zero, $zero
/* 3CC98 8003C098 0C01770A */  jal        func_8005DC28
/* 3CC9C 8003C09C 00003821 */   addu      $a3, $zero, $zero
/* 3CCA0 8003C0A0 AE020008 */  sw         $v0, 8($s0)
/* 3CCA4 8003C0A4 AC50008C */  sw         $s0, 0x8c($v0)
/* 3CCA8 8003C0A8 26040010 */  addiu      $a0, $s0, 0x10
/* 3CCAC 8003C0AC 26050028 */  addiu      $a1, $s0, 0x28
/* 3CCB0 8003C0B0 0C022188 */  jal        func_80088620
/* 3CCB4 8003C0B4 24060010 */   addiu     $a2, $zero, 0x10
/* 3CCB8 8003C0B8 96020000 */  lhu        $v0, ($s0)
/* 3CCBC 8003C0BC 02221025 */  or         $v0, $s1, $v0
/* 3CCC0 8003C0C0 A6020000 */  sh         $v0, ($s0)
/* 3CCC4 8003C0C4 00122400 */  sll        $a0, $s2, 0x10
/* 3CCC8 8003C0C8 0C014AA3 */  jal        func_80052A8C
/* 3CCCC 8003C0CC 00042403 */   sra       $a0, $a0, 0x10
/* 3CCD0 8003C0D0 00408821 */  addu       $s1, $v0, $zero
/* 3CCD4 8003C0D4 96220006 */  lhu        $v0, 6($s1)
/* 3CCD8 8003C0D8 30420001 */  andi       $v0, $v0, 1
/* 3CCDC 8003C0DC 10400008 */  beqz       $v0, .L8003C100
/* 3CCE0 8003C0E0 02002021 */   addu      $a0, $s0, $zero
/* 3CCE4 8003C0E4 96020000 */  lhu        $v0, ($s0)
/* 3CCE8 8003C0E8 34420001 */  ori        $v0, $v0, 1
/* 3CCEC 8003C0EC A6020000 */  sh         $v0, ($s0)
/* 3CCF0 8003C0F0 0C00EFA1 */  jal        func_8003BE84
/* 3CCF4 8003C0F4 2405FFFF */   addiu     $a1, $zero, -1
/* 3CCF8 8003C0F8 0800F049 */  j          .L8003C124
/* 3CCFC 8003C0FC 00000000 */   nop
.L8003C100:
/* 3CD00 8003C100 92220003 */  lbu        $v0, 3($s1)
/* 3CD04 8003C104 A602000E */  sh         $v0, 0xe($s0)
/* 3CD08 8003C108 3C048004 */  lui        $a0, %hi(func_8003BEB4)
/* 3CD0C 8003C10C 2484BEB4 */  addiu      $a0, $a0, %lo(func_8003BEB4)
/* 3CD10 8003C110 3405EFFF */  ori        $a1, $zero, 0xefff
/* 3CD14 8003C114 00003021 */  addu       $a2, $zero, $zero
/* 3CD18 8003C118 0C01770A */  jal        func_8005DC28
/* 3CD1C 8003C11C 00003821 */   addu      $a3, $zero, $zero
/* 3CD20 8003C120 AC50008C */  sw         $s0, 0x8c($v0)
.L8003C124:
/* 3CD24 8003C124 96220006 */  lhu        $v0, 6($s1)
/* 3CD28 8003C128 0800F04D */  j          .L8003C134
/* 3CD2C 8003C12C 30420001 */   andi      $v0, $v0, 1
.L8003C130:
/* 3CD30 8003C130 2402FFFF */  addiu      $v0, $zero, -1
.L8003C134:
/* 3CD34 8003C134 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3CD38 8003C138 8FB20018 */  lw         $s2, 0x18($sp)
/* 3CD3C 8003C13C 8FB10014 */  lw         $s1, 0x14($sp)
/* 3CD40 8003C140 8FB00010 */  lw         $s0, 0x10($sp)
/* 3CD44 8003C144 03E00008 */  jr         $ra
/* 3CD48 8003C148 27BD0020 */   addiu     $sp, $sp, 0x20
