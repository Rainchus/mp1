	.set noat
	.set noreorder

glabel func_8003D2B0
/* 3DEB0 8003D2B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3DEB4 8003D2B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3DEB8 8003D2B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 3DEBC 8003D2BC 00808021 */  addu       $s0, $a0, $zero
/* 3DEC0 8003D2C0 C6000000 */  lwc1       $f0, ($s0)
/* 3DEC4 8003D2C4 44801000 */  mtc1       $zero, $f2
/* 3DEC8 8003D2C8 00000000 */  nop
/* 3DECC 8003D2CC 46020032 */  c.eq.s     $f0, $f2
/* 3DED0 8003D2D0 00000000 */  nop
/* 3DED4 8003D2D4 45000007 */  bc1f       .L8003D2F4
/* 3DED8 8003D2D8 00000000 */   nop
/* 3DEDC 8003D2DC C6000008 */  lwc1       $f0, 8($s0)
/* 3DEE0 8003D2E0 46020032 */  c.eq.s     $f0, $f2
/* 3DEE4 8003D2E4 00000000 */  nop
/* 3DEE8 8003D2E8 45010041 */  bc1t       .L8003D3F0
/* 3DEEC 8003D2EC 00000000 */   nop
/* 3DEF0 8003D2F0 C6000000 */  lwc1       $f0, ($s0)
.L8003D2F4:
/* 3DEF4 8003D2F4 46020032 */  c.eq.s     $f0, $f2
/* 3DEF8 8003D2F8 00000000 */  nop
/* 3DEFC 8003D2FC 4500000A */  bc1f       .L8003D328
/* 3DF00 8003D300 00000000 */   nop
/* 3DF04 8003D304 C6000008 */  lwc1       $f0, 8($s0)
/* 3DF08 8003D308 4600103C */  c.lt.s     $f2, $f0
/* 3DF0C 8003D30C 3C014334 */  lui        $at, 0x4334
/* 3DF10 8003D310 44810000 */  mtc1       $at, $f0
/* 3DF14 8003D314 00000000 */  nop
/* 3DF18 8003D318 45030037 */  bc1tl      .L8003D3F8
/* 3DF1C 8003D31C 46001006 */   mov.s     $f0, $f2
/* 3DF20 8003D320 0800F4FE */  j          .L8003D3F8
/* 3DF24 8003D324 00000000 */   nop
.L8003D328:
/* 3DF28 8003D328 C6000008 */  lwc1       $f0, 8($s0)
/* 3DF2C 8003D32C 44801000 */  mtc1       $zero, $f2
/* 3DF30 8003D330 00000000 */  nop
/* 3DF34 8003D334 46020032 */  c.eq.s     $f0, $f2
/* 3DF38 8003D338 00000000 */  nop
/* 3DF3C 8003D33C 4500000B */  bc1f       .L8003D36C
/* 3DF40 8003D340 00000000 */   nop
/* 3DF44 8003D344 C6000000 */  lwc1       $f0, ($s0)
/* 3DF48 8003D348 4600103C */  c.lt.s     $f2, $f0
/* 3DF4C 8003D34C 3C014387 */  lui        $at, 0x4387
/* 3DF50 8003D350 44810000 */  mtc1       $at, $f0
/* 3DF54 8003D354 45000028 */  bc1f       .L8003D3F8
/* 3DF58 8003D358 00000000 */   nop
/* 3DF5C 8003D35C 3C0142B4 */  lui        $at, 0x42b4
/* 3DF60 8003D360 44810000 */  mtc1       $at, $f0
/* 3DF64 8003D364 0800F4FE */  j          .L8003D3F8
/* 3DF68 8003D368 00000000 */   nop
.L8003D36C:
/* 3DF6C 8003D36C C60C0008 */  lwc1       $f12, 8($s0)
/* 3DF70 8003D370 0C02C336 */  jal        func_800B0CD8
/* 3DF74 8003D374 C60E0000 */   lwc1      $f14, ($s0)
/* 3DF78 8003D378 46000106 */  mov.s      $f4, $f0
/* 3DF7C 8003D37C C6020008 */  lwc1       $f2, 8($s0)
/* 3DF80 8003D380 44800000 */  mtc1       $zero, $f0
/* 3DF84 8003D384 00000000 */  nop
/* 3DF88 8003D388 4600103C */  c.lt.s     $f2, $f0
/* 3DF8C 8003D38C 00000000 */  nop
/* 3DF90 8003D390 45000006 */  bc1f       .L8003D3AC
/* 3DF94 8003D394 00000000 */   nop
/* 3DF98 8003D398 3C0142B4 */  lui        $at, 0x42b4
/* 3DF9C 8003D39C 44810000 */  mtc1       $at, $f0
/* 3DFA0 8003D3A0 00000000 */  nop
/* 3DFA4 8003D3A4 0800F4FA */  j          .L8003D3E8
/* 3DFA8 8003D3A8 46040101 */   sub.s     $f4, $f0, $f4
.L8003D3AC:
/* 3DFAC 8003D3AC 3C0142B4 */  lui        $at, 0x42b4
/* 3DFB0 8003D3B0 44810000 */  mtc1       $at, $f0
/* 3DFB4 8003D3B4 00000000 */  nop
/* 3DFB8 8003D3B8 46040101 */  sub.s      $f4, $f0, $f4
/* 3DFBC 8003D3BC 44800000 */  mtc1       $zero, $f0
/* 3DFC0 8003D3C0 00000000 */  nop
/* 3DFC4 8003D3C4 4600203C */  c.lt.s     $f4, $f0
/* 3DFC8 8003D3C8 00000000 */  nop
/* 3DFCC 8003D3CC 00000000 */  nop
/* 3DFD0 8003D3D0 45020009 */  bc1fl      .L8003D3F8
/* 3DFD4 8003D3D4 46002006 */   mov.s     $f0, $f4
/* 3DFD8 8003D3D8 3C0143B4 */  lui        $at, 0x43b4
/* 3DFDC 8003D3DC 44810000 */  mtc1       $at, $f0
/* 3DFE0 8003D3E0 00000000 */  nop
/* 3DFE4 8003D3E4 46002100 */  add.s      $f4, $f4, $f0
.L8003D3E8:
/* 3DFE8 8003D3E8 0800F4FE */  j          .L8003D3F8
/* 3DFEC 8003D3EC 46002006 */   mov.s     $f0, $f4
.L8003D3F0:
/* 3DFF0 8003D3F0 3C01BF80 */  lui        $at, 0xbf80
/* 3DFF4 8003D3F4 44810000 */  mtc1       $at, $f0
.L8003D3F8:
/* 3DFF8 8003D3F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3DFFC 8003D3FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 3E000 8003D400 03E00008 */  jr         $ra
/* 3E004 8003D404 27BD0018 */   addiu     $sp, $sp, 0x18
