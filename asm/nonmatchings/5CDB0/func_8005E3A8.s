	.set noat
	.set noreorder

glabel func_8005E3A8
/* 5EFA8 8005E3A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5EFAC 8005E3AC AFBF0010 */  sw         $ra, 0x10($sp)
/* 5EFB0 8005E3B0 24020004 */  addiu      $v0, $zero, 4
/* 5EFB4 8005E3B4 3C01800C */  lui        $at, %hi(D_800C5978)
/* 5EFB8 8005E3B8 0C01D84A */  jal        func_80076128
/* 5EFBC 8005E3BC A0225978 */   sb        $v0, %lo(D_800C5978)($at)
/* 5EFC0 8005E3C0 0C0091D5 */  jal        func_80024754
/* 5EFC4 8005E3C4 00000000 */   nop
/* 5EFC8 8005E3C8 0C00AB41 */  jal        func_8002AD04
/* 5EFCC 8005E3CC 00000000 */   nop
/* 5EFD0 8005E3D0 0C017461 */  jal        func_8005D184
/* 5EFD4 8005E3D4 00000000 */   nop
/* 5EFD8 8005E3D8 0C0062BF */  jal        func_80018AFC
/* 5EFDC 8005E3DC 00000000 */   nop
/* 5EFE0 8005E3E0 0C00808D */  jal        func_80020234
/* 5EFE4 8005E3E4 00000000 */   nop
/* 5EFE8 8005E3E8 0C0095E3 */  jal        func_8002578C
/* 5EFEC 8005E3EC 24040001 */   addiu     $a0, $zero, 1
/* 5EFF0 8005E3F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5EFF4 8005E3F4 03E00008 */  jr         $ra
/* 5EFF8 8005E3F8 27BD0018 */   addiu     $sp, $sp, 0x18
