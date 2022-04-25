	.set noat
	.set noreorder

glabel func_800F6858_CDCC8
/* CDCC8 800F6858 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CDCCC 800F685C AFBF0010 */  sw         $ra, 0x10($sp)
/* CDCD0 800F6860 3C02800F */  lui        $v0, %hi(func_800F68CC_CDD3C)
/* CDCD4 800F6864 244268CC */  addiu      $v0, $v0, %lo(func_800F68CC_CDD3C)
/* CDCD8 800F6868 AC820014 */  sw         $v0, 0x14($a0)
/* CDCDC 800F686C 3C018010 */  lui        $at, %hi(D_800FE2C2)
/* CDCE0 800F6870 A420E2C2 */  sh         $zero, %lo(D_800FE2C2)($at)
/* CDCE4 800F6874 3C018010 */  lui        $at, %hi(D_800FDE2C)
/* CDCE8 800F6878 0C03E30E */  jal        func_800F8C38_D00A8
/* CDCEC 800F687C A420DE2C */   sh        $zero, %lo(D_800FDE2C)($at)
/* CDCF0 800F6880 0C03DFB7 */  jal        func_800F7EDC_CF34C
/* CDCF4 800F6884 00000000 */   nop
/* CDCF8 800F6888 0C03E58F */  jal        func_800F963C_D0AAC
/* CDCFC 800F688C 00000000 */   nop
/* CDD00 800F6890 0C03E38E */  jal        func_800F8E38_D02A8
/* CDD04 800F6894 00000000 */   nop
/* CDD08 800F6898 0C03E433 */  jal        func_800F90CC_D053C
/* CDD0C 800F689C 00000000 */   nop
/* CDD10 800F68A0 0C03ECD8 */  jal        func_800FB360_D27D0
/* CDD14 800F68A4 00000000 */   nop
/* CDD18 800F68A8 0C0165E6 */  jal        func_80059798
/* CDD1C 800F68AC 2404002B */   addiu     $a0, $zero, 0x2b
/* CDD20 800F68B0 10400003 */  beqz       $v0, .L800F68C0
/* CDD24 800F68B4 24020001 */   addiu     $v0, $zero, 1
/* CDD28 800F68B8 3C018010 */  lui        $at, %hi(D_800FE180)
/* CDD2C 800F68BC A422E180 */  sh         $v0, %lo(D_800FE180)($at)
.L800F68C0:
/* CDD30 800F68C0 8FBF0010 */  lw         $ra, 0x10($sp)
/* CDD34 800F68C4 03E00008 */  jr         $ra
/* CDD38 800F68C8 27BD0018 */   addiu     $sp, $sp, 0x18
