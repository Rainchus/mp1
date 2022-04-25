	.set noat
	.set noreorder

glabel func_800F7E20_CF290
/* CF290 800F7E20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CF294 800F7E24 AFBF001C */  sw         $ra, 0x1c($sp)
/* CF298 800F7E28 AFB20018 */  sw         $s2, 0x18($sp)
/* CF29C 800F7E2C AFB10014 */  sw         $s1, 0x14($sp)
/* CF2A0 800F7E30 AFB00010 */  sw         $s0, 0x10($sp)
/* CF2A4 800F7E34 00008821 */  addu       $s1, $zero, $zero
/* CF2A8 800F7E38 2412FFFF */  addiu      $s2, $zero, -1
/* CF2AC 800F7E3C 00111400 */  sll        $v0, $s1, 0x10
.L800F7E40:
/* CF2B0 800F7E40 00028383 */  sra        $s0, $v0, 0xe
/* CF2B4 800F7E44 3C028010 */  lui        $v0, %hi(D_800FE158)
/* CF2B8 800F7E48 00501021 */  addu       $v0, $v0, $s0
/* CF2BC 800F7E4C 8442E158 */  lh         $v0, %lo(D_800FE158)($v0)
/* CF2C0 800F7E50 10520016 */  beq        $v0, $s2, .L800F7EAC
/* CF2C4 800F7E54 26220001 */   addiu     $v0, $s1, 1
/* CF2C8 800F7E58 3C028010 */  lui        $v0, %hi(D_800FE15A)
/* CF2CC 800F7E5C 00501021 */  addu       $v0, $v0, $s0
/* CF2D0 800F7E60 9442E15A */  lhu        $v0, %lo(D_800FE15A)($v0)
/* CF2D4 800F7E64 2442FFFF */  addiu      $v0, $v0, -1
/* CF2D8 800F7E68 3C018010 */  lui        $at, %hi(D_800FE15A)
/* CF2DC 800F7E6C 00300821 */  addu       $at, $at, $s0
/* CF2E0 800F7E70 A422E15A */  sh         $v0, %lo(D_800FE15A)($at)
/* CF2E4 800F7E74 00021400 */  sll        $v0, $v0, 0x10
/* CF2E8 800F7E78 1C40000C */  bgtz       $v0, .L800F7EAC
/* CF2EC 800F7E7C 26220001 */   addiu     $v0, $s1, 1
/* CF2F0 800F7E80 3C048010 */  lui        $a0, %hi(D_800FE158)
/* CF2F4 800F7E84 00902021 */  addu       $a0, $a0, $s0
/* CF2F8 800F7E88 0C0180AB */  jal        func_800602AC
/* CF2FC 800F7E8C 8484E158 */   lh        $a0, %lo(D_800FE158)($a0)
/* CF300 800F7E90 3C018010 */  lui        $at, %hi(D_800FE158)
/* CF304 800F7E94 00300821 */  addu       $at, $at, $s0
/* CF308 800F7E98 A432E158 */  sh         $s2, %lo(D_800FE158)($at)
/* CF30C 800F7E9C 3C018010 */  lui        $at, %hi(D_800FE15A)
/* CF310 800F7EA0 00300821 */  addu       $at, $at, $s0
/* CF314 800F7EA4 A432E15A */  sh         $s2, %lo(D_800FE15A)($at)
/* CF318 800F7EA8 26220001 */  addiu      $v0, $s1, 1
.L800F7EAC:
/* CF31C 800F7EAC 00408821 */  addu       $s1, $v0, $zero
/* CF320 800F7EB0 00021400 */  sll        $v0, $v0, 0x10
/* CF324 800F7EB4 00021403 */  sra        $v0, $v0, 0x10
/* CF328 800F7EB8 2842000A */  slti       $v0, $v0, 0xa
/* CF32C 800F7EBC 1440FFE0 */  bnez       $v0, .L800F7E40
/* CF330 800F7EC0 00111400 */   sll       $v0, $s1, 0x10
/* CF334 800F7EC4 8FBF001C */  lw         $ra, 0x1c($sp)
/* CF338 800F7EC8 8FB20018 */  lw         $s2, 0x18($sp)
/* CF33C 800F7ECC 8FB10014 */  lw         $s1, 0x14($sp)
/* CF340 800F7ED0 8FB00010 */  lw         $s0, 0x10($sp)
/* CF344 800F7ED4 03E00008 */  jr         $ra
/* CF348 800F7ED8 27BD0020 */   addiu     $sp, $sp, 0x20
