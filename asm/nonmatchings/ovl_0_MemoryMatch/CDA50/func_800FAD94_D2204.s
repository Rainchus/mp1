	.set noat
	.set noreorder

glabel func_800FAD94_D2204
/* D2204 800FAD94 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D2208 800FAD98 AFBF0014 */  sw         $ra, 0x14($sp)
/* D220C 800FAD9C AFB00010 */  sw         $s0, 0x10($sp)
/* D2210 800FADA0 00A08021 */  addu       $s0, $a1, $zero
/* D2214 800FADA4 3C028010 */  lui        $v0, %hi(D_800FE190)
/* D2218 800FADA8 8442E190 */  lh         $v0, %lo(D_800FE190)($v0)
/* D221C 800FADAC 00052C00 */  sll        $a1, $a1, 0x10
/* D2220 800FADB0 00052C03 */  sra        $a1, $a1, 0x10
/* D2224 800FADB4 10450003 */  beq        $v0, $a1, .L800FADC4
/* D2228 800FADB8 00000000 */   nop
/* D222C 800FADBC 0C00612F */  jal        func_800184BC
/* D2230 800FADC0 3205FFFF */   andi      $a1, $s0, 0xffff
.L800FADC4:
/* D2234 800FADC4 3C018010 */  lui        $at, %hi(D_800FE190)
/* D2238 800FADC8 A430E190 */  sh         $s0, %lo(D_800FE190)($at)
/* D223C 800FADCC 8FBF0014 */  lw         $ra, 0x14($sp)
/* D2240 800FADD0 8FB00010 */  lw         $s0, 0x10($sp)
/* D2244 800FADD4 03E00008 */  jr         $ra
/* D2248 800FADD8 27BD0018 */   addiu     $sp, $sp, 0x18
