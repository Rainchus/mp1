	.set noat
	.set noreorder

glabel func_8004C100
/* 4CD00 8004C100 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4CD04 8004C104 AFBF0028 */  sw         $ra, 0x28($sp)
/* 4CD08 8004C108 AFB10024 */  sw         $s1, 0x24($sp)
/* 4CD0C 8004C10C AFB00020 */  sw         $s0, 0x20($sp)
/* 4CD10 8004C110 3C02800C */  lui        $v0, %hi(D_800C4FD0)
/* 4CD14 8004C114 8C424FD0 */  lw         $v0, %lo(D_800C4FD0)($v0)
/* 4CD18 8004C118 1040002F */  beqz       $v0, .L8004C1D8
/* 4CD1C 8004C11C 00000000 */   nop
/* 4CD20 8004C120 3C01800C */  lui        $at, %hi(D_800C4FD0)
/* 4CD24 8004C124 AC204FD0 */  sw         $zero, %lo(D_800C4FD0)($at)
/* 4CD28 8004C128 3C01800F */  lui        $at, %hi(D_800F3290)
/* 4CD2C 8004C12C A4203290 */  sh         $zero, %lo(D_800F3290)($at)
/* 4CD30 8004C130 3C04800E */  lui        $a0, %hi(D_800D8108)
/* 4CD34 8004C134 8C848108 */  lw         $a0, %lo(D_800D8108)($a0)
/* 4CD38 8004C138 0C00EDE6 */  jal        func_8003B798
/* 4CD3C 8004C13C 00008021 */   addu      $s0, $zero, $zero
/* 4CD40 8004C140 3C11800E */  lui        $s1, %hi(D_800D810C)
/* 4CD44 8004C144 8E31810C */  lw         $s1, %lo(D_800D810C)($s1)
/* 4CD48 8004C148 3C02800E */  lui        $v0, %hi(D_800D8102)
/* 4CD4C 8004C14C 94428102 */  lhu        $v0, %lo(D_800D8102)($v0)
/* 4CD50 8004C150 18400009 */  blez       $v0, .L8004C178
/* 4CD54 8004C154 00000000 */   nop
.L8004C158:
/* 4CD58 8004C158 8E240004 */  lw         $a0, 4($s1)
/* 4CD5C 8004C15C 0C00EDE6 */  jal        func_8003B798
/* 4CD60 8004C160 26100001 */   addiu     $s0, $s0, 1
/* 4CD64 8004C164 3C02800E */  lui        $v0, %hi(D_800D8102)
/* 4CD68 8004C168 94428102 */  lhu        $v0, %lo(D_800D8102)($v0)
/* 4CD6C 8004C16C 0202102A */  slt        $v0, $s0, $v0
/* 4CD70 8004C170 1440FFF9 */  bnez       $v0, .L8004C158
/* 4CD74 8004C174 26310008 */   addiu     $s1, $s1, 8
.L8004C178:
/* 4CD78 8004C178 3C04800E */  lui        $a0, %hi(D_800D810C)
/* 4CD7C 8004C17C 8C84810C */  lw         $a0, %lo(D_800D810C)($a0)
/* 4CD80 8004C180 0C00EDE6 */  jal        func_8003B798
/* 4CD84 8004C184 00008021 */   addu      $s0, $zero, $zero
/* 4CD88 8004C188 3C11800E */  lui        $s1, %hi(D_800D8110)
/* 4CD8C 8004C18C 8E318110 */  lw         $s1, %lo(D_800D8110)($s1)
/* 4CD90 8004C190 3C02800E */  lui        $v0, %hi(D_800D8104)
/* 4CD94 8004C194 94428104 */  lhu        $v0, %lo(D_800D8104)($v0)
/* 4CD98 8004C198 18400009 */  blez       $v0, .L8004C1C0
/* 4CD9C 8004C19C 00000000 */   nop
.L8004C1A0:
/* 4CDA0 8004C1A0 8E240004 */  lw         $a0, 4($s1)
/* 4CDA4 8004C1A4 0C00EDE6 */  jal        func_8003B798
/* 4CDA8 8004C1A8 26100001 */   addiu     $s0, $s0, 1
/* 4CDAC 8004C1AC 3C02800E */  lui        $v0, %hi(D_800D8104)
/* 4CDB0 8004C1B0 94428104 */  lhu        $v0, %lo(D_800D8104)($v0)
/* 4CDB4 8004C1B4 0202102A */  slt        $v0, $s0, $v0
/* 4CDB8 8004C1B8 1440FFF9 */  bnez       $v0, .L8004C1A0
/* 4CDBC 8004C1BC 26310008 */   addiu     $s1, $s1, 8
.L8004C1C0:
/* 4CDC0 8004C1C0 3C04800E */  lui        $a0, %hi(D_800D8110)
/* 4CDC4 8004C1C4 0C00EDE6 */  jal        func_8003B798
/* 4CDC8 8004C1C8 8C848110 */   lw        $a0, %lo(D_800D8110)($a0)
/* 4CDCC 8004C1CC 24040001 */  addiu      $a0, $zero, 1
/* 4CDD0 8004C1D0 0C00A3A3 */  jal        func_80028E8C
/* 4CDD4 8004C1D4 00002821 */   addu      $a1, $zero, $zero
.L8004C1D8:
/* 4CDD8 8004C1D8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 4CDDC 8004C1DC 8FB10024 */  lw         $s1, 0x24($sp)
/* 4CDE0 8004C1E0 8FB00020 */  lw         $s0, 0x20($sp)
/* 4CDE4 8004C1E4 03E00008 */  jr         $ra
/* 4CDE8 8004C1E8 27BD0030 */   addiu     $sp, $sp, 0x30
