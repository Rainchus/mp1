	.set noat
	.set noreorder

glabel func_800F94E8_D0958
/* D0958 800F94E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D095C 800F94EC AFBF0014 */  sw         $ra, 0x14($sp)
/* D0960 800F94F0 0C005DFD */  jal        func_800177F4
/* D0964 800F94F4 AFB00010 */   sw        $s0, 0x10($sp)
/* D0968 800F94F8 00028400 */  sll        $s0, $v0, 0x10
/* D096C 800F94FC 00108403 */  sra        $s0, $s0, 0x10
/* D0970 800F9500 3C03800F */  lui        $v1, %hi(D_800ECDE0)
/* D0974 800F9504 8C63CDE0 */  lw         $v1, %lo(D_800ECDE0)($v1)
/* D0978 800F9508 001010C0 */  sll        $v0, $s0, 3
/* D097C 800F950C 00501021 */  addu       $v0, $v0, $s0
/* D0980 800F9510 00021080 */  sll        $v0, $v0, 2
/* D0984 800F9514 00431021 */  addu       $v0, $v0, $v1
/* D0988 800F9518 84440000 */  lh         $a0, ($v0)
/* D098C 800F951C 3C057000 */  lui        $a1, 0x7000
/* D0990 800F9520 0C00964C */  jal        func_80025930
/* D0994 800F9524 3C067000 */   lui       $a2, 0x7000
/* D0998 800F9528 02001021 */  addu       $v0, $s0, $zero
/* D099C 800F952C 8FBF0014 */  lw         $ra, 0x14($sp)
/* D09A0 800F9530 8FB00010 */  lw         $s0, 0x10($sp)
/* D09A4 800F9534 03E00008 */  jr         $ra
/* D09A8 800F9538 27BD0018 */   addiu     $sp, $sp, 0x18
