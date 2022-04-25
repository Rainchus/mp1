	.set noat
	.set noreorder

glabel func_8003EF98
/* 3FB98 8003EF98 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3FB9C 8003EF9C AFBF0020 */  sw         $ra, 0x20($sp)
/* 3FBA0 8003EFA0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3FBA4 8003EFA4 AFB00018 */  sw         $s0, 0x18($sp)
/* 3FBA8 8003EFA8 00808021 */  addu       $s0, $a0, $zero
/* 3FBAC 8003EFAC 00A08821 */  addu       $s1, $a1, $zero
/* 3FBB0 8003EFB0 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 3FBB4 8003EFB4 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 3FBB8 8003EFB8 3C05800D */  lui        $a1, %hi(D_800CAB44)
/* 3FBBC 8003EFBC 24A5AB44 */  addiu      $a1, $a1, %lo(D_800CAB44)
/* 3FBC0 8003EFC0 3C06800F */  lui        $a2, %hi(D_800F2CDC)
/* 3FBC4 8003EFC4 84C62CDC */  lh         $a2, %lo(D_800F2CDC)($a2)
/* 3FBC8 8003EFC8 0C023124 */  jal        func_8008C490
/* 3FBCC 8003EFCC 001080C0 */   sll       $s0, $s0, 3
/* 3FBD0 8003EFD0 001188C0 */  sll        $s1, $s1, 3
/* 3FBD4 8003EFD4 24020009 */  addiu      $v0, $zero, 9
/* 3FBD8 8003EFD8 AFA20010 */  sw         $v0, 0x10($sp)
/* 3FBDC 8003EFDC 3204FFF8 */  andi       $a0, $s0, 0xfff8
/* 3FBE0 8003EFE0 3225FFF8 */  andi       $a1, $s1, 0xfff8
/* 3FBE4 8003EFE4 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 3FBE8 8003EFE8 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 3FBEC 8003EFEC 0C00FB2C */  jal        func_8003ECB0
/* 3FBF0 8003EFF0 2407000F */   addiu     $a3, $zero, 0xf
/* 3FBF4 8003EFF4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 3FBF8 8003EFF8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3FBFC 8003EFFC 8FB00018 */  lw         $s0, 0x18($sp)
/* 3FC00 8003F000 03E00008 */  jr         $ra
/* 3FC04 8003F004 27BD0028 */   addiu     $sp, $sp, 0x28
