	.set noat
	.set noreorder

glabel func_8004C2CC
/* 4CECC 8004C2CC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4CED0 8004C2D0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 4CED4 8004C2D4 AFB40020 */  sw         $s4, 0x20($sp)
/* 4CED8 8004C2D8 AFB3001C */  sw         $s3, 0x1c($sp)
/* 4CEDC 8004C2DC AFB20018 */  sw         $s2, 0x18($sp)
/* 4CEE0 8004C2E0 AFB10014 */  sw         $s1, 0x14($sp)
/* 4CEE4 8004C2E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 4CEE8 8004C2E8 00808021 */  addu       $s0, $a0, $zero
/* 4CEEC 8004C2EC 00A09821 */  addu       $s3, $a1, $zero
/* 4CEF0 8004C2F0 0C01308C */  jal        func_8004C230
/* 4CEF4 8004C2F4 3264FFFF */   andi      $a0, $s3, 0xffff
/* 4CEF8 8004C2F8 00021400 */  sll        $v0, $v0, 0x10
/* 4CEFC 8004C2FC 0C005D63 */  jal        func_8001758C
/* 4CF00 8004C300 0002A403 */   sra       $s4, $v0, 0x10
/* 4CF04 8004C304 304200FF */  andi       $v0, $v0, 0xff
/* 4CF08 8004C308 3C038888 */  lui        $v1, 0x8888
/* 4CF0C 8004C30C 34638889 */  ori        $v1, $v1, 0x8889
/* 4CF10 8004C310 00430019 */  multu      $v0, $v1
/* 4CF14 8004C314 00003010 */  mfhi       $a2
/* 4CF18 8004C318 00062102 */  srl        $a0, $a2, 4
/* 4CF1C 8004C31C 00041900 */  sll        $v1, $a0, 4
/* 4CF20 8004C320 00641823 */  subu       $v1, $v1, $a0
/* 4CF24 8004C324 00031840 */  sll        $v1, $v1, 1
/* 4CF28 8004C328 00431023 */  subu       $v0, $v0, $v1
/* 4CF2C 8004C32C 24520001 */  addiu      $s2, $v0, 1
/* 4CF30 8004C330 00008821 */  addu       $s1, $zero, $zero
/* 4CF34 8004C334 3210FFFF */  andi       $s0, $s0, 0xffff
.L8004C338:
/* 4CF38 8004C338 3264FFFF */  andi       $a0, $s3, 0xffff
/* 4CF3C 8004C33C 0C013081 */  jal        func_8004C204
/* 4CF40 8004C340 3225FFFF */   andi      $a1, $s1, 0xffff
/* 4CF44 8004C344 00021400 */  sll        $v0, $v0, 0x10
/* 4CF48 8004C348 0C01307B */  jal        func_8004C1EC
/* 4CF4C 8004C34C 00022403 */   sra       $a0, $v0, 0x10
/* 4CF50 8004C350 90420001 */  lbu        $v0, 1($v0)
/* 4CF54 8004C354 3042000F */  andi       $v0, $v0, 0xf
/* 4CF58 8004C358 3C01800C */  lui        $at, %hi(D_800C51B0)
/* 4CF5C 8004C35C 00220821 */  addu       $at, $at, $v0
/* 4CF60 8004C360 902251B0 */  lbu        $v0, %lo(D_800C51B0)($at)
/* 4CF64 8004C364 00501024 */  and        $v0, $v0, $s0
/* 4CF68 8004C368 10400005 */  beqz       $v0, .L8004C380
/* 4CF6C 8004C36C 2642FFFF */   addiu     $v0, $s2, -1
/* 4CF70 8004C370 00409021 */  addu       $s2, $v0, $zero
/* 4CF74 8004C374 304200FF */  andi       $v0, $v0, 0xff
/* 4CF78 8004C378 10400006 */  beqz       $v0, .L8004C394
/* 4CF7C 8004C37C 00111400 */   sll       $v0, $s1, 0x10
.L8004C380:
/* 4CF80 8004C380 26310001 */  addiu      $s1, $s1, 1
/* 4CF84 8004C384 0234102A */  slt        $v0, $s1, $s4
/* 4CF88 8004C388 00021023 */  negu       $v0, $v0
/* 4CF8C 8004C38C 080130CE */  j          .L8004C338
/* 4CF90 8004C390 00518824 */   and       $s1, $v0, $s1
.L8004C394:
/* 4CF94 8004C394 00021403 */  sra        $v0, $v0, 0x10
/* 4CF98 8004C398 8FBF0024 */  lw         $ra, 0x24($sp)
/* 4CF9C 8004C39C 8FB40020 */  lw         $s4, 0x20($sp)
/* 4CFA0 8004C3A0 8FB3001C */  lw         $s3, 0x1c($sp)
/* 4CFA4 8004C3A4 8FB20018 */  lw         $s2, 0x18($sp)
/* 4CFA8 8004C3A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 4CFAC 8004C3AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 4CFB0 8004C3B0 03E00008 */  jr         $ra
/* 4CFB4 8004C3B4 27BD0028 */   addiu     $sp, $sp, 0x28
