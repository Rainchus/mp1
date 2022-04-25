	.set noat
	.set noreorder

glabel func_8003F384
/* 3FF84 8003F384 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3FF88 8003F388 AFBF0020 */  sw         $ra, 0x20($sp)
/* 3FF8C 8003F38C AFB1001C */  sw         $s1, 0x1c($sp)
/* 3FF90 8003F390 AFB00018 */  sw         $s0, 0x18($sp)
/* 3FF94 8003F394 00808021 */  addu       $s0, $a0, $zero
/* 3FF98 8003F398 00A08821 */  addu       $s1, $a1, $zero
/* 3FF9C 8003F39C 3C02800F */  lui        $v0, %hi(D_800ED5C2)
/* 3FFA0 8003F3A0 2442D5C2 */  addiu      $v0, $v0, %lo(D_800ED5C2)
/* 3FFA4 8003F3A4 84460000 */  lh         $a2, ($v0)
/* 3FFA8 8003F3A8 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 3FFAC 8003F3AC 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 3FFB0 8003F3B0 3C05800D */  lui        $a1, %hi(D_800CABB8)
/* 3FFB4 8003F3B4 24A5ABB8 */  addiu      $a1, $a1, %lo(D_800CABB8)
/* 3FFB8 8003F3B8 84470006 */  lh         $a3, 6($v0)
/* 3FFBC 8003F3BC 0C023124 */  jal        func_8008C490
/* 3FFC0 8003F3C0 24C60001 */   addiu     $a2, $a2, 1
/* 3FFC4 8003F3C4 001080C0 */  sll        $s0, $s0, 3
/* 3FFC8 8003F3C8 001188C0 */  sll        $s1, $s1, 3
/* 3FFCC 8003F3CC 24020009 */  addiu      $v0, $zero, 9
/* 3FFD0 8003F3D0 AFA20010 */  sw         $v0, 0x10($sp)
/* 3FFD4 8003F3D4 3204FFF8 */  andi       $a0, $s0, 0xfff8
/* 3FFD8 8003F3D8 3225FFF8 */  andi       $a1, $s1, 0xfff8
/* 3FFDC 8003F3DC 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 3FFE0 8003F3E0 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 3FFE4 8003F3E4 0C00FB2C */  jal        func_8003ECB0
/* 3FFE8 8003F3E8 2407000F */   addiu     $a3, $zero, 0xf
/* 3FFEC 8003F3EC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 3FFF0 8003F3F0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3FFF4 8003F3F4 8FB00018 */  lw         $s0, 0x18($sp)
/* 3FFF8 8003F3F8 03E00008 */  jr         $ra
/* 3FFFC 8003F3FC 27BD0028 */   addiu     $sp, $sp, 0x28
