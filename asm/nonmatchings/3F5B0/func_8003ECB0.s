	.set noat
	.set noreorder

glabel func_8003ECB0
/* 3F8B0 8003ECB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3F8B4 8003ECB4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 3F8B8 8003ECB8 AFB3001C */  sw         $s3, 0x1c($sp)
/* 3F8BC 8003ECBC AFB20018 */  sw         $s2, 0x18($sp)
/* 3F8C0 8003ECC0 AFB10014 */  sw         $s1, 0x14($sp)
/* 3F8C4 8003ECC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 3F8C8 8003ECC8 00C08821 */  addu       $s1, $a2, $zero
/* 3F8CC 8003ECCC 00809021 */  addu       $s2, $a0, $zero
/* 3F8D0 8003ECD0 00A09821 */  addu       $s3, $a1, $zero
/* 3F8D4 8003ECD4 00E08021 */  addu       $s0, $a3, $zero
/* 3F8D8 8003ECD8 93A2003B */  lbu        $v0, 0x3b($sp)
/* 3F8DC 8003ECDC 3C01800F */  lui        $at, %hi(D_800ECB24)
/* 3F8E0 8003ECE0 AC22CB24 */  sw         $v0, %lo(D_800ECB24)($at)
/* 3F8E4 8003ECE4 24840001 */  addiu      $a0, $a0, 1
/* 3F8E8 8003ECE8 24A50001 */  addiu      $a1, $a1, 1
/* 3F8EC 8003ECEC 3084FFFF */  andi       $a0, $a0, 0xffff
/* 3F8F0 8003ECF0 0C0188AF */  jal        func_800622BC
/* 3F8F4 8003ECF4 30A5FFFF */   andi      $a1, $a1, 0xffff
/* 3F8F8 8003ECF8 321000FF */  andi       $s0, $s0, 0xff
/* 3F8FC 8003ECFC 3C01800F */  lui        $at, %hi(D_800ECB24)
/* 3F900 8003ED00 AC30CB24 */  sw         $s0, %lo(D_800ECB24)($at)
/* 3F904 8003ED04 3244FFFF */  andi       $a0, $s2, 0xffff
/* 3F908 8003ED08 3265FFFF */  andi       $a1, $s3, 0xffff
/* 3F90C 8003ED0C 0C0188AF */  jal        func_800622BC
/* 3F910 8003ED10 02203021 */   addu      $a2, $s1, $zero
/* 3F914 8003ED14 8FBF0020 */  lw         $ra, 0x20($sp)
/* 3F918 8003ED18 8FB3001C */  lw         $s3, 0x1c($sp)
/* 3F91C 8003ED1C 8FB20018 */  lw         $s2, 0x18($sp)
/* 3F920 8003ED20 8FB10014 */  lw         $s1, 0x14($sp)
/* 3F924 8003ED24 8FB00010 */  lw         $s0, 0x10($sp)
/* 3F928 8003ED28 03E00008 */  jr         $ra
/* 3F92C 8003ED2C 27BD0028 */   addiu     $sp, $sp, 0x28
