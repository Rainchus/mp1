	.set noat
	.set noreorder

glabel func_8003C14C
/* 3CD4C 8003C14C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3CD50 8003C150 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3CD54 8003C154 AFB00010 */  sw         $s0, 0x10($sp)
/* 3CD58 8003C158 00808021 */  addu       $s0, $a0, $zero
/* 3CD5C 8003C15C 8E020008 */  lw         $v0, 8($s0)
/* 3CD60 8003C160 10400008 */  beqz       $v0, .L8003C184
/* 3CD64 8003C164 00000000 */   nop
/* 3CD68 8003C168 0C018CEA */  jal        func_800633A8
/* 3CD6C 8003C16C 00000000 */   nop
/* 3CD70 8003C170 8E050008 */  lw         $a1, 8($s0)
/* 3CD74 8003C174 0C018C9C */  jal        func_80063270
/* 3CD78 8003C178 00402021 */   addu      $a0, $v0, $zero
/* 3CD7C 8003C17C 0C018CD6 */  jal        func_80063358
/* 3CD80 8003C180 00000000 */   nop
.L8003C184:
/* 3CD84 8003C184 8602000C */  lh         $v0, 0xc($s0)
/* 3CD88 8003C188 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3CD8C 8003C18C 8FB00010 */  lw         $s0, 0x10($sp)
/* 3CD90 8003C190 03E00008 */  jr         $ra
/* 3CD94 8003C194 27BD0018 */   addiu     $sp, $sp, 0x18
