	.set noat
	.set noreorder

glabel func_8004D328
/* 4DF28 8004D328 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4DF2C 8004D32C AFBF0018 */  sw         $ra, 0x18($sp)
/* 4DF30 8004D330 AFB10014 */  sw         $s1, 0x14($sp)
/* 4DF34 8004D334 AFB00010 */  sw         $s0, 0x10($sp)
/* 4DF38 8004D338 0C018CEA */  jal        func_800633A8
/* 4DF3C 8004D33C F7B40020 */   sdc1      $f20, 0x20($sp)
/* 4DF40 8004D340 8C50008C */  lw         $s0, 0x8c($v0)
/* 4DF44 8004D344 8E11001C */  lw         $s1, 0x1c($s0)
/* 4DF48 8004D348 12200022 */  beqz       $s1, .L8004D3D4
/* 4DF4C 8004D34C 00000000 */   nop
/* 4DF50 8004D350 3C013F80 */  lui        $at, 0x3f80
/* 4DF54 8004D354 4481A000 */  mtc1       $at, $f20
.L8004D358:
/* 4DF58 8004D358 8E040018 */  lw         $a0, 0x18($s0)
/* 4DF5C 8004D35C 2605000C */  addiu      $a1, $s0, 0xc
/* 4DF60 8004D360 0C0283A0 */  jal        func_800A0E80
/* 4DF64 8004D364 02003021 */   addu      $a2, $s0, $zero
/* 4DF68 8004D368 44911000 */  mtc1       $s1, $f2
/* 4DF6C 8004D36C 00000000 */  nop
/* 4DF70 8004D370 468010A0 */  cvt.s.w    $f2, $f2
/* 4DF74 8004D374 4602A083 */  div.s      $f2, $f20, $f2
/* 4DF78 8004D378 8E02001C */  lw         $v0, 0x1c($s0)
/* 4DF7C 8004D37C 2442FFFF */  addiu      $v0, $v0, -1
/* 4DF80 8004D380 44820000 */  mtc1       $v0, $f0
/* 4DF84 8004D384 00000000 */  nop
/* 4DF88 8004D388 46800020 */  cvt.s.w    $f0, $f0
/* 4DF8C 8004D38C 46001082 */  mul.s      $f2, $f2, $f0
/* 4DF90 8004D390 8E040018 */  lw         $a0, 0x18($s0)
/* 4DF94 8004D394 4602A081 */  sub.s      $f2, $f20, $f2
/* 4DF98 8004D398 44051000 */  mfc1       $a1, $f2
/* 4DF9C 8004D39C 00000000 */  nop
/* 4DFA0 8004D3A0 0C0283C0 */  jal        func_800A0F00
/* 4DFA4 8004D3A4 00803021 */   addu      $a2, $a0, $zero
/* 4DFA8 8004D3A8 8E040018 */  lw         $a0, 0x18($s0)
/* 4DFAC 8004D3AC 00802821 */  addu       $a1, $a0, $zero
/* 4DFB0 8004D3B0 0C028380 */  jal        func_800A0E00
/* 4DFB4 8004D3B4 02003021 */   addu      $a2, $s0, $zero
/* 4DFB8 8004D3B8 8E02001C */  lw         $v0, 0x1c($s0)
/* 4DFBC 8004D3BC 2442FFFF */  addiu      $v0, $v0, -1
/* 4DFC0 8004D3C0 0C018D6D */  jal        func_800635B4
/* 4DFC4 8004D3C4 AE02001C */   sw        $v0, 0x1c($s0)
/* 4DFC8 8004D3C8 8E02001C */  lw         $v0, 0x1c($s0)
/* 4DFCC 8004D3CC 1440FFE2 */  bnez       $v0, .L8004D358
/* 4DFD0 8004D3D0 00000000 */   nop
.L8004D3D4:
/* 4DFD4 8004D3D4 0C017764 */  jal        func_8005DD90
/* 4DFD8 8004D3D8 00002021 */   addu      $a0, $zero, $zero
/* 4DFDC 8004D3DC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4DFE0 8004D3E0 8FB10014 */  lw         $s1, 0x14($sp)
/* 4DFE4 8004D3E4 8FB00010 */  lw         $s0, 0x10($sp)
/* 4DFE8 8004D3E8 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4DFEC 8004D3EC 03E00008 */  jr         $ra
/* 4DFF0 8004D3F0 27BD0028 */   addiu     $sp, $sp, 0x28
