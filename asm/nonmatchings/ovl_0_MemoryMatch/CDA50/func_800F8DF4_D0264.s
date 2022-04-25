	.set noat
	.set noreorder

glabel func_800F8DF4_D0264
/* D0264 800F8DF4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D0268 800F8DF8 AFBF0018 */  sw         $ra, 0x18($sp)
/* D026C 800F8DFC AFB10014 */  sw         $s1, 0x14($sp)
/* D0270 800F8E00 0C00516C */  jal        func_800145B0
/* D0274 800F8E04 AFB00010 */   sw        $s0, 0x10($sp)
/* D0278 800F8E08 00408021 */  addu       $s0, $v0, $zero
/* D027C 800F8E0C 0C019E29 */  jal        func_800678A4
/* D0280 800F8E10 02002021 */   addu      $a0, $s0, $zero
/* D0284 800F8E14 00408821 */  addu       $s1, $v0, $zero
/* D0288 800F8E18 0C0051CC */  jal        func_80014730
/* D028C 800F8E1C 02002021 */   addu      $a0, $s0, $zero
/* D0290 800F8E20 3222FFFF */  andi       $v0, $s1, 0xffff
/* D0294 800F8E24 8FBF0018 */  lw         $ra, 0x18($sp)
/* D0298 800F8E28 8FB10014 */  lw         $s1, 0x14($sp)
/* D029C 800F8E2C 8FB00010 */  lw         $s0, 0x10($sp)
/* D02A0 800F8E30 03E00008 */  jr         $ra
/* D02A4 800F8E34 27BD0020 */   addiu     $sp, $sp, 0x20
