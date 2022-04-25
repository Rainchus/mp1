	.set noat
	.set noreorder

glabel func_8000DE5C
/* EA5C 8000DE5C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* EA60 8000DE60 AFBF003C */  sw         $ra, 0x3c($sp)
/* EA64 8000DE64 AFB20038 */  sw         $s2, 0x38($sp)
/* EA68 8000DE68 AFB10034 */  sw         $s1, 0x34($sp)
/* EA6C 8000DE6C AFB00030 */  sw         $s0, 0x30($sp)
/* EA70 8000DE70 3C02800D */  lui        $v0, %hi(D_800CEAA4)
/* EA74 8000DE74 8C42EAA4 */  lw         $v0, %lo(D_800CEAA4)($v0)
/* EA78 8000DE78 30420010 */  andi       $v0, $v0, 0x10
/* EA7C 8000DE7C 14400040 */  bnez       $v0, .L8000DF80
/* EA80 8000DE80 00809021 */   addu      $s2, $a0, $zero
/* EA84 8000DE84 00041400 */  sll        $v0, $a0, 0x10
/* EA88 8000DE88 00028C03 */  sra        $s1, $v0, 0x10
/* EA8C 8000DE8C 00111040 */  sll        $v0, $s1, 1
/* EA90 8000DE90 00511021 */  addu       $v0, $v0, $s1
/* EA94 8000DE94 00021080 */  sll        $v0, $v0, 2
/* EA98 8000DE98 00511023 */  subu       $v0, $v0, $s1
/* EA9C 8000DE9C 00021080 */  sll        $v0, $v0, 2
/* EAA0 8000DEA0 3C03800D */  lui        $v1, %hi(D_800CEA94)
/* EAA4 8000DEA4 8C63EA94 */  lw         $v1, %lo(D_800CEA94)($v1)
/* EAA8 8000DEA8 00438021 */  addu       $s0, $v0, $v1
/* EAAC 8000DEAC 8E020008 */  lw         $v0, 8($s0)
/* EAB0 8000DEB0 2403EFFF */  addiu      $v1, $zero, -0x1001
/* EAB4 8000DEB4 00431024 */  and        $v0, $v0, $v1
/* EAB8 8000DEB8 AE020008 */  sw         $v0, 8($s0)
/* EABC 8000DEBC AE00000C */  sw         $zero, 0xc($s0)
/* EAC0 8000DEC0 86040014 */  lh         $a0, 0x14($s0)
/* EAC4 8000DEC4 0C0037E6 */  jal        func_8000DF98
/* EAC8 8000DEC8 27A50010 */   addiu     $a1, $sp, 0x10
/* EACC 8000DECC 8FA50010 */  lw         $a1, 0x10($sp)
/* EAD0 8000DED0 10A0002B */  beqz       $a1, .L8000DF80
/* EAD4 8000DED4 AE050000 */   sw        $a1, ($s0)
/* EAD8 8000DED8 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* EADC 8000DEDC 0C022A00 */  jal        func_8008A800
/* EAE0 8000DEE0 8C84EA8C */   lw        $a0, %lo(D_800CEA8C)($a0)
/* EAE4 8000DEE4 A6020016 */  sh         $v0, 0x16($s0)
/* EAE8 8000DEE8 00021400 */  sll        $v0, $v0, 0x10
/* EAEC 8000DEEC 00022C03 */  sra        $a1, $v0, 0x10
/* EAF0 8000DEF0 04A00023 */  bltz       $a1, .L8000DF80
/* EAF4 8000DEF4 00000000 */   nop
/* EAF8 8000DEF8 92060026 */  lbu        $a2, 0x26($s0)
/* EAFC 8000DEFC 24C6000B */  addiu      $a2, $a2, 0xb
/* EB00 8000DF00 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* EB04 8000DF04 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* EB08 8000DF08 0C022A94 */  jal        func_8008AA50
/* EB0C 8000DF0C 30C600FF */   andi      $a2, $a2, 0xff
/* EB10 8000DF10 87A4001E */  lh         $a0, 0x1e($sp)
/* EB14 8000DF14 82060029 */  lb         $a2, 0x29($s0)
/* EB18 8000DF18 0C003DE0 */  jal        func_8000F780
/* EB1C 8000DF1C 02202821 */   addu      $a1, $s1, $zero
/* EB20 8000DF20 8FA20018 */  lw         $v0, 0x18($sp)
/* EB24 8000DF24 30420100 */  andi       $v0, $v0, 0x100
/* EB28 8000DF28 14400006 */  bnez       $v0, .L8000DF44
/* EB2C 8000DF2C 00000000 */   nop
/* EB30 8000DF30 0C003E11 */  jal        func_8000F844
/* EB34 8000DF34 02202021 */   addu      $a0, $s1, $zero
/* EB38 8000DF38 83A50026 */  lb         $a1, 0x26($sp)
/* EB3C 8000DF3C 0C003CA5 */  jal        func_8000F294
/* EB40 8000DF40 02202021 */   addu      $a0, $s1, $zero
.L8000DF44:
/* EB44 8000DF44 8E020008 */  lw         $v0, 8($s0)
/* EB48 8000DF48 3442000F */  ori        $v0, $v0, 0xf
/* EB4C 8000DF4C AE020008 */  sw         $v0, 8($s0)
/* EB50 8000DF50 00122400 */  sll        $a0, $s2, 0x10
/* EB54 8000DF54 0C003A4B */  jal        func_8000E92C
/* EB58 8000DF58 00042403 */   sra       $a0, $a0, 0x10
/* EB5C 8000DF5C 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* EB60 8000DF60 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* EB64 8000DF64 0C022A44 */  jal        func_8008A910
/* EB68 8000DF68 86050016 */   lh        $a1, 0x16($s0)
/* EB6C 8000DF6C 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* EB70 8000DF70 0C022A48 */  jal        func_8008A920
/* EB74 8000DF74 8C84EA8C */   lw        $a0, %lo(D_800CEA8C)($a0)
/* EB78 8000DF78 24020001 */  addiu      $v0, $zero, 1
/* EB7C 8000DF7C AE02000C */  sw         $v0, 0xc($s0)
.L8000DF80:
/* EB80 8000DF80 8FBF003C */  lw         $ra, 0x3c($sp)
/* EB84 8000DF84 8FB20038 */  lw         $s2, 0x38($sp)
/* EB88 8000DF88 8FB10034 */  lw         $s1, 0x34($sp)
/* EB8C 8000DF8C 8FB00030 */  lw         $s0, 0x30($sp)
/* EB90 8000DF90 03E00008 */  jr         $ra
/* EB94 8000DF94 27BD0040 */   addiu     $sp, $sp, 0x40
