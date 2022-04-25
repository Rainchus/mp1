	.set noat
	.set noreorder

glabel func_8004FAB8
/* 506B8 8004FAB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 506BC 8004FABC AFBF0014 */  sw         $ra, 0x14($sp)
/* 506C0 8004FAC0 AFB00010 */  sw         $s0, 0x10($sp)
/* 506C4 8004FAC4 000420C0 */  sll        $a0, $a0, 3
/* 506C8 8004FAC8 3C02800E */  lui        $v0, %hi(D_800D8260)
/* 506CC 8004FACC 24428260 */  addiu      $v0, $v0, %lo(D_800D8260)
/* 506D0 8004FAD0 00828021 */  addu       $s0, $a0, $v0
/* 506D4 8004FAD4 8E040004 */  lw         $a0, 4($s0)
/* 506D8 8004FAD8 10800004 */  beqz       $a0, .L8004FAEC
/* 506DC 8004FADC 00000000 */   nop
/* 506E0 8004FAE0 0C00851D */  jal        func_80021474
/* 506E4 8004FAE4 00000000 */   nop
/* 506E8 8004FAE8 AE000004 */  sw         $zero, 4($s0)
.L8004FAEC:
/* 506EC 8004FAEC 8E040000 */  lw         $a0, ($s0)
/* 506F0 8004FAF0 10800004 */  beqz       $a0, .L8004FB04
/* 506F4 8004FAF4 00000000 */   nop
/* 506F8 8004FAF8 0C0175C6 */  jal        func_8005D718
/* 506FC 8004FAFC 00000000 */   nop
/* 50700 8004FB00 AE000000 */  sw         $zero, ($s0)
.L8004FB04:
/* 50704 8004FB04 8FBF0014 */  lw         $ra, 0x14($sp)
/* 50708 8004FB08 8FB00010 */  lw         $s0, 0x10($sp)
/* 5070C 8004FB0C 03E00008 */  jr         $ra
/* 50710 8004FB10 27BD0018 */   addiu     $sp, $sp, 0x18
