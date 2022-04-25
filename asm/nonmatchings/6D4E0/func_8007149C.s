	.set noat
	.set noreorder

glabel func_8007149C
/* 7209C 8007149C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 720A0 800714A0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 720A4 800714A4 AFB10014 */  sw         $s1, 0x14($sp)
/* 720A8 800714A8 AFB00010 */  sw         $s0, 0x10($sp)
/* 720AC 800714AC 00A08021 */  addu       $s0, $a1, $zero
/* 720B0 800714B0 92020000 */  lbu        $v0, ($s0)
/* 720B4 800714B4 10400008 */  beqz       $v0, .L800714D8
/* 720B8 800714B8 00808821 */   addu      $s1, $a0, $zero
.L800714BC:
/* 720BC 800714BC 0C01C4FC */  jal        func_800713F0
/* 720C0 800714C0 02002021 */   addu      $a0, $s0, $zero
/* 720C4 800714C4 A2220000 */  sb         $v0, ($s1)
/* 720C8 800714C8 26100002 */  addiu      $s0, $s0, 2
/* 720CC 800714CC 92020000 */  lbu        $v0, ($s0)
/* 720D0 800714D0 1440FFFA */  bnez       $v0, .L800714BC
/* 720D4 800714D4 26310001 */   addiu     $s1, $s1, 1
.L800714D8:
/* 720D8 800714D8 A2200000 */  sb         $zero, ($s1)
/* 720DC 800714DC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 720E0 800714E0 8FB10014 */  lw         $s1, 0x14($sp)
/* 720E4 800714E4 8FB00010 */  lw         $s0, 0x10($sp)
/* 720E8 800714E8 03E00008 */  jr         $ra
/* 720EC 800714EC 27BD0020 */   addiu     $sp, $sp, 0x20
