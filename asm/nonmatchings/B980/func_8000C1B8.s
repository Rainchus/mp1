	.set noat
	.set noreorder

glabel func_8000C1B8
/* CDB8 8000C1B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CDBC 8000C1BC AFBF0014 */  sw         $ra, 0x14($sp)
/* CDC0 8000C1C0 AFB00010 */  sw         $s0, 0x10($sp)
/* CDC4 8000C1C4 3C03800D */  lui        $v1, %hi(D_800CDAF0)
/* CDC8 8000C1C8 8C63DAF0 */  lw         $v1, %lo(D_800CDAF0)($v1)
/* CDCC 8000C1CC 30628000 */  andi       $v0, $v1, 0x8000
/* CDD0 8000C1D0 1040001B */  beqz       $v0, .L8000C240
/* CDD4 8000C1D4 34620010 */   ori       $v0, $v1, 0x10
/* CDD8 8000C1D8 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* CDDC 8000C1DC 0C003051 */  jal        func_8000C144
/* CDE0 8000C1E0 AC22DAF0 */   sw        $v0, %lo(D_800CDAF0)($at)
/* CDE4 8000C1E4 24030001 */  addiu      $v1, $zero, 1
/* CDE8 8000C1E8 14430013 */  bne        $v0, $v1, .L8000C238
/* CDEC 8000C1EC 34028000 */   ori       $v0, $zero, 0x8000
/* CDF0 8000C1F0 00008021 */  addu       $s0, $zero, $zero
.L8000C1F4:
/* CDF4 8000C1F4 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* CDF8 8000C1F8 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* CDFC 8000C1FC 320500FF */  andi       $a1, $s0, 0xff
/* CE00 8000C200 0C0229A8 */  jal        func_8008A6A0
/* CE04 8000C204 00003021 */   addu      $a2, $zero, $zero
/* CE08 8000C208 26100001 */  addiu      $s0, $s0, 1
/* CE0C 8000C20C 320200FF */  andi       $v0, $s0, 0xff
/* CE10 8000C210 2C420010 */  sltiu      $v0, $v0, 0x10
/* CE14 8000C214 1440FFF7 */  bnez       $v0, .L8000C1F4
/* CE18 8000C218 00000000 */   nop
/* CE1C 8000C21C 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* CE20 8000C220 0C0229E8 */  jal        func_8008A7A0
/* CE24 8000C224 8C84DAD4 */   lw        $a0, %lo(D_800CDAD4)($a0)
/* CE28 8000C228 24020002 */  addiu      $v0, $zero, 2
/* CE2C 8000C22C 3C01800D */  lui        $at, %hi(D_800CDAEC)
/* CE30 8000C230 AC22DAEC */  sw         $v0, %lo(D_800CDAEC)($at)
/* CE34 8000C234 34028000 */  ori        $v0, $zero, 0x8000
.L8000C238:
/* CE38 8000C238 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* CE3C 8000C23C AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
.L8000C240:
/* CE40 8000C240 8FBF0014 */  lw         $ra, 0x14($sp)
/* CE44 8000C244 8FB00010 */  lw         $s0, 0x10($sp)
/* CE48 8000C248 03E00008 */  jr         $ra
/* CE4C 8000C24C 27BD0018 */   addiu     $sp, $sp, 0x18
