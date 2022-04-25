	.set noat
	.set noreorder

glabel func_800481F8
/* 48DF8 800481F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 48DFC 800481FC AFBF0010 */  sw         $ra, 0x10($sp)
.L80048200:
/* 48E00 80048200 0C012064 */  jal        func_80048190
/* 48E04 80048204 00000000 */   nop
/* 48E08 80048208 0C018D6D */  jal        func_800635B4
/* 48E0C 8004820C 00000000 */   nop
/* 48E10 80048210 08012080 */  j          .L80048200
/* 48E14 80048214 00000000 */   nop
/* 48E18 80048218 8FBF0010 */  lw         $ra, 0x10($sp)
/* 48E1C 8004821C 03E00008 */  jr         $ra
/* 48E20 80048220 27BD0018 */   addiu     $sp, $sp, 0x18
