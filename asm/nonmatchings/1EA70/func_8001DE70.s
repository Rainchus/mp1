	.set noat
	.set noreorder

glabel func_8001DE70
/* 1EA70 8001DE70 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1EA74 8001DE74 AFBF0028 */  sw         $ra, 0x28($sp)
/* 1EA78 8001DE78 AFB50024 */  sw         $s5, 0x24($sp)
/* 1EA7C 8001DE7C AFB40020 */  sw         $s4, 0x20($sp)
/* 1EA80 8001DE80 AFB3001C */  sw         $s3, 0x1c($sp)
/* 1EA84 8001DE84 AFB20018 */  sw         $s2, 0x18($sp)
/* 1EA88 8001DE88 AFB10014 */  sw         $s1, 0x14($sp)
/* 1EA8C 8001DE8C AFB00010 */  sw         $s0, 0x10($sp)
/* 1EA90 8001DE90 00809821 */  addu       $s3, $a0, $zero
/* 1EA94 8001DE94 3C01800F */  lui        $at, %hi(D_800EE312)
/* 1EA98 8001DE98 A433E312 */  sh         $s3, %lo(D_800EE312)($at)
/* 1EA9C 8001DE9C 3C02800F */  lui        $v0, %hi(D_800F37DA)
/* 1EAA0 8001DEA0 904237DA */  lbu        $v0, %lo(D_800F37DA)($v0)
/* 1EAA4 8001DEA4 1040001C */  beqz       $v0, .L8001DF18
/* 1EAA8 8001DEA8 00008821 */   addu      $s1, $zero, $zero
/* 1EAAC 8001DEAC 00131400 */  sll        $v0, $s3, 0x10
/* 1EAB0 8001DEB0 00029403 */  sra        $s2, $v0, 0x10
/* 1EAB4 8001DEB4 3C15800F */  lui        $s5, %hi(D_800ED0A0)
/* 1EAB8 8001DEB8 26B5D0A0 */  addiu      $s5, $s5, %lo(D_800ED0A0)
/* 1EABC 8001DEBC 3C14800F */  lui        $s4, %hi(D_800F33A8)
/* 1EAC0 8001DEC0 269433A8 */  addiu      $s4, $s4, %lo(D_800F33A8)
/* 1EAC4 8001DEC4 001221C0 */  sll        $a0, $s2, 7
.L8001DEC8:
/* 1EAC8 8001DEC8 0C008DA1 */  jal        func_80023684
/* 1EACC 8001DECC 24057530 */   addiu     $a1, $zero, 0x7530
/* 1EAD0 8001DED0 00118400 */  sll        $s0, $s1, 0x10
/* 1EAD4 8001DED4 00108383 */  sra        $s0, $s0, 0xe
/* 1EAD8 8001DED8 02151821 */  addu       $v1, $s0, $s5
/* 1EADC 8001DEDC AC620000 */  sw         $v0, ($v1)
/* 1EAE0 8001DEE0 00122200 */  sll        $a0, $s2, 8
/* 1EAE4 8001DEE4 0C008DA1 */  jal        func_80023684
/* 1EAE8 8001DEE8 24057530 */   addiu     $a1, $zero, 0x7530
/* 1EAEC 8001DEEC 02148021 */  addu       $s0, $s0, $s4
/* 1EAF0 8001DEF0 AE020000 */  sw         $v0, ($s0)
/* 1EAF4 8001DEF4 26220001 */  addiu      $v0, $s1, 1
/* 1EAF8 8001DEF8 00408821 */  addu       $s1, $v0, $zero
/* 1EAFC 8001DEFC 00021400 */  sll        $v0, $v0, 0x10
/* 1EB00 8001DF00 00021403 */  sra        $v0, $v0, 0x10
/* 1EB04 8001DF04 3C03800F */  lui        $v1, %hi(D_800F37DA)
/* 1EB08 8001DF08 906337DA */  lbu        $v1, %lo(D_800F37DA)($v1)
/* 1EB0C 8001DF0C 0043102A */  slt        $v0, $v0, $v1
/* 1EB10 8001DF10 1440FFED */  bnez       $v0, .L8001DEC8
/* 1EB14 8001DF14 001221C0 */   sll       $a0, $s2, 7
.L8001DF18:
/* 1EB18 8001DF18 00138400 */  sll        $s0, $s3, 0x10
/* 1EB1C 8001DF1C 00108403 */  sra        $s0, $s0, 0x10
/* 1EB20 8001DF20 001020C0 */  sll        $a0, $s0, 3
/* 1EB24 8001DF24 00902021 */  addu       $a0, $a0, $s0
/* 1EB28 8001DF28 00042080 */  sll        $a0, $a0, 2
/* 1EB2C 8001DF2C 0C008DA1 */  jal        func_80023684
/* 1EB30 8001DF30 24057530 */   addiu     $a1, $zero, 0x7530
/* 1EB34 8001DF34 3C01800F */  lui        $at, %hi(D_800ECDE0)
/* 1EB38 8001DF38 AC22CDE0 */  sw         $v0, %lo(D_800ECDE0)($at)
/* 1EB3C 8001DF3C 1A000013 */  blez       $s0, .L8001DF8C
/* 1EB40 8001DF40 00008821 */   addu      $s1, $zero, $zero
/* 1EB44 8001DF44 3C05800F */  lui        $a1, %hi(D_800ECDE0)
/* 1EB48 8001DF48 8CA5CDE0 */  lw         $a1, %lo(D_800ECDE0)($a1)
/* 1EB4C 8001DF4C 2406FFFF */  addiu      $a2, $zero, -1
/* 1EB50 8001DF50 00131400 */  sll        $v0, $s3, 0x10
/* 1EB54 8001DF54 00022403 */  sra        $a0, $v0, 0x10
.L8001DF58:
/* 1EB58 8001DF58 00111400 */  sll        $v0, $s1, 0x10
/* 1EB5C 8001DF5C 00021403 */  sra        $v0, $v0, 0x10
/* 1EB60 8001DF60 000218C0 */  sll        $v1, $v0, 3
/* 1EB64 8001DF64 00621821 */  addu       $v1, $v1, $v0
/* 1EB68 8001DF68 00031880 */  sll        $v1, $v1, 2
/* 1EB6C 8001DF6C 00651821 */  addu       $v1, $v1, $a1
/* 1EB70 8001DF70 26220001 */  addiu      $v0, $s1, 1
/* 1EB74 8001DF74 00408821 */  addu       $s1, $v0, $zero
/* 1EB78 8001DF78 00021400 */  sll        $v0, $v0, 0x10
/* 1EB7C 8001DF7C 00021403 */  sra        $v0, $v0, 0x10
/* 1EB80 8001DF80 0044102A */  slt        $v0, $v0, $a0
/* 1EB84 8001DF84 1440FFF4 */  bnez       $v0, .L8001DF58
/* 1EB88 8001DF88 A4660000 */   sh        $a2, ($v1)
.L8001DF8C:
/* 1EB8C 8001DF8C 24020001 */  addiu      $v0, $zero, 1
/* 1EB90 8001DF90 3C01800C */  lui        $at, %hi(D_800C31E0)
/* 1EB94 8001DF94 0C0077F0 */  jal        func_8001DFC0
/* 1EB98 8001DF98 A02231E0 */   sb        $v0, %lo(D_800C31E0)($at)
/* 1EB9C 8001DF9C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1EBA0 8001DFA0 8FB50024 */  lw         $s5, 0x24($sp)
/* 1EBA4 8001DFA4 8FB40020 */  lw         $s4, 0x20($sp)
/* 1EBA8 8001DFA8 8FB3001C */  lw         $s3, 0x1c($sp)
/* 1EBAC 8001DFAC 8FB20018 */  lw         $s2, 0x18($sp)
/* 1EBB0 8001DFB0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1EBB4 8001DFB4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1EBB8 8001DFB8 03E00008 */  jr         $ra
/* 1EBBC 8001DFBC 27BD0030 */   addiu     $sp, $sp, 0x30
