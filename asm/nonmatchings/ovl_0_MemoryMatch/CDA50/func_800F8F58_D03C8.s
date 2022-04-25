	.set noat
	.set noreorder

glabel func_800F8F58_D03C8
/* D03C8 800F8F58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D03CC 800F8F5C AFBF0018 */  sw         $ra, 0x18($sp)
/* D03D0 800F8F60 AFB10014 */  sw         $s1, 0x14($sp)
/* D03D4 800F8F64 AFB00010 */  sw         $s0, 0x10($sp)
/* D03D8 800F8F68 3C108010 */  lui        $s0, %hi(D_800FE318)
/* D03DC 800F8F6C 2610E318 */  addiu      $s0, $s0, %lo(D_800FE318)
/* D03E0 800F8F70 00008821 */  addu       $s1, $zero, $zero
.L800F8F74:
/* D03E4 800F8F74 86020002 */  lh         $v0, 2($s0)
/* D03E8 800F8F78 50400013 */  beql       $v0, $zero, .L800F8FC8
/* D03EC 800F8F7C 26310001 */   addiu     $s1, $s1, 1
/* D03F0 800F8F80 86020000 */  lh         $v0, ($s0)
/* D03F4 800F8F84 1040000F */  beqz       $v0, .L800F8FC4
/* D03F8 800F8F88 00002821 */   addu      $a1, $zero, $zero
/* D03FC 800F8F8C C6000008 */  lwc1       $f0, 8($s0)
/* D0400 800F8F90 4600008D */  trunc.w.s  $f2, $f0
/* D0404 800F8F94 44061000 */  mfc1       $a2, $f2
/* D0408 800F8F98 00000000 */  nop
/* D040C 800F8F9C 00063400 */  sll        $a2, $a2, 0x10
/* D0410 800F8FA0 C600000C */  lwc1       $f0, 0xc($s0)
/* D0414 800F8FA4 4600008D */  trunc.w.s  $f2, $f0
/* D0418 800F8FA8 44071000 */  mfc1       $a3, $f2
/* D041C 800F8FAC 00000000 */  nop
/* D0420 800F8FB0 00073C00 */  sll        $a3, $a3, 0x10
/* D0424 800F8FB4 86040004 */  lh         $a0, 4($s0)
/* D0428 800F8FB8 00063403 */  sra        $a2, $a2, 0x10
/* D042C 800F8FBC 0C019B71 */  jal        func_80066DC4
/* D0430 800F8FC0 00073C03 */   sra       $a3, $a3, 0x10
.L800F8FC4:
/* D0434 800F8FC4 26310001 */  addiu      $s1, $s1, 1
.L800F8FC8:
/* D0438 800F8FC8 3222FFFF */  andi       $v0, $s1, 0xffff
/* D043C 800F8FCC 2C420010 */  sltiu      $v0, $v0, 0x10
/* D0440 800F8FD0 1440FFE8 */  bnez       $v0, .L800F8F74
/* D0444 800F8FD4 26100020 */   addiu     $s0, $s0, 0x20
/* D0448 800F8FD8 8FBF0018 */  lw         $ra, 0x18($sp)
/* D044C 800F8FDC 8FB10014 */  lw         $s1, 0x14($sp)
/* D0450 800F8FE0 8FB00010 */  lw         $s0, 0x10($sp)
/* D0454 800F8FE4 03E00008 */  jr         $ra
/* D0458 800F8FE8 27BD0020 */   addiu     $sp, $sp, 0x20
