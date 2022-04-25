	.set noat
	.set noreorder

glabel func_800411C8
/* 41DC8 800411C8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 41DCC 800411CC AFBF002C */  sw         $ra, 0x2c($sp)
/* 41DD0 800411D0 AFB00028 */  sw         $s0, 0x28($sp)
/* 41DD4 800411D4 00808021 */  addu       $s0, $a0, $zero
/* 41DD8 800411D8 3C05800D */  lui        $a1, %hi(D_800CACF4)
/* 41DDC 800411DC 24A5ACF4 */  addiu      $a1, $a1, %lo(D_800CACF4)
/* 41DE0 800411E0 8CA20000 */  lw         $v0, ($a1)
/* 41DE4 800411E4 8CA30004 */  lw         $v1, 4($a1)
/* 41DE8 800411E8 8CA40008 */  lw         $a0, 8($a1)
/* 41DEC 800411EC AFA20010 */  sw         $v0, 0x10($sp)
/* 41DF0 800411F0 AFA30014 */  sw         $v1, 0x14($sp)
/* 41DF4 800411F4 AFA40018 */  sw         $a0, 0x18($sp)
/* 41DF8 800411F8 8CA2000C */  lw         $v0, 0xc($a1)
/* 41DFC 800411FC 8CA30010 */  lw         $v1, 0x10($a1)
/* 41E00 80041200 8CA40014 */  lw         $a0, 0x14($a1)
/* 41E04 80041204 AFA2001C */  sw         $v0, 0x1c($sp)
/* 41E08 80041208 AFA30020 */  sw         $v1, 0x20($sp)
/* 41E0C 8004120C AFA40024 */  sw         $a0, 0x24($sp)
/* 41E10 80041210 02002021 */  addu       $a0, $s0, $zero
/* 41E14 80041214 3C05000A */  lui        $a1, 0xa
/* 41E18 80041218 34A50003 */  ori        $a1, $a1, 3
/* 41E1C 8004121C 2406FFFF */  addiu      $a2, $zero, -1
/* 41E20 80041220 0C010367 */  jal        func_80040D9C
/* 41E24 80041224 27A70010 */   addiu     $a3, $sp, 0x10
/* 41E28 80041228 24020004 */  addiu      $v0, $zero, 4
/* 41E2C 8004122C 3C01800D */  lui        $at, %hi(D_800D63E1)
/* 41E30 80041230 A02263E1 */  sb         $v0, %lo(D_800D63E1)($at)
/* 41E34 80041234 02002021 */  addu       $a0, $s0, $zero
/* 41E38 80041238 0C0140EC */  jal        func_800503B0
/* 41E3C 8004123C 24050001 */   addiu     $a1, $zero, 1
/* 41E40 80041240 8FBF002C */  lw         $ra, 0x2c($sp)
/* 41E44 80041244 8FB00028 */  lw         $s0, 0x28($sp)
/* 41E48 80041248 03E00008 */  jr         $ra
/* 41E4C 8004124C 27BD0030 */   addiu     $sp, $sp, 0x30
