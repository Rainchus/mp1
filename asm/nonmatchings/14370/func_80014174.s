	.set noat
	.set noreorder

glabel func_80014174
/* 14D74 80014174 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 14D78 80014178 AFBF0010 */  sw         $ra, 0x10($sp)
/* 14D7C 8001417C 3C02800D */  lui        $v0, %hi(D_800D12CC)
/* 14D80 80014180 844212CC */  lh         $v0, %lo(D_800D12CC)($v0)
/* 14D84 80014184 10400003 */  beqz       $v0, .L80014194
/* 14D88 80014188 00000000 */   nop
/* 14D8C 8001418C 0C005071 */  jal        func_800141C4
/* 14D90 80014190 00000000 */   nop
.L80014194:
/* 14D94 80014194 3C04800D */  lui        $a0, %hi(D_800D12C0)
/* 14D98 80014198 248412C0 */  addiu      $a0, $a0, %lo(D_800D12C0)
/* 14D9C 8001419C 3C068001 */  lui        $a2, %hi(func_80014158)
/* 14DA0 800141A0 24C64158 */  addiu      $a2, $a2, %lo(func_80014158)
/* 14DA4 800141A4 0C01901F */  jal        func_8006407C
/* 14DA8 800141A8 00002821 */   addu      $a1, $zero, $zero
/* 14DAC 800141AC 24020001 */  addiu      $v0, $zero, 1
/* 14DB0 800141B0 3C01800D */  lui        $at, %hi(D_800D12CC)
/* 14DB4 800141B4 A42212CC */  sh         $v0, %lo(D_800D12CC)($at)
/* 14DB8 800141B8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 14DBC 800141BC 03E00008 */  jr         $ra
/* 14DC0 800141C0 27BD0018 */   addiu     $sp, $sp, 0x18
