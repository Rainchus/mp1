	.set noat
	.set noreorder

glabel func_8003F008
/* 3FC08 8003F008 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3FC0C 8003F00C AFBF0020 */  sw         $ra, 0x20($sp)
/* 3FC10 8003F010 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3FC14 8003F014 AFB00018 */  sw         $s0, 0x18($sp)
/* 3FC18 8003F018 00808021 */  addu       $s0, $a0, $zero
/* 3FC1C 8003F01C 0C0133DC */  jal        func_8004CF70
/* 3FC20 8003F020 00A08821 */   addu      $s1, $a1, $zero
/* 3FC24 8003F024 00021400 */  sll        $v0, $v0, 0x10
/* 3FC28 8003F028 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 3FC2C 8003F02C 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 3FC30 8003F030 3C05800D */  lui        $a1, %hi(D_800CAB4C)
/* 3FC34 8003F034 24A5AB4C */  addiu      $a1, $a1, %lo(D_800CAB4C)
/* 3FC38 8003F038 0C023124 */  jal        func_8008C490
/* 3FC3C 8003F03C 00023403 */   sra       $a2, $v0, 0x10
/* 3FC40 8003F040 001080C0 */  sll        $s0, $s0, 3
/* 3FC44 8003F044 001188C0 */  sll        $s1, $s1, 3
/* 3FC48 8003F048 24020009 */  addiu      $v0, $zero, 9
/* 3FC4C 8003F04C AFA20010 */  sw         $v0, 0x10($sp)
/* 3FC50 8003F050 3204FFF8 */  andi       $a0, $s0, 0xfff8
/* 3FC54 8003F054 3225FFF8 */  andi       $a1, $s1, 0xfff8
/* 3FC58 8003F058 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 3FC5C 8003F05C 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 3FC60 8003F060 0C00FB2C */  jal        func_8003ECB0
/* 3FC64 8003F064 2407000F */   addiu     $a3, $zero, 0xf
/* 3FC68 8003F068 8FBF0020 */  lw         $ra, 0x20($sp)
/* 3FC6C 8003F06C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3FC70 8003F070 8FB00018 */  lw         $s0, 0x18($sp)
/* 3FC74 8003F074 03E00008 */  jr         $ra
/* 3FC78 8003F078 27BD0028 */   addiu     $sp, $sp, 0x28
