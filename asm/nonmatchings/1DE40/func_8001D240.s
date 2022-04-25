	.set noat
	.set noreorder

glabel func_8001D240
/* 1DE40 8001D240 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1DE44 8001D244 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1DE48 8001D248 AFB3001C */  sw         $s3, 0x1c($sp)
/* 1DE4C 8001D24C AFB20018 */  sw         $s2, 0x18($sp)
/* 1DE50 8001D250 AFB10014 */  sw         $s1, 0x14($sp)
/* 1DE54 8001D254 AFB00010 */  sw         $s0, 0x10($sp)
/* 1DE58 8001D258 3C01800F */  lui        $at, %hi(D_800ECB00)
/* 1DE5C 8001D25C A424CB00 */  sh         $a0, %lo(D_800ECB00)($at)
/* 1DE60 8001D260 3C01800F */  lui        $at, %hi(D_800F3FA8)
/* 1DE64 8001D264 A4203FA8 */  sh         $zero, %lo(D_800F3FA8)($at)
/* 1DE68 8001D268 3C04800C */  lui        $a0, %hi(D_800C3110)
/* 1DE6C 8001D26C 8C843110 */  lw         $a0, %lo(D_800C3110)($a0)
/* 1DE70 8001D270 10800003 */  beqz       $a0, .L8001D280
/* 1DE74 8001D274 00000000 */   nop
/* 1DE78 8001D278 0C008DCA */  jal        func_80023728
/* 1DE7C 8001D27C 00000000 */   nop
.L8001D280:
/* 1DE80 8001D280 0C008D9A */  jal        func_80023668
/* 1DE84 8001D284 24041DD0 */   addiu     $a0, $zero, 0x1dd0
/* 1DE88 8001D288 3C01800C */  lui        $at, %hi(D_800C3110)
/* 1DE8C 8001D28C AC223110 */  sw         $v0, %lo(D_800C3110)($at)
/* 1DE90 8001D290 00009821 */  addu       $s3, $zero, $zero
/* 1DE94 8001D294 00138C00 */  sll        $s1, $s3, 0x10
.L8001D298:
/* 1DE98 8001D298 00118C03 */  sra        $s1, $s1, 0x10
/* 1DE9C 8001D29C 3C02800C */  lui        $v0, %hi(D_800C3110)
/* 1DEA0 8001D2A0 8C423110 */  lw         $v0, %lo(D_800C3110)($v0)
/* 1DEA4 8001D2A4 00118080 */  sll        $s0, $s1, 2
/* 1DEA8 8001D2A8 02118021 */  addu       $s0, $s0, $s1
/* 1DEAC 8001D2AC 00108140 */  sll        $s0, $s0, 5
/* 1DEB0 8001D2B0 02118023 */  subu       $s0, $s0, $s1
/* 1DEB4 8001D2B4 001080C0 */  sll        $s0, $s0, 3
/* 1DEB8 8001D2B8 02021021 */  addu       $v0, $s0, $v0
/* 1DEBC 8001D2BC 3C014234 */  lui        $at, 0x4234
/* 1DEC0 8001D2C0 44810000 */  mtc1       $at, $f0
/* 1DEC4 8001D2C4 00000000 */  nop
/* 1DEC8 8001D2C8 E4400040 */  swc1       $f0, 0x40($v0)
/* 1DECC 8001D2CC 3C0142A0 */  lui        $at, 0x42a0
/* 1DED0 8001D2D0 44810000 */  mtc1       $at, $f0
/* 1DED4 8001D2D4 00000000 */  nop
/* 1DED8 8001D2D8 E4400044 */  swc1       $f0, 0x44($v0)
/* 1DEDC 8001D2DC 3C0145FA */  lui        $at, 0x45fa
/* 1DEE0 8001D2E0 44810000 */  mtc1       $at, $f0
/* 1DEE4 8001D2E4 00000000 */  nop
/* 1DEE8 8001D2E8 E4400048 */  swc1       $f0, 0x48($v0)
/* 1DEEC 8001D2EC A440004E */  sh         $zero, 0x4e($v0)
/* 1DEF0 8001D2F0 3C05800C */  lui        $a1, %hi(D_800C3114)
/* 1DEF4 8001D2F4 24A53114 */  addiu      $a1, $a1, %lo(D_800C3114)
/* 1DEF8 8001D2F8 3C06800C */  lui        $a2, %hi(D_800C3150)
/* 1DEFC 8001D2FC 24C63150 */  addiu      $a2, $a2, %lo(D_800C3150)
/* 1DF00 8001D300 0C007548 */  jal        func_8001D520
/* 1DF04 8001D304 02202021 */   addu      $a0, $s1, $zero
/* 1DF08 8001D308 3C05800C */  lui        $a1, %hi(D_800C318C)
/* 1DF0C 8001D30C 24A5318C */  addiu      $a1, $a1, %lo(D_800C318C)
/* 1DF10 8001D310 0C007535 */  jal        func_8001D4D4
/* 1DF14 8001D314 02202021 */   addu      $a0, $s1, $zero
/* 1DF18 8001D318 3C02800C */  lui        $v0, %hi(D_800C3110)
/* 1DF1C 8001D31C 8C423110 */  lw         $v0, %lo(D_800C3110)($v0)
/* 1DF20 8001D320 02028021 */  addu       $s0, $s0, $v0
/* 1DF24 8001D324 AE0000E8 */  sw         $zero, 0xe8($s0)
/* 1DF28 8001D328 AE0000F0 */  sw         $zero, 0xf0($s0)
/* 1DF2C 8001D32C AE0000F4 */  sw         $zero, 0xf4($s0)
/* 1DF30 8001D330 3C02800F */  lui        $v0, %hi(D_800F37DA)
/* 1DF34 8001D334 904237DA */  lbu        $v0, %lo(D_800F37DA)($v0)
/* 1DF38 8001D338 1040001F */  beqz       $v0, .L8001D3B8
/* 1DF3C 8001D33C 00009021 */   addu      $s2, $zero, $zero
/* 1DF40 8001D340 00131C00 */  sll        $v1, $s3, 0x10
/* 1DF44 8001D344 00031C03 */  sra        $v1, $v1, 0x10
/* 1DF48 8001D348 00031080 */  sll        $v0, $v1, 2
/* 1DF4C 8001D34C 00431021 */  addu       $v0, $v0, $v1
/* 1DF50 8001D350 00021140 */  sll        $v0, $v0, 5
/* 1DF54 8001D354 00431023 */  subu       $v0, $v0, $v1
/* 1DF58 8001D358 000288C0 */  sll        $s1, $v0, 3
.L8001D35C:
/* 1DF5C 8001D35C 3C04800C */  lui        $a0, %hi(D_800C3110)
/* 1DF60 8001D360 8C843110 */  lw         $a0, %lo(D_800C3110)($a0)
/* 1DF64 8001D364 02242021 */  addu       $a0, $s1, $a0
/* 1DF68 8001D368 00128400 */  sll        $s0, $s2, 0x10
/* 1DF6C 8001D36C 00108243 */  sra        $s0, $s0, 9
/* 1DF70 8001D370 261000F8 */  addiu      $s0, $s0, 0xf8
/* 1DF74 8001D374 0C028AD0 */  jal        func_800A2B40
/* 1DF78 8001D378 00902021 */   addu      $a0, $a0, $s0
/* 1DF7C 8001D37C 3C04800C */  lui        $a0, %hi(D_800C3110)
/* 1DF80 8001D380 8C843110 */  lw         $a0, %lo(D_800C3110)($a0)
/* 1DF84 8001D384 02242021 */  addu       $a0, $s1, $a0
/* 1DF88 8001D388 00902021 */  addu       $a0, $a0, $s0
/* 1DF8C 8001D38C 0C028AD0 */  jal        func_800A2B40
/* 1DF90 8001D390 24840040 */   addiu     $a0, $a0, 0x40
/* 1DF94 8001D394 26420001 */  addiu      $v0, $s2, 1
/* 1DF98 8001D398 00409021 */  addu       $s2, $v0, $zero
/* 1DF9C 8001D39C 00021400 */  sll        $v0, $v0, 0x10
/* 1DFA0 8001D3A0 00021403 */  sra        $v0, $v0, 0x10
/* 1DFA4 8001D3A4 3C03800F */  lui        $v1, %hi(D_800F37DA)
/* 1DFA8 8001D3A8 906337DA */  lbu        $v1, %lo(D_800F37DA)($v1)
/* 1DFAC 8001D3AC 0043102A */  slt        $v0, $v0, $v1
/* 1DFB0 8001D3B0 1440FFEA */  bnez       $v0, .L8001D35C
/* 1DFB4 8001D3B4 00000000 */   nop
.L8001D3B8:
/* 1DFB8 8001D3B8 26620001 */  addiu      $v0, $s3, 1
/* 1DFBC 8001D3BC 00409821 */  addu       $s3, $v0, $zero
/* 1DFC0 8001D3C0 00021400 */  sll        $v0, $v0, 0x10
/* 1DFC4 8001D3C4 00021403 */  sra        $v0, $v0, 0x10
/* 1DFC8 8001D3C8 28420006 */  slti       $v0, $v0, 6
/* 1DFCC 8001D3CC 5440FFB2 */  bnel       $v0, $zero, .L8001D298
/* 1DFD0 8001D3D0 00138C00 */   sll       $s1, $s3, 0x10
/* 1DFD4 8001D3D4 3C02800C */  lui        $v0, %hi(D_800C3110)
/* 1DFD8 8001D3D8 8C423110 */  lw         $v0, %lo(D_800C3110)($v0)
/* 1DFDC 8001D3DC 3C01800F */  lui        $at, %hi(D_800F32A0)
/* 1DFE0 8001D3E0 AC2232A0 */  sw         $v0, %lo(D_800F32A0)($at)
/* 1DFE4 8001D3E4 244200F8 */  addiu      $v0, $v0, 0xf8
/* 1DFE8 8001D3E8 3C01800F */  lui        $at, %hi(D_800F2BCC)
/* 1DFEC 8001D3EC AC222BCC */  sw         $v0, %lo(D_800F2BCC)($at)
/* 1DFF0 8001D3F0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1DFF4 8001D3F4 8FB3001C */  lw         $s3, 0x1c($sp)
/* 1DFF8 8001D3F8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1DFFC 8001D3FC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1E000 8001D400 8FB00010 */  lw         $s0, 0x10($sp)
/* 1E004 8001D404 03E00008 */  jr         $ra
/* 1E008 8001D408 27BD0028 */   addiu     $sp, $sp, 0x28
