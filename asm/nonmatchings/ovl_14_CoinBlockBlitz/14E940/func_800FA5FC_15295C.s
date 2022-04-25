	.set noat
	.set noreorder

glabel func_800FA5FC_15295C
/* 15295C 800FA5FC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 152960 800FA600 AFBF0028 */  sw         $ra, 0x28($sp)
/* 152964 800FA604 AFB10024 */  sw         $s1, 0x24($sp)
/* 152968 800FA608 AFB00020 */  sw         $s0, 0x20($sp)
/* 15296C 800FA60C 00808821 */  addu       $s1, $a0, $zero
/* 152970 800FA610 27B00010 */  addiu      $s0, $sp, 0x10
/* 152974 800FA614 44800000 */  mtc1       $zero, $f0
/* 152978 800FA618 00000000 */  nop
/* 15297C 800FA61C 44050000 */  mfc1       $a1, $f0
/* 152980 800FA620 3C06447A */  lui        $a2, 0x447a
/* 152984 800FA624 44070000 */  mfc1       $a3, $f0
/* 152988 800FA628 00000000 */  nop
/* 15298C 800FA62C 0C028340 */  jal        func_800A0D00
/* 152990 800FA630 02002021 */   addu      $a0, $s0, $zero
/* 152994 800FA634 02202021 */  addu       $a0, $s1, $zero
/* 152998 800FA638 02002821 */  addu       $a1, $s0, $zero
/* 15299C 800FA63C 24060004 */  addiu      $a2, $zero, 4
/* 1529A0 800FA640 0C03E4F8 */  jal        func_800F93E0_151740
/* 1529A4 800FA644 24070050 */   addiu     $a3, $zero, 0x50
/* 1529A8 800FA648 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1529AC 800FA64C 8FB10024 */  lw         $s1, 0x24($sp)
/* 1529B0 800FA650 8FB00020 */  lw         $s0, 0x20($sp)
/* 1529B4 800FA654 03E00008 */  jr         $ra
/* 1529B8 800FA658 27BD0030 */   addiu     $sp, $sp, 0x30
