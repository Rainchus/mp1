	.set noat
	.set noreorder

glabel func_80058A4C
/* 5964C 80058A4C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 59650 80058A50 AFBF0020 */  sw         $ra, 0x20($sp)
/* 59654 80058A54 AFB3001C */  sw         $s3, 0x1c($sp)
/* 59658 80058A58 AFB20018 */  sw         $s2, 0x18($sp)
/* 5965C 80058A5C AFB10014 */  sw         $s1, 0x14($sp)
/* 59660 80058A60 AFB00010 */  sw         $s0, 0x10($sp)
/* 59664 80058A64 00C09821 */  addu       $s3, $a2, $zero
/* 59668 80058A68 00808821 */  addu       $s1, $a0, $zero
/* 5966C 80058A6C 00A09021 */  addu       $s2, $a1, $zero
/* 59670 80058A70 0C00EDDD */  jal        func_8003B774
/* 59674 80058A74 2404000C */   addiu     $a0, $zero, 0xc
/* 59678 80058A78 00408021 */  addu       $s0, $v0, $zero
/* 5967C 80058A7C 1200000C */  beqz       $s0, .L80058AB0
/* 59680 80058A80 2662FFFF */   addiu     $v0, $s3, -1
/* 59684 80058A84 A6110000 */  sh         $s1, ($s0)
/* 59688 80058A88 A6120002 */  sh         $s2, 2($s0)
/* 5968C 80058A8C A6020004 */  sh         $v0, 4($s0)
/* 59690 80058A90 3C048006 */  lui        $a0, %hi(func_80058A0C)
/* 59694 80058A94 24848A0C */  addiu      $a0, $a0, %lo(func_80058A0C)
/* 59698 80058A98 24051005 */  addiu      $a1, $zero, 0x1005
/* 5969C 80058A9C 00003021 */  addu       $a2, $zero, $zero
/* 596A0 80058AA0 0C01770A */  jal        func_8005DC28
/* 596A4 80058AA4 00003821 */   addu      $a3, $zero, $zero
/* 596A8 80058AA8 AE020008 */  sw         $v0, 8($s0)
/* 596AC 80058AAC AC50008C */  sw         $s0, 0x8c($v0)
.L80058AB0:
/* 596B0 80058AB0 02001021 */  addu       $v0, $s0, $zero
/* 596B4 80058AB4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 596B8 80058AB8 8FB3001C */  lw         $s3, 0x1c($sp)
/* 596BC 80058ABC 8FB20018 */  lw         $s2, 0x18($sp)
/* 596C0 80058AC0 8FB10014 */  lw         $s1, 0x14($sp)
/* 596C4 80058AC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 596C8 80058AC8 03E00008 */  jr         $ra
/* 596CC 80058ACC 27BD0028 */   addiu     $sp, $sp, 0x28
