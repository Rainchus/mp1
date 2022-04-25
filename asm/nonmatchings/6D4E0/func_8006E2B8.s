	.set noat
	.set noreorder

glabel func_8006E2B8
/* 6EEB8 8006E2B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6EEBC 8006E2BC AFBF0018 */  sw         $ra, 0x18($sp)
/* 6EEC0 8006E2C0 00042400 */  sll        $a0, $a0, 0x10
/* 6EEC4 8006E2C4 00042403 */  sra        $a0, $a0, 0x10
/* 6EEC8 8006E2C8 00041080 */  sll        $v0, $a0, 2
/* 6EECC 8006E2CC 00441021 */  addu       $v0, $v0, $a0
/* 6EED0 8006E2D0 00021140 */  sll        $v0, $v0, 5
/* 6EED4 8006E2D4 00441023 */  subu       $v0, $v0, $a0
/* 6EED8 8006E2D8 00021080 */  sll        $v0, $v0, 2
/* 6EEDC 8006E2DC 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6EEE0 8006E2E0 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6EEE4 8006E2E4 00431021 */  addu       $v0, $v0, $v1
/* 6EEE8 8006E2E8 84440044 */  lh         $a0, 0x44($v0)
/* 6EEEC 8006E2EC 30A200FF */  andi       $v0, $a1, 0xff
/* 6EEF0 8006E2F0 30C300FF */  andi       $v1, $a2, 0xff
/* 6EEF4 8006E2F4 30E700FF */  andi       $a3, $a3, 0xff
/* 6EEF8 8006E2F8 AFA70010 */  sw         $a3, 0x10($sp)
/* 6EEFC 8006E2FC 24050001 */  addiu      $a1, $zero, 1
/* 6EF00 8006E300 00403021 */  addu       $a2, $v0, $zero
/* 6EF04 8006E304 0C019D3D */  jal        func_800674F4
/* 6EF08 8006E308 00603821 */   addu      $a3, $v1, $zero
/* 6EF0C 8006E30C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 6EF10 8006E310 03E00008 */  jr         $ra
/* 6EF14 8006E314 27BD0020 */   addiu     $sp, $sp, 0x20
