	.set noat
	.set noreorder

glabel func_8005BD28
/* 5C928 8005BD28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5C92C 8005BD2C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5C930 8005BD30 AFB00010 */  sw         $s0, 0x10($sp)
/* 5C934 8005BD34 0C014AA3 */  jal        func_80052A8C
/* 5C938 8005BD38 00002021 */   addu      $a0, $zero, $zero
/* 5C93C 8005BD3C 00408021 */  addu       $s0, $v0, $zero
/* 5C940 8005BD40 3C02800F */  lui        $v0, %hi(D_800F3752)
/* 5C944 8005BD44 80423752 */  lb         $v0, %lo(D_800F3752)($v0)
/* 5C948 8005BD48 10400007 */  beqz       $v0, .L8005BD68
/* 5C94C 8005BD4C 00000000 */   nop
/* 5C950 8005BD50 96050010 */  lhu        $a1, 0x10($s0)
/* 5C954 8005BD54 24A50001 */  addiu      $a1, $a1, 1
/* 5C958 8005BD58 00052C00 */  sll        $a1, $a1, 0x10
/* 5C95C 8005BD5C 8604000E */  lh         $a0, 0xe($s0)
/* 5C960 8005BD60 0C016F32 */  jal        func_8005BCC8
/* 5C964 8005BD64 00052C03 */   sra       $a1, $a1, 0x10
.L8005BD68:
/* 5C968 8005BD68 3C02800F */  lui        $v0, %hi(D_800F0A22)
/* 5C96C 8005BD6C 80420A22 */  lb         $v0, %lo(D_800F0A22)($v0)
/* 5C970 8005BD70 10400007 */  beqz       $v0, .L8005BD90
/* 5C974 8005BD74 00000000 */   nop
/* 5C978 8005BD78 96050010 */  lhu        $a1, 0x10($s0)
/* 5C97C 8005BD7C 24A5FFFF */  addiu      $a1, $a1, -1
/* 5C980 8005BD80 00052C00 */  sll        $a1, $a1, 0x10
/* 5C984 8005BD84 8604000E */  lh         $a0, 0xe($s0)
/* 5C988 8005BD88 0C016F32 */  jal        func_8005BCC8
/* 5C98C 8005BD8C 00052C03 */   sra       $a1, $a1, 0x10
.L8005BD90:
/* 5C990 8005BD90 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5C994 8005BD94 8FB00010 */  lw         $s0, 0x10($sp)
/* 5C998 8005BD98 03E00008 */  jr         $ra
/* 5C99C 8005BD9C 27BD0018 */   addiu     $sp, $sp, 0x18
