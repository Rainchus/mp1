	.set noat
	.set noreorder

glabel func_8002C1A8
/* 2CDA8 8002C1A8 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 2CDAC 8002C1AC AFBF005C */  sw         $ra, 0x5c($sp)
/* 2CDB0 8002C1B0 AFB20058 */  sw         $s2, 0x58($sp)
/* 2CDB4 8002C1B4 AFB10054 */  sw         $s1, 0x54($sp)
/* 2CDB8 8002C1B8 AFB00050 */  sw         $s0, 0x50($sp)
/* 2CDBC 8002C1BC 00808021 */  addu       $s0, $a0, $zero
/* 2CDC0 8002C1C0 00A08821 */  addu       $s1, $a1, $zero
/* 2CDC4 8002C1C4 8602006E */  lh         $v0, 0x6e($s0)
/* 2CDC8 8002C1C8 10400066 */  beqz       $v0, .L8002C364
/* 2CDCC 8002C1CC 00C09021 */   addu      $s2, $a2, $zero
/* 2CDD0 8002C1D0 3C04800F */  lui        $a0, %hi(D_800F54C0)
/* 2CDD4 8002C1D4 0C00B0DF */  jal        func_8002C37C
/* 2CDD8 8002C1D8 248454C0 */   addiu     $a0, $a0, %lo(D_800F54C0)
/* 2CDDC 8002C1DC 24020001 */  addiu      $v0, $zero, 1
/* 2CDE0 8002C1E0 3C01800F */  lui        $at, %hi(D_800F33D4)
/* 2CDE4 8002C1E4 A42233D4 */  sh         $v0, %lo(D_800F33D4)($at)
/* 2CDE8 8002C1E8 3C04800F */  lui        $a0, %hi(D_800F5500)
/* 2CDEC 8002C1EC 0C021BEC */  jal        func_80086FB0
/* 2CDF0 8002C1F0 24845500 */   addiu     $a0, $a0, %lo(D_800F5500)
/* 2CDF4 8002C1F4 3C01800F */  lui        $at, %hi(D_800F5030)
/* 2CDF8 8002C1F8 A4205030 */  sh         $zero, %lo(D_800F5030)($at)
/* 2CDFC 8002C1FC 3C04800F */  lui        $a0, %hi(D_800F4020)
/* 2CE00 8002C200 24844020 */  addiu      $a0, $a0, %lo(D_800F4020)
/* 2CE04 8002C204 0C00B0DF */  jal        func_8002C37C
/* 2CE08 8002C208 02402821 */   addu      $a1, $s2, $zero
/* 2CE0C 8002C20C 92020029 */  lbu        $v0, 0x29($s0)
/* 2CE10 8002C210 30420004 */  andi       $v0, $v0, 4
/* 2CE14 8002C214 10400026 */  beqz       $v0, .L8002C2B0
/* 2CE18 8002C218 3C037000 */   lui       $v1, 0x7000
/* 2CE1C 8002C21C 8E020080 */  lw         $v0, 0x80($s0)
/* 2CE20 8002C220 8C420014 */  lw         $v0, 0x14($v0)
/* 2CE24 8002C224 00431024 */  and        $v0, $v0, $v1
/* 2CE28 8002C228 10400009 */  beqz       $v0, .L8002C250
/* 2CE2C 8002C22C 02002021 */   addu      $a0, $s0, $zero
/* 2CE30 8002C230 00002821 */  addu       $a1, $zero, $zero
/* 2CE34 8002C234 02203021 */  addu       $a2, $s1, $zero
/* 2CE38 8002C238 0C00CC17 */  jal        func_8003305C
/* 2CE3C 8002C23C 27A70010 */   addiu     $a3, $sp, 0x10
/* 2CE40 8002C240 02402021 */  addu       $a0, $s2, $zero
/* 2CE44 8002C244 27A50010 */  addiu      $a1, $sp, 0x10
/* 2CE48 8002C248 0C0089F1 */  jal        func_800227C4
/* 2CE4C 8002C24C 02203021 */   addu      $a2, $s1, $zero
.L8002C250:
/* 2CE50 8002C250 3C05800F */  lui        $a1, %hi(D_800ED52C)
/* 2CE54 8002C254 84A5D52C */  lh         $a1, %lo(D_800ED52C)($a1)
/* 2CE58 8002C258 00052980 */  sll        $a1, $a1, 6
/* 2CE5C 8002C25C 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 2CE60 8002C260 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 2CE64 8002C264 02202021 */  addu       $a0, $s1, $zero
/* 2CE68 8002C268 0C028288 */  jal        func_800A0A20
/* 2CE6C 8002C26C 00A22821 */   addu      $a1, $a1, $v0
/* 2CE70 8002C270 3C06800F */  lui        $a2, %hi(D_800ED52C)
/* 2CE74 8002C274 94C6D52C */  lhu        $a2, %lo(D_800ED52C)($a2)
/* 2CE78 8002C278 24C20001 */  addiu      $v0, $a2, 1
/* 2CE7C 8002C27C 3C01800F */  lui        $at, %hi(D_800ED52C)
/* 2CE80 8002C280 A422D52C */  sh         $v0, %lo(D_800ED52C)($at)
/* 2CE84 8002C284 00063400 */  sll        $a2, $a2, 0x10
/* 2CE88 8002C288 00063283 */  sra        $a2, $a2, 0xa
/* 2CE8C 8002C28C 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 2CE90 8002C290 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 2CE94 8002C294 02002021 */  addu       $a0, $s0, $zero
/* 2CE98 8002C298 00002821 */  addu       $a1, $zero, $zero
/* 2CE9C 8002C29C 00C23021 */  addu       $a2, $a2, $v0
/* 2CEA0 8002C2A0 0C00B4B3 */  jal        func_8002D2CC
/* 2CEA4 8002C2A4 02203821 */   addu      $a3, $s1, $zero
/* 2CEA8 8002C2A8 0800B0D9 */  j          .L8002C364
/* 2CEAC 8002C2AC 00000000 */   nop
.L8002C2B0:
/* 2CEB0 8002C2B0 8E0600AC */  lw         $a2, 0xac($s0)
/* 2CEB4 8002C2B4 10C00011 */  beqz       $a2, .L8002C2FC
/* 2CEB8 8002C2B8 02002021 */   addu      $a0, $s0, $zero
/* 2CEBC 8002C2BC 8E0500C0 */  lw         $a1, 0xc0($s0)
/* 2CEC0 8002C2C0 0C00D3B6 */  jal        func_80034ED8
/* 2CEC4 8002C2C4 24070001 */   addiu     $a3, $zero, 1
/* 2CEC8 8002C2C8 8E0200B0 */  lw         $v0, 0xb0($s0)
/* 2CECC 8002C2CC 10400005 */  beqz       $v0, .L8002C2E4
/* 2CED0 8002C2D0 00000000 */   nop
/* 2CED4 8002C2D4 8E0500C4 */  lw         $a1, 0xc4($s0)
/* 2CED8 8002C2D8 8E0600C8 */  lw         $a2, 0xc8($s0)
/* 2CEDC 8002C2DC 0C00D627 */  jal        func_8003589C
/* 2CEE0 8002C2E0 02002021 */   addu      $a0, $s0, $zero
.L8002C2E4:
/* 2CEE4 8002C2E4 8E0600B4 */  lw         $a2, 0xb4($s0)
/* 2CEE8 8002C2E8 10C00004 */  beqz       $a2, .L8002C2FC
/* 2CEEC 8002C2EC 02002021 */   addu      $a0, $s0, $zero
/* 2CEF0 8002C2F0 8E0500CC */  lw         $a1, 0xcc($s0)
/* 2CEF4 8002C2F4 0C00D3B6 */  jal        func_80034ED8
/* 2CEF8 8002C2F8 00003821 */   addu      $a3, $zero, $zero
.L8002C2FC:
/* 2CEFC 8002C2FC 8E0300A0 */  lw         $v1, 0xa0($s0)
/* 2CF00 8002C300 2402FFFF */  addiu      $v0, $zero, -1
/* 2CF04 8002C304 14620008 */  bne        $v1, $v0, .L8002C328
/* 2CF08 8002C308 00000000 */   nop
/* 2CF0C 8002C30C 86020084 */  lh         $v0, 0x84($s0)
/* 2CF10 8002C310 10400014 */  beqz       $v0, .L8002C364
/* 2CF14 8002C314 02002021 */   addu      $a0, $s0, $zero
/* 2CF18 8002C318 0C00B100 */  jal        func_8002C400
/* 2CF1C 8002C31C 00002821 */   addu      $a1, $zero, $zero
/* 2CF20 8002C320 0800B0CF */  j          .L8002C33C
/* 2CF24 8002C324 00000000 */   nop
.L8002C328:
/* 2CF28 8002C328 86020070 */  lh         $v0, 0x70($s0)
/* 2CF2C 8002C32C 1040000D */  beqz       $v0, .L8002C364
/* 2CF30 8002C330 02002021 */   addu      $a0, $s0, $zero
/* 2CF34 8002C334 0C00B216 */  jal        func_8002C858
/* 2CF38 8002C338 00002821 */   addu      $a1, $zero, $zero
.L8002C33C:
/* 2CF3C 8002C33C 3C03800F */  lui        $v1, %hi(D_800EC6F2)
/* 2CF40 8002C340 9463C6F2 */  lhu        $v1, %lo(D_800EC6F2)($v1)
/* 2CF44 8002C344 3C02800F */  lui        $v0, %hi(D_800ED52C)
/* 2CF48 8002C348 8442D52C */  lh         $v0, %lo(D_800ED52C)($v0)
/* 2CF4C 8002C34C 0043102A */  slt        $v0, $v0, $v1
/* 2CF50 8002C350 14400004 */  bnez       $v0, .L8002C364
/* 2CF54 8002C354 00000000 */   nop
/* 2CF58 8002C358 3C04800D */  lui        $a0, %hi(D_800CA91C)
/* 2CF5C 8002C35C 0C023148 */  jal        func_8008C520
/* 2CF60 8002C360 2484A91C */   addiu     $a0, $a0, %lo(D_800CA91C)
.L8002C364:
/* 2CF64 8002C364 8FBF005C */  lw         $ra, 0x5c($sp)
/* 2CF68 8002C368 8FB20058 */  lw         $s2, 0x58($sp)
/* 2CF6C 8002C36C 8FB10054 */  lw         $s1, 0x54($sp)
/* 2CF70 8002C370 8FB00050 */  lw         $s0, 0x50($sp)
/* 2CF74 8002C374 03E00008 */  jr         $ra
/* 2CF78 8002C378 27BD0060 */   addiu     $sp, $sp, 0x60
