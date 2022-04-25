	.set noat
	.set noreorder

glabel func_8000A6F4
/* B2F4 8000A6F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B2F8 8000A6F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2FC 8000A6FC AFB00010 */  sw         $s0, 0x10($sp)
/* B300 8000A700 8C900050 */  lw         $s0, 0x50($a0)
/* B304 8000A704 8C820040 */  lw         $v0, 0x40($a0)
/* B308 8000A708 0C00A139 */  jal        func_800284E4
/* B30C 8000A70C 84440000 */   lh        $a0, ($v0)
/* B310 8000A710 96020050 */  lhu        $v0, 0x50($s0)
/* B314 8000A714 3042FEFF */  andi       $v0, $v0, 0xfeff
/* B318 8000A718 A6020050 */  sh         $v0, 0x50($s0)
/* B31C 8000A71C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B320 8000A720 8FB00010 */  lw         $s0, 0x10($sp)
/* B324 8000A724 03E00008 */  jr         $ra
/* B328 8000A728 27BD0018 */   addiu     $sp, $sp, 0x18
