	.set noat
	.set noreorder

glabel func_8006128C
/* 61E8C 8006128C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 61E90 80061290 AFBF0020 */  sw         $ra, 0x20($sp)
/* 61E94 80061294 AFB3001C */  sw         $s3, 0x1c($sp)
/* 61E98 80061298 AFB20018 */  sw         $s2, 0x18($sp)
/* 61E9C 8006129C AFB10014 */  sw         $s1, 0x14($sp)
/* 61EA0 800612A0 AFB00010 */  sw         $s0, 0x10($sp)
/* 61EA4 800612A4 00808021 */  addu       $s0, $a0, $zero
/* 61EA8 800612A8 00A08821 */  addu       $s1, $a1, $zero
/* 61EAC 800612AC 00C09021 */  addu       $s2, $a2, $zero
/* 61EB0 800612B0 0C022124 */  jal        func_80088490
/* 61EB4 800612B4 24040001 */   addiu     $a0, $zero, 1
/* 61EB8 800612B8 00409821 */  addu       $s3, $v0, $zero
/* 61EBC 800612BC 3C04800E */  lui        $a0, %hi(D_800D8B80)
/* 61EC0 800612C0 24848B80 */  addiu      $a0, $a0, %lo(D_800D8B80)
/* 61EC4 800612C4 320500FF */  andi       $a1, $s0, 0xff
/* 61EC8 800612C8 322600FF */  andi       $a2, $s1, 0xff
/* 61ECC 800612CC 0C018437 */  jal        func_800610DC
/* 61ED0 800612D0 324700FF */   andi      $a3, $s2, 0xff
/* 61ED4 800612D4 00408021 */  addu       $s0, $v0, $zero
/* 61ED8 800612D8 0C022124 */  jal        func_80088490
/* 61EDC 800612DC 02602021 */   addu      $a0, $s3, $zero
/* 61EE0 800612E0 00108400 */  sll        $s0, $s0, 0x10
/* 61EE4 800612E4 00101403 */  sra        $v0, $s0, 0x10
/* 61EE8 800612E8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 61EEC 800612EC 8FB3001C */  lw         $s3, 0x1c($sp)
/* 61EF0 800612F0 8FB20018 */  lw         $s2, 0x18($sp)
/* 61EF4 800612F4 8FB10014 */  lw         $s1, 0x14($sp)
/* 61EF8 800612F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 61EFC 800612FC 03E00008 */  jr         $ra
/* 61F00 80061300 27BD0028 */   addiu     $sp, $sp, 0x28
