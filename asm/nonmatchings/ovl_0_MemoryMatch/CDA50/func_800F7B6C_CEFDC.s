	.set noat
	.set noreorder

glabel func_800F7B6C_CEFDC
/* CEFDC 800F7B6C 3084FFFF */  andi       $a0, $a0, 0xffff
/* CEFE0 800F7B70 3C028010 */  lui        $v0, %hi(D_800FD7E0)
/* CEFE4 800F7B74 8C42D7E0 */  lw         $v0, %lo(D_800FD7E0)($v0)
/* CEFE8 800F7B78 00820018 */  mult       $a0, $v0
/* CEFEC 800F7B7C 00001012 */  mflo       $v0
/* CEFF0 800F7B80 00822021 */  addu       $a0, $a0, $v0
/* CEFF4 800F7B84 3C018010 */  lui        $at, %hi(D_800FD7E0)
/* CEFF8 800F7B88 03E00008 */  jr         $ra
/* CEFFC 800F7B8C AC24D7E0 */   sw        $a0, %lo(D_800FD7E0)($at)
