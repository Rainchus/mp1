	.set noat
	.set noreorder

glabel func_800633B4
/* 63FB4 800633B4 8C820008 */  lw         $v0, 8($a0)
/* 63FB8 800633B8 10400004 */  beqz       $v0, .L800633CC
/* 63FBC 800633BC 00000000 */   nop
.L800633C0:
/* 63FC0 800633C0 8C420010 */  lw         $v0, 0x10($v0)
/* 63FC4 800633C4 1440FFFE */  bnez       $v0, .L800633C0
/* 63FC8 800633C8 00000000 */   nop
.L800633CC:
/* 63FCC 800633CC 03E00008 */  jr         $ra
/* 63FD0 800633D0 00000000 */   nop
