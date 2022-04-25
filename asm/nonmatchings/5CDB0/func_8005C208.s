	.set noat
	.set noreorder

glabel func_8005C208
/* 5CE08 8005C208 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5CE0C 8005C20C AFBF0010 */  sw         $ra, 0x10($sp)
/* 5CE10 8005C210 0C0165F7 */  jal        func_800597DC
/* 5CE14 8005C214 2404002B */   addiu     $a0, $zero, 0x2b
/* 5CE18 8005C218 0C017392 */  jal        func_8005CE48
/* 5CE1C 8005C21C 24040001 */   addiu     $a0, $zero, 1
/* 5CE20 8005C220 10400005 */  beqz       $v0, .L8005C238
/* 5CE24 8005C224 00000000 */   nop
/* 5CE28 8005C228 0C0173A3 */  jal        func_8005CE8C
/* 5CE2C 8005C22C 24040004 */   addiu     $a0, $zero, 4
/* 5CE30 8005C230 08017091 */  j          .L8005C244
/* 5CE34 8005C234 24020001 */   addiu     $v0, $zero, 1
.L8005C238:
/* 5CE38 8005C238 0C0173B7 */  jal        func_8005CEDC
/* 5CE3C 8005C23C 24040004 */   addiu     $a0, $zero, 4
/* 5CE40 8005C240 24020001 */  addiu      $v0, $zero, 1
.L8005C244:
/* 5CE44 8005C244 3C01800E */  lui        $at, %hi(D_800D8950)
/* 5CE48 8005C248 A4228950 */  sh         $v0, %lo(D_800D8950)($at)
/* 5CE4C 8005C24C 3C01800E */  lui        $at, %hi(D_800D8954)
/* 5CE50 8005C250 A4208954 */  sh         $zero, %lo(D_800D8954)($at)
/* 5CE54 8005C254 24020002 */  addiu      $v0, $zero, 2
/* 5CE58 8005C258 3C01800E */  lui        $at, %hi(D_800D8952)
/* 5CE5C 8005C25C A4228952 */  sh         $v0, %lo(D_800D8952)($at)
/* 5CE60 8005C260 0C017392 */  jal        func_8005CE48
/* 5CE64 8005C264 24040004 */   addiu     $a0, $zero, 4
/* 5CE68 8005C268 14400008 */  bnez       $v0, .L8005C28C
/* 5CE6C 8005C26C 24040078 */   addiu     $a0, $zero, 0x78
/* 5CE70 8005C270 00002821 */  addu       $a1, $zero, $zero
/* 5CE74 8005C274 0C01706C */  jal        func_8005C1B0
/* 5CE78 8005C278 24060092 */   addiu     $a2, $zero, 0x92
/* 5CE7C 8005C27C 24040072 */  addiu      $a0, $zero, 0x72
/* 5CE80 8005C280 24050001 */  addiu      $a1, $zero, 1
/* 5CE84 8005C284 0C01706C */  jal        func_8005C1B0
/* 5CE88 8005C288 24060092 */   addiu     $a2, $zero, 0x92
.L8005C28C:
/* 5CE8C 8005C28C 0C01714B */  jal        func_8005C52C
/* 5CE90 8005C290 00000000 */   nop
/* 5CE94 8005C294 0C0173B7 */  jal        func_8005CEDC
/* 5CE98 8005C298 24040004 */   addiu     $a0, $zero, 4
/* 5CE9C 8005C29C 0C01660B */  jal        func_8005982C
/* 5CEA0 8005C2A0 2404002F */   addiu     $a0, $zero, 0x2f
/* 5CEA4 8005C2A4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5CEA8 8005C2A8 03E00008 */  jr         $ra
/* 5CEAC 8005C2AC 27BD0018 */   addiu     $sp, $sp, 0x18
