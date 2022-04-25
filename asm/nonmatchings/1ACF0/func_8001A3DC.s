	.set noat
	.set noreorder

glabel func_8001A3DC
/* 1AFDC 8001A3DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AFE0 8001A3E0 AFBF0010 */  sw         $ra, 0x10($sp)
.L8001A3E4:
/* 1AFE4 8001A3E4 0C018D6D */  jal        func_800635B4
/* 1AFE8 8001A3E8 00000000 */   nop
/* 1AFEC 8001A3EC 0C00ADB2 */  jal        func_8002B6C8
/* 1AFF0 8001A3F0 00000000 */   nop
/* 1AFF4 8001A3F4 0C0077F0 */  jal        func_8001DFC0
/* 1AFF8 8001A3F8 00000000 */   nop
/* 1AFFC 8001A3FC 3C040200 */  lui        $a0, 0x200
/* 1B000 8001A400 3C05003D */  lui        $a1, 0x3d
/* 1B004 8001A404 0C009596 */  jal        func_80025658
/* 1B008 8001A408 34A50800 */   ori       $a1, $a1, 0x800
/* 1B00C 8001A40C 0C018876 */  jal        func_800621D8
/* 1B010 8001A410 00000000 */   nop
/* 1B014 8001A414 080068F9 */  j          .L8001A3E4
/* 1B018 8001A418 00000000 */   nop
/* 1B01C 8001A41C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1B020 8001A420 03E00008 */  jr         $ra
/* 1B024 8001A424 27BD0018 */   addiu     $sp, $sp, 0x18
