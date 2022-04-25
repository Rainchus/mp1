	.set noat
	.set noreorder

glabel func_800591E0
/* 59DE0 800591E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 59DE4 800591E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 59DE8 800591E8 AFB20018 */  sw         $s2, 0x18($sp)
/* 59DEC 800591EC AFB10014 */  sw         $s1, 0x14($sp)
/* 59DF0 800591F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 59DF4 800591F4 24020001 */  addiu      $v0, $zero, 1
/* 59DF8 800591F8 3C01800F */  lui        $at, %hi(D_800ECC22)
/* 59DFC 800591FC A022CC22 */  sb         $v0, %lo(D_800ECC22)($at)
/* 59E00 80059200 0C017F5F */  jal        func_8005FD7C
/* 59E04 80059204 00809021 */   addu      $s2, $a0, $zero
/* 59E08 80059208 0C018CEA */  jal        func_800633A8
/* 59E0C 8005920C 00000000 */   nop
/* 59E10 80059210 00408821 */  addu       $s1, $v0, $zero
/* 59E14 80059214 3C048006 */  lui        $a0, %hi(func_80058E64)
/* 59E18 80059218 24848E64 */  addiu      $a0, $a0, %lo(func_80058E64)
/* 59E1C 8005921C 24051005 */  addiu      $a1, $zero, 0x1005
/* 59E20 80059220 00003021 */  addu       $a2, $zero, $zero
/* 59E24 80059224 0C01770A */  jal        func_8005DC28
/* 59E28 80059228 00003821 */   addu      $a3, $zero, $zero
/* 59E2C 8005922C 00408021 */  addu       $s0, $v0, $zero
/* 59E30 80059230 AE12008C */  sw         $s2, 0x8c($s0)
/* 59E34 80059234 02002021 */  addu       $a0, $s0, $zero
/* 59E38 80059238 0C017640 */  jal        func_8005D900
/* 59E3C 8005923C 24050080 */   addiu     $a1, $zero, 0x80
/* 59E40 80059240 02202021 */  addu       $a0, $s1, $zero
/* 59E44 80059244 0C018C9C */  jal        func_80063270
/* 59E48 80059248 02002821 */   addu      $a1, $s0, $zero
/* 59E4C 8005924C 0C018CD6 */  jal        func_80063358
/* 59E50 80059250 00000000 */   nop
/* 59E54 80059254 0C017FB3 */  jal        func_8005FECC
/* 59E58 80059258 00000000 */   nop
/* 59E5C 8005925C 3C01800F */  lui        $at, %hi(D_800ECC22)
/* 59E60 80059260 A020CC22 */  sb         $zero, %lo(D_800ECC22)($at)
/* 59E64 80059264 8FBF001C */  lw         $ra, 0x1c($sp)
/* 59E68 80059268 8FB20018 */  lw         $s2, 0x18($sp)
/* 59E6C 8005926C 8FB10014 */  lw         $s1, 0x14($sp)
/* 59E70 80059270 8FB00010 */  lw         $s0, 0x10($sp)
/* 59E74 80059274 03E00008 */  jr         $ra
/* 59E78 80059278 27BD0020 */   addiu     $sp, $sp, 0x20
/* 59E7C 8005927C 00000000 */  nop
