	.set noat
	.set noreorder

glabel func_8004E184
/* 4ED84 8004E184 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4ED88 8004E188 AFBF0024 */  sw         $ra, 0x24($sp)
/* 4ED8C 8004E18C AFB40020 */  sw         $s4, 0x20($sp)
/* 4ED90 8004E190 AFB3001C */  sw         $s3, 0x1c($sp)
/* 4ED94 8004E194 AFB20018 */  sw         $s2, 0x18($sp)
/* 4ED98 8004E198 AFB10014 */  sw         $s1, 0x14($sp)
/* 4ED9C 8004E19C AFB00010 */  sw         $s0, 0x10($sp)
/* 4EDA0 8004E1A0 00008021 */  addu       $s0, $zero, $zero
/* 4EDA4 8004E1A4 3C11800F */  lui        $s1, %hi(D_800F50C0)
/* 4EDA8 8004E1A8 263150C0 */  addiu      $s1, $s1, %lo(D_800F50C0)
/* 4EDAC 8004E1AC 3C148005 */  lui        $s4, %hi(func_8004E248)
/* 4EDB0 8004E1B0 2694E248 */  addiu      $s4, $s4, %lo(func_8004E248)
/* 4EDB4 8004E1B4 3C138005 */  lui        $s3, %hi(func_8004E564)
/* 4EDB8 8004E1B8 2673E564 */  addiu      $s3, $s3, %lo(func_8004E564)
/* 4EDBC 8004E1BC 3C128005 */  lui        $s2, %hi(func_8004EC44)
/* 4EDC0 8004E1C0 2652EC44 */  addiu      $s2, $s2, %lo(func_8004EC44)
/* 4EDC4 8004E1C4 00101080 */  sll        $v0, $s0, 2
.L8004E1C8:
/* 4EDC8 8004E1C8 00511021 */  addu       $v0, $v0, $s1
/* 4EDCC 8004E1CC 8C420000 */  lw         $v0, ($v0)
/* 4EDD0 8004E1D0 50400012 */  beql       $v0, $zero, .L8004E21C
/* 4EDD4 8004E1D4 26100001 */   addiu     $s0, $s0, 1
/* 4EDD8 8004E1D8 8C420014 */  lw         $v0, 0x14($v0)
/* 4EDDC 8004E1DC 50540006 */  beql       $v0, $s4, .L8004E1F8
/* 4EDE0 8004E1E0 00101080 */   sll       $v0, $s0, 2
/* 4EDE4 8004E1E4 50530004 */  beql       $v0, $s3, .L8004E1F8
/* 4EDE8 8004E1E8 00101080 */   sll       $v0, $s0, 2
/* 4EDEC 8004E1EC 5452000B */  bnel       $v0, $s2, .L8004E21C
/* 4EDF0 8004E1F0 26100001 */   addiu     $s0, $s0, 1
/* 4EDF4 8004E1F4 00101080 */  sll        $v0, $s0, 2
.L8004E1F8:
/* 4EDF8 8004E1F8 00512021 */  addu       $a0, $v0, $s1
/* 4EDFC 8004E1FC 8C830000 */  lw         $v1, ($a0)
/* 4EE00 8004E200 94620000 */  lhu        $v0, ($v1)
/* 4EE04 8004E204 30420004 */  andi       $v0, $v0, 4
/* 4EE08 8004E208 10400004 */  beqz       $v0, .L8004E21C
/* 4EE0C 8004E20C 26100001 */   addiu     $s0, $s0, 1
/* 4EE10 8004E210 AC600050 */  sw         $zero, 0x50($v1)
/* 4EE14 8004E214 0C0175C6 */  jal        func_8005D718
/* 4EE18 8004E218 8C840000 */   lw        $a0, ($a0)
.L8004E21C:
/* 4EE1C 8004E21C 2A020020 */  slti       $v0, $s0, 0x20
/* 4EE20 8004E220 1440FFE9 */  bnez       $v0, .L8004E1C8
/* 4EE24 8004E224 00101080 */   sll       $v0, $s0, 2
/* 4EE28 8004E228 8FBF0024 */  lw         $ra, 0x24($sp)
/* 4EE2C 8004E22C 8FB40020 */  lw         $s4, 0x20($sp)
/* 4EE30 8004E230 8FB3001C */  lw         $s3, 0x1c($sp)
/* 4EE34 8004E234 8FB20018 */  lw         $s2, 0x18($sp)
/* 4EE38 8004E238 8FB10014 */  lw         $s1, 0x14($sp)
/* 4EE3C 8004E23C 8FB00010 */  lw         $s0, 0x10($sp)
/* 4EE40 8004E240 03E00008 */  jr         $ra
/* 4EE44 8004E244 27BD0028 */   addiu     $sp, $sp, 0x28
